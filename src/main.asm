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
  mov rdx, rsp
  mov r8, rdi
  add r8, 1
  imul r8, 8
  add rdx, r8

  call main
  mov rdi, rax
  mov rax, 60
  syscall
