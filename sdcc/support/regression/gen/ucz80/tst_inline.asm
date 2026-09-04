;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_inline
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testInline
	.globl _bug_3264
	.globl _bug_2295
	.globl _bug_3564755
	.globl _bug_1864577
	.globl _bug_1767885
	.globl _bug_1717305
	.globl _g
	.globl _bug2450
	.globl ___prints
	.globl ___fail
	.globl _gi
	.globl _g_y
	.globl _g_a
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
_g_a::
	.ds 2
_g_y::
	.ds 2
_a_3564755:
	.ds 1
_b_3564755:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_gi::
	.ds 2
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
;cases/./../tests/inline.c:26: static inline int bug2450isdigit (int c)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug2450isdigit
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bug2450isdigit:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:28: return ((unsigned char)c >= (char)'0' && (unsigned char)c <= (char)'9');
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	cp	a, #0x30
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00103$
;	skipping generated iCode
;	genCmpGt
	cp	a, #0x3a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;	genLabel
00103$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00104$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x01
;	genLabel
00105$:
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/inline.c:29: }
;	genEndFunction
	ret
;	Total bug2450isdigit function size at codegen: 1 bytes.
;cases/./../tests/inline.c:36: void bug2450(const char *s)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug2450
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bug2450::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;cases/./../tests/inline.c:38: for (; bug2450isdigit(*s););
;	genPointerGet
	ld	a, (hl)
;cases/./../tests/inline.c:28: return ((unsigned char)c >= (char)'0' && (unsigned char)c <= (char)'9');
;	genCast
;	(locations are the same)
;	genCmpLt
	cp	a, #0x30
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	genCmpGt
	cp	a, #0x3a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;cases/./../tests/inline.c:38: for (; bug2450isdigit(*s););
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/inline.c:39: }
;	genEndFunction
	ret
;	Total bug2450 function size at codegen: 1 bytes.
;cases/./../tests/inline.c:47: f (const int a)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:49: return (a + 3);
;	genPlus
	inc	de
	inc	de
	inc	de
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/inline.c:50: }
;	genEndFunction
	ret
;	Total f function size at codegen: 1 bytes.
;cases/./../tests/inline.c:52: int g (int b)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:49: return (a + 3);
;	genPlus
	inc	de
	inc	de
	inc	de
;cases/./../tests/inline.c:54: return (f (b));
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/inline.c:55: }
;	genEndFunction
	ret
;	Total g function size at codegen: 1 bytes.
;cases/./../tests/inline.c:58: bug_1717305 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug_1717305
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bug_1717305::
;cases/./../tests/inline.c:61: ASSERT (g (x) == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
	call	_g
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003d
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
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/inline.c:62: }
;	genEndFunction
	ret
;	Total bug_1717305 function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "g (x) == 3"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/inline.c"
	.db 0x00
;cases/./../tests/inline.c:69: f1 (int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f1:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:72: return x + b;
;	genPlus
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/inline.c:73: }
;	genEndFunction
	ret
;	Total f1 function size at codegen: 1 bytes.
;cases/./../tests/inline.c:76: f2 (int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function f2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f2:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:78: int y = f1 (x);
;	genPlus
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;cases/./../tests/inline.c:79: return y;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/inline.c:80: }
;	genEndFunction
	ret
;	Total f2 function size at codegen: 1 bytes.
;cases/./../tests/inline.c:83: f3 (int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function f3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f3:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:72: return x + b;
;	genPlus
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;cases/./../tests/inline.c:87: return y;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/inline.c:88: }
;	genEndFunction
	ret
;	Total f3 function size at codegen: 1 bytes.
;cases/./../tests/inline.c:91: g_for (int b)
;	genLabel
;	genFunction
;	---------------------------------
; Function g_for
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_g_for:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:93: int a = 10 + b * 2;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	add	a, a
	rl	d
;	genPlus
	add	a, #0x0a
	ld	e, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00134$
	inc	d
00134$:
;cases/./../tests/inline.c:99: return a;
;	genCmpGt
	ld	a, #0xe8
	cp	a, e
	ld	a, #0x03
	sbc	a, d
	jp	po, 00135$
	xor	a, #0x80
00135$:
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	(locations are the same)
;	genLabel
00105$:
;cases/./../tests/inline.c:94: for (; b > 0; b--)
;	genCmpGt
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00136$
	xor	a, #0x80
00136$:
	ret	p
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/inline.c:96: if (a > 1000)
;	genIfx
	ld	a, c
	or	a, a
