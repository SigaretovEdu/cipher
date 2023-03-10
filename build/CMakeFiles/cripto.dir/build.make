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
CMAKE_SOURCE_DIR = /home/sigaretov/src/cipher

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sigaretov/src/cipher/build

# Include any dependencies generated for this target.
include CMakeFiles/cripto.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cripto.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cripto.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cripto.dir/flags.make

CMakeFiles/cripto.dir/source/kript.cpp.o: CMakeFiles/cripto.dir/flags.make
CMakeFiles/cripto.dir/source/kript.cpp.o: ../source/kript.cpp
CMakeFiles/cripto.dir/source/kript.cpp.o: CMakeFiles/cripto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/cipher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cripto.dir/source/kript.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cripto.dir/source/kript.cpp.o -MF CMakeFiles/cripto.dir/source/kript.cpp.o.d -o CMakeFiles/cripto.dir/source/kript.cpp.o -c /home/sigaretov/src/cipher/source/kript.cpp

CMakeFiles/cripto.dir/source/kript.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cripto.dir/source/kript.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/cipher/source/kript.cpp > CMakeFiles/cripto.dir/source/kript.cpp.i

CMakeFiles/cripto.dir/source/kript.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cripto.dir/source/kript.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/cipher/source/kript.cpp -o CMakeFiles/cripto.dir/source/kript.cpp.s

CMakeFiles/cripto.dir/source/substitution.cpp.o: CMakeFiles/cripto.dir/flags.make
CMakeFiles/cripto.dir/source/substitution.cpp.o: ../source/substitution.cpp
CMakeFiles/cripto.dir/source/substitution.cpp.o: CMakeFiles/cripto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/cipher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cripto.dir/source/substitution.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cripto.dir/source/substitution.cpp.o -MF CMakeFiles/cripto.dir/source/substitution.cpp.o.d -o CMakeFiles/cripto.dir/source/substitution.cpp.o -c /home/sigaretov/src/cipher/source/substitution.cpp

CMakeFiles/cripto.dir/source/substitution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cripto.dir/source/substitution.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/cipher/source/substitution.cpp > CMakeFiles/cripto.dir/source/substitution.cpp.i

CMakeFiles/cripto.dir/source/substitution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cripto.dir/source/substitution.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/cipher/source/substitution.cpp -o CMakeFiles/cripto.dir/source/substitution.cpp.s

CMakeFiles/cripto.dir/source/galua_field.cpp.o: CMakeFiles/cripto.dir/flags.make
CMakeFiles/cripto.dir/source/galua_field.cpp.o: ../source/galua_field.cpp
CMakeFiles/cripto.dir/source/galua_field.cpp.o: CMakeFiles/cripto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/cipher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cripto.dir/source/galua_field.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cripto.dir/source/galua_field.cpp.o -MF CMakeFiles/cripto.dir/source/galua_field.cpp.o.d -o CMakeFiles/cripto.dir/source/galua_field.cpp.o -c /home/sigaretov/src/cipher/source/galua_field.cpp

CMakeFiles/cripto.dir/source/galua_field.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cripto.dir/source/galua_field.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/cipher/source/galua_field.cpp > CMakeFiles/cripto.dir/source/galua_field.cpp.i

CMakeFiles/cripto.dir/source/galua_field.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cripto.dir/source/galua_field.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/cipher/source/galua_field.cpp -o CMakeFiles/cripto.dir/source/galua_field.cpp.s

CMakeFiles/cripto.dir/source/affine.cpp.o: CMakeFiles/cripto.dir/flags.make
CMakeFiles/cripto.dir/source/affine.cpp.o: ../source/affine.cpp
CMakeFiles/cripto.dir/source/affine.cpp.o: CMakeFiles/cripto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/cipher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cripto.dir/source/affine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cripto.dir/source/affine.cpp.o -MF CMakeFiles/cripto.dir/source/affine.cpp.o.d -o CMakeFiles/cripto.dir/source/affine.cpp.o -c /home/sigaretov/src/cipher/source/affine.cpp

