cmake_minimum_required(VERSION 2.8)
enable_language(ASM_NASM)
enable_language(C)

add_library(c main.asm main.c)
target_include_directories(c INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
