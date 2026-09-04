;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_ashldi_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
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
;cases/./../tests/gcc-torture-execute-ashldi-1.c:127: variable_shift(unsigned long long x, int i)
;	genLabel
;	genFunction
;	---------------------------------
; Function variable_shift
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_variable_shift:
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-ashldi-1.c:129: return x << i;
;	genLeftShift
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #20
	add	hl, sp
	ld	b, (hl)
;	genMove_o size 8 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +1 to immediate 12
	ld	hl, #0xd
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	1 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +2 to immediate 12
	ld	hl, #0xe
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	2 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +3 to immediate 12
	ld	hl, #0xf
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	3 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +4 to immediate 12
	ld	hl, #0x10
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	4 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +5 to immediate 12
	ld	hl, #0x11
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	5 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +6 to immediate 12
	ld	hl, #0x12
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	6 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +7 to immediate 12
	ld	hl, #0x13
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	ld	7 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	sla	0 (iy)
	rl	1 (iy)
	rl	2 (iy)
	rl	3 (iy)
	rl	4 (iy)
	rl	5 (iy)
	rl	6 (iy)
	rl	7 (iy)
00104$:
	djnz	00103$
;	genMove_o size 8 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-ashldi-1.c:130: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total variable_shift function size at codegen: 13 bytes.
_data:
	.byte #0xef, #0xcd, #0xab, #0x89, #0x67, #0x45, #0x23, #0x01
	.byte #0xde, #0x9b, #0x57, #0x13, #0xcf, #0x8a, #0x46, #0x02
	.byte #0xbc, #0x37, #0xaf, #0x26, #0x9e, #0x15, #0x8d, #0x04
	.byte #0x78, #0x6f, #0x5e, #0x4d, #0x3c, #0x2b, #0x1a, #0x09
	.byte #0xf0, #0xde, #0xbc, #0x9a, #0x78, #0x56, #0x34, #0x12
	.byte #0xe0, #0xbd, #0x79, #0x35, #0xf1, #0xac, #0x68, #0x24
	.byte #0xc0, #0x7b, #0xf3, #0x6a, #0xe2, #0x59, #0xd1, #0x48
	.byte #0x80, #0xf7, #0xe6, #0xd5, #0xc4, #0xb3, #0xa2, #0x91
	.byte #0x00, #0xef, #0xcd, #0xab, #0x89, #0x67, #0x45, #0x23
	.byte #0x00, #0xde, #0x9b, #0x57, #0x13, #0xcf, #0x8a, #0x46
	.byte #0x00, #0xbc, #0x37, #0xaf, #0x26, #0x9e, #0x15, #0x8d
	.byte #0x00, #0x78, #0x6f, #0x5e, #0x4d, #0x3c, #0x2b, #0x1a
	.byte #0x00, #0xf0, #0xde, #0xbc, #0x9a, #0x78, #0x56, #0x34
	.byte #0x00, #0xe0, #0xbd, #0x79, #0x35, #0xf1, #0xac, #0x68
	.byte #0x00, #0xc0, #0x7b, #0xf3, #0x6a, #0xe2, #0x59, #0xd1
	.byte #0x00, #0x80, #0xf7, #0xe6, #0xd5, #0xc4, #0xb3, #0xa2
	.byte #0x00, #0x00, #0xef, #0xcd, #0xab, #0x89, #0x67, #0x45
	.byte #0x00, #0x00, #0xde, #0x9b, #0x57, #0x13, #0xcf, #0x8a
	.byte #0x00, #0x00, #0xbc, #0x37, #0xaf, #0x26, #0x9e, #0x15
	.byte #0x00, #0x00, #0x78, #0x6f, #0x5e, #0x4d, #0x3c, #0x2b
	.byte #0x00, #0x00, #0xf0, #0xde, #0xbc, #0x9a, #0x78, #0x56
	.byte #0x00, #0x00, #0xe0, #0xbd, #0x79, #0x35, #0xf1, #0xac
	.byte #0x00, #0x00, #0xc0, #0x7b, #0xf3, #0x6a, #0xe2, #0x59
	.byte #0x00, #0x00, #0x80, #0xf7, #0xe6, #0xd5, #0xc4, #0xb3
	.byte #0x00, #0x00, #0x00, #0xef, #0xcd, #0xab, #0x89, #0x67
	.byte #0x00, #0x00, #0x00, #0xde, #0x9b, #0x57, #0x13, #0xcf
	.byte #0x00, #0x00, #0x00, #0xbc, #0x37, #0xaf, #0x26, #0x9e
	.byte #0x00, #0x00, #0x00, #0x78, #0x6f, #0x5e, #0x4d, #0x3c
	.byte #0x00, #0x00, #0x00, #0xf0, #0xde, #0xbc, #0x9a, #0x78
	.byte #0x00, #0x00, #0x00, #0xe0, #0xbd, #0x79, #0x35, #0xf1
	.byte #0x00, #0x00, #0x00, #0xc0, #0x7b, #0xf3, #0x6a, #0xe2
	.byte #0x00, #0x00, #0x00, #0x80, #0xf7, #0xe6, #0xd5, #0xc4
	.byte #0x00, #0x00, #0x00, #0x00, #0xef, #0xcd, #0xab, #0x89
	.byte #0x00, #0x00, #0x00, #0x00, #0xde, #0x9b, #0x57, #0x13
	.byte #0x00, #0x00, #0x00, #0x00, #0xbc, #0x37, #0xaf, #0x26
	.byte #0x00, #0x00, #0x00, #0x00, #0x78, #0x6f, #0x5e, #0x4d
	.byte #0x00, #0x00, #0x00, #0x00, #0xf0, #0xde, #0xbc, #0x9a
	.byte #0x00, #0x00, #0x00, #0x00, #0xe0, #0xbd, #0x79, #0x35
	.byte #0x00, #0x00, #0x00, #0x00, #0xc0, #0x7b, #0xf3, #0x6a
	.byte #0x00, #0x00, #0x00, #0x00, #0x80, #0xf7, #0xe6, #0xd5
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0xef, #0xcd, #0xab
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0xde, #0x9b, #0x57
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0xbc, #0x37, #0xaf
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x78, #0x6f, #0x5e
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0xf0, #0xde, #0xbc
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0xe0, #0xbd, #0x79
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0xc0, #0x7b, #0xf3
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x80, #0xf7, #0xe6
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xef, #0xcd
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xde, #0x9b
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xbc, #0x37
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x78, #0x6f
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xf0, #0xde
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xe0, #0xbd
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xc0, #0x7b
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x80, #0xf7
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xef
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xde
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xbc
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x78
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xf0
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xe0
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0xc0
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x80
;cases/./../tests/gcc-torture-execute-ashldi-1.c:133: constant_shift(unsigned long long x, int i)
;	genLabel
;	genFunction
;	---------------------------------
; Function constant_shift
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_constant_shift:
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/gcc-torture-execute-ashldi-1.c:135: switch (i)
;	genCmpLt
	bit	7, 15 (ix)
	jp	nz, 00165$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x3f
	cp	a, 14 (ix)
	ld	a, #0x00
	sbc	a, 15 (ix)
	jp	po, 00185$
	xor	a, #0x80
