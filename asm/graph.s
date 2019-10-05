; compile with nasm
; nasm -f elf64 graph.s && ld graph.o -o graph

; there are 2 options, one is easier, the other harder

; for each pixel check if there should be a hash

; for each colum in the graph compute value
; save height depending on value
; for each pixel check if hash goes there

; this is the easy path
lines EQU 30
colls EQU 64
array_len EQU  ((colls)*lines+1)

section .data
k: dd 10

section .text
global _start

align 64
_start:

mov rdi, 0 ; lines
outer_loop_start:

mov rsi, 0
nested_loop_start:

mov rax, rsi
call fn
mov r8, rax
; compute array position
; array + (colls-coll) + line*colls
;             ^console weirdness left-to-right scanning
xor  rdx, rdx   ; just to be sure
mov  rcx, rdi   ; line
mov  r9, colls  ; r9 = colls
sub  r9, rsi    ; r9 = colls-coll
imul rcx, colls ; rcx=line*colls
lea  rax, [array]
add  rax, r9    ; rax=array+coll
add  rax, rcx   ; rax=array+coll+(line*colls)
                ; write char as neccessary
cmp rdi, r8
je line
mov bl, [empty]
mov byte [rax], bl ; write empty to array
jmp padd
line:
mov bl, [hash]
mov byte [rax], bl  ; write empty to array
padd:

add rsi, 1
cmp rsi, colls ; sets control registers
jb nested_loop_start

mov  rdx, rdi       ; line
mov  rcx, colls     ; colls (per line)
lea  rax, [array]   ; array
mov  bl, [nl]       ; load newline byte
imul rdx, rcx       ; colls * (line+1) = offset
add  rax, rdx       ; array + offset
mov  byte [rax], bl ; add newline

add rdi, 1
cmp rdi, lines ; sets control register
jb outer_loop_start

lea rax, [array]
add rax, array_len
mov bl,  [nl]
mov byte [rax], bl ; append newline

; write contents of array
mov eax, 4           ; write
mov ebx, 1           ; to stdout
lea ecx, [array]     ; what
mov edx, array_len+1 ; this much
int 0x80

jmp _exit

fn:

; float registers act as a LIFO stack
; st0 is allways on the top (strange behaveour)
; if [destination] operand is ommited, it is st0
; if st0 is mentioned, [source] becomes [destination] instead (usually)
; standard intel syntax applies


; v1
;mov bl, 10
;mov [x], eax
;mov [k], ebx
;fild dword [k]      ; st0 = k
;fild dword [x]      ; st1 = k, st0 = x
;fdiv st0, st1       ; st1 = k, st0 = x/k
;fcos                ; st1 = k, st0 = cos(x/k)
;fld1                ; st2 = k, st1 = cos(x/k), st0 = 1
;faddp st1           ; st1 = k, st0 = cos(x/k)+1       ; add one to result to keep 0<=y<=0
;fmulp st1           ; st0 = cos(x/k)*k
;fistp dword [x]     ; pop st0
;mov eax, [x]
;fistp dword [x]     ; pop st1
;ret

; v2 - instrucion rearangement
;mov bl, 10      ; kSI

;fld1            ; st0=1
;mov [k], ebx    ; move k into position
;mov [x], eax    ; move x into position
;fild dword [k]  ; st1=1, st0=k
;fild dword [x]  ; st2=1, st1=k, st0=x
;fdiv st1        ; st2=1, st1=k, st0=x/k
;fcos            ; st2=1, st1=k, st0=cos(x/k)
;fadd st2        ; st2=1, st1=k, st0=cos(x/k)+1
;fmul st1        ; st2=1, st1=k, st0=(cos(x/k)+1)k
;fistp dword [x]
;fistp dword [garbage]
;fistp dword [garbage]
;mov eax, [x]
;ret

; v3 - use stack instead
mov bl, [k]      ; k
push rbx        ; move k into position
fld1            ; st0=1
push rax        ; move x into position
fild qword [rsp+8]    ; st1=1, st0=k
fild qword [rsp]      ; st2=1, st1=k, st0=x
fdiv st1        ; st2=1, st1=k, st0=x/k
fcos            ; st2=1, st1=k, st0=cos(x/k)
add rsp, 8      ; fcos is slow, take advantage of out-of-order exec
fadd st2        ; st2=1, st1=k, st0=cos(x/k)+1
fmul st1        ; st2=1, st1=k, st0=(cos(x/k)+1)k
fistp dword [rsp]
xor rbx, rbx
pop rax
xor rcx, rcx
xor rdx, rdx
add rax, 5
fistp dword [rsp-16] ; drop value
fistp dword [rsp-8]
ret

; v- - xmm
;mov rbx, [k]      ; k*2
;je _bad_exit
;movq xmm0, rbx            ; move k into position
;pshufd xmm0, xmm0, 0x01_00_03_02 ; Packed SHUFfle Double-words [from], [to], connections
;; https://stackoverflow.com/questions/53643628/how-to-rotate-packed-quadwords-in-xmm-register
;movq xmm0, rax            ; move x into position
;;fild qword [rsp+8]  ; st0=k
;;fild qword [rsp]    ; t1=k, st0=x
;fdiv st1            ; st1=k, st0=x/k
;fcos                ; st1=k, st0=cos(x/k)
;;sub rsp, 8          ; fcos is slow, take advantage of out-of-order exec
;fmul st1            ; st1=k, st0=cos(x/k)k
;xor rdx, rdx        ; setup for div instruction
;;fistp dword [rsp]
;movq rax, xmm0
;mov rax, lines      ; rax=lines
;mov rbx, 2
;pshufd xmm0, xmm0, 0x01_00_03_02
;idiv rbx            ; rax=lines/2, rdx=remainder
;movq rdx, xmm0      ;              rdx=y
;mov rcx, rax        ; rcx=lines/2
;mov rax, rdx        ; rax=y
;add rax, rcx        ; rax=y-lines/2
;fistp dword [rsp-8] ; drop k
;ret

_bad_exit:
mov rax, 1

_exit:
mov rbx, rax
mov rax, 1
int 0x80

section .data
hash:  db "#"
empty: db " "
nl:    db 10

; -mmnemonic=intel -msyntax=intel
section .bss
array: resb array_len ; store output so I can only call print once
