#include "serviceImpl.h"
#include "my_rpc.h"
// ==========================
// 示例服务实现：CalculatorService
// ==========================

int main() {
    // 启动 RPC 服务器并注册服务方法
    myrpc::RpcServer server(12345);

    server.init(0, 1, 5); // 初始化服务器
    ThreadLocalBuffers::local_buffer.clear();
    server.log_write(); // 写入日志
    calculator calculateservice;
    server.register_service(&calculateservice);
    // 后台启动服务器
    server.init_thread_pool(); // 初始化线程池
    
    std::thread([&]() {
        server.start();
    }).detach();

    if ( ThreadLocalBuffers::local_buffer.size() >0 ) {
        std::cout << "after start of first of" <<  ThreadLocalBuffers::local_buffer[0].size() << std::endl;
    }

    std::this_thread::sleep_for(std::chrono::seconds(1));  // 等待服务器启动
    std::cout << "after start of first of" <<  ThreadLocalBuffers::local_buffer[0].size() << std::endl;

    // 创建客户端
    myrpc::RpcClient client("127.0.0.1", 12345);
    std::cout << "after start of first of" <<  ThreadLocalBuffers::local_buffer[0].size() << std::endl;

    // 构造请求：Add 请求
    testrpc::AddRequest req;
    req.set_a(10);
    req.set_b(4);
    std::string req_bin;
    req.SerializeToString(&req_bin);

    // 调用 CalculatorService.Add 方法
    std::string add_resp_bin = client.call("testrpc.CalculatorService.Add", req_bin);
    testrpc::AddResponse add_resp;
    add_resp.ParseFromString(add_resp_bin);
    LOG_INFO(std::string("[Client] Add result = ") + std::to_string(add_resp.sum()));
    std::cout << "after start of first of" <<  ThreadLocalBuffers::local_buffer[0].size() << std::endl;

    // 调用 CalculatorService.Sub 方法
    testrpc::SubRequest reqS;
    reqS.set_a(10);
    reqS.set_b(4);
    std::string reqS_bin;
    reqS.SerializeToString(&reqS_bin);
    std::string sub_resp_bin = client.call("testrpc.CalculatorService.Sub", reqS_bin);
    testrpc::SubResponse sub_resp;
    sub_resp.ParseFromString(sub_resp_bin);
    LOG_INFO(std::string("[Client] Sub result = ") + std::to_string(sub_resp.diff()));
    myLog::get_instance()->flush_local_buffer();

    return 0;
}

