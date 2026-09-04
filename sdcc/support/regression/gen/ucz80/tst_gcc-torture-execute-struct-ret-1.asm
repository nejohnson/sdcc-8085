;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_struct_ret_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _f
	.globl _strcmp
	.globl _sprintf
	.globl ___prints
	.globl ___fail
	.globl _fp
	.globl _X3
	.globl _X2
	.globl _X1
	.globl _B2
	.globl _B1
	.globl _d9
	.globl _d8
	.globl _d7
	.globl _d6
	.globl _d5
	.globl _d4
	.globl _d3
	.globl _d2
	.globl _d1
	.globl _c5
	.globl _c4
	.globl _c3
	.globl _c2
	.globl _c1
	.globl _out
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
_out::
	.ds 100
_f_xr_10000_49:
	.ds 34
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_c1::
	.ds 1
_c2::
	.ds 1
_c3::
	.ds 1
_c4::
	.ds 1
_c5::
	.ds 1
_d1::
	.ds 4
_d2::
	.ds 4
_d3::
	.ds 4
_d4::
	.ds 4
_d5::
	.ds 4
_d6::
	.ds 4
_d7::
	.ds 4
_d8::
	.ds 4
_d9::
	.ds 4
_B1::
	.ds 10
_B2::
	.ds 10
_X1::
	.ds 34
_X2::
	.ds 34
_X3::
	.ds 34
_fp::
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
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:41: static X xr = {"return val", 'R'};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_f_xr_10000_49
	ld	(hl), #0x72
;	genPlus
	ld	hl, #_f_xr_10000_49 + 1
;	genPointerSet
	ld	(hl), #0x65
;	genPlus
	ld	hl, #_f_xr_10000_49 + 2
;	genPointerSet
	ld	(hl), #0x74
;	genPlus
	ld	hl, #_f_xr_10000_49 + 3
;	genPointerSet
	ld	(hl), #0x75
;	genPlus
	ld	hl, #_f_xr_10000_49 + 4
;	genPointerSet
	ld	(hl), #0x72
;	genPlus
	ld	hl, #_f_xr_10000_49 + 5
;	genPointerSet
	ld	(hl), #0x6e
;	genPlus
	ld	hl, #_f_xr_10000_49 + 6
;	genPointerSet
	ld	(hl), #0x20
;	genPlus
	ld	hl, #_f_xr_10000_49 + 7
;	genPointerSet
	ld	(hl), #0x76
;	genPlus
	ld	hl, #_f_xr_10000_49 + 8
;	genPointerSet
	ld	(hl), #0x61
;	genPlus
	ld	hl, #_f_xr_10000_49 + 9
;	genPointerSet
	ld	(hl), #0x6c
;	genPlus
	ld	hl, #_f_xr_10000_49 + 10
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 11
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 12
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 13
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 14
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 15
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 16
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 17
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 18
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 19
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 20
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 21
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 22
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 23
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 24
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 25
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 26
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 27
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 28
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 29
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 30
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 31
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 32
;	genPointerSet
	ld	(hl), #0x00
;	genPlus
	ld	hl, #_f_xr_10000_49 + 33
;	genPointerSet
	ld	(hl), #0x52
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:39: X f (B a, char b, double c, B d)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 50 bytes.
_f::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -50
	ld	hl, #-50
	add	hl, sp
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:43: r = xr;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	sp, hl
; common peephole 9c reused value still in hl.
	ex	de, hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_f_xr_10000_49
;fetchPairLong
	ld	bc, #0x0022
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:44: r.c1 = b;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 16 (ix)
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:46: a.d, a.i[0], a.i[1], a.i[2], b, c, d.d, d.i[0], d.i[1], d.i[2]);
;	genAddrOf
	ld	hl, #71
	add	hl, sp
	ex	de, hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 29 (ix)
	ld	b, 30 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, 6 (iy)
	ld	-16 (ix), a
	ld	a, 7 (iy)
	ld	-15 (ix), a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, 4 (iy)
	ld	-14 (ix), a
	ld	a, 5 (iy)
	ld	-13 (ix), a
;	genPointerGet
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #40
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 16 (ix)
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 14 (ix)
	ld	-6 (ix), a
	ld	a, 15 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	-4 (ix), a
	ld	a, 13 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	-2 (ix), a
	ld	a, 11 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 6 (ix)
	ld	d, 7 (ix)
	ld	l, 8 (ix)
	ld	h, 9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:45: sprintf (out, "X f(B,char,double,B):({%g,{%d,%d,%d}},'%c',%g,{%g,{%d,%d,%d}})",
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -16 (ix)
	ld	b, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -14 (ix)
	ld	b, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -12 (ix)
	ld	b, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 19 (ix)
	ld	b, 20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 17 (ix)
	ld	b, 18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -8 (ix)
	ld	b, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -6 (ix)
	ld	b, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
	ld	b, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -2 (ix)
	ld	b, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
	push	hl
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_out
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 30
	ld	hl, #30
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:47: return r;
;	genRet
	ld	hl, #54
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #34
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:48: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total f function size at codegen: 19 bytes.
___str_1:
	.ascii "X f(B,char,double,B):({%g,{%d,%d,%d}},'%c',%g,{%g,{%d,%d,%d}"
	.ascii "})"
	.db 0x00
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:55: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 202 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -202
	ld	hl, #-202
	add	hl, sp
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:62: Xr = f (B1, c2, d3, B2);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerPush
; common peephole 26e pushed hl directly instead of going through de.
	push	hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_B2
	ld	bc, #9
	add	hl, bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_d3 + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_d3)
	push	hl
