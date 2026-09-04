;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_ashrdi_1
	
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:227: variable_shift(long long x, int i)
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:229: return x >> i;
;	genRightShift
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
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	sra	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:230: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total variable_shift function size at codegen: 13 bytes.
_zext:
	.byte #0x80, #0xa9, #0xcb, #0xed, #0x1f, #0x32, #0x54, #0x76
	.byte #0xc0, #0xd4, #0xe5, #0xf6, #0x0f, #0x19, #0x2a, #0x3b
	.byte #0x60, #0xea, #0x72, #0xfb, #0x87, #0x0c, #0x95, #0x1d
	.byte #0x30, #0x75, #0xb9, #0xfd, #0x43, #0x86, #0xca, #0x0e
	.byte #0x98, #0xba, #0xdc, #0xfe, #0x21, #0x43, #0x65, #0x07
	.byte #0x4c, #0x5d, #0x6e, #0xff, #0x90, #0xa1, #0xb2, #0x03
	.byte #0xa6, #0x2e, #0xb7, #0x7f, #0xc8, #0x50, #0xd9, #0x01
	.byte #0x53, #0x97, #0xdb, #0x3f, #0x64, #0xa8, #0xec, #0x00
	.byte #0xa9, #0xcb, #0xed, #0x1f, #0x32, #0x54, #0x76, #0x00
	.byte #0xd4, #0xe5, #0xf6, #0x0f, #0x19, #0x2a, #0x3b, #0x00
	.byte #0xea, #0x72, #0xfb, #0x87, #0x0c, #0x95, #0x1d, #0x00
	.byte #0x75, #0xb9, #0xfd, #0x43, #0x86, #0xca, #0x0e, #0x00
	.byte #0xba, #0xdc, #0xfe, #0x21, #0x43, #0x65, #0x07, #0x00
	.byte #0x5d, #0x6e, #0xff, #0x90, #0xa1, #0xb2, #0x03, #0x00
	.byte #0x2e, #0xb7, #0x7f, #0xc8, #0x50, #0xd9, #0x01, #0x00
	.byte #0x97, #0xdb, #0x3f, #0x64, #0xa8, #0xec, #0x00, #0x00
	.byte #0xcb, #0xed, #0x1f, #0x32, #0x54, #0x76, #0x00, #0x00
	.byte #0xe5, #0xf6, #0x0f, #0x19, #0x2a, #0x3b, #0x00, #0x00
	.byte #0x72, #0xfb, #0x87, #0x0c, #0x95, #0x1d, #0x00, #0x00
	.byte #0xb9, #0xfd, #0x43, #0x86, #0xca, #0x0e, #0x00, #0x00
	.byte #0xdc, #0xfe, #0x21, #0x43, #0x65, #0x07, #0x00, #0x00
	.byte #0x6e, #0xff, #0x90, #0xa1, #0xb2, #0x03, #0x00, #0x00
	.byte #0xb7, #0x7f, #0xc8, #0x50, #0xd9, #0x01, #0x00, #0x00
	.byte #0xdb, #0x3f, #0x64, #0xa8, #0xec, #0x00, #0x00, #0x00
	.byte #0xed, #0x1f, #0x32, #0x54, #0x76, #0x00, #0x00, #0x00
	.byte #0xf6, #0x0f, #0x19, #0x2a, #0x3b, #0x00, #0x00, #0x00
	.byte #0xfb, #0x87, #0x0c, #0x95, #0x1d, #0x00, #0x00, #0x00
	.byte #0xfd, #0x43, #0x86, #0xca, #0x0e, #0x00, #0x00, #0x00
	.byte #0xfe, #0x21, #0x43, #0x65, #0x07, #0x00, #0x00, #0x00
	.byte #0xff, #0x90, #0xa1, #0xb2, #0x03, #0x00, #0x00, #0x00
	.byte #0x7f, #0xc8, #0x50, #0xd9, #0x01, #0x00, #0x00, #0x00
	.byte #0x3f, #0x64, #0xa8, #0xec, #0x00, #0x00, #0x00, #0x00
	.byte #0x1f, #0x32, #0x54, #0x76, #0x00, #0x00, #0x00, #0x00
	.byte #0x0f, #0x19, #0x2a, #0x3b, #0x00, #0x00, #0x00, #0x00
	.byte #0x87, #0x0c, #0x95, #0x1d, #0x00, #0x00, #0x00, #0x00
	.byte #0x43, #0x86, #0xca, #0x0e, #0x00, #0x00, #0x00, #0x00
	.byte #0x21, #0x43, #0x65, #0x07, #0x00, #0x00, #0x00, #0x00
	.byte #0x90, #0xa1, #0xb2, #0x03, #0x00, #0x00, #0x00, #0x00
	.byte #0xc8, #0x50, #0xd9, #0x01, #0x00, #0x00, #0x00, #0x00
	.byte #0x64, #0xa8, #0xec, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x32, #0x54, #0x76, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x19, #0x2a, #0x3b, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x0c, #0x95, #0x1d, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x86, #0xca, #0x0e, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x43, #0x65, #0x07, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xa1, #0xb2, #0x03, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x50, #0xd9, #0x01, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xa8, #0xec, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x54, #0x76, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x2a, #0x3b, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x95, #0x1d, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xca, #0x0e, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x65, #0x07, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xb2, #0x03, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xd9, #0x01, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0xec, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x76, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x3b, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x1d, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x0e, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x07, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x03, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x01, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
