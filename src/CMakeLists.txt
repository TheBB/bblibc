cmake_minimum_required(VERSION 3.5)
enable_language(ASM_NASM)

add_library(bblibc main.asm)
target_include_directories(bblibc INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
