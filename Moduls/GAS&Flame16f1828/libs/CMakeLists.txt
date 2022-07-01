set(SOURCES 
internet.c
# packets.c
# protocols.c
rf24.c
spi_master.c
timer.c
transport.c
wait.c
buffers.c

)
add_library(libs ${SOURCES})
target_include_directories(libs PUBLIC include/)