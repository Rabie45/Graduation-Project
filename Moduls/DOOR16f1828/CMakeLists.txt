cmake_minimum_required(VERSION 3.3)

# set up the Microchip cross toolchain
set(CMAKE_TOOLCHAIN_FILE external/cmake-microchip/toolchain.cmake)

# set the default MCU model
set(MICROCHIP_MCU PIC16F1828)
set(CPU_FREQUENCY 16000000)
set(INTERNET_BASE_PIPE 0xe9,0x70,0x9d,0x6b,0xc5)

# if(NOT CMAKE_BUILD_TYPE)
#   set(CMAKE_BUILD_TYPE Release)
# endif()

project(xc8-cmake C)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wpedantic")
set(CMAKE_C_FLAGS_DEBUG "-g")
set(CMAKE_C_FLAGS_RELEASE "-O3")
# set(_XTAL_FREQ 16000000)
add_compile_definitions(_XTAL_FREQ=${CPU_FREQUENCY})
add_compile_definitions(INTERNET_BASE_PIPE=${INTERNET_BASE_PIPE})

#add_subdirectory(hal/)
add_subdirectory(app/)
add_subdirectory(libs/)
