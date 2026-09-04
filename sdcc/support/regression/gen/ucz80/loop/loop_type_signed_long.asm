;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module loop_type_signed_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testLoop
	.globl _jump
	.globl _jump_func
	.globl _address
	.globl _modify2
	.globl _modify1
	.globl _loopm
	.globl _loop16
	.globl _loop8
	.globl _longjmp
	.globl ___setjmp
	.globl ___prints
	.globl ___fail
	.globl _array
	.globl ___numCases
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_array::
	.ds 300
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area _DABS (ABS)
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/loop/loop_type_signed_long.c:15: void loop8(unsigned char *a, signed long n)
;	genLabel
;	genFunction
;	---------------------------------
; Function loop8
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_loop8::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26a merged push and ex (sp), since hl isn't used.
	push	hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/loop/loop_type_signed_long.c:17: for(signed long i = 0; i < n; i++)
;	genAssign
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
; common peephole 174a reused value still in bc.
	ld	h, b
	ld	l, c
;	genLabel
00103$:
;	genCmpLt
	ld	a, c
	sub	a, 4 (ix)
	ld	a, b
	sbc	a, 5 (ix)
	ld	a, l
	sbc	a, 6 (ix)
	ld	a, h
	sbc	a, 7 (ix)
	jp	po, 00124$
	xor	a, #0x80
00124$:
	jp	p, 00105$
;	skipping generated iCode
;cases/loop/loop_type_signed_long.c:18: a[i * n] = 8;
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	bc
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 4 (ix)
	ld	d, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	iy
	pop	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
;	genPlus
	ld	a, e
	add	a, -2 (ix)
	ld	e, a
	ld	a, d
	adc	a, -1 (ix)
	ld	d, a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x08
	ld	(de), a
;cases/loop/loop_type_signed_long.c:17: for(signed long i = 0; i < n; i++)
;	genPlus
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00125$.
	inc	b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00125$.
	inc	hl
; common peephole 159 removed unused label 00125$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00105$:
;cases/loop/loop_type_signed_long.c:19: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total loop8 function size at codegen: 8 bytes.
;cases/loop/loop_type_signed_long.c:22: void loop16(unsigned char *a)
;	genLabel
;	genFunction
;	---------------------------------
; Function loop16
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_loop16::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/loop/loop_type_signed_long.c:24: for (signed long i = 0; i < 300; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00103$:
;	genCmpLt
	ld	a, c
	sub	a, #0x2c
	ld	a, b
	sbc	a, #0x01
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/loop/loop_type_signed_long.c:25: a[i] = 16;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerSet
	ld	(hl), #0x10
;cases/loop/loop_type_signed_long.c:24: for (signed long i = 0; i < 300; i++)
;	genPlus
	inc	bc
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/loop/loop_type_signed_long.c:26: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
; common peephole 152 removed unused ret.
;	Total loop16 function size at codegen: 1 bytes.
;cases/loop/loop_type_signed_long.c:29: void loopm(unsigned char *a)
;	genLabel
;	genFunction
;	---------------------------------
; Function loopm
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_loopm::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/loop/loop_type_signed_long.c:31: for (signed long i = (1ul << 20); i < (1ul << 20) + 1; i++)
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), #0x10
	ld	-1 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genLabel
00103$:
;	genCast
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
	push	hl
	push	bc
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, c
	sub	a, #0x01
	ld	a, b
	sbc	a, #0x00
	ld	a, l
	sbc	a, #0x10
	ld	a, h
	sbc	a, #0x00
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/loop/loop_type_signed_long.c:32: a[i - (1ul << 20)] = 1;
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	hl, de
;	genPointerSet
	ld	(hl), #0x01
;cases/loop/loop_type_signed_long.c:31: for (signed long i = (1ul << 20); i < (1ul << 20) + 1; i++)
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00124$.
	inc	-3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00124$.
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00124$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00124$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00105$:
;cases/loop/loop_type_signed_long.c:33: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total loopm function size at codegen: 5 bytes.
;cases/loop/loop_type_signed_long.c:35: void modify1(signed long *p)
;	genLabel
;	genFunction
;	---------------------------------
; Function modify1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_modify1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/loop/loop_type_signed_long.c:37: *p = 17;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x11
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/loop/loop_type_signed_long.c:38: }
;	genEndFunction
	ret
;	Total modify1 function size at codegen: 1 bytes.
;cases/loop/loop_type_signed_long.c:40: void modify2(signed long *p)
;	genLabel
;	genFunction
;	---------------------------------
; Function modify2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_modify2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/loop/loop_type_signed_long.c:42: *p = (1ul << 30);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), #0x40
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/loop/loop_type_signed_long.c:43: }
;	genEndFunction
	ret
