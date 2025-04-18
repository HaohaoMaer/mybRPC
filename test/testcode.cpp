#include "thread_pool.h"
#include <iostream>
#include <thread>

void my_task(int id) {
    for (int i = 0; i < 3; ++i) {
        std::cout << "[Task " << id << "] step " << i << std::endl;
        yield();
    }
}

int main() {
    std::cout << "[main] start" << std::endl;
    ThreadPool pool(10);

    for (int i = 0; i < 100; ++i) {
        std::cout << "[main] adding task " << i << std::endl;
        pool.add_task([i]() { my_task(i); });
    }

    std::cout << "[main] sleeping..." << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(10));
    std::cout << "[main] done sleeping" << std::endl;

    return 0;
}


