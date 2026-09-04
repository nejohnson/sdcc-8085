;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20010129_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
	.globl _baz3
	.globl _baz2
	.globl _baz1
	.globl ___prints
	.globl ___fail
	.globl _bar
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
_baz1_l_10000_13:
	.ds 4
_bar::
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
;cases/./../tests/gcc-torture-execute-20010129-1.c:12: long baz1 (void *a)
;	genLabel
;	genFunction
;	---------------------------------
; Function baz1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_baz1::
;cases/./../tests/gcc-torture-execute-20010129-1.c:15: return l++;
;	genAssign
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_baz1_l_10000_13)
	ld	bc, (_baz1_l_10000_13 + 2)
;	genPlus
	ld	iy, #_baz1_l_10000_13
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20010129-1.c:16: }
;	genEndFunction
	ret
;	Total baz1 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20010129-1.c:18: int baz2 (const char *a)
;	genLabel
;	genFunction
;	---------------------------------
; Function baz2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_baz2::
;cases/./../tests/gcc-torture-execute-20010129-1.c:20: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20010129-1.c:21: }
;	genEndFunction
	ret
;	Total baz2 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20010129-1.c:23: int baz3 (int i)
;	genLabel
;	genFunction
;	---------------------------------
; Function baz3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_baz3::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20010129-1.c:25: if (!i)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/gcc-torture-execute-20010129-1.c:26: ASSERT (0);
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
	ld	hl, #0x001a
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
00102$:
;cases/./../tests/gcc-torture-execute-20010129-1.c:27: return 1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20010129-1.c:28: }
;	genEndFunction
	ret
;	Total baz3 function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20010129-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20010129-1.c:33: int foo (void *a, long b, int c)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 273 bytes.
_foo::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -273
	ld	iy, #-273
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20010129-1.c:35: int d = 0, e, f = 0, i;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-17 (ix), #0x00
;cases/./../tests/gcc-torture-execute-20010129-1.c:39: g[0] = '\n';
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20010129-1.c:40: g[1] = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 157b merged offset into storage instruction.
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #0
	add	hl, sp
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-20010129-1.c:42: while (baz1 (a) < b) {
;	genAnd
	ld	a, 8 (ix)
	and	a, #0x10
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-15 (ix), #0x00
;	genAnd
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), #0x00
	ld	a, 9 (ix)
	and	a, #0x40
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, 8 (ix)
	and	a, #0x02
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), #0x00
;	genAnd
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), #0x00
	ld	a, 9 (ix)
	and	a, #0x20
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, 8 (ix)
	and	a, #0x08
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 9 (ix)
	and	a, #0x14
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), #0x00
	ld	a, 9 (ix)
	and	a, #0x02
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, 8 (ix)
	and	a, #0x80
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), #0x00
;	genLabel
00128$:
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_baz1
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, e
	sub	a, 4 (ix)
	ld	a, d
	sbc	a, 5 (ix)
	ld	a, c
	sbc	a, 6 (ix)
	ld	a, b
	sbc	a, 7 (ix)
	jp	po, 00264$
	xor	a, #0x80
00264$:
	jp	p, 00130$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20010129-1.c:43: if (g[0] != ' ' && g[0] != '\t') {
;	genPointerGet
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00265$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x09
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00266$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20010129-1.c:45: e = 0;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/gcc-torture-execute-20010129-1.c:46: if (!d && baz2 (g) == 0) {
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
;	genIfx
	ld	a, -17 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 157 used ex to load de into hl.
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_baz2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genIfx
	ld	a, h
;cases/./../tests/gcc-torture-execute-20010129-1.c:47: if ((c & 0x10) == 0)
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 0a removed redundant load from a into a.
; common peephole 121a replaced constant #0x00 by a (which has just been tested to be #0x00).
	or	a, -16 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
;cases/./../tests/gcc-torture-execute-20010129-1.c:49: e = d = 1;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-17 (ix), #0x01
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0x01
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20010129-1.c:51: if (!((c & 0x10) && (c & 0x4000) && e) && (c & 2))
;	genIfx
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	or	a, -16 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
;	genIfx
	ld	a, -13 (ix)
	or	a, -14 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genLabel
00110$:
;	genIfx
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	or	a, -12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00128$
;cases/./../tests/gcc-torture-execute-20010129-1.c:52: continue;
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20010129-1.c:53: if ((c & 0x2000) && baz2 (g) == 0)
;	genIfx
	ld	a, -9 (ix)
	or	a, -10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 157 used ex to load de into hl.
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_baz2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genIfx
	ld	a, h
	or	a, l
	jp	z, 00128$
;cases/./../tests/gcc-torture-execute-20010129-1.c:54: continue;
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-20010129-1.c:55: if ((c & 0x1408) && baz2 (g) == 0)
;	genIfx
	ld	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00115$
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 157 used ex to load de into hl.
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_baz2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genIfx
	ld	a, h
	or	a, l
	jp	z, 00128$
;cases/./../tests/gcc-torture-execute-20010129-1.c:56: continue;
;	genLabel
00115$:
;cases/./../tests/gcc-torture-execute-20010129-1.c:57: if ((c & 0x200) && baz2 (g) == 0)
;	genIfx
	ld	a, -5 (ix)
	or	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_baz2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
	jp	z, 00128$
;cases/./../tests/gcc-torture-execute-20010129-1.c:58: continue;
;	genLabel
00118$:
;cases/./../tests/gcc-torture-execute-20010129-1.c:59: if (c & 0x80) {
;	genIfx
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	or	a, -4 (ix)
	jp	z, 00128$
;cases/./../tests/gcc-torture-execute-20010129-1.c:60: for (h = bar, i = 0; h; h = (void **)*h, i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_bar)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00132$:
;	genIfx
	ld	a, h
	or	a, l
	jp	z, 00128$
;cases/./../tests/gcc-torture-execute-20010129-1.c:61: if (baz3 (i))
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 157 used ex to load de into hl.
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_baz3
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
;	genIfx
	ld	a, b
	or	a, c
	jp	nz, 00128$
;cases/./../tests/gcc-torture-execute-20010129-1.c:60: for (h = bar, i = 0; h; h = (void **)*h, i++)
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	h, (hl)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00132$
;cases/./../tests/gcc-torture-execute-20010129-1.c:64: f = 0;
;	genLabel
00130$:
;cases/./../tests/gcc-torture-execute-20010129-1.c:67: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00134$.
;cases/./../tests/gcc-torture-execute-20010129-1.c:68: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total foo function size at codegen: 9 bytes.
;cases/./../tests/gcc-torture-execute-20010129-1.c:72: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_testTortureExecute::
;	adjustStack by -2
	push	af
;cases/./../tests/gcc-torture-execute-20010129-1.c:75: void *n = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20010129-1.c:76: bar = &n;
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_bar), hl
;cases/./../tests/gcc-torture-execute-20010129-1.c:77: foo (&n, 1, 0xc811);
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xc811
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	push	de
;	genIpush similar value again
	ld	e, #0x01
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_foo
;cases/./../tests/gcc-torture-execute-20010129-1.c:78: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20010129-1.c:80: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total testTortureExecute function size at codegen: 2 bytes.
;cases/tst_gcc-torture-execute-20010129-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20010129-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20010129-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20010129-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20010129-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20010129-1.c:15: return "gcc-torture-execute-20010129-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20010129-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20010129-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
