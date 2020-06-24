	.file	"main.cpp"
	.intel_syntax noprefix
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB5055:
	.cfi_startproc
	sub	rsp, 568
	.cfi_def_cfa_offset 576
	movaps	xmm15, XMMWORD PTR .LC1[rip]
	movaps	xmm1, XMMWORD PTR .LC2[rip]
	mov	r9d, 1000000
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 552[rsp], rax
	xor	eax, eax
	movaps	xmm14, XMMWORD PTR .LC3[rip]
	movaps	xmm13, XMMWORD PTR .LC4[rip]
	lea	r11, 16[rsp]
	movaps	xmm12, XMMWORD PTR .LC5[rip]
	movaps	xmm11, XMMWORD PTR .LC6[rip]
	lea	r10, 60[rsp]
	movaps	xmm10, XMMWORD PTR .LC7[rip]
	movaps	xmm9, XMMWORD PTR .LC8[rip]
	movaps	xmm8, XMMWORD PTR .LC9[rip]
	movaps	xmm7, XMMWORD PTR .LC10[rip]
	movaps	xmm6, XMMWORD PTR .LC11[rip]
	movaps	xmm5, XMMWORD PTR .LC12[rip]
	movaps	xmm4, XMMWORD PTR .LC13[rip]
	movaps	xmm3, XMMWORD PTR .LC14[rip]
.L7:
	movaps	XMMWORD PTR 16[rsp], xmm15
	mov	rsi, r10
	mov	rdi, r11
	xor	eax, eax
	movaps	xmm0, XMMWORD PTR .LC15[rip]
	movaps	xmm2, XMMWORD PTR .LC16[rip]
	movaps	XMMWORD PTR 32[rsp], xmm1
	movaps	XMMWORD PTR 48[rsp], xmm14
	movaps	XMMWORD PTR 240[rsp], xmm0
	movaps	xmm0, XMMWORD PTR .LC17[rip]
	movaps	XMMWORD PTR 256[rsp], xmm2
	movaps	xmm2, XMMWORD PTR .LC18[rip]
	movaps	XMMWORD PTR 272[rsp], xmm0
	movaps	xmm0, XMMWORD PTR .LC19[rip]
	movaps	XMMWORD PTR 288[rsp], xmm2
	movaps	xmm2, XMMWORD PTR .LC20[rip]
	movaps	XMMWORD PTR 304[rsp], xmm0
	movaps	xmm0, XMMWORD PTR .LC21[rip]
	movaps	XMMWORD PTR 320[rsp], xmm2
	movaps	xmm2, XMMWORD PTR .LC22[rip]
	movaps	XMMWORD PTR 336[rsp], xmm0
	movaps	xmm0, XMMWORD PTR .LC23[rip]
	movaps	XMMWORD PTR 64[rsp], xmm13
	movaps	XMMWORD PTR 368[rsp], xmm0
	movaps	XMMWORD PTR 80[rsp], xmm12
	movaps	XMMWORD PTR 96[rsp], xmm11
	movaps	XMMWORD PTR 112[rsp], xmm10
	movaps	XMMWORD PTR 128[rsp], xmm9
	movaps	XMMWORD PTR 144[rsp], xmm8
	movaps	XMMWORD PTR 160[rsp], xmm7
	movaps	XMMWORD PTR 176[rsp], xmm6
	movaps	XMMWORD PTR 192[rsp], xmm5
	movaps	XMMWORD PTR 208[rsp], xmm4
	movaps	XMMWORD PTR 224[rsp], xmm3
	movaps	XMMWORD PTR 352[rsp], xmm2
	movaps	xmm2, XMMWORD PTR .LC24[rip]
	movaps	xmm0, XMMWORD PTR .LC25[rip]
	movaps	XMMWORD PTR 512[rsp], xmm1
	movaps	XMMWORD PTR 384[rsp], xmm2
	movaps	xmm2, XMMWORD PTR .LC26[rip]
	movaps	XMMWORD PTR 400[rsp], xmm0
	movaps	xmm0, XMMWORD PTR .LC27[rip]
	movaps	XMMWORD PTR 416[rsp], xmm2
	movaps	xmm2, XMMWORD PTR .LC28[rip]
	movaps	XMMWORD PTR 432[rsp], xmm0
	movaps	xmm0, XMMWORD PTR .LC29[rip]
	movaps	XMMWORD PTR 448[rsp], xmm2
	movaps	xmm2, XMMWORD PTR .LC30[rip]
	movaps	XMMWORD PTR 464[rsp], xmm0
	movaps	xmm0, XMMWORD PTR .LC31[rip]
	movaps	XMMWORD PTR 480[rsp], xmm2
	movaps	xmm2, XMMWORD PTR .LC32[rip]
	movaps	XMMWORD PTR 496[rsp], xmm0
	movaps	XMMWORD PTR 528[rsp], xmm2
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r8, rax
	add	rax, 1
	mov	rcx, rsi
	mov	rdx, rax
.L6:
#APP
# 57 "./src/matrix.h" 1
	# LLVM-MCA-BEGIN foo
