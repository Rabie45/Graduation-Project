# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = F:/cmake-3.23.0-rc1-windows-x86_64/cmake-3.23.0-rc1-windows-x86_64/bin/cmake.exe

# The command to remove a file.
RM = F:/cmake-3.23.0-rc1-windows-x86_64/cmake-3.23.0-rc1-windows-x86_64/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:/GitHub/Graduation-Project/Moduls/Door

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:/GitHub/Graduation-Project/Moduls/Door/build

# Include any dependencies generated for this target.
include app/CMakeFiles/app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include app/CMakeFiles/app.dir/compiler_depend.make

# Include the progress variables for this target.
include app/CMakeFiles/app.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/app.dir/flags.make

app/CMakeFiles/app.dir/src/main.c.p1: app/CMakeFiles/app.dir/flags.make
app/CMakeFiles/app.dir/src/main.c.p1: ../app/src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Moduls/Door/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object app/CMakeFiles/app.dir/src/main.c.p1"
	cd F:/GitHub/Graduation-Project/Moduls/Door/build/app && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/app.dir/src/main.c.p1   -c F:/GitHub/Graduation-Project/Moduls/Door/app/src/main.c

app/CMakeFiles/app.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/app.dir/src/main.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

app/CMakeFiles/app.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/app.dir/src/main.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

# Object files for target app
app_OBJECTS = \
"CMakeFiles/app.dir/src/main.c.p1"

# External object files for target app
app_EXTERNAL_OBJECTS =

app/app: app/CMakeFiles/app.dir/src/main.c.p1
app/app: app/CMakeFiles/app.dir/build.make
app/app: libs/liblibs.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:/GitHub/Graduation-Project/Moduls/Door/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable app"
	cd F:/GitHub/Graduation-Project/Moduls/Door/build/app && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" -mcpu=16F877A -std=c99 --nofallback -Wpedantic   $(app_OBJECTS) $(app_EXTERNAL_OBJECTS)    ../libs/liblibs.a    -oapp

# Rule to build all files generated by this target.
app/CMakeFiles/app.dir/build: app/app
.PHONY : app/CMakeFiles/app.dir/build

app/CMakeFiles/app.dir/clean:
	cd F:/GitHub/Graduation-Project/Moduls/Door/build/app && $(CMAKE_COMMAND) -P CMakeFiles/app.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/app.dir/clean

app/CMakeFiles/app.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/GitHub/Graduation-Project/Moduls/Door F:/GitHub/Graduation-Project/Moduls/Door/app F:/GitHub/Graduation-Project/Moduls/Door/build F:/GitHub/Graduation-Project/Moduls/Door/build/app F:/GitHub/Graduation-Project/Moduls/Door/build/app/CMakeFiles/app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/app.dir/depend
