cmake_minimum_required(VERSION 3.10)

# Project name
project(mybRPC)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add source files
file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} src/*.cpp src/*.cc)

# 单独指定 main.cpp
set(MAIN_SRC ${CMAKE_SOURCE_DIR}/src/main.cpp)

# 去除 main.cpp，作为 pressure_test 的源文件集合
set(PRESSURE_SOURCES ${SOURCES})
list(REMOVE_ITEM PRESSURE_SOURCES ${MAIN_SRC})

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)
message(STATUS "Include directories: ${PROJECT_SOURCE_DIR}/include")

# Create the executable
add_executable(main ${SOURCES})

# Link libraries (if any)
target_link_libraries(main protobuf)


add_executable(pressure_test test/pressure_test.cpp ${PRESSURE_SOURCES}) # 如果你生成的 proto 文件在这里
target_link_libraries(pressure_test protobuf pthread)