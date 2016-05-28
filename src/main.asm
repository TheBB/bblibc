[extern main]

section .text
global __sys_write
global __sys_brk
global _start
__sys_write:
  mov rax, 1
  syscall
  ret
__sys_brk:
  mov rax, 12
  syscall
  ret
_start:
  pop rdi                       ; argc
  mov rsi, rsp                  ; argv

  ;; Calculate envp in rdx
  mov rdx, rdi
  add rdx, 1
  imul rdx, 8
  add rdx, rsp

  call main
  mov rdi, rax
  mov rax, 60
  syscall
