;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_caseranges
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testCaseRanges
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
;cases/./../tests/caseranges.c:17: testCaseRanges (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCaseRanges
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testCaseRanges::
;cases/./../tests/caseranges.c:19: for (int n = 0; n <= 11; n++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00111$:
;	genCmpGt
	ld	a, #0x0b
	sub	a, c
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/caseranges.c:25: ASSERT (n == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/caseranges.c:22: switch (n)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00224$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00225$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 107 removed load from c into a by replacing sub with cp
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00226$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00227$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	cp	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 108 removed load from c into a by replacing sub with cp
	cp	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 107 removed load from c into a by replacing sub with cp
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00228$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	cp	a, #0x05
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 108 removed load from c into a by replacing sub with cp
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x06
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00229$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;cases/./../tests/caseranges.c:24: case 1:
;	genLabel
00101$:
;cases/./../tests/caseranges.c:25: ASSERT (n == 1);
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;cases/./../tests/caseranges.c:30: case 2 ... 5:
;	genLabel
00102$:
;cases/./../tests/caseranges.c:31: ASSERT (n >= 2 && n <= 5);
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
	ld	a, c
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00117$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x05
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00112$
;	skipping generated iCode
;	genLabel
00117$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
	pop	bc
;cases/./../tests/caseranges.c:32: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;cases/./../tests/caseranges.c:33: case 6 ... 6: // OK (but questionable)
;	genLabel
00106$:
;cases/./../tests/caseranges.c:34: ASSERT (n == 6);
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;cases/./../tests/caseranges.c:42: default:
;	genLabel
00107$:
;cases/./../tests/caseranges.c:43: ASSERT (n < 1 || n > 6);
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
	ld	a, c
	sub	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00112$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x06
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00112$
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
	pop	bc
;cases/./../tests/caseranges.c:45: }
;	genLabel
00112$:
;cases/./../tests/caseranges.c:19: for (int n = 0; n <= 11; n++)
;	genPlus
	inc	c
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00113$.
;cases/./../tests/caseranges.c:47: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
; common peephole 152 removed unused ret.
;	Total testCaseRanges function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/caseranges.c"
	.db 0x00
___str_3:
	.ascii "n >= 2 && n <= 5"
	.db 0x00
__str_5:
	.ascii "0"
	.db 0x00
___str_6:
	.ascii "n < 1 || n > 6"
	.db 0x00
;cases/tst_caseranges.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_caseranges.c:6: __prints("Running testCaseRanges\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/tst_caseranges.c:7: testCaseRanges();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_caseranges.c:8: }
;	genEndFunction
	jp	_testCaseRanges
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testCaseRanges"
	.db 0x0a
	.db 0x00
;cases/tst_caseranges.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_caseranges.c:15: return "caseranges.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_caseranges.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "caseranges.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
