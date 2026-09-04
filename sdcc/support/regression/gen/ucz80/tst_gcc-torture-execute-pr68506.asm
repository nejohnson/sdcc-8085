;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr68506
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _fn2
	.globl _fn1
	.globl ___prints
	.globl ___fail
	.globl _t
	.globl _e
	.globl _d
	.globl _y
	.globl _q
	.globl _c
	.globl _i
	.globl _u
	.globl _s
	.globl _p
	.globl _o
	.globl _n
	.globl _m
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
	.ds 2
_b::
	.ds 2
_m::
	.ds 2
_n::
	.ds 2
_o::
	.ds 2
_p::
	.ds 2
_s::
	.ds 2
_u::
	.ds 2
_i::
	.ds 2
_c::
	.ds 1
_q::
	.ds 1
_y::
	.ds 1
_d::
	.ds 2
_e::
	.ds 1
_f:
	.ds 2
_h:
	.ds 2
_g:
	.ds 2
_r:
	.ds 2
_v:
	.ds 2
_t::
	.ds 2
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
;cases/./../tests/gcc-torture-execute-pr68506.c:22: fn1 (int p1)
;	genLabel
;	genFunction
;	---------------------------------
; Function fn1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fn1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr68506.c:24: return a ? p1 : p1 + a;
;	genIfx
	ld	a, (_a+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a
	or	a, (hl)
;	genAssign
;	(locations are the same)
;	genGoto
;	genLabel
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00103$.
;	genPlus
;	genLabel
; common peephole 159 removed unused label 00104$.
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr68506.c:25: }
;	genEndFunction
	ret
;	Total fn1 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr68506.c:28: fn2 (unsigned char p1, int p2)
;	genLabel
;	genFunction
;	---------------------------------
; Function fn2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_fn2::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr68506.c:30: return p2 >= 2 ? p1 : p1 >> p2;
;	genCmpLt
	ld	a, e
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
;	skipping generated iCode
;	genAssign
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00103$.
;	genRightShift
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
00113$:
	srl	c
00114$:
	dec	e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr68506.c:31: }
;	genEndFunction
	ret
;	Total fn2 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr68506.c:35: fn3 ()
;	genLabel
;	genFunction
;	---------------------------------
; Function fn3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_fn3:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/./../tests/gcc-torture-execute-pr68506.c:37: int w, x = 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;cases/./../tests/gcc-torture-execute-pr68506.c:64: return x;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00118$:
;cases/./../tests/gcc-torture-execute-pr68506.c:38: for (; p < 31; p++)
;	genCmpLt
	ld	a, (_p+0)
	sub	a, #0x1f
	ld	a, (_p+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	nc, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr68506.c:40: s = fn1 (c | ((1 && c) == c));
;	genIfx
	ld	a, (_c+0)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	ld	c, a
; common peephole 121a replaced constant #0x00 by a (which has just been tested to be #0x00).
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;	genLabel
00123$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0x01
;	genLabel
00124$:
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_c)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, c
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00193$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00192$.
	xor	a, a
00193$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genOr
	ld	a, (_c+0)
	or	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genSend
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_fn1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_s), hl
;cases/./../tests/gcc-torture-execute-pr68506.c:41: t = fn2 (s, x);
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_s)
;	genSend
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_fn2
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_t+0), a
;	genMove_o size 1 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	xor	a, a
	ld	(_t+1), a
;cases/./../tests/gcc-torture-execute-pr68506.c:42: c = (unsigned) c > -(unsigned) ((o = (m = d = t) == p) <= 4UL) && n;
;	genCast
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_c+0)
	ld	-2 (ix), a
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-1 (ix), #0x00
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, (_t)
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_d), bc
;	genCast
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_m), bc
;	genCmpEq
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_p)
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00194$.
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00195$
	inc	a
; common peephole 157d reused 0 in a.
00195$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_o+0), a
;	genMove_o size 1 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	xor	a, a
	ld	(_o+1), a