00185$:
	jp	m, 00165$
;	skipping generated iCode
;	genJumpTab
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, 14 (ix)
	ld	b, 15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #00186$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00186$:
	.dw	00101$
	.dw	00102$
	.dw	00103$
	.dw	00104$
	.dw	00105$
	.dw	00106$
	.dw	00107$
	.dw	00108$
	.dw	00109$
	.dw	00110$
	.dw	00111$
	.dw	00112$
	.dw	00113$
	.dw	00114$
	.dw	00115$
	.dw	00116$
	.dw	00117$
	.dw	00118$
	.dw	00119$
	.dw	00120$
	.dw	00121$
	.dw	00122$
	.dw	00123$
	.dw	00124$
	.dw	00125$
	.dw	00126$
	.dw	00127$
	.dw	00128$
	.dw	00129$
	.dw	00130$
	.dw	00131$
	.dw	00132$
	.dw	00133$
	.dw	00134$
	.dw	00135$
	.dw	00136$
	.dw	00137$
	.dw	00138$
	.dw	00139$
	.dw	00140$
	.dw	00141$
	.dw	00142$
	.dw	00143$
	.dw	00144$
	.dw	00145$
	.dw	00146$
	.dw	00147$
	.dw	00148$
	.dw	00149$
	.dw	00150$
	.dw	00151$
	.dw	00152$
	.dw	00153$
	.dw	00154$
	.dw	00155$
	.dw	00156$
	.dw	00157$
	.dw	00158$
	.dw	00159$
	.dw	00160$
	.dw	00161$
	.dw	00162$
	.dw	00163$
	.dw	00164$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:137: case 0: x = x << 0; break;
