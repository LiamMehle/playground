# compile with gnu CC
# true == 0
# false != 0
# PS being PS

.text
.intel_syntax noprefix
.global _main
_main:

mov eax, 13
mov ebx, 2
call itoa

push eax
call _puts
jmp exit

# eax = int
# ebx = base
# returns eax = char*
.bss
int:
.skip 4
base:
.skip 4
string:
.skip 20
temp_string:
.skip 19
.text
itoa:
# store data
lea ecx, [int]
mov [ecx], eax
lea ecx, [base]
mov [ecx], ebx
# regs free
# 
lea eax, [string+19]
mov ebx, 0
mov [eax], ebx
lea edi, [temp_string] # string base + iteration counter

.balign 128
0: # loop

mov eax, [int]
mov ebx, [base]
xor edx, edx
div eax, ebx
# eax = new int
# edx = digit to store
mov [int], eax
# regs free except edx and edi

add edx, 48
mov [edi], dl
add edi, 1
# regs free except edi

# loop
mov eax, [int]
cmp eax, 0
jne 0b
# regs free

# string is reversed, lets un-reverse it
lea esi, [temp_string]
lea edi, [string]

mov eax, 0
mov [string+19], al

# find first digit in temp_string
# look for null terminator
xor ebx, ebx
xor ecx, ecx
0:
add ecx, 1
test [esi+ecx], bl
jne 0b

# set esi to last digit in temp_string
add esi, ecx
#sub esi, 1
# regs free except esi, edi
0:
mov al, [esi]
mov [edi], al
sub esi, 1
add edi, 1
cmp esi, temp_string
jne 0b
xor eax, eax # null terminator
mov [edi], al 

lea eax, [string]
ret

# exit
exit:
