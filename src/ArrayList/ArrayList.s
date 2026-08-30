	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 2
	.globl	_ArrayListPerformCopy           ; -- Begin function ArrayListPerformCopy
	.p2align	2
_ArrayListPerformCopy:                  ; @ArrayListPerformCopy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformGetFirst       ; -- Begin function ArrayListPerformGetFirst
	.p2align	2
_ArrayListPerformGetFirst:              ; @ArrayListPerformGetFirst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x8, x0
	str	x8, [sp, #8]
	ldr	x8, [x0, #24]
	str	x8, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformGetLast        ; -- Begin function ArrayListPerformGetLast
	.p2align	2
_ArrayListPerformGetLast:               ; @ArrayListPerformGetLast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x8, x0
	str	x8, [sp, #8]
	ldr	x9, [x0, #8]
	add	x8, x0, #16
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformPutFirst       ; -- Begin function ArrayListPerformPutFirst
	.p2align	2
_ArrayListPerformPutFirst:              ; @ArrayListPerformPutFirst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x1
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x1
	stur	x0, [x29, #-8]
	stur	x8, [x29, #-16]
	ldr	x8, [x1, #8]
	stur	x8, [x29, #-24]
	add	x0, sp, #24
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x2, #48                         ; =0x30
	bl	_memcpy
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	_ArrayListMoveElementsRight
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x0, #24]
	ldr	x8, [x0, #24]
	str	x8, [sp, #16]
	ldr	x8, [x0, #8]
	add	x8, x8, #1
	str	x8, [x0, #8]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListMoveElementsRight     ; -- Begin function ArrayListMoveElementsRight
	.p2align	2
_ArrayListMoveElementsRight:            ; @ArrayListMoveElementsRight
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	str	x8, [sp, #24]
	ldr	x8, [x0, #8]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #20]
	b	LBB4_1
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	b.lt	LBB4_3
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x9, #16
	ldrsw	x10, [sp, #20]
	ldr	x8, [x8, x10, lsl #3]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #16]
	ldrsw	x8, [sp, #16]
	add	x9, x9, #16
	ldr	w10, [sp, #20]
	add	w10, w10, #1
	str	x8, [x9, w10, sxtw #3]
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB4_1
LBB4_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListRemoveFirst           ; -- Begin function ArrayListRemoveFirst
	.p2align	2
_ArrayListRemoveFirst:                  ; @ArrayListRemoveFirst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x1, x0
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x1
	stur	x0, [x29, #-8]
	str	xzr, [x1, #24]
	add	x0, sp, #16
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x2, #48                         ; =0x30
	bl	_memcpy
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	_ArrayListMoveElementsLeft
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0, #8]
	subs	x8, x8, #1
	str	x8, [x0, #8]
	ldr	x8, [x0, #24]
	stur	x8, [x29, #-16]
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListMoveElementsLeft      ; -- Begin function ArrayListMoveElementsLeft
	.p2align	2
_ArrayListMoveElementsLeft:             ; @ArrayListMoveElementsLeft
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #20]
	b	LBB6_1
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldrsw	x8, [sp, #20]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.gt	LBB6_3
	b	LBB6_2
LBB6_2:                                 ;   in Loop: Header=BB6_1 Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x9, #16
	ldr	w10, [sp, #20]
	add	w10, w10, #1
	ldr	x8, [x8, w10, sxtw #3]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #16]
	ldrsw	x8, [sp, #16]
	add	x9, x9, #16
	ldrsw	x10, [sp, #20]
	str	x8, [x9, x10, lsl #3]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB6_1
LBB6_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListRemoveLast            ; -- Begin function ArrayListRemoveLast
	.p2align	2
_ArrayListRemoveLast:                   ; @ArrayListRemoveLast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x8, x0
	str	x8, [sp, #8]
	ldr	x10, [x0, #8]
	add	x9, x0, #16
	mov	x8, #0                          ; =0x0
	str	x8, [x9, x10, lsl #3]
	ldr	x8, [x0, #8]
	subs	x8, x8, #1
	str	x8, [x0, #8]
	ldr	x9, [x0, #8]
	add	x8, x0, #16
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformPutLast        ; -- Begin function ArrayListPerformPutLast
	.p2align	2
_ArrayListPerformPutLast:               ; @ArrayListPerformPutLast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformConstruct      ; -- Begin function ArrayListPerformConstruct
	.p2align	2
_ArrayListPerformConstruct:             ; @ArrayListPerformConstruct
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #20]
	ldr	x8, [sp, #24]
	str	x8, [x0, #8]
	b	LBB9_1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.gt	LBB9_3
	b	LBB9_2
LBB9_2:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	w10, [sp, #20]
	subs	w10, w10, #1
	ldr	x8, [x8, w10, sxtw #3]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #16]
	ldrsw	x8, [sp, #16]
	add	x9, x9, #16
	ldrsw	x10, [sp, #20]
	str	x8, [x9, x10, lsl #3]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB9_1
LBB9_3:
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x2, #48                         ; =0x30
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformInit           ; -- Begin function ArrayListPerformInit
	.p2align	2
_ArrayListPerformInit:                  ; @ArrayListPerformInit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #32]
	ldur	x8, [x29, #-16]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #28]
	b	LBB10_1
LBB10_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.gt	LBB10_3
	b	LBB10_2
LBB10_2:                                ;   in Loop: Header=BB10_1 Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #24]
	ldrsw	x8, [sp, #28]
	add	x9, x9, #16
	ldrsw	x10, [sp, #24]
	str	x8, [x9, x10, lsl #3]
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB10_1
LBB10_3:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, #48                         ; =0x30
	bl	_memcpy
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
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
	str	x0, [sp, #8]
	ldr	x0, [sp]
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
	str	x0, [sp, #8]
	str	x1, [sp]
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
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #16]
	b	LBB13_1
LBB13_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldrsw	x8, [sp, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.gt	LBB13_3
	b	LBB13_2
LBB13_2:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x9, x8, #16
	ldrsw	x10, [sp, #16]
	mov	x8, #0                          ; =0x0
	str	x8, [x9, x10, lsl #3]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB13_1
LBB13_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	xzr, [x8, #8]
	str	wzr, [sp, #20]
	ldr	w0, [sp, #20]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformDelete         ; -- Begin function ArrayListPerformDelete
	.p2align	2
_ArrayListPerformDelete:                ; @ArrayListPerformDelete
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #16]
	b	LBB14_1
LBB14_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldrsw	x8, [sp, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.gt	LBB14_3
	b	LBB14_2
LBB14_2:                                ;   in Loop: Header=BB14_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x9, x8, #16
	ldrsw	x10, [sp, #16]
	mov	x8, #0                          ; =0x0
	str	x8, [x9, x10, lsl #3]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB14_1
LBB14_3:
	str	wzr, [sp, #20]
	ldr	w0, [sp, #20]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
