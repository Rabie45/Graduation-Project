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
CMAKE_SOURCE_DIR = F:/GitHub/Graduation-Project/Lib-test/Embedded-shs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build

# Include any dependencies generated for this target.
include libs/CMakeFiles/libs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libs/CMakeFiles/libs.dir/compiler_depend.make

# Include the progress variables for this target.
include libs/CMakeFiles/libs.dir/progress.make

# Include the compile flags for this target's objects.
include libs/CMakeFiles/libs.dir/flags.make

libs/CMakeFiles/libs.dir/internet.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/internet.c.p1: ../libs/internet.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libs/CMakeFiles/libs.dir/internet.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/internet.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/internet.c

libs/CMakeFiles/libs.dir/internet.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/internet.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/internet.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/internet.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

libs/CMakeFiles/libs.dir/rf24.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/rf24.c.p1: ../libs/rf24.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libs/CMakeFiles/libs.dir/rf24.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/rf24.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/rf24.c

libs/CMakeFiles/libs.dir/rf24.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/rf24.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/rf24.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/rf24.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

libs/CMakeFiles/libs.dir/spi_master.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/spi_master.c.p1: ../libs/spi_master.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libs/CMakeFiles/libs.dir/spi_master.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/spi_master.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/spi_master.c

libs/CMakeFiles/libs.dir/spi_master.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/spi_master.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/spi_master.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/spi_master.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

libs/CMakeFiles/libs.dir/time.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/time.c.p1: ../libs/time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libs/CMakeFiles/libs.dir/time.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/time.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/time.c

libs/CMakeFiles/libs.dir/time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/time.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/time.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

libs/CMakeFiles/libs.dir/transport.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/transport.c.p1: ../libs/transport.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libs/CMakeFiles/libs.dir/transport.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/transport.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/transport.c

libs/CMakeFiles/libs.dir/transport.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/transport.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/transport.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/transport.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

libs/CMakeFiles/libs.dir/wait.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/wait.c.p1: ../libs/wait.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libs/CMakeFiles/libs.dir/wait.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/wait.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/wait.c

libs/CMakeFiles/libs.dir/wait.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/wait.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/wait.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/wait.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

libs/CMakeFiles/libs.dir/Serial.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/Serial.c.p1: ../libs/Serial.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object libs/CMakeFiles/libs.dir/Serial.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/Serial.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/Serial.c

libs/CMakeFiles/libs.dir/Serial.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/Serial.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/Serial.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/Serial.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

libs/CMakeFiles/libs.dir/logline.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/logline.c.p1: ../libs/logline.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object libs/CMakeFiles/libs.dir/logline.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/logline.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/logline.c

libs/CMakeFiles/libs.dir/logline.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/logline.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/logline.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/logline.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

libs/CMakeFiles/libs.dir/buffers.c.p1: libs/CMakeFiles/libs.dir/flags.make
libs/CMakeFiles/libs.dir/buffers.c.p1: ../libs/buffers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object libs/CMakeFiles/libs.dir/buffers.c.p1"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-cc.exe" $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES)   -oCMakeFiles/libs.dir/buffers.c.p1   -c F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs/buffers.c

libs/CMakeFiles/libs.dir/buffers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libs.dir/buffers.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

libs/CMakeFiles/libs.dir/buffers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libs.dir/buffers.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

# Object files for target libs
libs_OBJECTS = \
"CMakeFiles/libs.dir/internet.c.p1" \
"CMakeFiles/libs.dir/rf24.c.p1" \
"CMakeFiles/libs.dir/spi_master.c.p1" \
"CMakeFiles/libs.dir/time.c.p1" \
"CMakeFiles/libs.dir/transport.c.p1" \
"CMakeFiles/libs.dir/wait.c.p1" \
"CMakeFiles/libs.dir/Serial.c.p1" \
"CMakeFiles/libs.dir/logline.c.p1" \
"CMakeFiles/libs.dir/buffers.c.p1"

# External object files for target libs
libs_EXTERNAL_OBJECTS =

libs/liblibs.a: libs/CMakeFiles/libs.dir/internet.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/rf24.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/spi_master.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/time.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/transport.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/wait.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/Serial.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/logline.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/buffers.c.p1
libs/liblibs.a: libs/CMakeFiles/libs.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library liblibs.a"
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && $(CMAKE_COMMAND) -P CMakeFiles/libs.dir/cmake_clean_target.cmake
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && "C:/Program Files/Microchip/xc8/v2.35/bin/xc8-ar.exe" -r liblibs.a $(libs_OBJECTS) $(libs_EXTERNAL_OBJECTS) 

# Rule to build all files generated by this target.
libs/CMakeFiles/libs.dir/build: libs/liblibs.a
.PHONY : libs/CMakeFiles/libs.dir/build

libs/CMakeFiles/libs.dir/clean:
	cd F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs && $(CMAKE_COMMAND) -P CMakeFiles/libs.dir/cmake_clean.cmake
.PHONY : libs/CMakeFiles/libs.dir/clean

libs/CMakeFiles/libs.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" F:/GitHub/Graduation-Project/Lib-test/Embedded-shs F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/libs F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs F:/GitHub/Graduation-Project/Lib-test/Embedded-shs/build/libs/CMakeFiles/libs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/CMakeFiles/libs.dir/depend

