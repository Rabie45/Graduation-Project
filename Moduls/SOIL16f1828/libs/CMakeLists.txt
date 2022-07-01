set(SOURCES 
internet.c
transport.c
buffers.c
logline.c
Serial.c
rf24.c
spi_master.c
timer.c
wait.c
AToD.c
)
set(_XTAL_FREQ 16000000)
add_library(libs ${SOURCES})
target_include_directories(libs PUBLIC include/)
