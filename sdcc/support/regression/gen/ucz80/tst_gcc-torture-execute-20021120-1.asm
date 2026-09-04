;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20021120_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
	.globl ___prints
	.globl ___fail
	.globl _gf
	.globl _gd
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
_gd::
	.ds 128
_gf::
	.ds 128
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
;cases/./../tests/gcc-torture-execute-20021120-1.c:41: void foo (int n)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 260 bytes.
_foo::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -260
	ld	iy, #-260
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20021120-1.c:54: pd = gd; COPYIN (d, pd);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_gd
	ld	hl, #128
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 4)
	ld	hl, #132
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 8)
	ld	hl, #136
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 12)
	ld	hl, #140
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 16)
	ld	hl, #144
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 20)
	ld	hl, #148
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 24)
	ld	hl, #152
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 28)
	ld	hl, #156
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 32)
	ld	hl, #160
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 36)
	ld	hl, #164
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 40)
	ld	hl, #168
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 44)
	ld	hl, #172
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 48)
	ld	hl, #176
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 52)
	ld	hl, #180
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 56)
	ld	hl, #184
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 60)
	ld	hl, #188
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 64)
	ld	hl, #192
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 68)
	ld	hl, #196
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 72)
	ld	hl, #200
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 76)
	ld	hl, #204
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 80)
	ld	hl, #208
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 84)
	ld	hl, #212
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 88)
	ld	hl, #216
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 92)
	ld	hl, #220
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 96)
	ld	hl, #224
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 100)
	ld	hl, #228
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 104)
	ld	hl, #232
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 108)
	ld	hl, #236
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 112)
	ld	hl, #240
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 116)
	ld	hl, #244
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gd + 120)
	ld	hl, #248
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, #(_gd + 120) + 4
	ld	hl, #252
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;cases/./../tests/gcc-torture-execute-20021120-1.c:55: for (i = 0; i < n; i++)
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00103$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -4 (ix)
	ld	a, -1 (ix)
	sbc	a, -3 (ix)
	jp	po, 00124$
	xor	a, #0x80
