set(SOURCES 
spi_master.c
)
add_library(libs ${SOURCES})
target_include_directories(libs PUBLIC include/)