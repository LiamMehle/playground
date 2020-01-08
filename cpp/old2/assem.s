	.file	"equasion_brute_force.cpp"
	.intel_syntax noprefix
	.text
	.globl	__Z1fPd
	.def	__Z1fPd;	.scl	2;	.type	32;	.endef
__Z1fPd:
LFB14:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax]
	fld	QWORD PTR LC0
	fmulp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax]
	fmulp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	add	eax, 8
	fld	QWORD PTR [eax]
	fmulp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	add	eax, 8
	fld	QWORD PTR [eax]
	fld	QWORD PTR LC1
	fmulp	st(1), st
	faddp	st(1), st
	fld	QWORD PTR LC2
	faddp	st(1), st
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC8:
	.ascii "\12\12result:\0"
LC9:
	.ascii "x[%i] %f\12\0"
LC11:
	.ascii "y=%f\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB16:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 96
	call	___main
	mov	DWORD PTR [esp+92], 0
L5:
	cmp	DWORD PTR [esp+92], 1
	jg	L4
	mov	eax, DWORD PTR [esp+92]
	fld1
	fstp	QWORD PTR [esp+32+eax*8]
	add	DWORD PTR [esp+92], 1
	jmp	L5
L4:
	lea	eax, [esp+32]
	mov	DWORD PTR [esp], eax
	call	__Z1fPd
	fstp	QWORD PTR [esp+56]
	fld	QWORD PTR [esp+56]
	fld	QWORD PTR LC5
	fucompp
	fnstsw	ax
	sahf
	jp	L29
	fld	QWORD PTR [esp+56]
	fld	QWORD PTR LC5
	fucompp
	fnstsw	ax
	sahf
	je	L6
L29:
	fld	QWORD PTR [esp+56]
	fcomp	QWORD PTR LC6
	fnstsw	ax
	sahf
	jbe	L8
	fld	QWORD PTR LC7
	fcomp	QWORD PTR [esp+56]
	fnstsw	ax
	sahf
	jbe	L8
L6:
	mov	DWORD PTR [esp], OFFSET FLAT:LC8
	call	_puts
	mov	DWORD PTR [esp+88], 0
L12:
	cmp	DWORD PTR [esp+88], 1
	jg	L11
	mov	eax, DWORD PTR [esp+88]
	fld	QWORD PTR [esp+32+eax*8]
	fstp	QWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+88]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC9
	call	_printf
	add	DWORD PTR [esp+88], 1
	jmp	L12
L11:
	mov	eax, 0
	jmp	L34
L8:
	lea	eax, [esp+16]
	mov	DWORD PTR [esp+8], eax
	lea	eax, [esp+32]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:__Z1fPd
	call	__Z10derivativeILi2EEvPFdPdES0_S0_
	mov	DWORD PTR [esp+84], 1
	mov	DWORD PTR [esp+80], 0
L17:
	cmp	DWORD PTR [esp+80], 1
	jg	L14
	mov	eax, DWORD PTR [esp+80]
	fld	QWORD PTR [esp+16+eax*8]
	fldz
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	L37
	fldz
	fucompp
	fnstsw	ax
	sahf
	je	L15
	jmp	L31
L37:
	fstp	st(0)
L31:
	mov	DWORD PTR [esp+84], 0
L15:
	add	DWORD PTR [esp+80], 1
	jmp	L17
L14:
	cmp	DWORD PTR [esp+84], 0
	je	L18
	mov	DWORD PTR [esp+76], 0
L20:
	cmp	DWORD PTR [esp+76], 1
	jg	L36
	mov	eax, DWORD PTR [esp+76]
	fld	QWORD PTR [esp+32+eax*8]
	fld1
	faddp	st(1), st
	mov	eax, DWORD PTR [esp+76]
	fstp	QWORD PTR [esp+32+eax*8]
	add	DWORD PTR [esp+76], 1
	jmp	L20
