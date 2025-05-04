#include "my_rpc.h"

namespace myrpc {


void RpcServer::init(int close_log, int log_write, int thread_num) {
    m_close_log = close_log;
    m_log_write = log_write;
    m_thread_num = thread_num; 
}

RpcServer::~RpcServer() {
    if (m_threadpool) {
        m_threadpool->~ThreadPool();
    }
    myLog::get_instance()->flush_local_buffer();
}

void RpcServer::init_thread_pool() {
    m_threadpool = new ThreadPool( m_thread_num );
}

void RpcServer::log_write() {  
    if (0 == m_close_log) {
        //初始化日志
        if (1 == m_log_write)  //异步写入
            myLog::get_instance()->init("./ServerLog", m_close_log, 2000, 800000, 800);  //获取全局唯一日志对象并初始化
        else
            myLog::get_instance()->init("./ServerLog", m_close_log, 2000, 800000, 0);
    }
}

void RpcServer::register_service(google::protobuf::Service* service) {
    const google::protobuf::ServiceDescriptor* sd = service->GetDescriptor();
    for (int i = 0; i < sd->method_count(); ++i) {
        const google::protobuf::MethodDescriptor* md = sd->method(i);
        std::string full_name = service->GetDescriptor()->full_name() + "." + md->name();
        MethodProperty mp;
        mp.service = service;
        mp.method = md;
        handlers_[full_name] = mp;
        LOG_INFO(std::string("[Server] Registered service: ") + full_name);
    }
}

void RpcServer::start() {
    int server_fd = socket(AF_INET, SOCK_STREAM, 0);
    fcntl(server_fd, F_SETFL, fcntl(server_fd, F_GETFL) | O_NONBLOCK);
    if (server_fd == -1) {
        perror("socket");
        return;
    }

    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port_);
    addr.sin_addr.s_addr = INADDR_ANY;

    if (bind(server_fd, (sockaddr*)&addr, sizeof(addr)) == -1) {
        perror("bind");
        return;
    }

    if (listen(server_fd, 10) == -1) {
        perror("listen");
        return;
    }
    LOG_INFO(std::string("[Server] Listening on port ") + std::to_string(port_));

    int opt = 1;
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)) < 0) {
        perror("setsockopt(SO_REUSEADDR) failed");
    }

    int epfd = epoll_create1(0);
    epoll_event ev{}, events[100];
    ev.events = EPOLLIN;
    ev.data.fd = server_fd;
    epoll_ctl(epfd, EPOLL_CTL_ADD, server_fd, &ev);

    while (true) {
        int nfds = epoll_wait(epfd, events, 100, -1);
        for (int i = 0; i < nfds; ++i) {
            int fd = events[i].data.fd;
            if (fd == server_fd) {
                while (true) {
                    int client_fd = accept(server_fd, nullptr, nullptr);
                    if (client_fd < 0) break;
                    fcntl(client_fd, F_SETFL, fcntl(client_fd, F_GETFL) | O_NONBLOCK);
                    epoll_event client_ev{};
                    client_ev.events = EPOLLIN;
                    client_ev.data.fd = client_fd;
                    epoll_ctl(epfd, EPOLL_CTL_ADD, client_fd, &client_ev);
                }
            } else {
                m_threadpool->add_task([this, fd]() {
                    handle_client(fd);
                });
                epoll_ctl(epfd, EPOLL_CTL_DEL, fd, nullptr);
            }
        }
    }
    myLog::get_instance()->flush_local_buffer();
}

void RpcServer::handle_client(int fd) {
    MetricsManager::instance().incr_rpc_calls();
    MetricsManager::instance().incr_concurrent();
    char buf[1024];
    int len = read(fd, buf, sizeof(buf));
    if (len <= 0) {
        close(fd);
        return;
    }

    std::string data(buf, len);
    auto pos = data.find('|');
    if (pos == std::string::npos) {
        LOG_ERROR(std::string("[Server] Invalid request format: ") + data);
        close(fd);
        return;
    }

    std::string full_name = data.substr(0, pos); // service.method
    std::string args = data.substr(pos + 1);

    std::string result;
    auto it = handlers_.find(full_name);
    if (it != handlers_.end()) {
        MethodProperty& mp = handlers_[full_name];
        google::protobuf::Service* service = mp.service;
        const google::protobuf::MethodDescriptor* method = mp.method;

        // 根据 Method 获取请求和响应的原型
        const google::protobuf::Message* request_prototype = &service->GetRequestPrototype(method);
        const google::protobuf::Message* response_prototype = &service->GetResponsePrototype(method);

        // 生成具体的请求/响应对象
        std::unique_ptr<google::protobuf::Message> request(request_prototype->New());
        std::unique_ptr<google::protobuf::Message> response(response_prototype->New());

        if (!request->ParseFromString(args)) {
            result = "Failed to parse request";
        } else {
            // 设置 done 回调为空或自定义
            google::protobuf::Closure* done = google::protobuf::NewPermanentCallback([]() {
                // 什么都不做（空回调）
            });
            // 调用远程方法
            LOG_INFO(std::string("[Server] Calling method: ") + full_name);
            service->CallMethod(method, nullptr, request.get(), response.get(), done);
            LOG_INFO(std::string("[Server] Method call completed: ") + full_name);
            // 序列化响应
            if (!response->SerializeToString(&result)) {
                result = "Failed to serialize response";
            }
        }
    } else {
        result = "Method not found";
    }
    LOG_INFO(std::string("[Server] Sending response: ") + result);
    write(fd, result.c_str(), result.size());
    close(fd);
    MetricsManager::instance().decr_concurrent();
}

std::string RpcClient::call(const std::string& full_method_name, const std::string& args) {
    int sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd == -1) {
        perror("socket");
        return "";
    }

    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port_);
    addr.sin_addr.s_addr = inet_addr(ip_.c_str());

    if (connect(sockfd, (sockaddr*)&addr, sizeof(addr)) < 0) {
        perror("connect");
        return "";
    }

    std::string request = full_method_name + "|" + args;
    write(sockfd, request.c_str(), request.size());

    char buf[1024];
    int len = read(sockfd, buf, sizeof(buf));
    LOG_INFO(std::string("[Client] Received response: ") + std::string(buf, len));
    // 关闭连接
    close(sockfd);

    if (len < 0) {
        perror("read");
        close(sockfd);
        return "";
    }
    return std::string(buf, len);
}

}