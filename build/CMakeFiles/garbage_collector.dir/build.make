# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /snap/cmake/340/bin/cmake

# The command to remove a file.
RM = /snap/cmake/340/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/abel/Escritorio/git/garbage_collector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abel/Escritorio/git/garbage_collector/build

# Include any dependencies generated for this target.
include CMakeFiles/garbage_collector.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/garbage_collector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/garbage_collector.dir/flags.make

CMakeFiles/garbage_collector.dir/source/main.cpp.o: CMakeFiles/garbage_collector.dir/flags.make
CMakeFiles/garbage_collector.dir/source/main.cpp.o: ../source/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abel/Escritorio/git/garbage_collector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/garbage_collector.dir/source/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/garbage_collector.dir/source/main.cpp.o -c /home/abel/Escritorio/git/garbage_collector/source/main.cpp

CMakeFiles/garbage_collector.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/garbage_collector.dir/source/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abel/Escritorio/git/garbage_collector/source/main.cpp > CMakeFiles/garbage_collector.dir/source/main.cpp.i

CMakeFiles/garbage_collector.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/garbage_collector.dir/source/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abel/Escritorio/git/garbage_collector/source/main.cpp -o CMakeFiles/garbage_collector.dir/source/main.cpp.s

# Object files for target garbage_collector
garbage_collector_OBJECTS = \
"CMakeFiles/garbage_collector.dir/source/main.cpp.o"

# External object files for target garbage_collector
garbage_collector_EXTERNAL_OBJECTS =

garbage_collector: CMakeFiles/garbage_collector.dir/source/main.cpp.o
garbage_collector: CMakeFiles/garbage_collector.dir/build.make
garbage_collector: CMakeFiles/garbage_collector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/abel/Escritorio/git/garbage_collector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable garbage_collector"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/garbage_collector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/garbage_collector.dir/build: garbage_collector

.PHONY : CMakeFiles/garbage_collector.dir/build

CMakeFiles/garbage_collector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/garbage_collector.dir/cmake_clean.cmake
.PHONY : CMakeFiles/garbage_collector.dir/clean

CMakeFiles/garbage_collector.dir/depend:
	cd /home/abel/Escritorio/git/garbage_collector/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abel/Escritorio/git/garbage_collector /home/abel/Escritorio/git/garbage_collector /home/abel/Escritorio/git/garbage_collector/build /home/abel/Escritorio/git/garbage_collector/build /home/abel/Escritorio/git/garbage_collector/build/CMakeFiles/garbage_collector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/garbage_collector.dir/depend