;cases/./../tests/inline.c:97: return a;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00106$.
;cases/./../tests/inline.c:94: for (; b > 0; b--)
;	genMinus
	dec	hl
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/inline.c:99: return a;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/inline.c:100: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
; common peephole 152 removed unused ret.
;	Total g_for function size at codegen: 1 bytes.
;cases/./../tests/inline.c:103: f_for (int c)
;	genLabel
;	genFunction
;	---------------------------------
; Function f_for
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 9 bytes.
_f_for:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -9
	ld	iy, #-9
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:106: for (i = c; i > 0; i--)
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00110$:
;	genCmpGt
	xor	a, a
	cp	a, -4 (ix)
	sbc	a, -3 (ix)
	jp	po, 00155$
	xor	a, #0x80
00155$:
	jp	p, 00101$
;	skipping generated iCode
;cases/./../tests/inline.c:93: int a = 10 + b * 2;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, #0x0a
	ld	-9 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-8 (ix), a
;cases/./../tests/inline.c:99: return a;
;	genCmpGt
	ld	a, #0xe8
	cp	a, -9 (ix)
	ld	a, #0x03
	sbc	a, -8 (ix)
	jp	po, 00156$
	xor	a, #0x80
00156$:
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00107$:
;cases/./../tests/inline.c:94: for (; b > 0; b--)
;	genCmpGt
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;cases/./../tests/inline.c:96: if (a > 1000)
;	genIfx
	ld	a, -7 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/./../tests/inline.c:97: return a;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	ld	-2 (ix), a
	ld	a, -8 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00108$:
;cases/./../tests/inline.c:94: for (; b > 0; b--)
;	genMinus
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	dec	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00104$:
;cases/./../tests/inline.c:99: return a;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	ld	-2 (ix), a
	ld	a, -8 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:107: c += i * g_for (i);
;	genLabel
00105$:
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/inline.c:106: for (i = c; i > 0; i--)
;	genMinus
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	dec	hl
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genGoto
	jp	00110$
;	genLabel
00101$:
;cases/./../tests/inline.c:108: return c;
;	genRet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00112$.
;cases/./../tests/inline.c:109: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total f_for function size at codegen: 5 bytes.
;cases/./../tests/inline.c:116: bug_1767885 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug_1767885
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 9 bytes.
_bug_1767885::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -9
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
;cases/./../tests/inline.c:118: gi = f2 (gi);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_gi)
;cases/./../tests/inline.c:78: int y = f1 (x);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0006
	add	hl, bc
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_gi), hl
;cases/./../tests/inline.c:119: ASSERT (gi == 12);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_gi)
	sub	a, #0x0c
; common peephole 54 used hl instead of iy.
	ld	hl, #_gi + 1
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00127$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00211$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0077
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
00127$:
;cases/./../tests/inline.c:121: gi = f3 (gi);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_gi)
;cases/./../tests/inline.c:72: return x + b;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0006
	add	hl, bc
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_gi), hl
;cases/./../tests/inline.c:122: ASSERT (gi == 18);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_gi)
	sub	a, #0x12
; common peephole 54 used hl instead of iy.
	ld	hl, #_gi + 1
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00212$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x007a
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
00129$:
;cases/./../tests/inline.c:124: g_y = f_for (g_a);
;	genAssign
;fetchPairLong
	ld	hl, (_g_a)
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:106: for (i = c; i > 0; i--)
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00119$:
;	genCmpGt
	xor	a, a
	cp	a, -4 (ix)
	sbc	a, -3 (ix)
	jp	po, 00213$
	xor	a, #0x80
00213$:
	jp	p, 00109$
;	skipping generated iCode
;cases/./../tests/inline.c:93: int a = 10 + b * 2;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, #0x0a
	ld	-9 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-8 (ix), a
;cases/./../tests/inline.c:99: return a;
;	genCmpGt
	ld	a, #0xe8
	cp	a, -9 (ix)
	ld	a, #0x03
	sbc	a, -8 (ix)
	jp	po, 00214$
	xor	a, #0x80
00214$:
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00116$:
;cases/./../tests/inline.c:94: for (; b > 0; b--)
;	genCmpGt
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00107$
;	skipping generated iCode
;cases/./../tests/inline.c:96: if (a > 1000)
;	genIfx
	ld	a, -7 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00117$
;cases/./../tests/inline.c:97: return a;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	ld	-2 (ix), a
	ld	a, -8 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00117$:
;cases/./../tests/inline.c:94: for (; b > 0; b--)
;	genMinus
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	dec	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;	genLabel
00107$:
;cases/./../tests/inline.c:99: return a;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	ld	-2 (ix), a
	ld	a, -8 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:107: c += i * g_for (i);
