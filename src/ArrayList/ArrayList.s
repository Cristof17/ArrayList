	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 2
	.globl	_ArrayListPerformCopy           ; -- Begin function ArrayListPerformCopy
	.p2align	2
_ArrayListPerformCopy:                  ; @ArrayListPerformCopy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp]
	str	x3, [sp, #8]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformGetFirst       ; -- Begin function ArrayListPerformGetFirst
	.p2align	2
_ArrayListPerformGetFirst:              ; @ArrayListPerformGetFirst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	w8, [sp, #28]
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformGetLast        ; -- Begin function ArrayListPerformGetLast
	.p2align	2
_ArrayListPerformGetLast:               ; @ArrayListPerformGetLast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	add	x8, sp, #16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldrsw	x9, [sp, #20]
	add	x8, x8, #8
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformPutFirst       ; -- Begin function ArrayListPerformPutFirst
	.p2align	2
_ArrayListPerformPutFirst:              ; @ArrayListPerformPutFirst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	w2, [sp, #12]
	ldr	w8, [sp, #20]
	str	w8, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	_ArrayListMoveElementsRight
	ldr	w8, [sp, #12]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #4]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	w8, [sp, #20]
	str	w8, [sp, #12]
	b	LBB4_1
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	b.lt	LBB4_3
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
	add	x9, sp, #16
	add	x8, x9, #8
	ldrsw	x10, [sp, #12]
	ldr	w8, [x8, x10, lsl #2]
	add	x9, x9, #8
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB4_1
LBB4_3:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListRemoveFirst           ; -- Begin function ArrayListRemoveFirst
	.p2align	2
_ArrayListRemoveFirst:                  ; @ArrayListRemoveFirst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	wzr, [sp, #28]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	_ArrayListMoveElementsLeft
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	ldr	w8, [sp, #28]
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #12]
	b	LBB6_1
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.gt	LBB6_3
	b	LBB6_2
LBB6_2:                                 ;   in Loop: Header=BB6_1 Depth=1
	add	x9, sp, #16
	add	x8, x9, #8
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	ldr	w8, [x8, w10, sxtw #2]
	add	x9, x9, #8
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB6_1
LBB6_3:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListRemoveLast            ; -- Begin function ArrayListRemoveLast
	.p2align	2
_ArrayListRemoveLast:                   ; @ArrayListRemoveLast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	add	x8, sp, #16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldrsw	x11, [sp, #20]
	add	x10, x8, #8
	mov	w9, #0                          ; =0x0
	str	w9, [x10, x11, lsl #2]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	str	w9, [sp, #20]
	ldrsw	x9, [sp, #20]
	add	x8, x8, #8
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformPutLast        ; -- Begin function ArrayListPerformPutLast
	.p2align	2
_ArrayListPerformPutLast:               ; @ArrayListPerformPutLast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	w2, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformConstruct      ; -- Begin function ArrayListPerformConstruct
	.p2align	2
_ArrayListPerformConstruct:             ; @ArrayListPerformConstruct
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	mov	w8, #1                          ; =0x1
	str	w8, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #20]
	b	LBB9_1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.gt	LBB9_3
	b	LBB9_2
LBB9_2:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp]
	ldr	w8, [x8, x9, lsl #2]
	add	x9, sp, #16
	add	x9, x9, #8
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB9_1
LBB9_3:
	ldr	q0, [sp, #16]
	str	q0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ArrayListPerformInit           ; -- Begin function ArrayListPerformInit
	.p2align	2
_ArrayListPerformInit:                  ; @ArrayListPerformInit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	str	w8, [sp, #20]
	b	LBB10_1
LBB10_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.gt	LBB10_3
	b	LBB10_2
LBB10_2:                                ;   in Loop: Header=BB10_1 Depth=1
	ldr	w8, [sp, #12]
	add	x9, sp, #16
	add	x9, x9, #8
	ldrsw	x10, [sp, #4]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB10_1
LBB10_3:
	ldr	q0, [sp, #16]
	str	q0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	add	sp, sp, #48
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
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #8]
	b	LBB13_1
LBB13_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.gt	LBB13_3
	b	LBB13_2
LBB13_2:                                ;   in Loop: Header=BB13_1 Depth=1
	add	x8, sp, #16
	add	x9, x8, #8
	ldrsw	x10, [sp, #8]
	mov	w8, #0                          ; =0x0
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB13_1
LBB13_3:
	str	wzr, [sp, #20]
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #8]
	b	LBB14_1
LBB14_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.gt	LBB14_3
	b	LBB14_2
LBB14_2:                                ;   in Loop: Header=BB14_1 Depth=1
	add	x8, sp, #16
	add	x9, x8, #8
	ldrsw	x10, [sp, #8]
	mov	w8, #0                          ; =0x0
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB14_1
LBB14_3:
	str	wzr, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