;	genUminus
;fetchPairLong
	ld	bc, #0x0000
	dec	bc
;	genCmpGt
	ld	a, c
	sub	a, -2 (ix)
	ld	a, b
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00125$
;	skipping generated iCode
;	genIfx
	ld	a, (_n+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_n
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00126$
;	genLabel
00125$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00127$
;	genLabel
00126$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genLabel
00127$:
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(#_c), a
; common peephole 19 loaded (#_c) from a directly instead of using hl.
;cases/./../tests/gcc-torture-execute-pr68506.c:43: v = -c;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_c)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
; common peephole 1 removed dead load from #0x00 into c.
;	genUminus
	neg
	ld	l, a
	sbc	a, a
	ld	h, a
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_v), hl
;cases/./../tests/gcc-torture-execute-pr68506.c:44: y = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_y
	ld	(hl), #0x01
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-pr68506.c:45: for (; y; y++)
;	genIfx
	ld	a, (_y+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
;cases/./../tests/gcc-torture-execute-pr68506.c:46: e = v == 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_v)
;	genCmpEq
	dec	l
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00197$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00196$.
	xor	a, a
00197$:
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(#_e), a
; common peephole 19 loaded (#_e) from a directly instead of using hl.
;cases/./../tests/gcc-torture-execute-pr68506.c:45: for (; y; y++)
;	genPlus
	ld	hl, #_y
	inc	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr68506.c:47: d = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_d), hl
;cases/./../tests/gcc-torture-execute-pr68506.c:48: for (; h != 2;)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_h)
	sub	a, #0x02
; common peephole 54 used hl instead of iy.
	ld	hl, #_h + 1
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00119$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00198$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr68506.c:61: break;
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-pr68506.c:52: if (!m)
;	genIfx
	ld	a, (_m+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_m
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;cases/./../tests/gcc-torture-execute-pr68506.c:53: ASSERT (0);
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
	ld	hl, #0x0035
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
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-pr68506.c:54: r = 7 - f;
;	genMinus
;	Shift into pair
	ld	hl, #_f
	ld	a, #0x07
	sub	a, (hl)
; common peephole 96b move inc hl before sbc a, a
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	sbc	a, a
	sub	a, (hl)
	ld	b, a
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r), bc
;cases/./../tests/gcc-torture-execute-pr68506.c:55: x = e = i | r;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i)
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r)
;	genOr
	or	a, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_e), a
; common peephole 19 loaded (#_e) from a directly instead of using hl.
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;cases/./../tests/gcc-torture-execute-pr68506.c:56: q = u * g;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_u)
	ld	h, a
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_g)
;	genMult
	push	de
	ld	e, a
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00199$:
	add	hl, hl
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00200$
	add	hl, de
00200$:
	djnz	00199$
	pop	de
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;cases/./../tests/gcc-torture-execute-pr68506.c:57: w = b == q;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_q), a
; common peephole 98 removed redundant load from (_q) into a.
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x00
;	genCmpEq
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_b)
	xor	a, a
	sbc	hl, bc
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00201$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00202$.
;cases/./../tests/gcc-torture-execute-pr68506.c:58: if (w)
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr68506.c:61: break;
;	genLabel
00119$:
;cases/./../tests/gcc-torture-execute-pr68506.c:38: for (; p < 31; p++)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_p)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_p), hl
;	genGoto
	jp	00118$
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr68506.c:64: return x;
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00120$.
;cases/./../tests/gcc-torture-execute-pr68506.c:65: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total fn3 function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr68506.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-pr68506.c:69: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr68506.c:72: fn3 ();
;	genCall
;cases/./../tests/gcc-torture-execute-pr68506.c:73: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr68506.c:75: }
;	genEndFunction
	jp	_fn3
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-pr68506.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr68506.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr68506.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr68506.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr68506.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr68506.c:15: return "gcc-torture-execute-pr68506.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr68506.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr68506.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