_sext:
	.byte #0x10, #0x32, #0x54, #0x76, #0x9f, #0xba, #0xdc, #0x8e
	.byte #0x08, #0x19, #0x2a, #0xbb, #0x4f, #0x5d, #0x6e, #0xc7
	.byte #0x84, #0x0c, #0x95, #0xdd, #0xa7, #0x2e, #0xb7, #0xe3
	.byte #0x42, #0x86, #0xca, #0xee, #0x53, #0x97, #0xdb, #0xf1
	.byte #0x21, #0x43, #0x65, #0xf7, #0xa9, #0xcb, #0xed, #0xf8
	.byte #0x90, #0xa1, #0xb2, #0xfb, #0xd4, #0xe5, #0x76, #0xfc
	.byte #0xc8, #0x50, #0xd9, #0x7d, #0xea, #0x72, #0x3b, #0xfe
	.byte #0x64, #0xa8, #0xec, #0x3e, #0x75, #0xb9, #0x1d, #0xff
	.byte #0x32, #0x54, #0x76, #0x9f, #0xba, #0xdc, #0x8e, #0xff
	.byte #0x19, #0x2a, #0xbb, #0x4f, #0x5d, #0x6e, #0xc7, #0xff
	.byte #0x0c, #0x95, #0xdd, #0xa7, #0x2e, #0xb7, #0xe3, #0xff
	.byte #0x86, #0xca, #0xee, #0x53, #0x97, #0xdb, #0xf1, #0xff
	.byte #0x43, #0x65, #0xf7, #0xa9, #0xcb, #0xed, #0xf8, #0xff
	.byte #0xa1, #0xb2, #0xfb, #0xd4, #0xe5, #0x76, #0xfc, #0xff
	.byte #0x50, #0xd9, #0x7d, #0xea, #0x72, #0x3b, #0xfe, #0xff
	.byte #0xa8, #0xec, #0x3e, #0x75, #0xb9, #0x1d, #0xff, #0xff
	.byte #0x54, #0x76, #0x9f, #0xba, #0xdc, #0x8e, #0xff, #0xff
	.byte #0x2a, #0xbb, #0x4f, #0x5d, #0x6e, #0xc7, #0xff, #0xff
	.byte #0x95, #0xdd, #0xa7, #0x2e, #0xb7, #0xe3, #0xff, #0xff
	.byte #0xca, #0xee, #0x53, #0x97, #0xdb, #0xf1, #0xff, #0xff
	.byte #0x65, #0xf7, #0xa9, #0xcb, #0xed, #0xf8, #0xff, #0xff
	.byte #0xb2, #0xfb, #0xd4, #0xe5, #0x76, #0xfc, #0xff, #0xff
	.byte #0xd9, #0x7d, #0xea, #0x72, #0x3b, #0xfe, #0xff, #0xff
	.byte #0xec, #0x3e, #0x75, #0xb9, #0x1d, #0xff, #0xff, #0xff
	.byte #0x76, #0x9f, #0xba, #0xdc, #0x8e, #0xff, #0xff, #0xff
	.byte #0xbb, #0x4f, #0x5d, #0x6e, #0xc7, #0xff, #0xff, #0xff
	.byte #0xdd, #0xa7, #0x2e, #0xb7, #0xe3, #0xff, #0xff, #0xff
	.byte #0xee, #0x53, #0x97, #0xdb, #0xf1, #0xff, #0xff, #0xff
	.byte #0xf7, #0xa9, #0xcb, #0xed, #0xf8, #0xff, #0xff, #0xff
	.byte #0xfb, #0xd4, #0xe5, #0x76, #0xfc, #0xff, #0xff, #0xff
	.byte #0x7d, #0xea, #0x72, #0x3b, #0xfe, #0xff, #0xff, #0xff
	.byte #0x3e, #0x75, #0xb9, #0x1d, #0xff, #0xff, #0xff, #0xff
	.byte #0x9f, #0xba, #0xdc, #0x8e, #0xff, #0xff, #0xff, #0xff
	.byte #0x4f, #0x5d, #0x6e, #0xc7, #0xff, #0xff, #0xff, #0xff
	.byte #0xa7, #0x2e, #0xb7, #0xe3, #0xff, #0xff, #0xff, #0xff
	.byte #0x53, #0x97, #0xdb, #0xf1, #0xff, #0xff, #0xff, #0xff
	.byte #0xa9, #0xcb, #0xed, #0xf8, #0xff, #0xff, #0xff, #0xff
	.byte #0xd4, #0xe5, #0x76, #0xfc, #0xff, #0xff, #0xff, #0xff
	.byte #0xea, #0x72, #0x3b, #0xfe, #0xff, #0xff, #0xff, #0xff
	.byte #0x75, #0xb9, #0x1d, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xba, #0xdc, #0x8e, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x5d, #0x6e, #0xc7, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x2e, #0xb7, #0xe3, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x97, #0xdb, #0xf1, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xcb, #0xed, #0xf8, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xe5, #0x76, #0xfc, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x72, #0x3b, #0xfe, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xb9, #0x1d, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xdc, #0x8e, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x6e, #0xc7, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xb7, #0xe3, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xdb, #0xf1, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xed, #0xf8, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x76, #0xfc, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x3b, #0xfe, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x1d, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0x8e, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xc7, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xe3, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xf1, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xf8, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xfc, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xfe, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
	.byte #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:233: constant_shift(long long x, int i)
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:235: switch (i)
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:237: case 0: x = x >> 0; break;
;	genLabel
00101$:
;	genRightShift
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:238: case 1: x = x >> 1; break;
;	genLabel
00102$:
;	genRightShift
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:239: case 2: x = x >> 2; break;
;	genLabel
00103$:
;	genRightShift
	ld	b, #0x02