;	genLabel
00101$:
;	genLeftShift
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:138: case 1: x = x << 1; break;
;	genLabel
00102$:
;	genLeftShift
	sla	6 (ix)
	rl	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:139: case 2: x = x << 2; break;
;	genLabel
00103$:
;	genLeftShift
	ld	b, #0x02
00191$:
	sla	6 (ix)
	rl	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00192$.
	djnz	00191$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:140: case 3: x = x << 3; break;
;	genLabel
00104$:
;	genLeftShift
	ld	b, #0x03
00193$:
	sla	6 (ix)
	rl	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00194$.
	djnz	00193$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:141: case 4: x = x << 4; break;
;	genLabel
00105$:
;	genLeftShift
	ld	b, #0x04
00195$:
	sla	6 (ix)
	rl	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00196$.
	djnz	00195$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:142: case 5: x = x << 5; break;
;	genLabel
00106$:
;	genLeftShift
	ld	b, #0x05
00197$:
	sla	6 (ix)
	rl	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00198$.
	djnz	00197$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:143: case 6: x = x << 6; break;
;	genLabel
00107$:
;	genLeftShift
	ld	b, #0x06
00199$:
	sla	6 (ix)
	rl	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00200$.
	djnz	00199$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:144: case 7: x = x << 7; break;
;	genLabel
00108$:
;	genLeftShift
	ld	b, #0x07
00201$:
	sla	6 (ix)
	rl	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00202$.
	djnz	00201$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:145: case 8: x = x << 8; break;
;	genLabel
00109$:
;	genLeftShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	13 (ix), a
	ld	a, 11 (ix)
	ld	12 (ix), a
	ld	a, 10 (ix)
	ld	11 (ix), a
	ld	a, 9 (ix)
	ld	10 (ix), a
	ld	a, 8 (ix)
	ld	9 (ix), a
	ld	a, 7 (ix)
	ld	8 (ix), a
	ld	a, 6 (ix)
	ld	7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), #0x00
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:146: case 9: x = x << 9; break;
;	genLabel
00110$:
;	genLeftShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	13 (ix), a
	ld	a, 11 (ix)
	ld	12 (ix), a
	ld	a, 10 (ix)
	ld	11 (ix), a
	ld	a, 9 (ix)
	ld	10 (ix), a
	ld	a, 8 (ix)
	ld	9 (ix), a
	ld	a, 7 (ix)
	ld	8 (ix), a
	ld	a, 6 (ix)
	ld	7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), #0x00
	sla	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:147: case 10: x = x << 10; break;
;	genLabel
00111$:
;	genLeftShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	13 (ix), a
	ld	a, 11 (ix)
	ld	12 (ix), a
	ld	a, 10 (ix)
	ld	11 (ix), a
	ld	a, 9 (ix)
	ld	10 (ix), a
	ld	a, 8 (ix)
	ld	9 (ix), a
	ld	a, 7 (ix)
	ld	8 (ix), a
	ld	a, 6 (ix)
	ld	7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), #0x00
	ld	b, #0x02
00207$:
	sla	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00208$.
	djnz	00207$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:148: case 11: x = x << 11; break;
