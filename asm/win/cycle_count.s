.data
format:
.asciz "latency=%d\n"

.text
.intel_syntax noprefix
.global _main
_main:

mov ebx, 0x10
0:
push ebx
rdtscp
mov ecx, eax

rdtsc

rdtsc

# store latency in edx
sub eax, ecx
sub eax, 12
#sub edx, 22 # latency due to calling latency measuring

push eax
lea edx, format
push edx
xor eax, eax
xor ecx, ecx
xor edx, edx
call _printf
add esp, 8

pop ebx
sub ebx, 1
cmp ebx, 0
jne 0b

call _exit
