# compile with gnu CC
# true == 0
# false != 0
# PS being PS

.bss
output:
.skip 20

.data
string:
.asciz "Hello, world!" 
0:
str_len=0b-string

.text
.intel_syntax noprefix
.global _main
_main:
# here the program starts
lea ebx, [string]
push ebx 
call _puts # hello world


lea ebx, [output]
mov eax, 9
add eax, 48
mov [ebx], eax
mov eax, 0
mov [ebx+8], eax
push ebx
call _puts