;	genLabel
00112$:
;	genLeftShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	13 (ix), a
	ld	a, 11 (ix)
	ld	12 (ix), a
	ld	a, 10 (ix)
	ld	11 (ix), a
	ld	a, 9 (ix)
	ld	10 (ix), a
	ld	a, 8 (ix)
	ld	9 (ix), a
	ld	a, 7 (ix)
	ld	8 (ix), a
	ld	a, 6 (ix)
	ld	7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), #0x00
	ld	b, #0x03
00209$:
	sla	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00210$.
	djnz	00209$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:149: case 12: x = x << 12; break;
;	genLabel
00113$:
;	genLeftShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	13 (ix), a
	ld	a, 11 (ix)
	ld	12 (ix), a
	ld	a, 10 (ix)
	ld	11 (ix), a
	ld	a, 9 (ix)
	ld	10 (ix), a
	ld	a, 8 (ix)
	ld	9 (ix), a
	ld	a, 7 (ix)
	ld	8 (ix), a
	ld	a, 6 (ix)
	ld	7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), #0x00
	ld	b, #0x04
00211$:
	sla	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00212$.
	djnz	00211$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:150: case 13: x = x << 13; break;
;	genLabel
00114$:
;	genLeftShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	13 (ix), a
	ld	a, 11 (ix)
	ld	12 (ix), a
	ld	a, 10 (ix)
	ld	11 (ix), a
	ld	a, 9 (ix)
	ld	10 (ix), a
	ld	a, 8 (ix)
	ld	9 (ix), a
	ld	a, 7 (ix)
	ld	8 (ix), a
	ld	a, 6 (ix)
	ld	7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), #0x00
	ld	b, #0x05
00213$:
	sla	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00214$.
	djnz	00213$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:151: case 14: x = x << 14; break;
;	genLabel
00115$:
;	genLeftShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	13 (ix), a
	ld	a, 11 (ix)
	ld	12 (ix), a
	ld	a, 10 (ix)
	ld	11 (ix), a
	ld	a, 9 (ix)
	ld	10 (ix), a
	ld	a, 8 (ix)
	ld	9 (ix), a
	ld	a, 7 (ix)
	ld	8 (ix), a
	ld	a, 6 (ix)
	ld	7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), #0x00
	ld	b, #0x06
00215$:
	sla	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00216$.
	djnz	00215$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:152: case 15: x = x << 15; break;
;	genLabel
00116$:
;	genLeftShift
;	genMove_o size 7 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 12 (ix)
	ld	13 (ix), a
	ld	a, 11 (ix)
	ld	12 (ix), a
	ld	a, 10 (ix)
	ld	11 (ix), a
	ld	a, 9 (ix)
	ld	10 (ix), a
	ld	a, 8 (ix)
	ld	9 (ix), a
	ld	a, 7 (ix)
	ld	8 (ix), a
	ld	a, 6 (ix)
	ld	7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), #0x00
	ld	b, #0x07
00217$:
	sla	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00218$.
	djnz	00217$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:153: case 16: x = x << 16; break;
;	genLabel
00117$:
;	genLeftShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 11 (ix)
	ld	13 (ix), a
	ld	a, 10 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	9 (ix), a
	ld	a, 6 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:154: case 17: x = x << 17; break;
;	genLabel
00118$:
;	genLeftShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 11 (ix)
	ld	13 (ix), a
	ld	a, 10 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	9 (ix), a
	ld	a, 6 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	sla	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:155: case 18: x = x << 18; break;
;	genLabel
00119$:
;	genLeftShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 11 (ix)
	ld	13 (ix), a
	ld	a, 10 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	9 (ix), a
	ld	a, 6 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	b, #0x02
00223$:
	sla	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00224$.
	djnz	00223$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:156: case 19: x = x << 19; break;
;	genLabel
00120$:
;	genLeftShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 11 (ix)
	ld	13 (ix), a
	ld	a, 10 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	9 (ix), a
	ld	a, 6 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	b, #0x03
00225$:
	sla	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00226$.
	djnz	00225$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:157: case 20: x = x << 20; break;