00191$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00192$.
	djnz	00191$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:240: case 3: x = x >> 3; break;
;	genLabel
00104$:
;	genRightShift
	ld	b, #0x03
00193$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00194$.
	djnz	00193$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:241: case 4: x = x >> 4; break;
;	genLabel
00105$:
;	genRightShift
	ld	b, #0x04
00195$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00196$.
	djnz	00195$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:242: case 5: x = x >> 5; break;
;	genLabel
00106$:
;	genRightShift
	ld	b, #0x05
00197$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00198$.
	djnz	00197$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:243: case 6: x = x >> 6; break;
;	genLabel
00107$:
;	genRightShift
	ld	b, #0x06
00199$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00200$.
	djnz	00199$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:244: case 7: x = x >> 7; break;
;	genLabel
00108$:
;	genRightShift
	ld	b, #0x07
00201$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00202$.
	djnz	00201$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:245: case 8: x = x >> 8; break;
;	genLabel
00109$:
;	genRightShift
	ld	b, #0x08
00203$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00204$.
	djnz	00203$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:246: case 9: x = x >> 9; break;
;	genLabel
00110$:
;	genRightShift
	ld	b, #0x09
00205$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00206$.
	djnz	00205$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:247: case 10: x = x >> 10; break;
;	genLabel
00111$:
;	genRightShift
	ld	b, #0x0a
