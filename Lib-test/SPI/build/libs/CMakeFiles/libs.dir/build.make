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
CMAKE_SOURCE_DIR = "E:/PIC project/pic16f18spi"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:/PIC project/pic16f18spi/build"

# Include any dependencies generated for this target.
include libs/CMakeFiles/libs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libs/CMakeFiles/libs.dir/compiler_depend.make

# Include the progress variables for this target.
include libs/CMakeFiles/libs.dir/progress.make

# Include the compile flags for this target's objects.
include libs/CMakeFiles/libs.dir/flags.make

libs/CMakeFiles/libs.dir/spi_master.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/spi_master.c.p1: ../libs/spi_master.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:/PIC project/pic16f18spi/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object libs/CMakeFiles/libs.dir/spi_master.c.p1"
	cd "E:/PIC project/pic16f18spi/build/libs" && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/spi_master.c.p1   -c "E:/PIC project/pic16f18spi/libs/spi_master.c"

libs/CMakeFiles/libs.dir/spi_master.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/spi_master.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/spi_master.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/spi_master.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

# Object files for target libs
libs_OBJECTS = \
"CMakeFiles/libs.dir/spi_master.c.p1"

# External object files for target libs
libs_EXTERNAL_OBJECTS =

libs/liblibs.a: libs/CMakeFiles/libs.dir/spi_master.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="E:/PIC project/pic16f18spi/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liblibs.a"
	cd "E:/PIC project/pic16f18spi/build/libs" && $(CMAKE_COMMAND) -P CMakeFiles/libs.dir/cmake_clean_target.cmake
	cd "E:/PIC project/pic16f18spi/build/libs" && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-ar.exe" -r liblibs.a $(libs_OBJECTS) $(libs_EXTERNAL_OBJECTS) 

# Rule to build all files generated by this target.
libs/CMakeFiles/libs.dir/build: libs/liblibs.a
.PHONY : libs/CMakeFiles/libs.dir/build

libs/CMakeFiles/libs.dir/clean:
	cd "E:/PIC project/pic16f18spi/build/libs" && $(CMAKE_COMMAND) -P CMakeFiles/libs.dir/cmake_clean.cmake
.PHONY : libs/CMakeFiles/libs.dir/clean

libs/CMakeFiles/libs.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "E:/PIC project/pic16f18spi" "E:/PIC project/pic16f18spi/libs" "E:/PIC project/pic16f18spi/build" "E:/PIC project/pic16f18spi/build/libs" "E:/PIC project/pic16f18spi/build/libs/CMakeFiles/libs.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : libs/CMakeFiles/libs.dir/depend