;	genLabel
00121$:
;	genLeftShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 11 (ix)
	ld	13 (ix), a
	ld	a, 10 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	9 (ix), a
	ld	a, 6 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	b, #0x04
00227$:
	sla	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00228$.
	djnz	00227$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:158: case 21: x = x << 21; break;
;	genLabel
00122$:
;	genLeftShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 11 (ix)
	ld	13 (ix), a
	ld	a, 10 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	9 (ix), a
	ld	a, 6 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	b, #0x05
00229$:
	sla	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00230$.
	djnz	00229$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:159: case 22: x = x << 22; break;
;	genLabel
00123$:
;	genLeftShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 11 (ix)
	ld	13 (ix), a
	ld	a, 10 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	9 (ix), a
	ld	a, 6 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	b, #0x06
00231$:
	sla	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00232$.
	djnz	00231$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:160: case 23: x = x << 23; break;
;	genLabel
00124$:
;	genLeftShift
;	genMove_o size 6 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 11 (ix)
	ld	13 (ix), a
	ld	a, 10 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	9 (ix), a
	ld	a, 6 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	b, #0x07
00233$:
	sla	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00234$.
	djnz	00233$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:161: case 24: x = x << 24; break;
;	genLabel
00125$:
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	13 (ix), a
	ld	a, 9 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	10 (ix), a
	ld	a, 6 (ix)
	ld	9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:162: case 25: x = x << 25; break;
;	genLabel
00126$:
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	13 (ix), a
	ld	a, 9 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	10 (ix), a
	ld	a, 6 (ix)
	ld	9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	sla	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:163: case 26: x = x << 26; break;
;	genLabel
00127$:
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	13 (ix), a
	ld	a, 9 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	10 (ix), a
	ld	a, 6 (ix)
	ld	9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	b, #0x02
00239$:
	sla	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00240$.
	djnz	00239$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:164: case 27: x = x << 27; break;
;	genLabel
00128$:
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	13 (ix), a
	ld	a, 9 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	10 (ix), a
	ld	a, 6 (ix)
	ld	9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	b, #0x03
00241$:
	sla	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00242$.
	djnz	00241$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:165: case 28: x = x << 28; break;
;	genLabel
00129$:
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	13 (ix), a
	ld	a, 9 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	10 (ix), a
	ld	a, 6 (ix)
	ld	9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	b, #0x04
00243$:
	sla	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00244$.
	djnz	00243$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:166: case 29: x = x << 29; break;
;	genLabel
00130$:
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	13 (ix), a
	ld	a, 9 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	10 (ix), a
	ld	a, 6 (ix)
	ld	9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	b, #0x05
00245$:
	sla	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00246$.
	djnz	00245$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:167: case 30: x = x << 30; break;
;	genLabel
00131$:
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	13 (ix), a
	ld	a, 9 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	10 (ix), a
	ld	a, 6 (ix)
	ld	9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	b, #0x06
00247$:
	sla	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00248$.
	djnz	00247$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:168: case 31: x = x << 31; break;
;	genLabel
00132$:
;	genLeftShift
;	genMove_o size 5 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 10 (ix)
	ld	13 (ix), a
	ld	a, 9 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	10 (ix), a
	ld	a, 6 (ix)
	ld	9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	b, #0x07
00249$:
	sla	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00250$.
	djnz	00249$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:170: case 32: x = x << 32; break;
;	genLabel
00133$:
;	genLeftShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:171: case 33: x = x << 33; break;
;	genLabel
00134$:
;	genLeftShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	sla	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:172: case 34: x = x << 34; break;
;	genLabel
00135$:
;	genLeftShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	b, #0x02
00255$:
	sla	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00256$.
	djnz	00255$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:173: case 35: x = x << 35; break;
;	genLabel
00136$:
;	genLeftShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	b, #0x03
00257$:
	sla	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00258$.
	djnz	00257$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:174: case 36: x = x << 36; break;
;	genLabel
00137$:
;	genLeftShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	b, #0x04
00259$:
	sla	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00260$.
	djnz	00259$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:175: case 37: x = x << 37; break;
