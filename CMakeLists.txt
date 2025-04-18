cmake_minimum_required(VERSION 3.10)

# Project name
project(mybRPC)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add source files
file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR} src/*.cpp src/*.cc)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)
message(STATUS "Include directories: ${PROJECT_SOURCE_DIR}/include")

# Create the executable
add_executable(main ${SOURCES})

# Link libraries (if any)
target_link_libraries(main protobuf)