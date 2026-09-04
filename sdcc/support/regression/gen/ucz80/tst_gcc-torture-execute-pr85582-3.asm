;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr85582_3
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _f3
	.globl _f2
	.globl _f1
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
;cases/./../tests/gcc-torture-execute-pr85582-3.c:15: f1 (U x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f1::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr85582-3.c:17: return x << (y & -2);
;	genCast
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #20
	add	hl, sp
	ld	b, (hl)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	res	0, b
;	genLeftShift
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
;cases/./../tests/gcc-torture-execute-pr85582-3.c:18: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f1 function size at codegen: 13 bytes.
;cases/./../tests/gcc-torture-execute-pr85582-3.c:21: f2 (S x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function f2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f2::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr85582-3.c:23: return x >> (y & -2);
;	genCast
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #20
	add	hl, sp
	ld	b, (hl)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	res	0, b
;	genRightShift
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
;cases/./../tests/gcc-torture-execute-pr85582-3.c:24: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f2 function size at codegen: 13 bytes.
;cases/./../tests/gcc-torture-execute-pr85582-3.c:27: f3 (U x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function f3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f3::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr85582-3.c:29: return x >> (y & -2);
;	genCast
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #20
	add	hl, sp
	ld	b, (hl)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	res	0, b
;	genRightShift
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
	srl	7 (iy)
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
;cases/./../tests/gcc-torture-execute-pr85582-3.c:30: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f3 function size at codegen: 13 bytes.
;cases/./../tests/gcc-torture-execute-pr85582-3.c:33: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr85582-3.c:37: if (f1 (a, 5) != ((U) 1 << (sizeof (S) * CHAR_BIT - 3)))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0005
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0200
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f1
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00193$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
00193$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:38: ASSERT (0);
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
	ld	hl, #0x0026
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
;cases/./../tests/gcc-torture-execute-pr85582-3.c:40: if (f1 (b, sizeof (S) * CHAR_BIT / 2) != (U) 0x101 << (sizeof (S) * CHAR_BIT - 7))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0020
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x02
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0200
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f1
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00194$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00194$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:41: ASSERT (0);
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
	ld	hl, #0x0029
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
00104$:
;cases/./../tests/gcc-torture-execute-pr85582-3.c:42: if (f1 (b, sizeof (S) * CHAR_BIT / 2 + 2) != (U) 0x101 << (sizeof (S) * CHAR_BIT - 5))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0022
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x02
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0200
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f1
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00195$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00195$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:43: ASSERT (0);
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
	ld	hl, #0x002b
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
00106$:
;cases/./../tests/gcc-torture-execute-pr85582-3.c:45: if ((U) f2 (c, 5) != ((U) 0x1f << (sizeof (S) * CHAR_BIT - 5)))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0005
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f2
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCast
;	(locations are the same)
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00196$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf8
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00196$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:46: ASSERT (0);
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
	ld	hl, #0x002e
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
00108$:
;cases/./../tests/gcc-torture-execute-pr85582-3.c:47: if ((U) f2 (c, sizeof (S) * CHAR_BIT / 2) != ((U) -1 << (sizeof (S) * CHAR_BIT / 2 - 1)))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0020
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f2
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCast
;	(locations are the same)
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00197$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00197$
	ld	a, -4 (ix)
	and	a, -3 (ix)
	and	a, -2 (ix)
	and	a, -1 (ix)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00197$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:48: ASSERT (0);
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
	ld	hl, #0x0030
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
00110$:
;cases/./../tests/gcc-torture-execute-pr85582-3.c:49: if ((U) f2 (c, sizeof (S) * CHAR_BIT / 2 + 2) != ((U) -1 << (sizeof (S) * CHAR_BIT / 2 - 3)))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0022
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f2
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCast
;	(locations are the same)
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00198$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xe0
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00198$
	ld	a, -4 (ix)
	and	a, -3 (ix)
	and	a, -2 (ix)
	and	a, -1 (ix)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
00198$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:50: ASSERT (0);
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
	ld	hl, #0x0032
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
00112$:
;cases/./../tests/gcc-torture-execute-pr85582-3.c:52: if (f3 (c, 5) != ((U) 0x1 << (sizeof (S) * CHAR_BIT - 5)))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0005
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f3
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00199$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
00199$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:53: ASSERT (0);
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
00114$:
;cases/./../tests/gcc-torture-execute-pr85582-3.c:54: if (f3 (c, sizeof (S) * CHAR_BIT / 2) != ((U) 1 << (sizeof (S) * CHAR_BIT / 2 - 1)))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0020
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f3
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00200$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
00200$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:55: ASSERT (0);
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
	ld	hl, #0x0037
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
00116$:
;cases/./../tests/gcc-torture-execute-pr85582-3.c:56: if (f3 (c, sizeof (S) * CHAR_BIT / 2 + 2) != ((U) 1 << (sizeof (S) * CHAR_BIT / 2 - 3)))
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0022
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_f3
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00201$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x20
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
00201$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr85582-3.c:57: ASSERT (0);
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
	ld	hl, #0x0039
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
00118$:
;cases/./../tests/gcc-torture-execute-pr85582-3.c:58: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00119$.
;cases/./../tests/gcc-torture-execute-pr85582-3.c:60: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr85582-3.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr85582-3.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr85582-3.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr85582-3.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr85582-3.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr85582-3.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr85582-3.c:15: return "gcc-torture-execute-pr85582-3.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr85582-3.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr85582-3.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
