set(SOURCES 
logline.c
Serial.c
rf24.c
spi_master.c
timer.c
wait.c
)
set(_XTAL_FREQ 16000000)
add_library(libs ${SOURCES})
target_include_directories(libs PUBLIC include/)
