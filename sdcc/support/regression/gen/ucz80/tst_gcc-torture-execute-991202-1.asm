;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_991202_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl _y
	.globl _x
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
_x::
	.ds 2
_y::
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
;cases/./../tests/gcc-torture-execute-991202-1.c:14: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-991202-1.c:16: x = 2;
;	genAssign
;fetchPairLong
	ld	hl, #0x0002
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_x), hl
;cases/./../tests/gcc-torture-execute-991202-1.c:17: y = x;
;	genAssign
;fetchPairLong
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_y), hl
;cases/./../tests/gcc-torture-execute-991202-1.c:18: do
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-991202-1.c:20: x = y;
;	genAssign
;fetchPairLong
	ld	hl, (_y)
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_x), hl
;cases/./../tests/gcc-torture-execute-991202-1.c:21: y = 2 * y;
;	genLeftShift
;	genMove_o size 2 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	sla	0 (iy)
	rl	1 (iy)
;cases/./../tests/gcc-torture-execute-991202-1.c:23: while ( ! ((y - x) >= 20));
;	genMinus
;	Shift into pair
	ld	hl, #_x
	ld	a, (_y+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_y+1)
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, (_y+1)
	sbc	a, (hl)
	ld	b, a
;	genCmpLt
	ld	a, c
	sub	a, #0x14
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00101$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-991202-1.c:24: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-991202-1.c:25: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-991202-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-991202-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-991202-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-991202-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-991202-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-991202-1.c:15: return "gcc-torture-execute-991202-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-991202-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcc-torture-execute-991202-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
