	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 1
	.intel_syntax noprefix
	.file	"measure_latency.cpp"
	.def	 "?work@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	__real@40c3880000000000 # -- Begin function ?work@@YAXXZ
	.section	.rdata,"dr",discard,__real@40c3880000000000
	.p2align	3
__real@40c3880000000000:
	.quad	4666723172467343360     # double 1.0E+4
	.globl	__real@4330000000000000
	.section	.rdata,"dr",discard,__real@4330000000000000
	.p2align	3
__real@4330000000000000:
	.quad	4841369599423283200     # double 4503599627370496
	.text
	.globl	"?work@@YAXXZ"
	.p2align	4, 0x90
"?work@@YAXXZ":                         # @"?work@@YAXXZ"
# %bb.0:
	push	ebp
	mov	ebp, esp
	and	esp, -8
	sub	esp, 56
	mov	dword ptr [esp + 40], 999999
	mov	dword ptr [esp + 36], 0
	mov	dword ptr [esp + 12], 0
LBB0_1:                                 # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [esp + 12], 10000
	jge	LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	#APP
	cpuid
	#NO_APP
	mov	dword ptr [esp + 28], eax
	call	"?cycles@@YA_KXZ"
	mov	dword ptr [esp + 52], eax
	mov	dword ptr [esp + 8], edx # 4-byte Spill
	call	"?cycles@@YA_KXZ"
	mov	dword ptr [esp + 48], eax
	mov	eax, dword ptr [esp + 48]
	mov	ecx, dword ptr [esp + 52]
	sub	eax, ecx
	mov	dword ptr [esp + 32], eax
	mov	eax, dword ptr [esp + 40]
	cmp	eax, dword ptr [esp + 32]
	jbe	LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [esp + 32]
	mov	dword ptr [esp + 4], eax # 4-byte Spill
	jmp	LBB0_5
LBB0_4:                                 #   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [esp + 40]
	mov	dword ptr [esp + 4], eax # 4-byte Spill
LBB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [esp + 4] # 4-byte Reload
	mov	dword ptr [esp + 40], eax
	mov	eax, dword ptr [esp + 44]
	cmp	eax, dword ptr [esp + 32]
	jae	LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [esp + 32]
	mov	dword ptr [esp], eax    # 4-byte Spill
	jmp	LBB0_8
LBB0_7:                                 #   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [esp + 44]
	mov	dword ptr [esp], eax    # 4-byte Spill
LBB0_8:                                 #   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [esp]    # 4-byte Reload
	mov	dword ptr [esp + 44], eax
	mov	eax, dword ptr [esp + 32]
	mov	ecx, dword ptr [esp + 36]
	add	ecx, eax
	mov	dword ptr [esp + 36], ecx
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [esp + 12]
	add	eax, 1
	mov	dword ptr [esp + 12], eax
	jmp	LBB0_1
LBB0_10:
	movsd	xmm0, qword ptr [__real@40c3880000000000] # xmm0 = mem[0],zero
	mov	eax, dword ptr [esp + 36]
	movsd	xmm1, qword ptr [__real@4330000000000000] # xmm1 = mem[0],zero
	movaps	xmm2, xmm1
	movd	xmm3, dword ptr [esp + 36] # xmm3 = mem[0],zero,zero,zero
	por	xmm3, xmm2
	subsd	xmm3, xmm1
	divsd	xmm3, xmm0
	movsd	qword ptr [esp + 16], xmm3
	mov	esp, ebp
	pop	ebp
	ret
                                        # -- End function
	.def	 "?cycles@@YA_KXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?cycles@@YA_KXZ"
	.globl	"?cycles@@YA_KXZ"       # -- Begin function ?cycles@@YA_KXZ
	.p2align	4, 0x90
"?cycles@@YA_KXZ":                      # @"?cycles@@YA_KXZ"
# %bb.0:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	#APP
	rdtsc

	#NO_APP
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	xor	edx, edx
	add	esp, 8
	pop	ebp
	ret
                                        # -- End function
	.def	 _main;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_main                   # -- Begin function main
	.p2align	4, 0x90
_main:                                  # @main
# %bb.0:
	push	ebp
	mov	ebp, esp
	and	esp, -8
	sub	esp, 88
	mov	dword ptr [esp + 84], 0
	mov	dword ptr [esp + 68], 999999
	mov	dword ptr [esp + 64], 0
	mov	dword ptr [esp + 44], 0
