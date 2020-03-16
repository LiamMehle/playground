	.file	"measure_latency.cpp"
	.section	.text$_Z6cyclesv,"x"
	.linkonce discard
	.globl	__Z6cyclesv
	.def	__Z6cyclesv;	.scl	2;	.type	32;	.endef
__Z6cyclesv:
LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
/APP
 # 10 "measure_latency.cpp" 1
	rdtsc

 # 0 "" 2
/NO_APP
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$0, %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "avg:%.2f\12max:%i\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	call	___main
	movl	$0, 60(%esp)
	movl	$0, 56(%esp)
	movl	$0, 52(%esp)
L7:
	cmpl	$99999, 52(%esp)
	jg	L4
	call	__Z6cyclesv
	movl	%eax, 48(%esp)
/APP
 # 20 "measure_latency.cpp" 1
	cpuid
 # 0 "" 2
/NO_APP
	call	__Z6cyclesv
	movl	%eax, 44(%esp)
	movl	44(%esp), %eax
	subl	48(%esp), %eax
	movl	%eax, 40(%esp)
	movl	60(%esp), %eax
	cmpl	40(%esp), %eax
	jnb	L5
	movl	40(%esp), %eax
	jmp	L6
L5:
	movl	60(%esp), %eax
L6:
	movl	%eax, 60(%esp)
	movl	40(%esp), %eax
	addl	%eax, 56(%esp)
	addl	$1, 52(%esp)
	jmp	L7
L4:
	movl	56(%esp), %eax
	movl	$0, %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	fildq	16(%esp)
	fstpl	24(%esp)
	fldl	24(%esp)
	fldl	LC0
	fdivrp	%st, %st(1)
	fstpl	32(%esp)
	movl	60(%esp), %eax
	movl	%eax, 12(%esp)
	fldl	32(%esp)
	fstpl	4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 8
LC0:
	.long	0
	.long	1090021888
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
