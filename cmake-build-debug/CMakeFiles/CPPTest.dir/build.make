# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/irfan/CLion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/irfan/CLion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/media/irfan/Projects and Researches/CLionProjects/CPPTest"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/media/irfan/Projects and Researches/CLionProjects/CPPTest/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/CPPTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CPPTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CPPTest.dir/flags.make

CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.o: CMakeFiles/CPPTest.dir/flags.make
CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.o: ../UVa/UVa100.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/irfan/Projects and Researches/CLionProjects/CPPTest/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.o -c "/media/irfan/Projects and Researches/CLionProjects/CPPTest/UVa/UVa100.cpp"

CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/media/irfan/Projects and Researches/CLionProjects/CPPTest/UVa/UVa100.cpp" > CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.i

CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/media/irfan/Projects and Researches/CLionProjects/CPPTest/UVa/UVa100.cpp" -o CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.s

# Object files for target CPPTest
CPPTest_OBJECTS = \
"CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.o"

# External object files for target CPPTest
CPPTest_EXTERNAL_OBJECTS =

CPPTest: CMakeFiles/CPPTest.dir/UVa/UVa100.cpp.o
CPPTest: CMakeFiles/CPPTest.dir/build.make
CPPTest: CMakeFiles/CPPTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/media/irfan/Projects and Researches/CLionProjects/CPPTest/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CPPTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CPPTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CPPTest.dir/build: CPPTest

.PHONY : CMakeFiles/CPPTest.dir/build

CMakeFiles/CPPTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CPPTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CPPTest.dir/clean

CMakeFiles/CPPTest.dir/depend:
	cd "/media/irfan/Projects and Researches/CLionProjects/CPPTest/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/media/irfan/Projects and Researches/CLionProjects/CPPTest" "/media/irfan/Projects and Researches/CLionProjects/CPPTest" "/media/irfan/Projects and Researches/CLionProjects/CPPTest/cmake-build-debug" "/media/irfan/Projects and Researches/CLionProjects/CPPTest/cmake-build-debug" "/media/irfan/Projects and Researches/CLionProjects/CPPTest/cmake-build-debug/CMakeFiles/CPPTest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/CPPTest.dir/depend