00207$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00208$.
	djnz	00207$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:248: case 11: x = x >> 11; break;
;	genLabel
00112$:
;	genRightShift
	ld	b, #0x0b
00209$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00210$.
	djnz	00209$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:249: case 12: x = x >> 12; break;
;	genLabel
00113$:
;	genRightShift
	ld	b, #0x0c
00211$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00212$.
	djnz	00211$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:250: case 13: x = x >> 13; break;
;	genLabel
00114$:
;	genRightShift
	ld	b, #0x0d
00213$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00214$.
	djnz	00213$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:251: case 14: x = x >> 14; break;
;	genLabel
00115$:
;	genRightShift
	ld	b, #0x0e
00215$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00216$.
	djnz	00215$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:252: case 15: x = x >> 15; break;
;	genLabel
00116$:
;	genRightShift
	ld	b, #0x0f
00217$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00218$.
	djnz	00217$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:253: case 16: x = x >> 16; break;
;	genLabel
00117$:
;	genRightShift
	ld	b, #0x10
00219$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00220$.
	djnz	00219$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:254: case 17: x = x >> 17; break;
;	genLabel
00118$:
;	genRightShift
	ld	b, #0x11
00221$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00222$.
	djnz	00221$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:255: case 18: x = x >> 18; break;
;	genLabel
00119$:
;	genRightShift
	ld	b, #0x12
00223$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00224$.
	djnz	00223$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:256: case 19: x = x >> 19; break;
;	genLabel
00120$:
;	genRightShift
	ld	b, #0x13
00225$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00226$.
	djnz	00225$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:257: case 20: x = x >> 20; break;
;	genLabel
00121$:
;	genRightShift
	ld	b, #0x14
00227$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00228$.
	djnz	00227$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:258: case 21: x = x >> 21; break;
;	genLabel
00122$:
;	genRightShift
	ld	b, #0x15
00229$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00230$.
	djnz	00229$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:259: case 22: x = x >> 22; break;
;	genLabel
00123$:
;	genRightShift
	ld	b, #0x16
00231$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00232$.
	djnz	00231$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:260: case 23: x = x >> 23; break;
;	genLabel
00124$:
;	genRightShift
	ld	b, #0x17
00233$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00234$.
	djnz	00233$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:261: case 24: x = x >> 24; break;
;	genLabel
00125$:
;	genRightShift
	ld	b, #0x18
00235$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00236$.
	djnz	00235$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:262: case 25: x = x >> 25; break;
;	genLabel
00126$:
;	genRightShift
	ld	b, #0x19
00237$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00238$.
	djnz	00237$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:263: case 26: x = x >> 26; break;
;	genLabel
00127$:
;	genRightShift
	ld	b, #0x1a
00239$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00240$.
	djnz	00239$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:264: case 27: x = x >> 27; break;
;	genLabel
00128$:
;	genRightShift
	ld	b, #0x1b
00241$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00242$.
	djnz	00241$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:265: case 28: x = x >> 28; break;
;	genLabel
00129$:
;	genRightShift
	ld	b, #0x1c
00243$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00244$.
	djnz	00243$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:266: case 29: x = x >> 29; break;
;	genLabel
00130$:
;	genRightShift
	ld	b, #0x1d
00245$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00246$.
	djnz	00245$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:267: case 30: x = x >> 30; break;
;	genLabel
00131$:
;	genRightShift
	ld	b, #0x1e
00247$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00248$.
	djnz	00247$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:268: case 31: x = x >> 31; break;
;	genLabel
00132$:
;	genRightShift
	ld	b, #0x1f
00249$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00250$.
	djnz	00249$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:270: case 32: x = x >> 32; break;
;	genLabel
00133$:
;	genRightShift
	ld	b, #0x20
