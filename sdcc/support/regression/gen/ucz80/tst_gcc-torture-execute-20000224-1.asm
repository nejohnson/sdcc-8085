;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20000224_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _test
	.globl ___prints
	.globl ___fail
	.globl _flag
	.globl _loop_2
	.globl _loop_1
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
_loop_1::
	.ds 2
_loop_2::
	.ds 2
_flag::
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
;cases/./../tests/gcc-torture-execute-20000224-1.c:15: int test (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test::
;cases/./../tests/gcc-torture-execute-20000224-1.c:18: int counter  = 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;cases/./../tests/gcc-torture-execute-20000224-1.c:20: while (loop_1 > counter) {
;	genLabel
00104$:
;	genCmpGt
	ld	a, c
	ld	iy, #_loop_1
	sub	a, 0 (iy)
	ld	a, b
	sbc	a, 1 (iy)
	jp	po, 00153$
	xor	a, #0x80
00153$:
	jp	p, 00106$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000224-1.c:21: if (flag & 1) {
;	genAnd
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_flag
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00154$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000224-1.c:22: for (i = 0; i < loop_2; i++) {
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00108$:
;	genCmpLt
;	Shift into pair
	ld	hl, #_loop_2
	ld	a, e
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	sbc	a, (hl)
	jp	po, 00155$
	xor	a, #0x80
00155$:
	jp	p, 00122$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000224-1.c:23: counter++;
;	genPlus
	inc	bc
;cases/./../tests/gcc-torture-execute-20000224-1.c:22: for (i = 0; i < loop_2; i++) {
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00122$:
;	genAssign
;	(locations are the same)
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-20000224-1.c:26: flag++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_flag)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_flag), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20000224-1.c:28: return 1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genLabel
; common peephole 159 removed unused label 00110$.
;cases/./../tests/gcc-torture-execute-20000224-1.c:29: }
;	genEndFunction
	ret
;	Total test function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-20000224-1.c:32: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20000224-1.c:34: if (test () != 1)
;	genCall
	call	_test
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000224-1.c:35: ASSERT (0);
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
	ld	hl, #0x0023
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
; common peephole 159 removed unused label 00102$.
;cases/./../tests/gcc-torture-execute-20000224-1.c:37: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20000224-1.c:38: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20000224-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20000224-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20000224-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20000224-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20000224-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20000224-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20000224-1.c:15: return "gcc-torture-execute-20000224-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20000224-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20000224-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__loop_1:
	.dw #0x0064
__xinit__loop_2:
	.dw #0x0007
__xinit__flag:
	.dw #0x0000
	.area _CABS (ABS)
