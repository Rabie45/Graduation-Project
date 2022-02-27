set(SOURCES 
internet.c
# packets.c
# protocols.c
rf24.c
spi_master.c
time.c
transport.c
wait.c
Serial.c
logline.c
buffers.c
)
add_library(libs ${SOURCES})
target_include_directories(libs PUBLIC include/)