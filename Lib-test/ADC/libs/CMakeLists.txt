set(SOURCES 
AToD.c
)
add_library(libs ${SOURCES})
target_include_directories(libs PUBLIC include/)