00124$:
	jp	p, 00101$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20021120-1.c:57: pf = gf; COPYIN (f, pf);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_gf
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 4)
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 8)
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 12)
	ld	hl, #12
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 16)
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 20)
	ld	hl, #20
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 24)
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 28)
	ld	hl, #28
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 32)
	ld	hl, #32
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 36)
	ld	hl, #36
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 40)
	ld	hl, #40
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 44)
	ld	hl, #44
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 48)
	ld	hl, #48
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 52)
	ld	hl, #52
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 56)
	ld	hl, #56
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 60)
	ld	hl, #60
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 64)
	ld	hl, #64
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 68)
	ld	hl, #68
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 72)
	ld	hl, #72
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 76)
	ld	hl, #76
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 80)
	ld	hl, #80
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 84)
	ld	hl, #84
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 88)
	ld	hl, #88
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 92)
	ld	hl, #92
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 96)
	ld	hl, #96
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 100)
	ld	hl, #100
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 104)
	ld	hl, #104
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 108)
	ld	hl, #108
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 112)
	ld	hl, #112
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 116)
	ld	hl, #116
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_gf + 120)
	ld	hl, #120
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, #(_gf + 120) + 4
	ld	hl, #124
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;cases/./../tests/gcc-torture-execute-20021120-1.c:58: pd = gd; ADD (d, pd);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_gd + 0)
	ld	hl, (#_gd + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #132
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #128
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 4) + 0)
	ld	hl, (#(_gd + 4) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -128 (ix)
	ld	d, -127 (ix)
	ld	l, -126 (ix)
	ld	h, -125 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-128 (ix), e
	ld	-127 (ix), d
	ld	-126 (ix), l
	ld	-125 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 8) + 0)
	ld	hl, (#(_gd + 8) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -124 (ix)
	ld	d, -123 (ix)
	ld	l, -122 (ix)
	ld	h, -121 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-124 (ix), e
	ld	-123 (ix), d
	ld	-122 (ix), l
	ld	-121 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 12) + 0)
	ld	hl, (#(_gd + 12) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -120 (ix)
	ld	d, -119 (ix)
	ld	l, -118 (ix)
	ld	h, -117 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-120 (ix), e
	ld	-119 (ix), d
	ld	-118 (ix), l
	ld	-117 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 16) + 0)
	ld	hl, (#(_gd + 16) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -116 (ix)
	ld	d, -115 (ix)
	ld	l, -114 (ix)
	ld	h, -113 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-116 (ix), e
	ld	-115 (ix), d
	ld	-114 (ix), l
	ld	-113 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 20) + 0)
	ld	hl, (#(_gd + 20) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -112 (ix)
	ld	d, -111 (ix)
	ld	l, -110 (ix)
	ld	h, -109 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-112 (ix), e
	ld	-111 (ix), d
	ld	-110 (ix), l
	ld	-109 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 24) + 0)
	ld	hl, (#(_gd + 24) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -108 (ix)
	ld	d, -107 (ix)
	ld	l, -106 (ix)
	ld	h, -105 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-108 (ix), e
	ld	-107 (ix), d
	ld	-106 (ix), l
	ld	-105 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 28) + 0)
	ld	hl, (#(_gd + 28) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -104 (ix)
	ld	d, -103 (ix)
	ld	l, -102 (ix)
	ld	h, -101 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-104 (ix), e
	ld	-103 (ix), d
	ld	-102 (ix), l
	ld	-101 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 32) + 0)
	ld	hl, (#(_gd + 32) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -100 (ix)
	ld	d, -99 (ix)
	ld	l, -98 (ix)
	ld	h, -97 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-100 (ix), e
	ld	-99 (ix), d
	ld	-98 (ix), l
	ld	-97 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 36) + 0)
	ld	hl, (#(_gd + 36) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -96 (ix)
	ld	d, -95 (ix)
	ld	l, -94 (ix)
	ld	h, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-96 (ix), e
	ld	-95 (ix), d
	ld	-94 (ix), l
	ld	-93 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 40) + 0)
	ld	hl, (#(_gd + 40) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -92 (ix)
	ld	d, -91 (ix)
	ld	l, -90 (ix)
	ld	h, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-92 (ix), e
	ld	-91 (ix), d
	ld	-90 (ix), l
	ld	-89 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 44) + 0)
	ld	hl, (#(_gd + 44) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -88 (ix)
	ld	d, -87 (ix)
	ld	l, -86 (ix)
	ld	h, -85 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-88 (ix), e
	ld	-87 (ix), d
	ld	-86 (ix), l
	ld	-85 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 48) + 0)
	ld	hl, (#(_gd + 48) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -84 (ix)
	ld	d, -83 (ix)
	ld	l, -82 (ix)
	ld	h, -81 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-84 (ix), e
	ld	-83 (ix), d
	ld	-82 (ix), l
	ld	-81 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 52) + 0)
	ld	hl, (#(_gd + 52) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -80 (ix)
	ld	d, -79 (ix)
	ld	l, -78 (ix)
	ld	h, -77 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-80 (ix), e
	ld	-79 (ix), d
	ld	-78 (ix), l
	ld	-77 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 56) + 0)
	ld	hl, (#(_gd + 56) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -76 (ix)
	ld	d, -75 (ix)
	ld	l, -74 (ix)
	ld	h, -73 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-76 (ix), e
	ld	-75 (ix), d
	ld	-74 (ix), l
	ld	-73 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 60) + 0)
	ld	hl, (#(_gd + 60) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -72 (ix)
	ld	d, -71 (ix)
	ld	l, -70 (ix)
	ld	h, -69 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-72 (ix), e
	ld	-71 (ix), d
	ld	-70 (ix), l
	ld	-69 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 64) + 0)
	ld	hl, (#(_gd + 64) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -68 (ix)
	ld	d, -67 (ix)
	ld	l, -66 (ix)
	ld	h, -65 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-68 (ix), e
	ld	-67 (ix), d
	ld	-66 (ix), l
	ld	-65 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 68) + 0)
	ld	hl, (#(_gd + 68) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -64 (ix)
	ld	d, -63 (ix)
	ld	l, -62 (ix)
	ld	h, -61 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-64 (ix), e
	ld	-63 (ix), d
	ld	-62 (ix), l
	ld	-61 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 72) + 0)
	ld	hl, (#(_gd + 72) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -60 (ix)
	ld	d, -59 (ix)
	ld	l, -58 (ix)
	ld	h, -57 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-60 (ix), e
	ld	-59 (ix), d
	ld	-58 (ix), l
	ld	-57 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 76) + 0)
	ld	hl, (#(_gd + 76) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -56 (ix)
	ld	d, -55 (ix)
	ld	l, -54 (ix)
	ld	h, -53 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-56 (ix), e
	ld	-55 (ix), d
	ld	-54 (ix), l
	ld	-53 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 80) + 0)
	ld	hl, (#(_gd + 80) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -52 (ix)
	ld	d, -51 (ix)
	ld	l, -50 (ix)
	ld	h, -49 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-52 (ix), e
	ld	-51 (ix), d
	ld	-50 (ix), l
	ld	-49 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 84) + 0)
	ld	hl, (#(_gd + 84) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -48 (ix)
	ld	d, -47 (ix)
	ld	l, -46 (ix)
	ld	h, -45 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-48 (ix), e
	ld	-47 (ix), d
	ld	-46 (ix), l
	ld	-45 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 88) + 0)
	ld	hl, (#(_gd + 88) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -44 (ix)
	ld	d, -43 (ix)
	ld	l, -42 (ix)
	ld	h, -41 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-44 (ix), e
	ld	-43 (ix), d
	ld	-42 (ix), l
	ld	-41 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 92) + 0)
	ld	hl, (#(_gd + 92) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -40 (ix)
	ld	d, -39 (ix)
	ld	l, -38 (ix)
	ld	h, -37 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-40 (ix), e
	ld	-39 (ix), d
	ld	-38 (ix), l
	ld	-37 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 96) + 0)
	ld	hl, (#(_gd + 96) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -36 (ix)
	ld	d, -35 (ix)
	ld	l, -34 (ix)
	ld	h, -33 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-36 (ix), e
	ld	-35 (ix), d
	ld	-34 (ix), l
	ld	-33 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 100) + 0)
	ld	hl, (#(_gd + 100) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -32 (ix)
	ld	d, -31 (ix)
	ld	l, -30 (ix)
	ld	h, -29 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-32 (ix), e
	ld	-31 (ix), d
	ld	-30 (ix), l
	ld	-29 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 104) + 0)
	ld	hl, (#(_gd + 104) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -28 (ix)
	ld	d, -27 (ix)
	ld	l, -26 (ix)
	ld	h, -25 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-28 (ix), e
	ld	-27 (ix), d
	ld	-26 (ix), l
	ld	-25 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 108) + 0)
	ld	hl, (#(_gd + 108) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-24 (ix), e
	ld	-23 (ix), d
	ld	-22 (ix), l
	ld	-21 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 112) + 0)
	ld	hl, (#(_gd + 112) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), e
	ld	-19 (ix), d
	ld	-18 (ix), l
	ld	-17 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 116) + 0)
	ld	hl, (#(_gd + 116) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -16 (ix)
	ld	d, -15 (ix)
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), e
	ld	-15 (ix), d
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 120) + 0)
	ld	hl, (#(_gd + 120) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 120) + 4)
	ld	hl, (#(_gd + 120) + 6)
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20021120-1.c:59: pd = gd; ADD (d, pd);
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_gd + 0)
	ld	hl, (#_gd + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #132
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #128
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 4) + 0)
	ld	hl, (#(_gd + 4) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -128 (ix)
	ld	d, -127 (ix)
	ld	l, -126 (ix)
	ld	h, -125 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-128 (ix), e
	ld	-127 (ix), d
	ld	-126 (ix), l
	ld	-125 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 8) + 0)
	ld	hl, (#(_gd + 8) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -124 (ix)
	ld	d, -123 (ix)
	ld	l, -122 (ix)
	ld	h, -121 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-124 (ix), e
	ld	-123 (ix), d
	ld	-122 (ix), l
	ld	-121 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 12) + 0)
	ld	hl, (#(_gd + 12) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -120 (ix)
	ld	d, -119 (ix)
	ld	l, -118 (ix)
	ld	h, -117 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-120 (ix), e
	ld	-119 (ix), d
	ld	-118 (ix), l
	ld	-117 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 16) + 0)
	ld	hl, (#(_gd + 16) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -116 (ix)
	ld	d, -115 (ix)
	ld	l, -114 (ix)
	ld	h, -113 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-116 (ix), e
	ld	-115 (ix), d
	ld	-114 (ix), l
	ld	-113 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 20) + 0)
	ld	hl, (#(_gd + 20) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -112 (ix)
	ld	d, -111 (ix)
	ld	l, -110 (ix)
	ld	h, -109 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-112 (ix), e
	ld	-111 (ix), d
	ld	-110 (ix), l
	ld	-109 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 24) + 0)
	ld	hl, (#(_gd + 24) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -108 (ix)
	ld	d, -107 (ix)
	ld	l, -106 (ix)
	ld	h, -105 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-108 (ix), e
	ld	-107 (ix), d
	ld	-106 (ix), l
	ld	-105 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 28) + 0)
	ld	hl, (#(_gd + 28) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -104 (ix)
	ld	d, -103 (ix)
	ld	l, -102 (ix)
	ld	h, -101 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-104 (ix), e
	ld	-103 (ix), d
	ld	-102 (ix), l
	ld	-101 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 32) + 0)
	ld	hl, (#(_gd + 32) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -100 (ix)
	ld	d, -99 (ix)
	ld	l, -98 (ix)
	ld	h, -97 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-100 (ix), e
	ld	-99 (ix), d
	ld	-98 (ix), l
	ld	-97 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 36) + 0)
	ld	hl, (#(_gd + 36) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -96 (ix)
	ld	d, -95 (ix)
	ld	l, -94 (ix)
	ld	h, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-96 (ix), e
	ld	-95 (ix), d
	ld	-94 (ix), l
	ld	-93 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 40) + 0)
	ld	hl, (#(_gd + 40) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -92 (ix)
	ld	d, -91 (ix)
	ld	l, -90 (ix)
	ld	h, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-92 (ix), e
	ld	-91 (ix), d
	ld	-90 (ix), l
	ld	-89 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 44) + 0)
	ld	hl, (#(_gd + 44) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -88 (ix)
	ld	d, -87 (ix)
	ld	l, -86 (ix)
	ld	h, -85 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-88 (ix), e
	ld	-87 (ix), d
	ld	-86 (ix), l
	ld	-85 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 48) + 0)
	ld	hl, (#(_gd + 48) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -84 (ix)
	ld	d, -83 (ix)
	ld	l, -82 (ix)
	ld	h, -81 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-84 (ix), e
	ld	-83 (ix), d
	ld	-82 (ix), l
	ld	-81 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 52) + 0)
	ld	hl, (#(_gd + 52) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -80 (ix)
	ld	d, -79 (ix)
	ld	l, -78 (ix)
	ld	h, -77 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-80 (ix), e
	ld	-79 (ix), d
	ld	-78 (ix), l
	ld	-77 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 56) + 0)
	ld	hl, (#(_gd + 56) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -76 (ix)
	ld	d, -75 (ix)
	ld	l, -74 (ix)
	ld	h, -73 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-76 (ix), e
	ld	-75 (ix), d
	ld	-74 (ix), l
	ld	-73 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 60) + 0)
	ld	hl, (#(_gd + 60) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -72 (ix)
	ld	d, -71 (ix)
	ld	l, -70 (ix)
	ld	h, -69 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-72 (ix), e
	ld	-71 (ix), d
	ld	-70 (ix), l
	ld	-69 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 64) + 0)
	ld	hl, (#(_gd + 64) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -68 (ix)
	ld	d, -67 (ix)
	ld	l, -66 (ix)
	ld	h, -65 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-68 (ix), e
	ld	-67 (ix), d
	ld	-66 (ix), l
	ld	-65 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 68) + 0)
	ld	hl, (#(_gd + 68) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -64 (ix)
	ld	d, -63 (ix)
	ld	l, -62 (ix)
	ld	h, -61 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-64 (ix), e
	ld	-63 (ix), d
	ld	-62 (ix), l
	ld	-61 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 72) + 0)
	ld	hl, (#(_gd + 72) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -60 (ix)
	ld	d, -59 (ix)
	ld	l, -58 (ix)
	ld	h, -57 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-60 (ix), e
	ld	-59 (ix), d
	ld	-58 (ix), l
	ld	-57 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 76) + 0)
	ld	hl, (#(_gd + 76) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -56 (ix)
	ld	d, -55 (ix)
	ld	l, -54 (ix)
	ld	h, -53 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-56 (ix), e
	ld	-55 (ix), d
	ld	-54 (ix), l
	ld	-53 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 80) + 0)
	ld	hl, (#(_gd + 80) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -52 (ix)
	ld	d, -51 (ix)
	ld	l, -50 (ix)
	ld	h, -49 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-52 (ix), e
	ld	-51 (ix), d
	ld	-50 (ix), l
	ld	-49 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 84) + 0)
	ld	hl, (#(_gd + 84) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -48 (ix)
	ld	d, -47 (ix)
	ld	l, -46 (ix)
	ld	h, -45 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-48 (ix), e
	ld	-47 (ix), d
	ld	-46 (ix), l
	ld	-45 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 88) + 0)
	ld	hl, (#(_gd + 88) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -44 (ix)
	ld	d, -43 (ix)
	ld	l, -42 (ix)
	ld	h, -41 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-44 (ix), e
	ld	-43 (ix), d
	ld	-42 (ix), l
	ld	-41 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 92) + 0)
	ld	hl, (#(_gd + 92) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -40 (ix)
	ld	d, -39 (ix)
	ld	l, -38 (ix)
	ld	h, -37 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-40 (ix), e
	ld	-39 (ix), d
	ld	-38 (ix), l
	ld	-37 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 96) + 0)
	ld	hl, (#(_gd + 96) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -36 (ix)
	ld	d, -35 (ix)
	ld	l, -34 (ix)
	ld	h, -33 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-36 (ix), e
	ld	-35 (ix), d
	ld	-34 (ix), l
	ld	-33 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 100) + 0)
	ld	hl, (#(_gd + 100) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -32 (ix)
	ld	d, -31 (ix)
	ld	l, -30 (ix)
	ld	h, -29 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-32 (ix), e
	ld	-31 (ix), d
	ld	-30 (ix), l
	ld	-29 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 104) + 0)
	ld	hl, (#(_gd + 104) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -28 (ix)
	ld	d, -27 (ix)
	ld	l, -26 (ix)
	ld	h, -25 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-28 (ix), e
	ld	-27 (ix), d
	ld	-26 (ix), l
	ld	-25 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 108) + 0)
	ld	hl, (#(_gd + 108) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-24 (ix), e
	ld	-23 (ix), d
	ld	-22 (ix), l
	ld	-21 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 112) + 0)
	ld	hl, (#(_gd + 112) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), e
	ld	-19 (ix), d
	ld	-18 (ix), l
	ld	-17 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 116) + 0)
	ld	hl, (#(_gd + 116) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -16 (ix)
	ld	d, -15 (ix)
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), e
	ld	-15 (ix), d
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 120) + 0)
	ld	hl, (#(_gd + 120) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 120) + 4)
	ld	hl, (#(_gd + 120) + 6)
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20021120-1.c:60: pd = gd; ADD (d, pd);
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_gd + 0)
	ld	hl, (#_gd + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #132
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #128
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 4) + 0)
	ld	hl, (#(_gd + 4) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -128 (ix)
	ld	d, -127 (ix)
	ld	l, -126 (ix)
	ld	h, -125 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-128 (ix), e
	ld	-127 (ix), d
	ld	-126 (ix), l
	ld	-125 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 8) + 0)
	ld	hl, (#(_gd + 8) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -124 (ix)
	ld	d, -123 (ix)
	ld	l, -122 (ix)
	ld	h, -121 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-124 (ix), e
	ld	-123 (ix), d
	ld	-122 (ix), l
	ld	-121 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 12) + 0)
	ld	hl, (#(_gd + 12) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -120 (ix)
	ld	d, -119 (ix)
	ld	l, -118 (ix)
	ld	h, -117 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-120 (ix), e
	ld	-119 (ix), d
	ld	-118 (ix), l
	ld	-117 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 16) + 0)
	ld	hl, (#(_gd + 16) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -116 (ix)
	ld	d, -115 (ix)
	ld	l, -114 (ix)
	ld	h, -113 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-116 (ix), e
	ld	-115 (ix), d
	ld	-114 (ix), l
	ld	-113 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 20) + 0)
	ld	hl, (#(_gd + 20) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -112 (ix)
	ld	d, -111 (ix)
	ld	l, -110 (ix)
	ld	h, -109 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-112 (ix), e
	ld	-111 (ix), d
	ld	-110 (ix), l
	ld	-109 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 24) + 0)
	ld	hl, (#(_gd + 24) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -108 (ix)
	ld	d, -107 (ix)
	ld	l, -106 (ix)
	ld	h, -105 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-108 (ix), e
	ld	-107 (ix), d
	ld	-106 (ix), l
	ld	-105 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 28) + 0)
	ld	hl, (#(_gd + 28) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -104 (ix)
	ld	d, -103 (ix)
	ld	l, -102 (ix)
	ld	h, -101 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-104 (ix), e
	ld	-103 (ix), d
	ld	-102 (ix), l
	ld	-101 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 32) + 0)
	ld	hl, (#(_gd + 32) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -100 (ix)
	ld	d, -99 (ix)
	ld	l, -98 (ix)
	ld	h, -97 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-100 (ix), e
	ld	-99 (ix), d
	ld	-98 (ix), l
	ld	-97 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 36) + 0)
	ld	hl, (#(_gd + 36) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -96 (ix)
	ld	d, -95 (ix)
	ld	l, -94 (ix)
	ld	h, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-96 (ix), e
	ld	-95 (ix), d
	ld	-94 (ix), l
	ld	-93 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 40) + 0)
	ld	hl, (#(_gd + 40) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -92 (ix)
	ld	d, -91 (ix)
	ld	l, -90 (ix)
	ld	h, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-92 (ix), e
	ld	-91 (ix), d
	ld	-90 (ix), l
	ld	-89 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 44) + 0)
	ld	hl, (#(_gd + 44) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -88 (ix)
	ld	d, -87 (ix)
	ld	l, -86 (ix)
	ld	h, -85 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-88 (ix), e
	ld	-87 (ix), d
	ld	-86 (ix), l
	ld	-85 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 48) + 0)
	ld	hl, (#(_gd + 48) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -84 (ix)
	ld	d, -83 (ix)
	ld	l, -82 (ix)
	ld	h, -81 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-84 (ix), e
	ld	-83 (ix), d
	ld	-82 (ix), l
	ld	-81 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 52) + 0)
	ld	hl, (#(_gd + 52) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -80 (ix)
	ld	d, -79 (ix)
	ld	l, -78 (ix)
	ld	h, -77 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-80 (ix), e
	ld	-79 (ix), d
	ld	-78 (ix), l
	ld	-77 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 56) + 0)
	ld	hl, (#(_gd + 56) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -76 (ix)
	ld	d, -75 (ix)
	ld	l, -74 (ix)
	ld	h, -73 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-76 (ix), e
	ld	-75 (ix), d
	ld	-74 (ix), l
	ld	-73 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 60) + 0)
	ld	hl, (#(_gd + 60) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -72 (ix)
	ld	d, -71 (ix)
	ld	l, -70 (ix)
	ld	h, -69 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-72 (ix), e
	ld	-71 (ix), d
	ld	-70 (ix), l
	ld	-69 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 64) + 0)
	ld	hl, (#(_gd + 64) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -68 (ix)
	ld	d, -67 (ix)
	ld	l, -66 (ix)
	ld	h, -65 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-68 (ix), e
	ld	-67 (ix), d
	ld	-66 (ix), l
	ld	-65 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 68) + 0)
	ld	hl, (#(_gd + 68) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -64 (ix)
	ld	d, -63 (ix)
	ld	l, -62 (ix)
	ld	h, -61 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-64 (ix), e
	ld	-63 (ix), d
	ld	-62 (ix), l
	ld	-61 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 72) + 0)
	ld	hl, (#(_gd + 72) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -60 (ix)
	ld	d, -59 (ix)
	ld	l, -58 (ix)
	ld	h, -57 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-60 (ix), e
	ld	-59 (ix), d
	ld	-58 (ix), l
	ld	-57 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 76) + 0)
	ld	hl, (#(_gd + 76) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -56 (ix)
	ld	d, -55 (ix)
	ld	l, -54 (ix)
	ld	h, -53 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-56 (ix), e
	ld	-55 (ix), d
	ld	-54 (ix), l
	ld	-53 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 80) + 0)
	ld	hl, (#(_gd + 80) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -52 (ix)
	ld	d, -51 (ix)
	ld	l, -50 (ix)
	ld	h, -49 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-52 (ix), e
	ld	-51 (ix), d
	ld	-50 (ix), l
	ld	-49 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 84) + 0)
	ld	hl, (#(_gd + 84) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -48 (ix)
	ld	d, -47 (ix)
	ld	l, -46 (ix)
	ld	h, -45 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-48 (ix), e
	ld	-47 (ix), d
	ld	-46 (ix), l
	ld	-45 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 88) + 0)
	ld	hl, (#(_gd + 88) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -44 (ix)
	ld	d, -43 (ix)
	ld	l, -42 (ix)
	ld	h, -41 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-44 (ix), e
	ld	-43 (ix), d
	ld	-42 (ix), l
	ld	-41 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 92) + 0)
	ld	hl, (#(_gd + 92) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -40 (ix)
	ld	d, -39 (ix)
	ld	l, -38 (ix)
	ld	h, -37 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-40 (ix), e
	ld	-39 (ix), d
	ld	-38 (ix), l
	ld	-37 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 96) + 0)
	ld	hl, (#(_gd + 96) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -36 (ix)
	ld	d, -35 (ix)
	ld	l, -34 (ix)
	ld	h, -33 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-36 (ix), e
	ld	-35 (ix), d
	ld	-34 (ix), l
	ld	-33 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 100) + 0)
	ld	hl, (#(_gd + 100) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -32 (ix)
	ld	d, -31 (ix)
	ld	l, -30 (ix)
	ld	h, -29 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-32 (ix), e
	ld	-31 (ix), d
	ld	-30 (ix), l
	ld	-29 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 104) + 0)
	ld	hl, (#(_gd + 104) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -28 (ix)
	ld	d, -27 (ix)
	ld	l, -26 (ix)
	ld	h, -25 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-28 (ix), e
	ld	-27 (ix), d
	ld	-26 (ix), l
	ld	-25 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 108) + 0)
	ld	hl, (#(_gd + 108) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-24 (ix), e
	ld	-23 (ix), d
	ld	-22 (ix), l
	ld	-21 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 112) + 0)
	ld	hl, (#(_gd + 112) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -20 (ix)
	ld	d, -19 (ix)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), e
	ld	-19 (ix), d
	ld	-18 (ix), l
	ld	-17 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 116) + 0)
	ld	hl, (#(_gd + 116) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -16 (ix)
	ld	d, -15 (ix)
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), e
	ld	-15 (ix), d
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 120) + 0)
	ld	hl, (#(_gd + 120) + 2)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	bc, (#(_gd + 120) + 4)
	ld	hl, (#(_gd + 120) + 6)
;	genIpush
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20021120-1.c:61: pf = gf; COPYOUT (f, pf);
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_gf
	ld	hl, #0
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 4)
	ld	hl, #4
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 8)
	ld	hl, #8
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 12)
	ld	hl, #12
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 16)
	ld	hl, #16
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 20)
	ld	hl, #20
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 24)
	ld	hl, #24
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 28)
	ld	hl, #28
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 32)
	ld	hl, #32
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 36)
	ld	hl, #36
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 40)
	ld	hl, #40
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 44)
	ld	hl, #44
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 48)
	ld	hl, #48
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 52)
	ld	hl, #52
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 56)
	ld	hl, #56
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 60)
	ld	hl, #60
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 64)
	ld	hl, #64
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 68)
	ld	hl, #68
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 72)
	ld	hl, #72
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 76)
	ld	hl, #76
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 80)
	ld	hl, #80
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 84)
	ld	hl, #84
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 88)
	ld	hl, #88
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 92)
	ld	hl, #92
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 96)
	ld	hl, #96
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 100)
	ld	hl, #100
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 104)
	ld	hl, #104
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 108)
	ld	hl, #108
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 112)
	ld	hl, #112
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 116)
	ld	hl, #116
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 120)
	ld	hl, #120
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gf + 124)
	ld	hl, #124
	add	hl, sp
	ld	bc, #0x0004
	ldir
