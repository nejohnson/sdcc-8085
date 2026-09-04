;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr15296
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _f
	.globl _g
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
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
;cases/./../tests/gcc-torture-execute-pr15296.c:43: f (void *a, struct s1 *b, const union u0 *h, W v0, W v1, W v4)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_f::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr15296.c:47: union u0 **v5 = b->m0;
;	genPointerGet
;	_moveFrom_tpair_()
	ld	a, (de)
	ld	-6 (ix), a
	inc	de
;	_moveFrom_tpair_()
	ld	a, (de)
	ld	-5 (ix), a
;cases/./../tests/gcc-torture-execute-pr15296.c:48: union u0 *c = b->m1;
;	genPlus
; common peephole 156a swap dec de / inc de pair.
	inc	de
; common peephole 156a swap dec de / inc de pair.
; common peephole 156b removed inc de / dec de pair.
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr15296.c:50: l0:;
;	genCmpLt
	ld	a, 6 (ix)
	sub	a, 8 (ix)
	ld	a, 7 (ix)
	sbc	a, 9 (ix)
	jp	po, 00174$
	xor	a, #0x80
00174$:
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr15296.c:51: if (v0 < v1)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;cases/./../tests/gcc-torture-execute-pr15296.c:58: c[0].r = *d;
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr15296.c:53: if (v0 == 0)
;	genIfx
	ld	a, 7 (ix)
	or	a, 6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
;cases/./../tests/gcc-torture-execute-pr15296.c:55: v0 = v4;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr15296.c:56: if (v0 != 0)
;	genIfx
	ld	a, 11 (ix)
	ld	7 (ix), a
; common peephole 174c reused value still in a.
	or	a, 10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;cases/./../tests/gcc-torture-execute-pr15296.c:58: c[0].r = *d;
;	genPointerGet
;fetchPairLong
	pop	de
	pop	hl
	push	hl
	push	de
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/gcc-torture-execute-pr15296.c:60: e = c[0].r;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr15296.c:61: if (e != 0)
;	genIfx
; common peephole 33 loaded a from b instead of going through -3 (ix).
	ld	-3 (ix), b
	ld	a, b
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;cases/./../tests/gcc-torture-execute-pr15296.c:62: g (a, "");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_g
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-pr15296.c:63: k = e + 3;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0006
	add	hl, de
;cases/./../tests/gcc-torture-execute-pr15296.c:64: k->i = v1;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0xff
	inc	hl
	ld	(hl), #0xff
;cases/./../tests/gcc-torture-execute-pr15296.c:65: goto l4;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;cases/./../tests/gcc-torture-execute-pr15296.c:66: l3:;
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-pr15296.c:67: c[0].i = v0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr15296.c:68: e = c[1].r;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	pop	bc
	pop	hl
	push	hl
	push	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/./../tests/gcc-torture-execute-pr15296.c:69: if (e != 0)
;	genIfx
; common peephole 33 loaded a from a instead of going through -3 (ix).
	ld	-3 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;cases/./../tests/gcc-torture-execute-pr15296.c:70: g (a, "");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_g
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-pr15296.c:71: e = c[0].r;
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;cases/./../tests/gcc-torture-execute-pr15296.c:72: if (e == 0)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;cases/./../tests/gcc-torture-execute-pr15296.c:73: g (a, "");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_g
	pop	bc
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-pr15296.c:74: k = e + 2;
;	genPlus
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;cases/./../tests/gcc-torture-execute-pr15296.c:75: k->r = c[1].r;
;	genPointerGet
;fetchPairLong
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
	inc	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-pr15296.c:76: l4:;
;	genLabel
00116$:
;cases/./../tests/gcc-torture-execute-pr15296.c:77: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total f function size at codegen: 10 bytes.
___str_0:
	.db 0x00
;cases/./../tests/gcc-torture-execute-pr15296.c:79: void g (void *a, char *b) { ASSERT(0); }
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_g::
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_3
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_2
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_1
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total g function size at codegen: 1 bytes.
__str_1:
	.ascii "Assertion failed"
	.db 0x00
__str_2:
	.ascii "0"
	.db 0x00
__str_3:
	.ascii "cases/./../tests/gcc-torture-execute-pr15296.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-pr15296.c:84: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 18 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -18
	ld	hl, #-18
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr15296.c:88: union u0 uv[] = {{ .i = 111 }, { .i = 222 }, { .i = 333 }, { .i = 444 }};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), #0x6f
	ld	-17 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), #0xde
	ld	-15 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), #0x4d
	ld	-13 (ix), #0x01
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), #0xbc
	ld	-11 (ix), #0x01
;cases/./../tests/gcc-torture-execute-pr15296.c:89: struct s1 s = { 0, {{ .i = 555 }, { .i = 0 }, { .i = 999 }, { .i = 777 }}};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x2b
	ld	-7 (ix), #0x02
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0xe7
	ld	-3 (ix), #0x03
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x09
	ld	-1 (ix), #0x03
;cases/./../tests/gcc-torture-execute-pr15296.c:91: f (0, &s, 0, 20000, 10000, (W) uv);
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
;	skipping iCode since result will be rematerialized
;	genIpush
	push	de
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x2710
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x4e20
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #18
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
	call	_f
	pop	de
;cases/./../tests/gcc-torture-execute-pr15296.c:92: if (s.m1[0].i != (W) uv || s.m1[1].i != 0 || s.m1[2].i != 999
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00168$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00169$.
;	skipping generated iCode
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	c, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	de, #0x03e7
	cp	a, a
	sbc	hl, de
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00170$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00171$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr15296.c:93: || s.m1[3].i != 777 || uv[0].i != 111 || uv[1].i != 222
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	de, #0x0309
	cp	a, a
	sbc	hl, de
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00172$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00173$.
;	skipping generated iCode
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	push	bc
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x6f
	or	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00174$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00175$.
;	skipping generated iCode
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	pop	bc
	push	bc
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xde
	or	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00176$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00177$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr15296.c:94: || uv[2].i != 0 || uv[3].i != 444)
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	c, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	c, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xbc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00178$
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
00178$:
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr15296.c:95: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_4
;	genCall
	call	___fail
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr15296.c:96: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00110$.
;cases/./../tests/gcc-torture-execute-pr15296.c:100: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
__str_4:
	.ascii "Assertion failed"
	.db 0x00
__str_5:
	.ascii "0"
	.db 0x00
__str_6:
	.ascii "cases/./../tests/gcc-torture-execute-pr15296.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr15296.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr15296.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr15296.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr15296.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr15296.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr15296.c:15: return "gcc-torture-execute-pr15296.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr15296.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "gcc-torture-execute-pr15296.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