00251$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00252$.
	djnz	00251$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:271: case 33: x = x >> 33; break;
;	genLabel
00134$:
;	genRightShift
	ld	b, #0x21
00253$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00254$.
	djnz	00253$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:272: case 34: x = x >> 34; break;
;	genLabel
00135$:
;	genRightShift
	ld	b, #0x22
00255$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00256$.
	djnz	00255$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:273: case 35: x = x >> 35; break;
;	genLabel
00136$:
;	genRightShift
	ld	b, #0x23
00257$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00258$.
	djnz	00257$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:274: case 36: x = x >> 36; break;
;	genLabel
00137$:
;	genRightShift
	ld	b, #0x24
00259$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00260$.
	djnz	00259$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:275: case 37: x = x >> 37; break;
;	genLabel
00138$:
;	genRightShift
	ld	b, #0x25
00261$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00262$.
	djnz	00261$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:276: case 38: x = x >> 38; break;
;	genLabel
00139$:
;	genRightShift
	ld	b, #0x26
00263$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00264$.
	djnz	00263$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:277: case 39: x = x >> 39; break;
;	genLabel
00140$:
;	genRightShift
	ld	b, #0x27
00265$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00266$.
	djnz	00265$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:278: case 40: x = x >> 40; break;
;	genLabel
00141$:
;	genRightShift
	ld	b, #0x28
00267$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00268$.
	djnz	00267$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:279: case 41: x = x >> 41; break;
;	genLabel
00142$:
;	genRightShift
	ld	b, #0x29
00269$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00270$.
	djnz	00269$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:280: case 42: x = x >> 42; break;
;	genLabel
00143$:
;	genRightShift
	ld	b, #0x2a
00271$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00272$.
	djnz	00271$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:281: case 43: x = x >> 43; break;
;	genLabel
00144$:
;	genRightShift
	ld	b, #0x2b
00273$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00274$.
	djnz	00273$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:282: case 44: x = x >> 44; break;
;	genLabel
00145$:
;	genRightShift
	ld	b, #0x2c
00275$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00276$.
	djnz	00275$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:283: case 45: x = x >> 45; break;
;	genLabel
00146$:
;	genRightShift
	ld	b, #0x2d
00277$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00278$.
	djnz	00277$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:284: case 46: x = x >> 46; break;
;	genLabel
00147$:
;	genRightShift
	ld	b, #0x2e
00279$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00280$.
	djnz	00279$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:285: case 47: x = x >> 47; break;
;	genLabel
00148$:
;	genRightShift
	ld	b, #0x2f
00281$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00282$.
	djnz	00281$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:286: case 48: x = x >> 48; break;
;	genLabel
00149$:
;	genRightShift
	ld	b, #0x30
00283$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00284$.
	djnz	00283$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:287: case 49: x = x >> 49; break;
;	genLabel
00150$:
;	genRightShift
	ld	b, #0x31
00285$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00286$.
	djnz	00285$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:288: case 50: x = x >> 50; break;
;	genLabel
00151$:
;	genRightShift
	ld	b, #0x32
00287$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00288$.
	djnz	00287$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:289: case 51: x = x >> 51; break;
;	genLabel
00152$:
;	genRightShift
	ld	b, #0x33
00289$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00290$.
	djnz	00289$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:290: case 52: x = x >> 52; break;
;	genLabel
00153$:
;	genRightShift
	ld	b, #0x34
00291$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00292$.
	djnz	00291$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:291: case 53: x = x >> 53; break;
;	genLabel
00154$:
;	genRightShift
	ld	b, #0x35
00293$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00294$.
	djnz	00293$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:292: case 54: x = x >> 54; break;
;	genLabel
00155$:
;	genRightShift
	ld	b, #0x36
00295$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00296$.
	djnz	00295$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:293: case 55: x = x >> 55; break;
;	genLabel
00156$:
;	genRightShift
	ld	b, #0x37
00297$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00298$.
	djnz	00297$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:294: case 56: x = x >> 56; break;
;	genLabel
00157$:
;	genRightShift
	ld	b, #0x38
00299$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00300$.
	djnz	00299$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:295: case 57: x = x >> 57; break;
