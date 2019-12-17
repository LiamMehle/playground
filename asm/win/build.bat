# compile with gnu CC
# true == 0
# false != 0
# PS being PS
base=10
len=10
.bss
.balign 256
out: .space len

.text
.intel_syntax noprefix
.global _main
# .balign 1024 # page aligned
_main:
pop ebx    # argc
tst ebx, 1 # make sure 1 argument
pop eax    # prep argument
jne bad_exit

mov ecx, base # output base, required for division
lea edi, out
mov esi, len

# ecx holds base
# edi holds array address
# esi holds array len

main_loop: # eax holds nuber
           # extract the right-most digit
           # every iteration

# eax holds arg
# ecx holds base
mov ebx, eax
div ebx, ecx
# eax holds r-shifted value
# ebx holds original value
# ecx holds base
mov r9, eax
mul eax, ecx
mov r8, ebx
sub r8, eax
# ecx holds base
# r8 holds right-most digit
# r9 holds r-shifted value

# edi holds array address
# esi holds array len

# --------------------------
# eax holds rl-shifted value
# ebx holds original value


# get spot in array that we write to
# array named out
# write to array+array_len-iteration-1

mov ebx, len
sub ebx, esi
sub ebx, 1
# ebx holds offset from array address
# ecx holds base
# edi points to array
# esi holds iteration
# r8 holds right-most digit
# r9 holds r-shifted value

# edi holds array address
# esi holds array len

# --------------------------
# eax holds rl-shifted value


# store value
mov [edi, ebx], r8

cmp esi, 0
# loop condition
jne main_loop

# arraz built
# parse int as str on each element



bad_exit:
mov eax, 1
push eax
call _exit
# end
