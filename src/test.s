	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #416
	stp	x28, x27, [sp, #384]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #400]            ; 16-byte Folded Spill
	add	x29, sp, #400
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	stur	wzr, [x29, #-44]
	sub	x8, x29, #40
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-40]
	mov	x8, #2                          ; =0x2
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-32]
	sub	x0, x29, #192
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	sub	x1, x29, #96
	str	x1, [sp, #72]                   ; 8-byte Folded Spill
	mov	x2, #48                         ; =0x30
	str	x2, [sp, #88]                   ; 8-byte Folded Spill
	bl	_memcpy
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #64]                   ; 8-byte Folded Reload
	sub	x8, x29, #144
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	bl	_ArrayListPerformConstruct
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #88]                   ; 8-byte Folded Reload
	bl	_memcpy
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	str	x8, [sp, #200]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #200]
	ldur	x9, [x29, #-56]
	subs	x8, x8, x9
	b.gt	LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #200]
	sub	x8, x29, #96
	ldr	x8, [x8, x9, lsl #3]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #200]
	add	x8, x8, #1
	str	x8, [sp, #200]
	b	LBB0_1
LBB0_3:
	add	x0, sp, #104
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	sub	x1, x29, #96
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	mov	x2, #48                         ; =0x30
	str	x2, [sp, #40]                   ; 8-byte Folded Spill
	bl	_memcpy
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, sp, #152
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	mov	x1, #5                          ; =0x5
	mov	x2, #2                          ; =0x2
	bl	_ArrayListPerformInit
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #40]                   ; 8-byte Folded Reload
	bl	_memcpy
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #200]
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #200]
	ldur	x9, [x29, #-56]
	subs	x8, x8, x9
	b.gt	LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	x9, [sp, #200]
	sub	x8, x29, #96
	ldr	x8, [x8, x9, lsl #3]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #200]
	add	x8, x8, #1
	str	x8, [sp, #200]
	b	LBB0_4
LBB0_6:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_8
	b	LBB0_7
LBB0_7:
	bl	___stack_chk_fail
LBB0_8:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	add	sp, sp, #416
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%ld\n"

.subsections_via_symbols