;	genLabel
00108$:
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/inline.c:106: for (i = c; i > 0; i--)
;	genMinus
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	dec	hl
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genGoto
	jp	00119$
;	genLabel
00109$:
;cases/./../tests/inline.c:124: g_y = f_for (g_a);
;	genAssign
;fetchPairLong
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:125: g_y = g_for (g_y);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(_g_y), hl
;cases/./../tests/inline.c:93: int a = 10 + b * 2;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	add	a, a
	rl	b
;	genPlus
	add	a, #0x0a
	ld	c, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00216$
	inc	b
00216$:
;cases/./../tests/inline.c:99: return a;
;	genCmpGt
	ld	a, #0xe8
	cp	a, c
	ld	a, #0x03
	sbc	a, b
	jp	po, 00217$
	xor	a, #0x80
00217$:
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	(locations are the same)
;	genLabel
00122$:
;cases/./../tests/inline.c:94: for (; b > 0; b--)
;	genCmpGt
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00218$
	xor	a, #0x80
00218$:
	jp	p, 00113$
;	skipping generated iCode
;cases/./../tests/inline.c:96: if (a > 1000)
;	genIfx
	ld	a, e
	or	a, a
;cases/./../tests/inline.c:97: return a;
;	genAssign
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;cases/./../tests/inline.c:94: for (; b > 0; b--)
;	genMinus
	dec	hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
;	genLabel
00113$:
;cases/./../tests/inline.c:99: return a;
;	genAssign
;	(locations are the same)
;cases/./../tests/inline.c:125: g_y = g_for (g_y);
;	genLabel
00114$:
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_g_y), bc
;	genLabel
; common peephole 159 removed unused label 00124$.
;cases/./../tests/inline.c:126: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total bug_1767885 function size at codegen: 5 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "gi == 12"
	.db 0x00
___str_5:
	.ascii "cases/./../tests/inline.c"
	.db 0x00
___str_6:
	.ascii "gi == 18"
	.db 0x00
;cases/./../tests/inline.c:150: PlatformP__LedsInit__default__init (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function PlatformP__LedsInit__default__init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_PlatformP__LedsInit__default__init:
;cases/./../tests/inline.c:152: return SUCCESS;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/inline.c:153: }
;	genEndFunction
	ret
;	Total PlatformP__LedsInit__default__init function size at codegen: 1 bytes.
;cases/./../tests/inline.c:159: PlatformP__LedsInit__init (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function PlatformP__LedsInit__init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_PlatformP__LedsInit__init:
;cases/./../tests/inline.c:165: return result;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/inline.c:166: }
;	genEndFunction
	ret
;	Total PlatformP__LedsInit__init function size at codegen: 1 bytes.
;cases/./../tests/inline.c:169: bug_1864577 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug_1864577
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bug_1864577::
;cases/./../tests/inline.c:171: ASSERT (PlatformP__LedsInit__init () == SUCCESS);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/inline.c:172: }
;	genEndFunction
	ret
;	Total bug_1864577 function size at codegen: 1 bytes.
___str_7:
	.ascii "Assertion failed"
	.db 0x00
___str_8:
	.ascii "PlatformP__LedsInit__init () == SUCCESS"
	.db 0x00
___str_9:
	.ascii "cases/./../tests/inline.c"
	.db 0x00
;cases/./../tests/inline.c:228: condition_func()
;	genLabel
;	genFunction
;	---------------------------------
; Function condition_func
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_condition_func:
;cases/./../tests/inline.c:230: return (a_3564755 == b_3564755);
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a_3564755)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_b_3564755
	sub	a, (hl)
	ld	a, #0x01
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00103$.
	xor	a, a
; common peephole 159 removed unused label 00104$.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/inline.c:231: }
;	genEndFunction
	ret
;	Total condition_func function size at codegen: 1 bytes.
;cases/./../tests/inline.c:234: bug_3564755 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug_3564755
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bug_3564755::
;cases/./../tests/inline.c:236: a_3564755 = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_a_3564755
	ld	(hl), #0x01
;cases/./../tests/inline.c:237: b_3564755 = 250;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_b_3564755
	ld	(hl), #0xfa