;	genLabel
00138$:
;	genLeftShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	b, #0x05
00261$:
	sla	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00262$.
	djnz	00261$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:176: case 38: x = x << 38; break;
;	genLabel
00139$:
;	genLeftShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	b, #0x06
00263$:
	sla	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00264$.
	djnz	00263$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:177: case 39: x = x << 39; break;
;	genLabel
00140$:
;	genLeftShift
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	10 (ix), a
	ld	a, 7 (ix)
	ld	11 (ix), a
	ld	a, 8 (ix)
	ld	12 (ix), a
	ld	a, 9 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	b, #0x07
00265$:
	sla	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00266$.
	djnz	00265$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:178: case 40: x = x << 40; break;
;	genLabel
00141$:
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:179: case 41: x = x << 41; break;
;	genLabel
00142$:
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	sla	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:180: case 42: x = x << 42; break;
;	genLabel
00143$:
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	b, #0x02
00271$:
	sla	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00272$.
	djnz	00271$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:181: case 43: x = x << 43; break;
;	genLabel
00144$:
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	b, #0x03
00273$:
	sla	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00274$.
	djnz	00273$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:182: case 44: x = x << 44; break;
;	genLabel
00145$:
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	b, #0x04
00275$:
	sla	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00276$.
	djnz	00275$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:183: case 45: x = x << 45; break;
;	genLabel
00146$:
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	b, #0x05
00277$:
	sla	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00278$.
	djnz	00277$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:184: case 46: x = x << 46; break;
;	genLabel
00147$:
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	b, #0x06
00279$:
	sla	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00280$.
	djnz	00279$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:185: case 47: x = x << 47; break;
;	genLabel
00148$:
;	genLeftShift
;	genMove_o size 3 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	11 (ix), a
	ld	a, 7 (ix)
	ld	12 (ix), a
	ld	a, 8 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 5 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	b, #0x07
00281$:
	sla	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00282$.
	djnz	00281$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:186: case 48: x = x << 48; break;
;	genLabel
00149$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	12 (ix), a
	ld	a, 7 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:187: case 49: x = x << 49; break;
;	genLabel
00150$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	12 (ix), a
	ld	a, 7 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	sla	12 (ix)
	rl	13 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:188: case 50: x = x << 50; break;
;	genLabel
00151$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	12 (ix), a
	ld	a, 7 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	b, #0x02
00287$:
	sla	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00288$.
	djnz	00287$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:189: case 51: x = x << 51; break;
;	genLabel
00152$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	12 (ix), a
	ld	a, 7 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	b, #0x03
00289$:
	sla	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00290$.
	djnz	00289$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:190: case 52: x = x << 52; break;
;	genLabel
00153$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	12 (ix), a
	ld	a, 7 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	b, #0x04
00291$:
	sla	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00292$.
	djnz	00291$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:191: case 53: x = x << 53; break;
;	genLabel
00154$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	12 (ix), a
	ld	a, 7 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	b, #0x05
00293$:
	sla	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00294$.
	djnz	00293$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:192: case 54: x = x << 54; break;
;	genLabel
00155$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	12 (ix), a
	ld	a, 7 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	b, #0x06
00295$:
	sla	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00296$.
	djnz	00295$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:193: case 55: x = x << 55; break;
;	genLabel
00156$:
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	12 (ix), a
	ld	a, 7 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 6 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	b, #0x07
00297$:
	sla	12 (ix)
	rl	13 (ix)
; common peephole 159 removed unused label 00298$.
	djnz	00297$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:194: case 56: x = x << 56; break;
;	genLabel
00157$:
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	12 (ix), a
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:195: case 57: x = x << 57; break;
;	genLabel
00158$:
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	12 (ix), a
	sla	13 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:196: case 58: x = x << 58; break;
;	genLabel
00159$:
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	12 (ix), a
	ld	b, #0x02
00303$:
	sla	13 (ix)
; common peephole 159 removed unused label 00304$.
	djnz	00303$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:197: case 59: x = x << 59; break;
