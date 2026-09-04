;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_920520_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _bugger
	.globl _foo
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
;cases/./../tests/gcc-torture-execute-920520-1.c:12: foo(int *bar)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_foo::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-920520-1.c:14: *bar = 8;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0x00
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-920520-1.c:15: }
;	genEndFunction
	ret
;	Total foo function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-920520-1.c:18: bugger(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bugger
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_bugger::
;	adjustStack by -2
	push	af
;cases/./../tests/gcc-torture-execute-920520-1.c:22: foo(&oldDepth);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_foo
;cases/./../tests/gcc-torture-execute-920520-1.c:24: switch (oldDepth)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x08
	ld	iy, #0
	add	iy, sp
	or	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00132$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf4
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130b added +1 to immediate 2
	ld	hl, #0x3
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
00133$:
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x88
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00134$.
;	genMove_o size 1 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	push	iy
; common peephole 63 used hl instead of iy.
; common peephole 130b added +1 to immediate 2
	ld	hl, #0x3
	add	hl, sp
	ld	a, (hl)
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x13
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;cases/./../tests/gcc-torture-execute-920520-1.c:27: case 500:
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-920520-1.c:28: newDepth = 8;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0008
;cases/./../tests/gcc-torture-execute-920520-1.c:29: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;cases/./../tests/gcc-torture-execute-920520-1.c:31: case 5000:
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-920520-1.c:32: newDepth = 500;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x01f4
;cases/./../tests/gcc-torture-execute-920520-1.c:33: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;cases/./../tests/gcc-torture-execute-920520-1.c:35: default:
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-920520-1.c:36: newDepth = 17;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0011
;cases/./../tests/gcc-torture-execute-920520-1.c:38: }
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-920520-1.c:40: return newDepth - oldDepth;
;	genMinus
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	ld	a, c
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld e, a
	inc	hl
	ld	e, a
	ld	a, b
	sbc	a, (hl)
	ld	d, a
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/gcc-torture-execute-920520-1.c:41: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total bugger function size at codegen: 2 bytes.
;cases/./../tests/gcc-torture-execute-920520-1.c:44: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-920520-1.c:46: ASSERT((bugger() == 0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_bugger
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
	ret	z
; common peephole 161 replaced jump by return.
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
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-920520-1.c:47: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-920520-1.c:48: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "(bugger() == 0)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/gcc-torture-execute-920520-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-920520-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-920520-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-920520-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-920520-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-920520-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-920520-1.c:15: return "gcc-torture-execute-920520-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-920520-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-920520-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