;	Total modify2 function size at codegen: 1 bytes.
;cases/loop/loop_type_signed_long.c:46: void address(unsigned char *a)
;	genLabel
;	genFunction
;	---------------------------------
; Function address
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_address::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/loop/loop_type_signed_long.c:48: for (signed long i = (1ul << 28); i < (1ul << 30); i++)
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x10
;	genLabel
00104$:
;	genCast
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, h
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00101$
;	skipping generated iCode
;cases/loop/loop_type_signed_long.c:50: modify1(&i);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_modify1
	pop	bc
;cases/loop/loop_type_signed_long.c:51: a[i] = 17;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerSet
	ld	(hl), #0x11
;cases/loop/loop_type_signed_long.c:52: modify2(&i);
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_modify2
	pop	bc
;cases/loop/loop_type_signed_long.c:48: for (signed long i = (1ul << 28); i < (1ul << 30); i++)
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00143$.
	inc	-3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00143$.
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00143$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00143$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00101$:
;cases/loop/loop_type_signed_long.c:55: for (signed long i = (1ul << 28); i < (1ul << 30); i++)
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x10
;	genLabel
00107$:
;	genCast
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, h
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00109$
;	skipping generated iCode
;cases/loop/loop_type_signed_long.c:57: signed long *p = &i;
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genCast
;	(locations are the same)
;cases/loop/loop_type_signed_long.c:58: *p = 18;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0x12
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/loop/loop_type_signed_long.c:59: a[i] = 18;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerSet
	ld	(hl), #0x12
;cases/loop/loop_type_signed_long.c:60: *p = (1ul << 30);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
	inc	de
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x40
	ld	(de), a
;cases/loop/loop_type_signed_long.c:55: for (signed long i = (1ul << 28); i < (1ul << 30); i++)
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
; common peephole 84 jumped to 00107$ directly instead of via 00144$.
	inc	-3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
; common peephole 84 jumped to 00107$ directly instead of via 00144$.
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
; common peephole 84 jumped to 00107$ directly instead of via 00144$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00144$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00109$:
;cases/loop/loop_type_signed_long.c:62: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total address function size at codegen: 5 bytes.
;cases/loop/loop_type_signed_long.c:64: void jump_func(jmp_buf *jp, signed long i)
;	genLabel
;	genFunction
;	---------------------------------
; Function jump_func
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_jump_func::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/loop/loop_type_signed_long.c:66: ASSERT (i == (1ul << 29));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
	ld	e, 5 (ix)
	ld	l, 6 (ix)
	ld	d, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	or	a, a
	or	a, e
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00113$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0042
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
	pop	bc
