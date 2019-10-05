
.text
.global _start
_start:
mov $1, %rax # set syscall number (exit)
mov $1, %rbx # set exit value
int $0x80    # execute
