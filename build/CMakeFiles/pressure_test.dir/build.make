# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jackma/projects/mybRPC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jackma/projects/mybRPC/build

# Include any dependencies generated for this target.
include CMakeFiles/pressure_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pressure_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pressure_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pressure_test.dir/flags.make

CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o: CMakeFiles/pressure_test.dir/flags.make
CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o: /home/jackma/projects/mybRPC/test/pressure_test.cpp
CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o: CMakeFiles/pressure_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o -MF CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o.d -o CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o -c /home/jackma/projects/mybRPC/test/pressure_test.cpp

CMakeFiles/pressure_test.dir/test/pressure_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pressure_test.dir/test/pressure_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jackma/projects/mybRPC/test/pressure_test.cpp > CMakeFiles/pressure_test.dir/test/pressure_test.cpp.i

CMakeFiles/pressure_test.dir/test/pressure_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pressure_test.dir/test/pressure_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jackma/projects/mybRPC/test/pressure_test.cpp -o CMakeFiles/pressure_test.dir/test/pressure_test.cpp.s

CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o: CMakeFiles/pressure_test.dir/flags.make
CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o: /home/jackma/projects/mybRPC/src/blockQueue.cpp
CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o: CMakeFiles/pressure_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o -MF CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o.d -o CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o -c /home/jackma/projects/mybRPC/src/blockQueue.cpp

CMakeFiles/pressure_test.dir/src/blockQueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pressure_test.dir/src/blockQueue.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jackma/projects/mybRPC/src/blockQueue.cpp > CMakeFiles/pressure_test.dir/src/blockQueue.cpp.i

CMakeFiles/pressure_test.dir/src/blockQueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pressure_test.dir/src/blockQueue.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jackma/projects/mybRPC/src/blockQueue.cpp -o CMakeFiles/pressure_test.dir/src/blockQueue.cpp.s

CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o: CMakeFiles/pressure_test.dir/flags.make
CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o: /home/jackma/projects/mybRPC/src/mini_coroutine.cpp
CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o: CMakeFiles/pressure_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o -MF CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o.d -o CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o -c /home/jackma/projects/mybRPC/src/mini_coroutine.cpp

CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jackma/projects/mybRPC/src/mini_coroutine.cpp > CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.i

CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jackma/projects/mybRPC/src/mini_coroutine.cpp -o CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.s

CMakeFiles/pressure_test.dir/src/my_log.cpp.o: CMakeFiles/pressure_test.dir/flags.make
CMakeFiles/pressure_test.dir/src/my_log.cpp.o: /home/jackma/projects/mybRPC/src/my_log.cpp
CMakeFiles/pressure_test.dir/src/my_log.cpp.o: CMakeFiles/pressure_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/pressure_test.dir/src/my_log.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pressure_test.dir/src/my_log.cpp.o -MF CMakeFiles/pressure_test.dir/src/my_log.cpp.o.d -o CMakeFiles/pressure_test.dir/src/my_log.cpp.o -c /home/jackma/projects/mybRPC/src/my_log.cpp

CMakeFiles/pressure_test.dir/src/my_log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pressure_test.dir/src/my_log.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jackma/projects/mybRPC/src/my_log.cpp > CMakeFiles/pressure_test.dir/src/my_log.cpp.i

CMakeFiles/pressure_test.dir/src/my_log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pressure_test.dir/src/my_log.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jackma/projects/mybRPC/src/my_log.cpp -o CMakeFiles/pressure_test.dir/src/my_log.cpp.s

CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o: CMakeFiles/pressure_test.dir/flags.make
CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o: /home/jackma/projects/mybRPC/src/my_rpc.cpp
CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o: CMakeFiles/pressure_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o -MF CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o.d -o CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o -c /home/jackma/projects/mybRPC/src/my_rpc.cpp

CMakeFiles/pressure_test.dir/src/my_rpc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pressure_test.dir/src/my_rpc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jackma/projects/mybRPC/src/my_rpc.cpp > CMakeFiles/pressure_test.dir/src/my_rpc.cpp.i

CMakeFiles/pressure_test.dir/src/my_rpc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pressure_test.dir/src/my_rpc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jackma/projects/mybRPC/src/my_rpc.cpp -o CMakeFiles/pressure_test.dir/src/my_rpc.cpp.s

CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o: CMakeFiles/pressure_test.dir/flags.make
CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o: /home/jackma/projects/mybRPC/src/rpc.pb.cc
CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o: CMakeFiles/pressure_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o -MF CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o.d -o CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o -c /home/jackma/projects/mybRPC/src/rpc.pb.cc

CMakeFiles/pressure_test.dir/src/rpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pressure_test.dir/src/rpc.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jackma/projects/mybRPC/src/rpc.pb.cc > CMakeFiles/pressure_test.dir/src/rpc.pb.cc.i

CMakeFiles/pressure_test.dir/src/rpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pressure_test.dir/src/rpc.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jackma/projects/mybRPC/src/rpc.pb.cc -o CMakeFiles/pressure_test.dir/src/rpc.pb.cc.s

CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o: CMakeFiles/pressure_test.dir/flags.make
CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o: /home/jackma/projects/mybRPC/src/status_http_server.cpp
CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o: CMakeFiles/pressure_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o -MF CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o.d -o CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o -c /home/jackma/projects/mybRPC/src/status_http_server.cpp

CMakeFiles/pressure_test.dir/src/status_http_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pressure_test.dir/src/status_http_server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jackma/projects/mybRPC/src/status_http_server.cpp > CMakeFiles/pressure_test.dir/src/status_http_server.cpp.i

CMakeFiles/pressure_test.dir/src/status_http_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pressure_test.dir/src/status_http_server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jackma/projects/mybRPC/src/status_http_server.cpp -o CMakeFiles/pressure_test.dir/src/status_http_server.cpp.s

CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o: CMakeFiles/pressure_test.dir/flags.make
CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o: /home/jackma/projects/mybRPC/src/thread_pool.cpp
CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o: CMakeFiles/pressure_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o -MF CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o.d -o CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o -c /home/jackma/projects/mybRPC/src/thread_pool.cpp

CMakeFiles/pressure_test.dir/src/thread_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pressure_test.dir/src/thread_pool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jackma/projects/mybRPC/src/thread_pool.cpp > CMakeFiles/pressure_test.dir/src/thread_pool.cpp.i

CMakeFiles/pressure_test.dir/src/thread_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pressure_test.dir/src/thread_pool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jackma/projects/mybRPC/src/thread_pool.cpp -o CMakeFiles/pressure_test.dir/src/thread_pool.cpp.s

# Object files for target pressure_test
pressure_test_OBJECTS = \
"CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o" \
"CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o" \
"CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o" \
"CMakeFiles/pressure_test.dir/src/my_log.cpp.o" \
"CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o" \
"CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o" \
"CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o" \
"CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o"

# External object files for target pressure_test
pressure_test_EXTERNAL_OBJECTS =

pressure_test: CMakeFiles/pressure_test.dir/test/pressure_test.cpp.o
pressure_test: CMakeFiles/pressure_test.dir/src/blockQueue.cpp.o
pressure_test: CMakeFiles/pressure_test.dir/src/mini_coroutine.cpp.o
pressure_test: CMakeFiles/pressure_test.dir/src/my_log.cpp.o
pressure_test: CMakeFiles/pressure_test.dir/src/my_rpc.cpp.o
pressure_test: CMakeFiles/pressure_test.dir/src/rpc.pb.cc.o
pressure_test: CMakeFiles/pressure_test.dir/src/status_http_server.cpp.o
pressure_test: CMakeFiles/pressure_test.dir/src/thread_pool.cpp.o
pressure_test: CMakeFiles/pressure_test.dir/build.make
pressure_test: CMakeFiles/pressure_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/jackma/projects/mybRPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable pressure_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pressure_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pressure_test.dir/build: pressure_test
.PHONY : CMakeFiles/pressure_test.dir/build

CMakeFiles/pressure_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pressure_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pressure_test.dir/clean

CMakeFiles/pressure_test.dir/depend:
	cd /home/jackma/projects/mybRPC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jackma/projects/mybRPC /home/jackma/projects/mybRPC /home/jackma/projects/mybRPC/build /home/jackma/projects/mybRPC/build /home/jackma/projects/mybRPC/build/CMakeFiles/pressure_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/pressure_test.dir/depend

