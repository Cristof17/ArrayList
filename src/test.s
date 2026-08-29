	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	wzr, [x29, #-36]
	adrp	x8, l_constinit@PAGE
	add	x8, x8, l_constinit@PAGEOFF
	ldr	q0, [x8]
	sub	x2, x29, #32
	stur	q0, [x29, #-32]
	ldr	w8, [x8, #16]
	stur	w8, [x29, #-16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	mov	w3, #5                          ; =0x5
	bl	_ArrayListPerformConstruct
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	q0, [sp, #16]
	str	q0, [sp, #32]
	ldr	w8, [sp, #36]
                                        ; kill: def $x8 killed $w8
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_2
	b	LBB0_1
LBB0_1:
	bl	___stack_chk_fail
LBB0_2:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @constinit
l_constinit:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"List count: %d\n"

.subsections_via_symbols
