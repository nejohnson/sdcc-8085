;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3216
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _stdcbench
	.globl ___prints
	.globl ___fail
	.globl _c90lib_score
	.globl _c90base_score
	.globl ___numCases
	.globl _c90base
	.globl _c90lib
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_c90base_score::
	.ds 4
_c90lib_score::
	.ds 4
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
;cases/./../tests/bug-3216.c:13: unsigned long stdcbench(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function stdcbench
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_stdcbench::
;cases/./../tests/bug-3216.c:17: score += c90base_score = c90base();
;	genCall
	call	_c90base
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(_c90base_score), de
	ld	(_c90base_score + 2), hl
;	genAssign
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3216.c:19: score += c90lib_score = c90lib();
;	genCall
; common peephole 29 pushed hl directly instead of going through bc.
	push	hl
	push	de
	call	_c90lib
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	(_c90lib_score), iy
	ld	(_c90lib_score + 2), hl
;	genPlus
	push	iy
	ex	(sp), hl
	ld	a, l
	ex	(sp), hl
	pop	iy
	add	a, e
	ld	e, a
	push	iy
	ex	(sp), hl
	ld	a, h
	ex	(sp), hl
	pop	iy
	adc	a, d
	ld	d, a
	ld	a, l
	adc	a, c
	ld	l, a
	ld	a, h
	adc	a, b
	ld	h, a
;cases/./../tests/bug-3216.c:21: return(score);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3216.c:22: }
;	genEndFunction
	ret
;	Total stdcbench function size at codegen: 1 bytes.
;cases/./../tests/bug-3216.c:24: unsigned long c90base(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function c90base
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_c90base::
;cases/./../tests/bug-3216.c:26: return 0x01020304ul;
;	genRet
;fetchPairLong
	ld	de, #0x0304
;fetchPairLong
	ld	hl, #0x0102
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3216.c:27: }
;	genEndFunction
	ret
;	Total c90base function size at codegen: 1 bytes.
;cases/./../tests/bug-3216.c:29: unsigned long c90lib(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function c90lib
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_c90lib::
;cases/./../tests/bug-3216.c:31: return 0x10203040ul;
;	genRet
;fetchPairLong
	ld	de, #0x3040
;fetchPairLong
	ld	hl, #0x1020
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3216.c:32: }
;	genEndFunction
	ret
;	Total c90lib function size at codegen: 1 bytes.
;cases/./../tests/bug-3216.c:35: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3216.c:37: ASSERT(stdcbench() == 0x11223344ul);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_stdcbench
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x44
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x33
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00133$
	ld	de, #0x1122
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00133$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0025
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
00104$:
;cases/./../tests/bug-3216.c:38: ASSERT(c90base_score == 0x01020304ul);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c90base_score)
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c90base_score + 1)
	sub	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c90base_score + 2)
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c90base_score + 3)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
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
	ld	hl, #0x0026
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
;	genLabel
00106$:
;cases/./../tests/bug-3216.c:39: ASSERT(c90lib_score == 0x10203040ul);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c90lib_score)
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c90lib_score + 1)
	sub	a, #0x30
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c90lib_score + 2)
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00135$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c90lib_score + 3)
	sub	a, #0x10
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00135$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0027
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3216.c:40: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "stdcbench() == 0x11223344ul"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3216.c"
	.db 0x00
___str_3:
	.ascii "c90base_score == 0x01020304ul"
	.db 0x00
___str_4:
	.ascii "c90lib_score == 0x10203040ul"
	.db 0x00
;cases/tst_bug-3216.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3216.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/tst_bug-3216.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3216.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3216.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3216.c:15: return "bug-3216.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3216.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "bug-3216.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
