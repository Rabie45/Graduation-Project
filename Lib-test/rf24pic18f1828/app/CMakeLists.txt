set(SOURCES
    src/main.c
)
set(_XTAL_FREQ 16000000)

add_executable(app ${SOURCES})
target_include_directories(app PRIVATE include/)

target_link_libraries(app libs)