L18:
	fld	QWORD PTR [esp+56]
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC11
	call	_printf
	fld	QWORD PTR LC5
	fsub	QWORD PTR [esp+56]
	fstp	QWORD PTR [esp]
	call	__Z3absIdET_S0_
	fld	QWORD PTR LC12
	fdivp	st(1), st
	fstp	QWORD PTR [esp+48]
	fld	QWORD PTR LC5
	fcomp	QWORD PTR [esp+56]
	fnstsw	ax
	sahf
	jbe	L35
	mov	DWORD PTR [esp+72], 0
L25:
	cmp	DWORD PTR [esp+72], 1
	jg	L4
	mov	eax, DWORD PTR [esp+72]
	fld	QWORD PTR [esp+32+eax*8]
	mov	eax, DWORD PTR [esp+72]
	fld	QWORD PTR [esp+16+eax*8]
	fld	QWORD PTR [esp+48]
	fdivrp	st(1), st
	faddp	st(1), st
	mov	eax, DWORD PTR [esp+72]
	fstp	QWORD PTR [esp+32+eax*8]
	add	DWORD PTR [esp+72], 1
	jmp	L25
L35:
	fld	QWORD PTR [esp+56]
	fcomp	QWORD PTR LC5
	fnstsw	ax
	sahf
	jbe	L21
	mov	DWORD PTR [esp+68], 0
L28:
	cmp	DWORD PTR [esp+68], 1
	jg	L4
	mov	eax, DWORD PTR [esp+68]
	fld	QWORD PTR [esp+32+eax*8]
	mov	eax, DWORD PTR [esp+68]
	fld	QWORD PTR [esp+16+eax*8]
	fld	QWORD PTR [esp+48]
	fdivrp	st(1), st
	fsubp	st(1), st
	mov	eax, DWORD PTR [esp+68]
	fstp	QWORD PTR [esp+32+eax*8]
	add	DWORD PTR [esp+68], 1
	jmp	L28
L36:
	nop
L21:
	jmp	L4
L34:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.section	.text$_Z10derivativeILi2EEvPFdPdES0_S0_,"x"
	.linkonce discard
	.globl	__Z10derivativeILi2EEvPFdPdES0_S0_
	.def	__Z10derivativeILi2EEvPFdPdES0_S0_;	.scl	2;	.type	32;	.endef
__Z10derivativeILi2EEvPFdPdES0_S0_:
LFB17:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [ebp+8]
	call	eax
	fstp	QWORD PTR [ebp-24]
	mov	DWORD PTR [ebp-12], 0
L40:
	cmp	DWORD PTR [ebp-12], 1
	jg	L41
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	fld	QWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	fld	QWORD PTR LC13
	faddp	st(1), st
	fstp	QWORD PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [ebp+8]
	call	eax
	fsub	QWORD PTR [ebp-24]
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [ebp+16]
	add	eax, edx
	fld	QWORD PTR LC13
	fdivp	st(1), st
	fstp	QWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	fld	QWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	fld	QWORD PTR LC13
	fsubp	st(1), st
	fstp	QWORD PTR [eax]
	add	DWORD PTR [ebp-12], 1
	jmp	L40
L41:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.section	.text$_Z3absIdET_S0_,"x"
	.linkonce discard
	.globl	__Z3absIdET_S0_
	.def	__Z3absIdET_S0_;	.scl	2;	.type	32;	.endef
__Z3absIdET_S0_:
LFB18:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	fldz
	fcomp	QWORD PTR [ebp-8]
	fnstsw	ax
	sahf
	jbe	L47
	fld	QWORD PTR [ebp-8]
	fchs
	jmp	L45
L47:
	fld	QWORD PTR [ebp-8]
L45:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
	.align 8
LC0:
	.long	0
	.long	-1073741824
	.align 8
LC1:
	.long	0
	.long	1074266112
	.align 8
LC2:
	.long	0
	.long	1082081280
	.align 8
LC5:
	.long	1610612736
	.long	1098743104
	.align 8
LC6:
	.long	1610610052
	.long	1098743104
	.align 8
LC7:
	.long	1610615420
	.long	1098743104
	.align 8
LC12:
	.long	0
	.long	1073741824
	.align 8
LC13:
	.long	-350469331
	.long	1058682594
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
