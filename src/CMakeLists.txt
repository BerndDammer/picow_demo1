# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH ${PICO_SDK_PATH})



# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

project(blinkw C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(blinkw main.c )
# note cmake policy is to use absolute paths for interface libraries.



pico_set_program_name(blinkw "blinkw")
pico_set_program_version(blinkw "0.1")

target_sources(blinkw PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/main.c
        ${CMAKE_CURRENT_LIST_DIR}/blinker.c
        )

pico_enable_stdio_uart(blinkw 1)
pico_enable_stdio_usb(blinkw 1)

# Add the standard library to the build
target_link_libraries(blinkw 
	pico_stdlib
    hardware_clocks
    pico_cyw43_arch_none     # we need Wifi to access the GPIO, but we don't need anything else

)


pico_add_extra_outputs(blinkw)


