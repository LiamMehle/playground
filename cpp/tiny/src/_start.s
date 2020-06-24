# compile with gnu assembler
.text
.intel_syntax noprefix
.global _start
_start:
call _main # custom exit function returns exit status in rdi
#mov  rdi, rax
mov  rax, 60 # set syscall number (exit)
syscall   # exit
