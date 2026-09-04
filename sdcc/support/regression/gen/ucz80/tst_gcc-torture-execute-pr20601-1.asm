;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr20601_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _bar
	.globl _foo
	.globl ___prints
	.globl ___fail
	.globl _g
	.globl _f
	.globl _t
	.globl _e
	.globl _d
	.globl _c
	.globl _b
	.globl _a
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
_a::
	.ds 10
_b::
	.ds 2
_c::
	.ds 2
_d::
	.ds 2
_e::
	.ds 2
_t::
	.ds 4100
_f::
	.ds 32
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g::
	.ds 8
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
;cases/./../tests/gcc-torture-execute-pr20601-1.c:34: foo (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_foo::
;cases/./../tests/gcc-torture-execute-pr20601-1.c:36: while (1);
;	genLabel
00102$:
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:37: }
;	genEndFunction
; _Noreturn function: No epilogue.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:40: bar (char *x, unsigned int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function bar
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bar::
;cases/./../tests/gcc-torture-execute-pr20601-1.c:42: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:43: }
;	genEndFunction
	ret
;	Total bar function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:46: baz (char *x, unsigned int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function baz
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_baz:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr20601-1.c:50: return bar (x, y);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:51: }
;	genEndFunction
	jp	_bar
; common peephole 152 removed unused ret.
;	Total baz function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:54: setup1 (int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function setup1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_setup1:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr20601-1.c:59: if (!baz (t.t2, sizeof (t.t2)))
;	skipping iCode since result will be rematerialized
;cases/./../tests/gcc-torture-execute-pr20601-1.c:62: if (x & 0x200)
;	genAnd
	bit	1, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20601-1.c:64: char **h, **i = e;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_e)
;cases/./../tests/gcc-torture-execute-pr20601-1.c:66: ++d;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_d)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:67: e = f;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_f
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_e), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:68: if (t.t1 && *t.t1)
;	genPointerGet
	ld	de, (#_t + 0)
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:69: e[0] = t.t1;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_e)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:71: ASSERT (0);
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
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0047
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
	pop	bc
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:73: for (h = e + 1; (*h = *i); ++i, ++h)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_e)
	inc	de
	inc	de
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00119$:
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	dec	hl
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
	pop	hl
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;	genPlus
	inc	hl
	inc	hl
;	genPlus
	inc	de
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00119$
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:76: return 1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genLabel
; common peephole 159 removed unused label 00121$.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:77: }
;	genEndFunction
	ret
;	Total setup1 function size at codegen: 4 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr20601-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-pr20601-1.c:80: setup2 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function setup2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_setup2:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/./../tests/gcc-torture-execute-pr20601-1.c:82: int j = 1;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/gcc-torture-execute-pr20601-1.c:84: e = c + 1;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_c)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:85: d = b - 1;
;	genMinus
;	Shift into pair
	ld	hl, #_d
	ld	a, (_b+0)
	add	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_b+1)
	inc	hl
	ld	a, (_b+1)
	adc	a, #0xff
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr20601-1.c:86: while (d > 0 && e[0][0] == '-')
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00113$:
;	genCmpGt
	xor	a, a
	ld	iy, #_d
	cp	a, 0 (iy)
	sbc	a, 1 (iy)
	jp	po, 00207$
	xor	a, #0x80
00207$:
	jp	p, 00115$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x2d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00208$.
	jp	nz, 00115$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00209$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20601-1.c:88: if (e[0][1] != '\0' && e[0][2] != '\0')
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:89: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0059
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_3
;	genCall
	call	___fail
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:91: switch (e[0][1])
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPointerGet
;fetchPairLong
	inc	bc
	ld	a, (bc)
;cases/./../tests/gcc-torture-execute-pr20601-1.c:94: if (!e[1])
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_e)
	inc	bc
	inc	bc
;cases/./../tests/gcc-torture-execute-pr20601-1.c:91: switch (e[0][1])
;	genCmpEq
	cp	a, #0x2d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00210$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x50
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00211$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x75
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00212$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00213$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20601-1.c:94: if (!e[1])
;	genPointerGet
;	_moveFrom_tpair_()
	ld	a, (bc)
	ld	-4 (ix), a
	inc	bc
;	_moveFrom_tpair_()
	ld	a, (bc)
;	genIfx
; common peephole 33 loaded a from a instead of going through -3 (ix).
	ld	-3 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:95: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_3
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:97: t.t3 = &e[1];
;	genAddrOf
	ld	hl, #_t+4098
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_e)
	inc	bc
	inc	bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/gcc-torture-execute-pr20601-1.c:98: d--;
;	genMinus
;fetchPairLong
	ld	hl, (_d)
	dec	hl
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:99: e++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:100: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:101: case 'P':
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:102: j |= 0x1000;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0x10
;cases/./../tests/gcc-torture-execute-pr20601-1.c:103: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:104: case '-':
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:105: d--;
;	genMinus
;fetchPairLong
	ld	hl, (_d)
	dec	hl
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:106: e++;
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), bc
;cases/./../tests/gcc-torture-execute-pr20601-1.c:107: if (j == 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -1 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00214$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00215$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20601-1.c:108: j |= 0x600;
;	genOr
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	or	a, #0x06
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:109: return j;
;	genRet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	pop	de
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00119$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:110: }
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:111: d--;
;	genMinus
;fetchPairLong
	ld	hl, (_d)
	dec	hl
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:112: e++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;	genGoto
	jp	00113$
