# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/sigaretov/src/crypto_analysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sigaretov/src/crypto_analysis/Debug

# Include any dependencies generated for this target.
include CMakeFiles/aff_analysis.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/aff_analysis.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/aff_analysis.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aff_analysis.dir/flags.make

CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o: CMakeFiles/aff_analysis.dir/flags.make
CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o: ../aff_analysis.cpp
CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o: CMakeFiles/aff_analysis.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/crypto_analysis/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o -MF CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o.d -o CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o -c /home/sigaretov/src/crypto_analysis/aff_analysis.cpp

CMakeFiles/aff_analysis.dir/aff_analysis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aff_analysis.dir/aff_analysis.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/crypto_analysis/aff_analysis.cpp > CMakeFiles/aff_analysis.dir/aff_analysis.cpp.i

CMakeFiles/aff_analysis.dir/aff_analysis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aff_analysis.dir/aff_analysis.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/crypto_analysis/aff_analysis.cpp -o CMakeFiles/aff_analysis.dir/aff_analysis.cpp.s

CMakeFiles/aff_analysis.dir/tools.cpp.o: CMakeFiles/aff_analysis.dir/flags.make
CMakeFiles/aff_analysis.dir/tools.cpp.o: ../tools.cpp
CMakeFiles/aff_analysis.dir/tools.cpp.o: CMakeFiles/aff_analysis.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/crypto_analysis/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/aff_analysis.dir/tools.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aff_analysis.dir/tools.cpp.o -MF CMakeFiles/aff_analysis.dir/tools.cpp.o.d -o CMakeFiles/aff_analysis.dir/tools.cpp.o -c /home/sigaretov/src/crypto_analysis/tools.cpp

CMakeFiles/aff_analysis.dir/tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aff_analysis.dir/tools.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/crypto_analysis/tools.cpp > CMakeFiles/aff_analysis.dir/tools.cpp.i

CMakeFiles/aff_analysis.dir/tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aff_analysis.dir/tools.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/crypto_analysis/tools.cpp -o CMakeFiles/aff_analysis.dir/tools.cpp.s

CMakeFiles/aff_analysis.dir/galua_field.cpp.o: CMakeFiles/aff_analysis.dir/flags.make
CMakeFiles/aff_analysis.dir/galua_field.cpp.o: ../galua_field.cpp
CMakeFiles/aff_analysis.dir/galua_field.cpp.o: CMakeFiles/aff_analysis.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/crypto_analysis/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/aff_analysis.dir/galua_field.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aff_analysis.dir/galua_field.cpp.o -MF CMakeFiles/aff_analysis.dir/galua_field.cpp.o.d -o CMakeFiles/aff_analysis.dir/galua_field.cpp.o -c /home/sigaretov/src/crypto_analysis/galua_field.cpp

CMakeFiles/aff_analysis.dir/galua_field.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aff_analysis.dir/galua_field.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/crypto_analysis/galua_field.cpp > CMakeFiles/aff_analysis.dir/galua_field.cpp.i

CMakeFiles/aff_analysis.dir/galua_field.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aff_analysis.dir/galua_field.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/crypto_analysis/galua_field.cpp -o CMakeFiles/aff_analysis.dir/galua_field.cpp.s

# Object files for target aff_analysis
aff_analysis_OBJECTS = \
"CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o" \
"CMakeFiles/aff_analysis.dir/tools.cpp.o" \
"CMakeFiles/aff_analysis.dir/galua_field.cpp.o"

# External object files for target aff_analysis
aff_analysis_EXTERNAL_OBJECTS =

../aff_analysis: CMakeFiles/aff_analysis.dir/aff_analysis.cpp.o
../aff_analysis: CMakeFiles/aff_analysis.dir/tools.cpp.o
../aff_analysis: CMakeFiles/aff_analysis.dir/galua_field.cpp.o
../aff_analysis: CMakeFiles/aff_analysis.dir/build.make
../aff_analysis: CMakeFiles/aff_analysis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sigaretov/src/crypto_analysis/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../aff_analysis"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aff_analysis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aff_analysis.dir/build: ../aff_analysis
.PHONY : CMakeFiles/aff_analysis.dir/build

CMakeFiles/aff_analysis.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aff_analysis.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aff_analysis.dir/clean

CMakeFiles/aff_analysis.dir/depend:
	cd /home/sigaretov/src/crypto_analysis/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sigaretov/src/crypto_analysis /home/sigaretov/src/crypto_analysis /home/sigaretov/src/crypto_analysis/Debug /home/sigaretov/src/crypto_analysis/Debug /home/sigaretov/src/crypto_analysis/Debug/CMakeFiles/aff_analysis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aff_analysis.dir/depend