LBB2_1:                                 # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [esp + 44], 10000
	jge	LBB2_10
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	call	"?cycles@@YA_KXZ"
	mov	dword ptr [esp + 80], eax
	mov	dword ptr [esp + 40], edx # 4-byte Spill
	call	"?work@@YAXXZ"
	call	"?cycles@@YA_KXZ"
	mov	dword ptr [esp + 76], eax
	mov	eax, dword ptr [esp + 76]
	sub	eax, dword ptr [esp + 80]
	mov	dword ptr [esp + 60], eax
	mov	eax, dword ptr [esp + 68]
	cmp	eax, dword ptr [esp + 60]
	jbe	LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [esp + 60]
	mov	dword ptr [esp + 36], eax # 4-byte Spill
	jmp	LBB2_5
LBB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [esp + 68]
	mov	dword ptr [esp + 36], eax # 4-byte Spill
LBB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [esp + 36] # 4-byte Reload
	mov	dword ptr [esp + 68], eax
	mov	eax, dword ptr [esp + 72]
	cmp	eax, dword ptr [esp + 60]
	jae	LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [esp + 60]
	mov	dword ptr [esp + 32], eax # 4-byte Spill
	jmp	LBB2_8
LBB2_7:                                 #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [esp + 72]
	mov	dword ptr [esp + 32], eax # 4-byte Spill
LBB2_8:                                 #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [esp + 32] # 4-byte Reload
	mov	dword ptr [esp + 72], eax
	mov	eax, dword ptr [esp + 60]
	add	eax, dword ptr [esp + 64]
	mov	dword ptr [esp + 64], eax
# %bb.9:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [esp + 44]
	add	eax, 1
	mov	dword ptr [esp + 44], eax
	jmp	LBB2_1
LBB2_10:
	movsd	xmm0, qword ptr [__real@40c3880000000000] # xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [__real@4330000000000000] # xmm1 = mem[0],zero
	movaps	xmm2, xmm1
	movd	xmm3, dword ptr [esp + 64] # xmm3 = mem[0],zero,zero,zero
	por	xmm3, xmm2
	subsd	xmm3, xmm1
	divsd	xmm3, xmm0
	movsd	qword ptr [esp + 48], xmm3
	mov	eax, dword ptr [esp + 68]
	mov	ecx, dword ptr [esp + 72]
	movsd	xmm0, qword ptr [esp + 48] # xmm0 = mem[0],zero
	lea	edx, ["??_C@_0BI@FJPOKLDA@avg?3?$CF?42f?6max?3?$CFi?6min?3?$CFi?6?$AA@"]
	mov	dword ptr [esp], edx
	movsd	qword ptr [esp + 4], xmm0
	mov	dword ptr [esp + 12], ecx
	mov	dword ptr [esp + 16], eax
	call	dword ptr [__imp__printf]
	mov	ecx, dword ptr ["__imp_?_iob@@3PAU_iobuf@@A"]
	add	ecx, 32
	mov	dword ptr [esp], ecx
	mov	dword ptr [esp + 28], eax # 4-byte Spill
	call	dword ptr [__imp__fflush]
	xor	ecx, ecx
	mov	dword ptr [esp + 24], eax # 4-byte Spill
	mov	eax, ecx
	mov	esp, ebp
	pop	ebp
	ret
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_0BI@FJPOKLDA@avg?3?$CF?42f?6max?3?$CFi?6min?3?$CFi?6?$AA@"
	.globl	"??_C@_0BI@FJPOKLDA@avg?3?$CF?42f?6max?3?$CFi?6min?3?$CFi?6?$AA@" # @"??_C@_0BI@FJPOKLDA@avg?3?$CF?42f?6max?3?$CFi?6min?3?$CFi?6?$AA@"
"??_C@_0BI@FJPOKLDA@avg?3?$CF?42f?6max?3?$CFi?6min?3?$CFi?6?$AA@":
	.asciz	"avg:%.2f\nmax:%i\nmin:%i\n"


	.addrsig
	.addrsig_sym "?work@@YAXXZ"
	.addrsig_sym "?cycles@@YA_KXZ"
	.globl	__fltused
