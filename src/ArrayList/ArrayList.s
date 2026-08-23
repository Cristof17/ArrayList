	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 2
	.globl	_ArrayListPerformCopy           ; -- Begin function ArrayListPerformCopy
	.p2align	2
_ArrayListPerformCopy:                  ; @ArrayListPerformCopy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #24]
	ldur	x8, [sp, #28]
	str	x8, [sp, #40]
	ldr	w8, [sp, #36]
	str	w8, [sp, #48]
	ldr	x8, [sp, #40]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #48]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
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
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformGetFirst       ; -- Begin function ArrayListPerformGetFirst
	.p2align	2
_ArrayListPerformGetFirst:              ; @ArrayListPerformGetFirst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	w8, [sp, #32]
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB1_2
	b	LBB1_1
LBB1_1:
	bl	___stack_chk_fail
LBB1_2:
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformGetLast        ; -- Begin function ArrayListPerformGetLast
	.p2align	2
_ArrayListPerformGetLast:               ; @ArrayListPerformGetLast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	ldr	x9, [sp, #24]
	add	x8, sp, #8
	str	x9, [sp, #8]
	ldr	w9, [sp, #32]
	str	w9, [sp, #16]
	ldrsw	x9, [sp, #8]
	add	x8, x8, #4
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB2_2
	b	LBB2_1
LBB2_1:
	bl	___stack_chk_fail
LBB2_2:
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformPutFirst       ; -- Begin function ArrayListPerformPutFirst
	.p2align	2
_ArrayListPerformPutFirst:              ; @ArrayListPerformPutFirst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	w8, [sp, #32]
	str	w8, [sp, #16]
	str	w2, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB3_2
	b	LBB3_1
LBB3_1:
	bl	___stack_chk_fail
LBB3_2:
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformPutLast        ; -- Begin function ArrayListPerformPutLast
	.p2align	2
_ArrayListPerformPutLast:               ; @ArrayListPerformPutLast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	w8, [sp, #32]
	str	w8, [sp, #16]
	str	w2, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB4_2
	b	LBB4_1
LBB4_1:
	bl	___stack_chk_fail
LBB4_2:
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformConstruct      ; -- Begin function ArrayListPerformConstruct
	.p2align	2
_ArrayListPerformConstruct:             ; @ArrayListPerformConstruct
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	x8, x1
	str	w8, [sp, #24]
	str	x0, [sp, #16]
	ldur	x8, [sp, #28]
	stur	x8, [x29, #-24]
	ldr	w8, [sp, #36]
	stur	w8, [x29, #-16]
	ldur	x8, [x29, #-24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB5_2
	b	LBB5_1
LBB5_1:
	bl	___stack_chk_fail
LBB5_2:
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformInit           ; -- Begin function ArrayListPerformInit
	.p2align	2
_ArrayListPerformInit:                  ; @ArrayListPerformInit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	w8, [sp, #32]
	str	w8, [sp, #16]
	str	wzr, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB6_2
	b	LBB6_1
LBB6_1:
	bl	___stack_chk_fail
LBB6_2:
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListGet                   ; -- Begin function ArrayListGet
	.p2align	2
_ArrayListGet:                          ; @ArrayListGet
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x8, x0
	str	w8, [sp, #12]
	ldr	w0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPut                   ; -- Begin function ArrayListPut
	.p2align	2
_ArrayListPut:                          ; @ArrayListPut
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x8, x0
	str	w8, [sp, #12]
	str	w1, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformRuin           ; -- Begin function ArrayListPerformRuin
	.p2align	2
_ArrayListPerformRuin:                  ; @ArrayListPerformRuin
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	x8, x0
	str	w8, [sp, #28]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformDelete         ; -- Begin function ArrayListPerformDelete
	.p2align	2
_ArrayListPerformDelete:                ; @ArrayListPerformDelete
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	w8, [sp, #32]
	str	w8, [sp, #16]
	str	wzr, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB10_2
	b	LBB10_1
LBB10_1:
	bl	___stack_chk_fail
LBB10_2:
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
