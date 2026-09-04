;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_3007_type_int
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug2
	.globl _inc2
	.globl _testBug
	.globl _inc
	.globl ___prints
	.globl ___fail
	.globl _a
	.globl _a2
	.globl _a1
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
_a1::
	.ds 2
_a2::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_a::
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
;cases/bug-3007/bug-3007_type_int.c:8: void inc(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function inc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_inc::
;cases/bug-3007/bug-3007_type_int.c:10: a++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_a)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_a), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3007/bug-3007_type_int.c:11: }
;	genEndFunction
	ret
;	Total inc function size at codegen: 1 bytes.
;cases/bug-3007/bug-3007_type_int.c:13: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/bug-3007/bug-3007_type_int.c:16: for (i = 0; i < (int)300; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x012c
;	genLabel
00104$:
;cases/bug-3007/bug-3007_type_int.c:17: inc();
;	genCall
	push	bc
	call	_inc
	pop	bc
;	genMinus
	dec	bc
;cases/bug-3007/bug-3007_type_int.c:16: for (i = 0; i < (int)300; i++)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;cases/bug-3007/bug-3007_type_int.c:18: ASSERT (a == (int)300);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a)
	sub	a, #0x2c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a + 1)
	dec	a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00134$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0012
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
; common peephole 159 removed unused label 00105$.
;cases/bug-3007/bug-3007_type_int.c:19: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "a == (int)300"
	.db 0x00
___str_2:
	.ascii "cases/bug-3007/bug-3007_type_int.c"
	.db 0x00
;cases/bug-3007/bug-3007_type_int.c:23: void inc2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function inc2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_inc2::
;cases/bug-3007/bug-3007_type_int.c:25: while(--a1)
;	genLabel
00101$:
;	genMinus
;fetchPairLong
	ld	hl, (_a1)
	dec	hl
	ld	(_a1), hl
;	genIfx
	ld	a, (_a1+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a1
	or	a, (hl)
	ret	z
; common peephole 161 replaced jump by return.
;cases/bug-3007/bug-3007_type_int.c:26: a2++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_a2)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_a2), hl
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/bug-3007/bug-3007_type_int.c:27: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
; common peephole 152 removed unused ret.
;	Total inc2 function size at codegen: 1 bytes.
;cases/bug-3007/bug-3007_type_int.c:29: void testBug2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug2::
;cases/bug-3007/bug-3007_type_int.c:31: a1 = 31;
;	genAssign
;fetchPairLong
	ld	hl, #0x001f
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_a1), hl
;cases/bug-3007/bug-3007_type_int.c:32: inc2();
;	genCall
	call	_inc2
;cases/bug-3007/bug-3007_type_int.c:33: ASSERT(a1 == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_a1+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a1
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0021
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/bug-3007/bug-3007_type_int.c:34: ASSERT(a2 == 30);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a2)
	sub	a, #0x1e
; common peephole 54 used hl instead of iy.
	ld	hl, #_a2 + 1
	or	a, (hl)
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0022
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3007/bug-3007_type_int.c:35: }
;	genEndFunction
	ret
;	Total testBug2 function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "a1 == 0"
	.db 0x00
___str_5:
	.ascii "cases/bug-3007/bug-3007_type_int.c"
	.db 0x00
___str_6:
	.ascii "a2 == 30"
	.db 0x00
;cases/bug-3007/bug-3007_type_int.c:39: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-3007/bug-3007_type_int.c:41: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/bug-3007/bug-3007_type_int.c:42: testBug();
;	genCall
	call	_testBug
;cases/bug-3007/bug-3007_type_int.c:43: __prints("Running testBug2\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___prints
;cases/bug-3007/bug-3007_type_int.c:44: testBug2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3007/bug-3007_type_int.c:45: }
;	genEndFunction
	jp	_testBug2
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "Running testBug2"
	.db 0x0a
	.db 0x00
;cases/bug-3007/bug-3007_type_int.c:50: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-3007/bug-3007_type_int.c:52: return "bug-3007_type_int";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3007/bug-3007_type_int.c:53: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_9:
	.ascii "bug-3007_type_int"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__a:
	.dw #0x0000
	.area _CABS (ABS)
