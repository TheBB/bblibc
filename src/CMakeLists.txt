cmake_minimum_required(VERSION 3.5)
enable_language(ASM_NASM)
enable_language(C)

add_library(bblibc main.asm print.c)
target_include_directories(bblibc INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
