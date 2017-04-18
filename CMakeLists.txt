cmake_minimum_required(VERSION 2.8)
enable_testing()

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -nostdlib -nostdinc")

add_custom_target(check COMMAND ${CMAKE_CTEST_COMMAND})

add_subdirectory(src)
add_subdirectory(tests)
