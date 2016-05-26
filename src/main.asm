[extern main]

section .text
global __sys_write
global _start
__sys_write:
  mov rax, 1
  syscall
  ret
_start:
  pop rdi                       ; argc
  pop rsi                       ; argv[0]
  call main
  mov rdi, rax
  mov rax, 60
  syscall
