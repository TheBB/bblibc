[extern main]

section .data
  msg db "Hello, World!", 0x0a

section .text
  global _start
  global hello
hello:
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, 14
  syscall
  ret
_start:
  call main
  mov rdi, rax
  mov rax, 60
  syscall