;	genLabel
00104$:
;cases/loop/loop_type_signed_long.c:67: longjmp (*jp, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	jp	_longjmp
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/loop/loop_type_signed_long.c:68: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total jump_func function size at codegen: 6 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "i == (1ul << 29)"
	.db 0x00
___str_2:
	.ascii "cases/loop/loop_type_signed_long.c"
	.db 0x00
;cases/loop/loop_type_signed_long.c:71: void jump(unsigned char *a)
;	genLabel
;	genFunction
;	---------------------------------
; Function jump
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
_jump::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -10
	ld	iy, #-10
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/loop/loop_type_signed_long.c:75: if (setjmp (j))
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
; common peephole 29 pushed hl directly instead of going through bc.
	push	hl
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___setjmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genIfx
	ld	a, d
;cases/loop/loop_type_signed_long.c:76: return;
;	genRet
;cases/loop/loop_type_signed_long.c:78: for (signed long i = (1ul << 29); i < (1ul << 30); i++)
;	genLabel
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a,e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
; common peephole 154a removed redundant zeroing of a (which has just been tested to be #0x00).
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x20
;	genLabel
00105$:
;	genCast
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 7 removed dead load from -4 (ix) into e.
; common peephole 7 removed dead load from -3 (ix) into d.
; common peephole 7 removed dead load from -2 (ix) into l.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
; common peephole 12 loaded -1 (ix) into a directly instead of going through h.
	ld	a, -1 (ix)
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00103$
;	skipping generated iCode
;cases/loop/loop_type_signed_long.c:80: jump_func(&j, i);
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_jump_func
	pop	bc
;cases/loop/loop_type_signed_long.c:81: a[i] = 14;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, bc
;	genPointerSet
	ld	(hl), #0x0e
;cases/loop/loop_type_signed_long.c:78: for (signed long i = (1ul << 29); i < (1ul << 30); i++)
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
; common peephole 84 jumped to 00105$ directly instead of via 00134$.
	inc	-3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
; common peephole 84 jumped to 00105$ directly instead of via 00134$.
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
; common peephole 84 jumped to 00105$ directly instead of via 00134$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00134$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00103$:
;cases/loop/loop_type_signed_long.c:84: a[0] = 13;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x0d
	ld	(bc), a
;	genLabel
00107$:
;cases/loop/loop_type_signed_long.c:85: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total jump function size at codegen: 5 bytes.
;cases/loop/loop_type_signed_long.c:93: void testLoop(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testLoop
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testLoop::
;cases/loop/loop_type_signed_long.c:96: loop8 (array, 3);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x03
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_array
;	genCall
	call	_loop8
;cases/loop/loop_type_signed_long.c:97: ASSERT (array[0] == 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#_array + 0)
;	genCmpEq
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00223$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0061
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/loop/loop_type_signed_long.c:98: ASSERT (array[3] == 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_array + 3)
;	genCmpEq
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00224$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0062
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/loop/loop_type_signed_long.c:99: ASSERT (array[6] == 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_array + 6)
;	genCmpEq
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00225$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0063
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/loop/loop_type_signed_long.c:101: loop16 (array);
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_array
;	genCall
	call	_loop16
;cases/loop/loop_type_signed_long.c:102: ASSERT (array[0] == 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#_array + 0)
;	genCmpEq
	cp	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00226$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0066
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/loop/loop_type_signed_long.c:103: ASSERT (array[17] == 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_array + 17) + 0)
;	genCmpEq
	cp	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00227$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0067
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/loop/loop_type_signed_long.c:104: ASSERT (array[255] == 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_array + 255)
;	genCmpEq
	cp	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00228$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0068
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/loop/loop_type_signed_long.c:105: ASSERT (array[256] == 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_array + 256)
;	genCmpEq
	cp	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00229$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0069
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/loop/loop_type_signed_long.c:106: ASSERT (array[299] == 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_array + 299)
;	genCmpEq
	cp	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00230$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00118$:
;cases/loop/loop_type_signed_long.c:108: loopm (array);
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_array
;	genCall
	call	_loopm
;cases/loop/loop_type_signed_long.c:109: ASSERT (array[0] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#_array + 0)
;	genCmpEq
	cp	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00231$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00120$:
;cases/loop/loop_type_signed_long.c:111: address (array);
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_array
;	genCall
	call	_address
;cases/loop/loop_type_signed_long.c:112: ASSERT (array[17] == 17);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#(_array + 17) + 0)
;	genCmpEq
	cp	a, #0x11
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00232$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0070
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00122$:
;cases/loop/loop_type_signed_long.c:113: ASSERT (array[18] == 18);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_array + 18)
;	genCmpEq
	cp	a, #0x12
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00233$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0071
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00124$:
;cases/loop/loop_type_signed_long.c:115: jump (array);
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_array
;	genCall
	call	_jump
;cases/loop/loop_type_signed_long.c:116: ASSERT (array[0] != 13);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#_array + 0)
;	genCmpEq
	cp	a, #0x0d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00234$.
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00235$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0074
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/loop/loop_type_signed_long.c:119: }
;	genEndFunction
	ret
;	Total testLoop function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "array[0] == 8"
	.db 0x00
___str_5:
	.ascii "cases/loop/loop_type_signed_long.c"
	.db 0x00
___str_6:
	.ascii "array[3] == 8"
	.db 0x00
___str_7:
	.ascii "array[6] == 8"
	.db 0x00
___str_8:
	.ascii "array[0] == 16"
	.db 0x00
___str_9:
	.ascii "array[17] == 16"
	.db 0x00
___str_10:
	.ascii "array[255] == 16"
	.db 0x00
___str_11:
	.ascii "array[256] == 16"
	.db 0x00
___str_12:
	.ascii "array[299] == 16"
	.db 0x00
___str_13:
	.ascii "array[0] == 1"
	.db 0x00
___str_14:
	.ascii "array[17] == 17"
	.db 0x00
___str_15:
	.ascii "array[18] == 18"
	.db 0x00
___str_16:
	.ascii "array[0] != 13"
	.db 0x00
;cases/loop/loop_type_signed_long.c:123: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/loop/loop_type_signed_long.c:125: __prints("Running testLoop\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___prints
;cases/loop/loop_type_signed_long.c:126: testLoop();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/loop/loop_type_signed_long.c:127: }
;	genEndFunction
	jp	_testLoop
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_17:
	.ascii "Running testLoop"
	.db 0x0a
	.db 0x00
;cases/loop/loop_type_signed_long.c:132: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/loop/loop_type_signed_long.c:134: return "loop_type_signed_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/loop/loop_type_signed_long.c:135: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_18:
	.ascii "loop_type_signed_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