;cases/./../tests/gcc-torture-execute-20021120-1.c:55: for (i = 0; i < n; i++)
;	genPlus
	inc	-2 (ix)
	jp	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00125$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00125$.
;	genGoto
	jp	00103$
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-20021120-1.c:63: pd = gd; COPYOUT (d, pd);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_gd
	ld	hl, #128
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 4)
	ld	hl, #132
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 8)
	ld	hl, #136
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 12)
	ld	hl, #140
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 16)
	ld	hl, #144
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 20)
	ld	hl, #148
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 24)
	ld	hl, #152
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 28)
	ld	hl, #156
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 32)
	ld	hl, #160
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 36)
	ld	hl, #164
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 40)
	ld	hl, #168
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 44)
	ld	hl, #172
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 48)
	ld	hl, #176
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 52)
	ld	hl, #180
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 56)
	ld	hl, #184
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 60)
	ld	hl, #188
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 64)
	ld	hl, #192
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 68)
	ld	hl, #196
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 72)
	ld	hl, #200
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 76)
	ld	hl, #204
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 80)
	ld	hl, #208
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 84)
	ld	hl, #212
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 88)
	ld	hl, #216
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 92)
	ld	hl, #220
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 96)
	ld	hl, #224
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 100)
	ld	hl, #228
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 104)
	ld	hl, #232
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 108)
	ld	hl, #236
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 112)
	ld	hl, #240
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 116)
	ld	hl, #244
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 120)
	ld	hl, #248
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_gd + 124)
	ld	hl, #252
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-20021120-1.c:64: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total foo function size at codegen: 517 bytes.
;cases/./../tests/gcc-torture-execute-20021120-1.c:68: testTortureExecute (void)
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
;cases/./../tests/gcc-torture-execute-20021120-1.c:73: for (i = 0; i < 32; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-20021120-1.c:74: gd[i] = i, gf[i] = i;
;	genAddrOf
	ld	hl, #_gd+0
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;	genPlus
	add	hl, de
;	genSend
	push	hl
	push	bc
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___sint2fs
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
	pop	hl
;	genPointerSet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;	genAddrOf
	ld	hl, #_gf+0
;	genPlus
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
; common peephole 26d moved push bc before de/hl swap.
	push	bc
	ex	de, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;cases/./../tests/gcc-torture-execute-20021120-1.c:73: for (i = 0; i < 32; i++)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00103$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20021120-1.c:75: foo (1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genCall
	call	_foo
;cases/./../tests/gcc-torture-execute-20021120-1.c:76: for (i = 0; i < 32; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-20021120-1.c:77: ASSERT (gd[i] == i * 4 && gf[i] == i);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #_gd
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	iy, de
;	genPointerGet
	ld	a, 0 (iy)
	ld	-6 (ix), a
	ld	a, 1 (iy)
	ld	-5 (ix), a
	ld	a, 2 (iy)
	ld	-4 (ix), a
	ld	a, 3 (iy)
	ld	-3 (ix), a
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 157 used ex to load de into hl.
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___sint2fs
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
; common peephole 50a eliminated dead pop/push de pair.
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;	genAddrOf
	ld	hl, #_gf+0
;	genPlus
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genSend
	push	bc
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___sint2fs
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genIpush
	push	hl
	push	iy
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	genLabel
00109$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004d
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
00106$:
;cases/./../tests/gcc-torture-execute-20021120-1.c:76: for (i = 0; i < 32; i++)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00156$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x20
	jp	c, 00105$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20021120-1.c:78: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/gcc-torture-execute-20021120-1.c:80: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 13 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "gd[i] == i * 4 && gf[i] == i"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20021120-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20021120-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20021120-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20021120-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20021120-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20021120-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20021120-1.c:15: return "gcc-torture-execute-20021120-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20021120-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20021120-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
