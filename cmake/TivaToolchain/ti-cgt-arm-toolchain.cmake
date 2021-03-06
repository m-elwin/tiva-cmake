# Toolchain file for the ti-cgt-arm compiler.
# See arm-none-eabi-gcc-toolchain.cmake for a more thorough explanation of how this file works
set(CMAKE_SYSTEM_NAME arm-none-eabi)
set(CMAKE_SYSTEM_PROCESSOR TM4C123GH6PM CACHE STRING "The microcontroller model")

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/../TivaCMake)
find_package(TiCgtArm REQUIRED)


# only set if not set otherwise the user is overriding
set(CMAKE_C_COMPILER ${TiCgtArm_EXECUTABLE} CACHE STRING "C compiler version")
set(CMAKE_CXX_COMPILER ${TiCgtArm_EXECUTABLE} CACHE STRING "CXX compiler version") # the ti c and c++ compilers are the same I think
set(CMAKE_C_LIBRARY_ARCHITECTURE arm-none-eabi)

# Setup search paths for external software that we need
set(CMAKE_FIND_ROOT_PATH "${TiCgtArm_ROOT_DIR}/..")
