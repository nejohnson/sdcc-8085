;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_multdi_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _mpy
	.globl ___prints
	.globl ___fail
	.globl _mpy_res
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
_mpy_res::
	.ds 8
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
;cases/./../tests/gcc-torture-execute-multdi-1.c:15: u_l_l mpy (long a, long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function mpy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 16 bytes.
_mpy::
;	adjustStack by -16
	ld	iy, #-16
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-multdi-1.c:17: return (u_l_l) a * (u_l_l) b;
;	genCast
;	genMove_o size 3 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	de
	ld	iy, #0
	add	iy, sp
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	3 (iy), a
	rlca
	sbc	a, a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genCast
;	genMove_o size 3 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #20
	add	hl, sp
	ld	a, (hl)
	ld	iy, #8
	add	iy, sp
	ld	0 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +1 to immediate 20
	ld	hl, #0x15
	add	hl, sp
	ld	a, (hl)
	ld	iy, #8
	add	iy, sp
	ld	1 (iy), a
; common peephole 63 used hl instead of iy.
; common peephole 130b added +2 to immediate 20
	ld	hl, #0x16
	add	hl, sp
	ld	a, (hl)
	ld	iy, #8
	add	iy, sp
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 63 used hl instead of iy.
; common peephole 130b added +3 to immediate 20
	ld	hl, #0x17
	add	hl, sp
	ld	a, (hl)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #8
	add	iy, sp
	ld	3 (iy), a
	rlca
	sbc	a, a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #8
	add	iy, sp
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x0018
	add	hl, sp
	push	hl
	call	__mullonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genRet
	ld	hl, #18
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #8
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-multdi-1.c:18: }
;	genEndFunction
;	adjustStack by 16
	ld	hl, #16
	add	hl, sp
	ld	sp, hl
	ret
;	Total mpy function size at codegen: 14 bytes.
;cases/./../tests/gcc-torture-execute-multdi-1.c:22: testTortureExecute (void)
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
;cases/./../tests/gcc-torture-execute-multdi-1.c:25: mpy_res = mpy(1,-1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	ld	hl, #0x0000
;	genCall
	push	hl
	ld	hl, #0x0006
	add	hl, sp
	ld	c, l
	ld	b, h
	pop	hl
	push	bc
	call	_mpy
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genAssign
	ld	de, #_mpy_res
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;cases/./../tests/gcc-torture-execute-multdi-1.c:26: if (mpy_res != -1LL)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_mpy_res)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_mpy_res + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_mpy_res + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_mpy_res + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_mpy_res + 4)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_mpy_res + 5)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_mpy_res + 6)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_mpy_res + 7)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
00113$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-multdi-1.c:27: ASSERT (0);
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
	ld	hl, #0x001b
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
;cases/./../tests/gcc-torture-execute-multdi-1.c:28: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-multdi-1.c:30: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 14 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-multdi-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-multdi-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-multdi-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-multdi-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-multdi-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-multdi-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-multdi-1.c:15: return "gcc-torture-execute-multdi-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-multdi-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-multdi-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
