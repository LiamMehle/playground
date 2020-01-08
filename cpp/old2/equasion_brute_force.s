	.file	"equasion_brute_force.cpp"
	.text
	.globl	__Z1fPd
	.def	__Z1fPd;	.scl	2;	.type	32;	.endef
__Z1fPd:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	fldl	(%eax)
	fldl	8(%eax)
	fld	%st(1)
	fmuls	LC0
	fmulp	%st, %st(2)
	fmul	%st, %st(1)
	fmuls	LC1
	faddp	%st, %st(1)
	fadds	LC2
	ret
	.cfi_endproc
LFE16:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC8:
	.ascii "\12\12result:\0"
LC9:
	.ascii "x[%i] %f\12\0"
LC12:
	.ascii "y=%f\12\0"
	.section	.text.startup,"x"
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	call	___main
	fld1
	fstl	48(%esp)
	fstpl	56(%esp)
	jmp	L4
L42:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
L4:
	leal	48(%esp), %edx
	movl	%edx, (%esp)
	call	__Z1fPd
	flds	LC5
	fxch	%st(1)
	fucom	%st(1)
	fnstsw	%ax
	fstp	%st(1)
	sahf
	jp	L20
	je	L35
L20:
	fcoml	LC6
	fnstsw	%ax
	sahf
	jbe	L7
	fldl	LC7
	fcomp	%st(1)
	fnstsw	%ax
	sahf
	ja	L36
L7:
	fstpl	32(%esp)
	fldl	LC10
	faddl	48(%esp)
	movl	%edx, (%esp)
	fstl	48(%esp)
	fstpl	40(%esp)
	call	__Z1fPd
	fldl	32(%esp)
	movl	%edx, (%esp)
	fsubr	%st, %st(1)
	fstpl	16(%esp)
	fdivl	LC10
	fstpl	24(%esp)
	fldl	40(%esp)
	fsubl	LC10
	fstl	48(%esp)
	fstpl	32(%esp)
	fldl	LC10
	faddl	56(%esp)
	fstl	56(%esp)
	fstpl	40(%esp)
	call	__Z1fPd
	fldl	16(%esp)
	fsubr	%st, %st(1)
	fxch	%st(1)
	fdivl	LC10
	fldl	40(%esp)
	fsubl	LC10
	fstl	56(%esp)
	fldz
	fldl	24(%esp)
	fucom	%st(1)
	fnstsw	%ax
	sahf
	jp	L37
	jne	L38
	fxch	%st(3)
	fucom	%st(1)
	fnstsw	%ax
	fstp	%st(1)
	sahf
	jp	L39
	jne	L40
	fstp	%st(0)
	fstp	%st(1)
	fstp	%st(1)
	fld1
	fldl	32(%esp)
	fadd	%st(1), %st
	fstpl	48(%esp)
	faddp	%st, %st(1)
	jmp	L33
L37:
	fstp	%st(2)
	fstp	%st(0)
	fxch	%st(1)
	jmp	L22
L38:
	fstp	%st(2)
	fstp	%st(0)
	fxch	%st(1)
	jmp	L22
L39:
	fstp	%st(1)
	jmp	L22
L40:
	fstp	%st(1)
L22:
	fstpl	24(%esp)
	movl	$LC12, (%esp)
	fstpl	32(%esp)
	fstl	4(%esp)
	fstpl	40(%esp)
	call	_printf
	fldl	LC14
	fld	%st(0)
	fldl	40(%esp)
	fsubr	%st, %st(1)
	fldz
	fcomp	%st(2)
	fnstsw	%ax
	fldl	32(%esp)
	fldl	24(%esp)
	sahf
	jbe	L41
	fxch	%st(3)
	fchs
	jmp	L14
L41:
	fxch	%st(3)
L14:
	fmuls	LC13
	fld	%st(0)
	fxch	%st(5)
	fcom	%st(3)
	fnstsw	%ax
	sahf
	jbe	L31
	fstp	%st(0)
	fstp	%st(2)
	fxch	%st(1)
	fdivp	%st, %st(1)
	faddl	48(%esp)
	fstpl	48(%esp)
	fdivrp	%st, %st(1)
	faddl	56(%esp)
	jmp	L33
L31:
	fxch	%st(3)
	fcomp	%st(3)
	fnstsw	%ax
	fstp	%st(2)
	sahf
	jbe	L42
	fdivrp	%st, %st(1)
	fsubrl	48(%esp)
	fstpl	48(%esp)
	fdivrp	%st, %st(1)
	fsubrl	56(%esp)
L33:
	fstpl	56(%esp)
	jmp	L4
L35:
	fstp	%st(0)
	jmp	L5
L36:
	fstp	%st(0)
L5:
	movl	$LC8, (%esp)
	call	_puts
	fldl	48(%esp)
	movl	$0, 4(%esp)
	movl	$LC9, (%esp)
	fstpl	8(%esp)
	call	_printf
	fldl	56(%esp)
	movl	$1, 4(%esp)
	movl	$LC9, (%esp)
	fstpl	8(%esp)
	call	_printf
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	-1073741824
	.align 4
LC1:
	.long	1077936128
	.align 4
LC2:
	.long	1140457472
	.align 4
LC5:
	.long	1273752067
	.align 8
LC6:
	.long	1610610052
	.long	1098743104
	.align 8
LC7:
	.long	1610615420
	.long	1098743104
	.align 8
LC10:
	.long	-350469331
	.long	1058682594
	.align 4
LC13:
	.long	1056964608
	.align 8
LC14:
	.long	1610612736
	.long	1098743104
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