;	genLabel
00158$:
;	genRightShift
	ld	b, #0x39
00301$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00302$.
	djnz	00301$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:296: case 58: x = x >> 58; break;
;	genLabel
00159$:
;	genRightShift
	ld	b, #0x3a
00303$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00304$.
	djnz	00303$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:297: case 59: x = x >> 59; break;
;	genLabel
00160$:
;	genRightShift
	ld	b, #0x3b
00305$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00306$.
	djnz	00305$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:298: case 60: x = x >> 60; break;
;	genLabel
00161$:
;	genRightShift
	ld	b, #0x3c
00307$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00308$.
	djnz	00307$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:299: case 61: x = x >> 61; break;
;	genLabel
00162$:
;	genRightShift
	ld	b, #0x3d
00309$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00310$.
	djnz	00309$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:300: case 62: x = x >> 62; break;
;	genLabel
00163$:
;	genRightShift
	ld	b, #0x3e
00311$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00312$.
	djnz	00311$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:301: case 63: x = x >> 63; break;
;	genLabel
00164$:
;	genRightShift
	ld	b, #0x3f
00313$:
	sra	13 (ix)
	rr	12 (ix)
	rr	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
	rr	7 (ix)
	rr	6 (ix)
; common peephole 159 removed unused label 00314$.
	djnz	00313$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:304: default:
;	genLabel
00165$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:305: ASSERT (0);
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
	ld	hl, #0x0131
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:306: }
;	genLabel
00166$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:307: return x;
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:308: }
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
	.ascii "cases/./../tests/gcc-torture-execute-ashrdi-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:313: testTortureExecute (void)
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:319: for (i = 0; i < BITS; ++i)
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
00113$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:321: long long y = variable_shift (zext[0], i);
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_zext
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:322: if (y != zext[i])
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
	ld	de, #_zext
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
	jr	nz, 00223$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -9 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00223$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00223$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00223$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00223$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00223$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00223$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
00223$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:323: ASSERT (0);
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
	ld	hl, #0x0143
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
00114$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:319: for (i = 0; i < BITS; ++i)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00224$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x40
	jp	c, 00113$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:325: for (i = 0; i < BITS; ++i)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00115$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:327: long long y = variable_shift (sext[0], i);
;	genPointerGet
	push	bc
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_sext
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
	call	_variable_shift
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	pop	bc
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:328: if (y != sext[i])
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
	ld	de, #_sext
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
	jr	nz, 00225$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00225$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00225$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00225$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00225$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00225$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00225$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
00225$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:329: ASSERT (0);
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
	ld	hl, #0x0149
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
00116$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:325: for (i = 0; i < BITS; ++i)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x40
	jp	c, 00115$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:331: for (i = 0; i < BITS; ++i)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00117$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:333: long long y = constant_shift (zext[0], i);
;	genPointerGet
	push	bc
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_zext
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
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:334: if (y != zext[i])
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
	ld	de, #_zext
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
	jr	nz, 00226$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00226$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00226$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00226$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00226$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00226$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00226$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
00226$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:335: ASSERT (0);
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
	ld	hl, #0x014f
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
00118$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:331: for (i = 0; i < BITS; ++i)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x40
	jp	c, 00117$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:337: for (i = 0; i < BITS; ++i)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00119$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:339: long long y = constant_shift (sext[0], i);
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_sext
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
	call	_constant_shift
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:340: if (y != sext[i])
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
	ld	de, #_sext
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
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -9 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
00227$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:341: ASSERT (0);
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
	ld	hl, #0x0155
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
00120$:
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:337: for (i = 0; i < BITS; ++i)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00228$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x40
	jp	c, 00119$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:345: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00121$.
;cases/./../tests/gcc-torture-execute-ashrdi-1.c:346: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 37 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/gcc-torture-execute-ashrdi-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-ashrdi-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-ashrdi-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-ashrdi-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-ashrdi-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-ashrdi-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-ashrdi-1.c:15: return "gcc-torture-execute-ashrdi-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-ashrdi-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gcc-torture-execute-ashrdi-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