# 0 "" 2
#NO_APP
	pxor	xmm2, xmm2
	movss	xmm0, DWORD PTR [rcx+r8*4]
	divss	xmm0, DWORD PTR [rdi]
	comiss	xmm0, xmm2
	je	.L4
	movss	xmm2, DWORD PTR -44[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR [rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR [rcx], xmm2
	movss	xmm2, DWORD PTR -40[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 4[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 4[rcx], xmm2
	movss	xmm2, DWORD PTR -36[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 8[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 8[rcx], xmm2
	movss	xmm2, DWORD PTR -32[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 12[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 12[rcx], xmm2
	movss	xmm2, DWORD PTR -28[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 16[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 16[rcx], xmm2
	movss	xmm2, DWORD PTR -24[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 20[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 20[rcx], xmm2
	movss	xmm2, DWORD PTR -20[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 24[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 24[rcx], xmm2
	movss	xmm2, DWORD PTR -16[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 28[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 28[rcx], xmm2
	movss	xmm2, DWORD PTR -12[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 32[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 32[rcx], xmm2
	movss	xmm2, DWORD PTR -8[rsi]
	mulss	xmm2, xmm0
	movss	DWORD PTR 12[rsp], xmm2
	movss	xmm2, DWORD PTR 36[rcx]
	subss	xmm2, DWORD PTR 12[rsp]
	movss	DWORD PTR 36[rcx], xmm2
	mulss	xmm0, DWORD PTR -4[rsi]
	movss	xmm2, DWORD PTR 40[rcx]
	subss	xmm2, xmm0
	movss	DWORD PTR 40[rcx], xmm2
#APP
# 65 "./src/matrix.h" 1
	# LLVM-MCA-END
# 0 "" 2
#NO_APP
.L4:
	add	rdx, 1
	add	rcx, 44
	cmp	rdx, 12
	jne	.L6
	add	rsi, 44
	add	rdi, 48
	cmp	rax, 11
	jne	.L2
	sub	r9d, 1
	jne	.L7
	mov	rax, QWORD PTR 552[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L12
	xor	eax, eax
	add	rsp, 568
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5055:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB5727:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	lea	rdi, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev@PLT
	mov	rdi, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	add	rsp, 8
	.cfi_def_cfa_offset 8
	lea	rdx, __dso_handle[rip]
	lea	rsi, _ZStL8__ioinit[rip]
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE5727:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1065353216
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.align 16
.LC2:
	.long	1065353216
	.long	1065353216
	.long	1073741824
	.long	1065353216
	.align 16
.LC3:
	.long	1065353216
	.long	1073741824
	.long	1065353216
	.long	1082130432
	.align 16
.LC4:
	.long	0
	.long	1082130432
	.long	1073741824
	.long	1082130432
	.align 16
.LC5:
	.long	1101004800
	.long	1096810496
	.long	1103101952
	.long	0
	.align 16
.LC6:
	.long	1082130432
	.long	0
	.long	1073741824
	.long	-1069547520
	.align 16
.LC7:
	.long	1065353216
	.long	-1082130432
	.long	1073741824
	.long	-1069547520
	.align 16
.LC8:
	.long	1106771968
	.long	1116733440
	.long	-1069547520
	.long	1065353216
	.align 16
.LC9:
	.long	-1069547520
	.long	1073741824
	.long	-1069547520
	.long	1082130432
	.align 16
.LC10:
	.long	1073741824
	.long	1116340224
	.long	-1035468800
	.long	1110441984
	.align 16
.LC11:
	.long	1073741824
	.long	-1069547520
	.long	1082130432
	.long	1110179840
	.align 16
.LC12:
	.long	-1073741824
	.long	1093664768
	.long	-1069547520
	.long	1082130432
	.align 16
.LC13:
	.long	-1073741824
	.long	1093664768
	.long	-1069547520
	.long	-1073741824
	.align 16
.LC14:
	.long	1147387904
	.long	-1069547520
	.long	1093664768
	.long	1084227584
	.align 16
.LC15:
	.long	1088421888
	.long	1091567616
	.long	1077936128
	.long	1084227584
	.align 16
.LC16:
	.long	1088421888
	.long	1091567616
	.long	1084227584
	.long	1088421888
	.align 16
.LC17:
	.long	1091567616
	.long	1120010240
	.long	1077936128
	.long	-1065353216
	.align 16
.LC18:
	.long	1073741824
	.long	1082130432
	.long	1077936128
	.long	-1065353216
	.align 16
.LC19:
	.long	1073741824
	.long	1077936128
	.long	-1065353216
	.long	1073741824
	.align 16
.LC20:
	.long	1118306304
	.long	1086324736
	.long	-1063256064
	.long	-1061158912
	.align 16
.LC21:
	.long	-1082130432
	.long	1113587712
	.long	-1063256064
	.long	-1061158912
	.align 16
.LC22:
	.long	1115947008
	.long	-1063256064
	.long	1118568448
	.long	1118437376
	.align 16
.LC23:
	.long	1116340224
	.long	-1059061760
	.long	-1065353216
	.long	1086324736
	.align 16
.LC24:
	.long	1101004800
	.long	-1059061760
	.long	-1065353216
	.long	1116340224
	.align 16
.LC25:
	.long	-1059061760
	.long	-1065353216
	.long	-1059061760
	.long	-1061158912
	.align 16
.LC26:
	.long	1082130432
	.long	1090519040
	.long	-1059061760
	.long	-1061158912
	.align 16
.LC27:
	.long	1082130432
	.long	1090519040
	.long	-1061158912
	.long	1082130432
	.align 16
.LC28:
	.long	1090519040
	.long	1082130432
	.long	-1055916032
	.long	-1054867456
	.align 16
.LC29:
	.long	-1055916032
	.long	-1055916032
	.long	-1055916032
	.long	-1054867456
	.align 16
.LC30:
	.long	-1055916032
	.long	-1055916032
	.long	-1054867456
	.long	-1055916032
	.align 16
.LC31:
	.long	-1054867456
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.align 16
.LC32:
	.long	1065353216
	.long	1073741824
	.long	1065353216
	.long	1065353216
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 10.1.0"
	.section	.note.GNU-stack,"",@progbits