CMakeFiles/cripto.dir/source/affine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cripto.dir/source/affine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/cipher/source/affine.cpp > CMakeFiles/cripto.dir/source/affine.cpp.i

CMakeFiles/cripto.dir/source/affine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cripto.dir/source/affine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/cipher/source/affine.cpp -o CMakeFiles/cripto.dir/source/affine.cpp.s

CMakeFiles/cripto.dir/source/affineRec.cpp.o: CMakeFiles/cripto.dir/flags.make
CMakeFiles/cripto.dir/source/affineRec.cpp.o: ../source/affineRec.cpp
CMakeFiles/cripto.dir/source/affineRec.cpp.o: CMakeFiles/cripto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/cipher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cripto.dir/source/affineRec.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cripto.dir/source/affineRec.cpp.o -MF CMakeFiles/cripto.dir/source/affineRec.cpp.o.d -o CMakeFiles/cripto.dir/source/affineRec.cpp.o -c /home/sigaretov/src/cipher/source/affineRec.cpp

CMakeFiles/cripto.dir/source/affineRec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cripto.dir/source/affineRec.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/cipher/source/affineRec.cpp > CMakeFiles/cripto.dir/source/affineRec.cpp.i

CMakeFiles/cripto.dir/source/affineRec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cripto.dir/source/affineRec.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/cipher/source/affineRec.cpp -o CMakeFiles/cripto.dir/source/affineRec.cpp.s

CMakeFiles/cripto.dir/source/tools.cpp.o: CMakeFiles/cripto.dir/flags.make
CMakeFiles/cripto.dir/source/tools.cpp.o: ../source/tools.cpp
CMakeFiles/cripto.dir/source/tools.cpp.o: CMakeFiles/cripto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sigaretov/src/cipher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/cripto.dir/source/tools.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cripto.dir/source/tools.cpp.o -MF CMakeFiles/cripto.dir/source/tools.cpp.o.d -o CMakeFiles/cripto.dir/source/tools.cpp.o -c /home/sigaretov/src/cipher/source/tools.cpp

CMakeFiles/cripto.dir/source/tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cripto.dir/source/tools.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sigaretov/src/cipher/source/tools.cpp > CMakeFiles/cripto.dir/source/tools.cpp.i

CMakeFiles/cripto.dir/source/tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cripto.dir/source/tools.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sigaretov/src/cipher/source/tools.cpp -o CMakeFiles/cripto.dir/source/tools.cpp.s

# Object files for target cripto
cripto_OBJECTS = \
"CMakeFiles/cripto.dir/source/kript.cpp.o" \
"CMakeFiles/cripto.dir/source/substitution.cpp.o" \
"CMakeFiles/cripto.dir/source/galua_field.cpp.o" \
"CMakeFiles/cripto.dir/source/affine.cpp.o" \
"CMakeFiles/cripto.dir/source/affineRec.cpp.o" \
"CMakeFiles/cripto.dir/source/tools.cpp.o"

# External object files for target cripto
cripto_EXTERNAL_OBJECTS =

cripto: CMakeFiles/cripto.dir/source/kript.cpp.o
cripto: CMakeFiles/cripto.dir/source/substitution.cpp.o
cripto: CMakeFiles/cripto.dir/source/galua_field.cpp.o
cripto: CMakeFiles/cripto.dir/source/affine.cpp.o
cripto: CMakeFiles/cripto.dir/source/affineRec.cpp.o
cripto: CMakeFiles/cripto.dir/source/tools.cpp.o
cripto: CMakeFiles/cripto.dir/build.make
cripto: CMakeFiles/cripto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sigaretov/src/cipher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable cripto"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cripto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cripto.dir/build: cripto
.PHONY : CMakeFiles/cripto.dir/build

CMakeFiles/cripto.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cripto.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cripto.dir/clean

CMakeFiles/cripto.dir/depend:
	cd /home/sigaretov/src/cipher/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sigaretov/src/cipher /home/sigaretov/src/cipher /home/sigaretov/src/cipher/build /home/sigaretov/src/cipher/build /home/sigaretov/src/cipher/build/CMakeFiles/cripto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cripto.dir/depend

