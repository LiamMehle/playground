# compile with gnu assembler
.text
.global _start
_start:
mov rax, 0# set syscall number (exit)
call main
int 0x80    # execute