;	genIpush
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_c2)
	push	af
	inc	sp
;	genPointerPush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_B1
	ld	bc, #9
	add	hl, bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genCall
	ld	hl, #0x00a1
	add	hl, sp
	push	hl
	call	_f
;	adjustStack by 27
	ld	hl, #27
	add	hl, sp
	ld	sp, hl
	pop	de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #136
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0022
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:63: strcpy (tmp, out);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
	push	de
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #36
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_out
	xor	a, a
00113$:
	cp	a, (hl)
	ldi
	jr	nz, 00113$
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:64: Xr.c[0] = Xr.c1 = '\0';
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #33
	add	iy, sp
	ld	0 (iy), #0x00
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:65: Xr = (*fp) (B1, c2, d3, B2);
;	genPointerPush
	push	de
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_B2
	ld	bc, #9
	add	hl, bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_d3 + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_d3)
	push	hl
;	genIpush
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_c2)
	push	af
	inc	sp
;	genPointerPush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_B1
	ld	bc, #9
	add	hl, bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genCall
	ld	iy, #0x00c3
	add	iy, sp
	push	iy
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, (_fp)
	call	___sdcc_call_iy
;	adjustStack by 27
	ld	hl, #27
	add	hl, sp
	ld	sp, hl
	pop	de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #168
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0022
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:66: if (strcmp (tmp, out))
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_out
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #34
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:67: ASSERT (0);
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
	ld	hl, #0x0043
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_4
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_2
;	genCall
	call	___fail
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:69: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-struct-ret-1.c:72: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 14 bytes.
__str_2:
	.ascii "Assertion failed"
	.db 0x00
__str_3:
	.ascii "0"
	.db 0x00
__str_4:
	.ascii "cases/./../tests/gcc-torture-execute-struct-ret-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-struct-ret-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-struct-ret-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-struct-ret-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-struct-ret-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-struct-ret-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-struct-ret-1.c:15: return "gcc-torture-execute-struct-ret-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-struct-ret-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "gcc-torture-execute-struct-ret-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__c1:
	.db #0x61	; 97	'a'
__xinit__c2:
	.db #0x7f	; 127
__xinit__c3:
	.db #0x80	; 128
__xinit__c4:
	.db #0xff	; 255
__xinit__c5:
	.db #0xff	; 255
__xinit__d1:
	.byte #0xcd, #0xcc, #0xcc, #0x3d	;  1.000000e-01
__xinit__d2:
	.byte #0xcd, #0xcc, #0x4c, #0x3e	;  2.000000e-01
__xinit__d3:
	.byte #0x9a, #0x99, #0x99, #0x3e	;  3.000000e-01
__xinit__d4:
	.byte #0xcd, #0xcc, #0xcc, #0x3e	;  4.000000e-01
__xinit__d5:
	.byte #0x00, #0x00, #0x00, #0x3f	;  5.000000e-01
__xinit__d6:
	.byte #0x9a, #0x99, #0x19, #0x3f	;  6.000000e-01
__xinit__d7:
	.byte #0x33, #0x33, #0x33, #0x3f	;  7.000000e-01
__xinit__d8:
	.byte #0xcd, #0xcc, #0x4c, #0x3f	;  8.000000e-01
__xinit__d9:
	.byte #0x66, #0x66, #0x66, #0x3f	;  9.000000e-01
__xinit__B1:
	.byte #0xcd, #0xcc, #0xcc, #0x3d	;  1.000000e-01
	.dw #0x0001
	.dw #0x0002
	.dw #0x0003
__xinit__B2:
	.byte #0xcd, #0xcc, #0x4c, #0x3e	;  2.000000e-01
	.dw #0x0005
	.dw #0x0004
	.dw #0x0003
__xinit__X1:
	.ascii "abcdefghijklmnopqrstuvwxyzABCDEF"
	.db 0x00
	.db #0x47	; 71	'G'
__xinit__X2:
	.ascii "123"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x39	; 57	'9'
__xinit__X3:
	.ascii "return-return-return"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x52	; 82	'R'
__xinit__fp:
	.dw _f
	.area _CABS (ABS)