;cases/./../tests/inline.c:239: while (!condition_func()) /* inlined function returning bit caused segfault */
;	genLabel
00101$:
;cases/./../tests/inline.c:230: return (a_3564755 == b_3564755);
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_b_3564755)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00128$.
;cases/./../tests/inline.c:239: while (!condition_func()) /* inlined function returning bit caused segfault */
;	skipping generated iCode
;cases/./../tests/inline.c:241: b_3564755 += 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_b_3564755)
;	genPlus
	inc	a
	ld	(#_b_3564755), a
; common peephole 19 loaded (#_b_3564755) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00103$:
;cases/./../tests/inline.c:243: ASSERT(a_3564755 == b_3564755);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/inline.c:244: }
;	genEndFunction
	ret
;	Total bug_3564755 function size at codegen: 1 bytes.
;cases/./../tests/inline.c:253: bug_2295 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug_2295
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bug_2295::
;cases/./../tests/inline.c:257: for (x = inlined_function(); inlined_function() - z; y += inlined_function())
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	bc, #0x0
;	genLabel
00107$:
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
;	genMinus
	ld	a, #0x01
	sub	a, e
	ld	e, a
	sbc	a, a
;	genIfx
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00126$
;cases/./../tests/inline.c:259: z += inlined_function();
;	genPlus
	inc	c
;cases/./../tests/inline.c:257: for (x = inlined_function(); inlined_function() - z; y += inlined_function())
;	genPlus
	inc	b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00126$:
;	genAssign
;	(locations are the same)
;cases/./../tests/inline.c:261: ASSERT (x == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:262: ASSERT (y == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
	dec	b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00151$.
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
	ld	hl, #0x0106
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
	pop	bc
;	genLabel
00114$:
;cases/./../tests/inline.c:263: ASSERT (z == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
	dec	c
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00152$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0107
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/inline.c:265: }
;	genEndFunction
	ret
;	Total bug_2295 function size at codegen: 1 bytes.
___str_13:
	.ascii "Assertion failed"
	.db 0x00
___str_14:
	.ascii "x == 1"
	.db 0x00
___str_15:
	.ascii "cases/./../tests/inline.c"
	.db 0x00
___str_16:
	.ascii "y == 1"
	.db 0x00
___str_17:
	.ascii "z == 1"
	.db 0x00
;cases/./../tests/inline.c:273: static inline int f_3264 (const int x) {
;	genLabel
;	genFunction
;	---------------------------------
; Function f_3264
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f_3264:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:274: return x;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/inline.c:275: }
;	genEndFunction
	ret
;	Total f_3264 function size at codegen: 1 bytes.
;cases/./../tests/inline.c:277: static inline void g_3264 (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function g_3264
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g_3264:
;cases/./../tests/inline.c:278: f_3264 (0);
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/inline.c:279: }
;	genEndFunction
	ret
;	Total g_3264 function size at codegen: 1 bytes.
;cases/./../tests/inline.c:281: void bug_3264 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug_3264
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bug_3264::
;cases/./../tests/inline.c:283: g_3264 ();
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/inline.c:284: }
;	genEndFunction
	ret
;	Total bug_3264 function size at codegen: 1 bytes.
;cases/./../tests/inline.c:290: testInline (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testInline
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testInline::
;cases/./../tests/inline.c:294: ASSERT (x == 1 || x == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/inline.c:295: ASSERT (inlined_function_pointer() == 2); /* must use the external one */
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_inlined_function_pointer)
	call	___sdcc_call_hl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00121$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0127
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/./../tests/inline.c:297: bug_1717305 ();
;	genCall
	call	_bug_1717305
;cases/./../tests/inline.c:298: bug_1767885 ();
;	genCall
	call	_bug_1767885
;cases/./../tests/inline.c:299: bug_1864577 ();
;	genCall
	call	_bug_1864577
;cases/./../tests/inline.c:300: bug_3564755 ();
;	genCall
	call	_bug_3564755
;cases/./../tests/inline.c:302: bug_2295 ();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/inline.c:304: }
;	genEndFunction
	jp	_bug_2295
; common peephole 152 removed unused ret.
;	Total testInline function size at codegen: 1 bytes.
___str_18:
	.ascii "Assertion failed"
	.db 0x00
___str_19:
	.ascii "x == 1 || x == 2"
	.db 0x00
___str_20:
	.ascii "cases/./../tests/inline.c"
	.db 0x00
___str_21:
	.ascii "inlined_function_pointer() == 2"
	.db 0x00
;cases/tst_inline.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_inline.c:6: __prints("Running testInline\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
;	genCall
	call	___prints
;cases/tst_inline.c:7: testInline();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_inline.c:8: }
;	genEndFunction
	jp	_testInline
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_22:
	.ascii "Running testInline"
	.db 0x0a
	.db 0x00
;cases/tst_inline.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_inline.c:15: return "inline.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_23
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_inline.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_23:
	.ascii "inline.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__gi:
	.dw #0x0006
	.area _CABS (ABS)