;	genLabel
00115$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:118: return j;
;	genRet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	pop	de
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00119$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:119: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total setup2 function size at codegen: 5 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/gcc-torture-execute-pr20601-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-pr20601-1.c:123: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -6
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:127: c = g;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_g
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_c), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:128: b = 4;
;	genAssign
;fetchPairLong
	ld	hl, #0x0004
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_b), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:82: int j = 1;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/gcc-torture-execute-pr20601-1.c:84: e = c + 1;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_c)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:85: d = b - 1;
;	genAssign
;fetchPairLong
	ld	hl, #0x0003
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:86: while (d > 0 && e[0][0] == '-')
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00105$:
;	genCmpGt
	xor	a, a
	ld	iy, #_d
	cp	a, 0 (iy)
	sbc	a, 1 (iy)
	jp	po, 00292$
	xor	a, #0x80
00292$:
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr20601-1.c:95: ASSERT (0);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/gcc-torture-execute-pr20601-1.c:86: while (d > 0 && e[0][0] == '-')
;	genIfx
; common peephole 33 loaded a from a instead of going through -3 (ix).
	ld	-3 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, a
	jp	z, 00118$
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genPointerGet
;fetchPairLong
	pop	bc
	pop	hl
	push	hl
	push	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x2d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00293$.
	jp	nz, 00118$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00294$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20601-1.c:88: if (e[0][1] != '\0' && e[0][2] != '\0')
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
; common peephole 96d move inc hl before push de
	inc	hl
	push	de
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
; common peephole 96d move inc hl before push de
	inc	hl
; common peephole 96d move inc hl before push de
	inc	hl
	push	de
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:89: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0059
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:91: switch (e[0][1])
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;cases/./../tests/gcc-torture-execute-pr20601-1.c:94: if (!e[1])
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr20601-1.c:91: switch (e[0][1])
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00295$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
	cp	a, #0x2d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
; common peephole 107 removed load from c into a by replacing sub with cp
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00296$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	cp	a, #0x50
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 108 removed load from c into a by replacing sub with cp
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x75
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00297$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00298$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20601-1.c:94: if (!e[1])
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
;	genIfx
; common peephole 33 loaded a from a instead of going through -3 (ix).
	ld	-3 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:95: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:97: t.t3 = &e[1];
;	skipping iCode since result will be rematerialized
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
	inc	hl
	inc	hl
;	genPointerSet
	ld	((_t + 4098)), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:98: d--;
;	genMinus
;fetchPairLong
	ld	hl, (_d)
	dec	hl
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:99: e++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:100: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:101: case 'P':
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:102: j |= 0x1000;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0x10
;cases/./../tests/gcc-torture-execute-pr20601-1.c:103: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:104: case '-':
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:105: d--;
;	genMinus
;fetchPairLong
	ld	hl, (_d)
	dec	hl
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:106: e++;
;	genAssign
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:107: if (j == 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -1 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00299$.
; common peephole 83 jumped to 00122$ directly instead of via 00115$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00122$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00300$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20601-1.c:108: j |= 0x600;
;	genOr
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	or	a, #0x06
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00115$.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:109: return j;
;	genAssign
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:110: }
;	genLabel
00116$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:111: d--;
;	genMinus
;fetchPairLong
	ld	hl, (_d)
	dec	hl
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:112: e++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;	genGoto
	jp	00105$
;	genLabel
00118$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:118: return j;
;	genAssign
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-pr20601-1.c:129: x = setup2 ();
;	genLabel
00122$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr20601-1.c:130: t.t1 = "/bin/sh";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #___str_9
	ld	(_t), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:62: if (x & 0x200)
;	genAnd
	bit	1, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00139$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00301$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20601-1.c:64: char **h, **i = e;
;	genAssign
;fetchPairLong
	ld	hl, (_e)
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr20601-1.c:66: ++d;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_d)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:67: e = f;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_f
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_e), hl
;cases/./../tests/gcc-torture-execute-pr20601-1.c:68: if (t.t1 && *t.t1)
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_t
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00135$
;	genPointerGet
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00135$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:69: e[0] = t.t1;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00136$
;	genLabel
00135$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:71: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0047
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
;	genLabel
00136$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:73: for (h = e + 1; (*h = *i); ++i, ++h)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_e)
	inc	bc
	inc	bc
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00142$:
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
	dec	hl
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	hl
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00139$
;	genPlus
	inc	hl
	inc	hl
;	genPlus
	inc	bc
	inc	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00142$
;	genLabel
00139$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:133: if ((x & 0x400) && !a[4])
;	genAnd
	bit	2, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00302$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#(_a + 8) + 0)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/gcc-torture-execute-pr20601-1.c:134: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0086
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr20601-1.c:135: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00144$.
;cases/./../tests/gcc-torture-execute-pr20601-1.c:137: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 17 bytes.
__str_6:
	.ascii "Assertion failed"
	.db 0x00
__str_7:
	.ascii "0"
	.db 0x00
__str_8:
	.ascii "cases/./../tests/gcc-torture-execute-pr20601-1.c"
	.db 0x00
___str_9:
	.ascii "/bin/sh"
	.db 0x00
;cases/tst_gcc-torture-execute-pr20601-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr20601-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr20601-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr20601-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_10:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr20601-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr20601-1.c:15: return "gcc-torture-execute-pr20601-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr20601-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_11:
	.ascii "gcc-torture-execute-pr20601-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
___str_12:
	.ascii "a"
	.db 0x00
___str_13:
	.ascii "-u"
	.db 0x00
___str_14:
	.ascii "b"
	.db 0x00
___str_15:
	.ascii "c"
	.db 0x00
	.area _INITIALIZER
__xinit__g:
	.dw ___str_12
	.dw ___str_13
	.dw ___str_14
	.dw ___str_15
	.area _CABS (ABS)