;	genLabel
00160$:
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	12 (ix), a
	ld	b, #0x03
00305$:
	sla	13 (ix)
; common peephole 159 removed unused label 00306$.
	djnz	00305$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:198: case 60: x = x << 60; break;
;	genLabel
00161$:
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	12 (ix), a
	ld	b, #0x04
00307$:
	sla	13 (ix)
; common peephole 159 removed unused label 00308$.
	djnz	00307$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:199: case 61: x = x << 61; break;
;	genLabel
00162$:
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	12 (ix), a
	ld	b, #0x05
00309$:
	sla	13 (ix)
; common peephole 159 removed unused label 00310$.
	djnz	00309$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:200: case 62: x = x << 62; break;
;	genLabel
00163$:
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	12 (ix), a
	ld	b, #0x06
00311$:
	sla	13 (ix)
; common peephole 159 removed unused label 00312$.
	djnz	00311$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:201: case 63: x = x << 63; break;
;	genLabel
00164$:
;	genLeftShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	6 (ix), a
	ld	7 (ix), a
	ld	8 (ix), a
	ld	9 (ix), a
	ld	10 (ix), a
	ld	11 (ix), a
	ld	12 (ix), a
	ld	b, #0x07
00313$:
	sla	13 (ix)
; common peephole 159 removed unused label 00314$.
	djnz	00313$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
;cases/./../tests/gcc-torture-execute-ashldi-1.c:204: default:
;	genLabel
00165$:
;cases/./../tests/gcc-torture-execute-ashldi-1.c:205: ASSERT (0);
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
	ld	hl, #0x00cd
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
;cases/./../tests/gcc-torture-execute-ashldi-1.c:206: }
;	genLabel
00166$:
;cases/./../tests/gcc-torture-execute-ashldi-1.c:207: return x;
;	genRet
	ld	hl, #4
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #6
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00167$.
;cases/./../tests/gcc-torture-execute-ashldi-1.c:208: }
;	genEndFunction
	pop	ix
	ret
;	Total constant_shift function size at codegen: 11 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-ashldi-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-ashldi-1.c:213: testTortureExecute (void)
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
;cases/./../tests/gcc-torture-execute-ashldi-1.c:219: for (i = 0; i < BITS; ++i)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-ashldi-1.c:221: unsigned long long y = variable_shift (data[0], i);
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_data
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_variable_shift
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-ashldi-1.c:222: if (y != data[i])
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_data
	add	hl, de
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -9 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00163$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashldi-1.c:223: ASSERT (0);
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
	ld	hl, #0x00df
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
00108$:
;cases/./../tests/gcc-torture-execute-ashldi-1.c:219: for (i = 0; i < BITS; ++i)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00164$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x40
	jp	c, 00107$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashldi-1.c:225: for (i = 0; i < BITS; ++i)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-ashldi-1.c:227: unsigned long long y = constant_shift (data[0], i);
;	genPointerGet
	push	bc
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_data
	ld	hl, #12
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	bc
;	genIpush
	push	bc
	push	bc
;	genIpush
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
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000e
	add	hl, sp
	push	hl
	call	_constant_shift
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	pop	bc
;cases/./../tests/gcc-torture-execute-ashldi-1.c:228: if (y != data[i])
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_data
	add	hl, de
;	genPointerGet
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	bc
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00165$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00165$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00165$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00165$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00165$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00165$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00165$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00165$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashldi-1.c:229: ASSERT (0);
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
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00e5
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
	pop	bc
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-ashldi-1.c:225: for (i = 0; i < BITS; ++i)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x40
	jp	c, 00109$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashldi-1.c:233: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00111$.
;cases/./../tests/gcc-torture-execute-ashldi-1.c:234: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 21 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/gcc-torture-execute-ashldi-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-ashldi-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-ashldi-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-ashldi-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-ashldi-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-ashldi-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-ashldi-1.c:15: return "gcc-torture-execute-ashldi-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-ashldi-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gcc-torture-execute-ashldi-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
