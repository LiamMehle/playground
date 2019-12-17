# compile with gnu CC
# true == 0
# false != 0
# PS being PS
.data
string:
.asciz "Hello, world!" 
0:
.skip 10
str_len = 0b-string

.text
.intel_syntax noprefix
.global _main
_main:
# here the program starts
mov ebx, 
lea ebx, string
push ebx
call _puts

xor eax, eax
call _exit
