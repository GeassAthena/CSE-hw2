# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\CSE\hw2\handout

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\CSE\hw2\handout\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cpy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpy.dir/flags.make

CMakeFiles/cpy.dir/cpy.c.obj: CMakeFiles/cpy.dir/flags.make
CMakeFiles/cpy.dir/cpy.c.obj: ../cpy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\CSE\hw2\handout\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cpy.dir/cpy.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cpy.dir\cpy.c.obj   -c F:\CSE\hw2\handout\cpy.c

CMakeFiles/cpy.dir/cpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cpy.dir/cpy.c.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\CSE\hw2\handout\cpy.c > CMakeFiles\cpy.dir\cpy.c.i

CMakeFiles/cpy.dir/cpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cpy.dir/cpy.c.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\CSE\hw2\handout\cpy.c -o CMakeFiles\cpy.dir\cpy.c.s

CMakeFiles/cpy.dir/cpy.c.obj.requires:

.PHONY : CMakeFiles/cpy.dir/cpy.c.obj.requires

CMakeFiles/cpy.dir/cpy.c.obj.provides: CMakeFiles/cpy.dir/cpy.c.obj.requires
	$(MAKE) -f CMakeFiles\cpy.dir\build.make CMakeFiles/cpy.dir/cpy.c.obj.provides.build
.PHONY : CMakeFiles/cpy.dir/cpy.c.obj.provides

CMakeFiles/cpy.dir/cpy.c.obj.provides.build: CMakeFiles/cpy.dir/cpy.c.obj


# Object files for target cpy
cpy_OBJECTS = \
"CMakeFiles/cpy.dir/cpy.c.obj"

# External object files for target cpy
cpy_EXTERNAL_OBJECTS =

cpy.exe: CMakeFiles/cpy.dir/cpy.c.obj
cpy.exe: CMakeFiles/cpy.dir/build.make
cpy.exe: CMakeFiles/cpy.dir/linklibs.rsp
cpy.exe: CMakeFiles/cpy.dir/objects1.rsp
cpy.exe: CMakeFiles/cpy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\CSE\hw2\handout\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cpy.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cpy.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpy.dir/build: cpy.exe

.PHONY : CMakeFiles/cpy.dir/build

CMakeFiles/cpy.dir/requires: CMakeFiles/cpy.dir/cpy.c.obj.requires

.PHONY : CMakeFiles/cpy.dir/requires

CMakeFiles/cpy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cpy.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cpy.dir/clean

CMakeFiles/cpy.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\CSE\hw2\handout F:\CSE\hw2\handout F:\CSE\hw2\handout\cmake-build-debug F:\CSE\hw2\handout\cmake-build-debug F:\CSE\hw2\handout\cmake-build-debug\CMakeFiles\cpy.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpy.dir/depend

