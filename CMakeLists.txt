cmake_minimum_required(VERSION 3.5)
enable_testing()

add_custom_target(check COMMAND ${CMAKE_CTEST_COMMAND})

add_subdirectory(src)
add_subdirectory(tests)
