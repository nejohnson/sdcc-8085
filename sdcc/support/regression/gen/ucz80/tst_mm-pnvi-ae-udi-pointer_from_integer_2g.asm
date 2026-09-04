;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_mm_pnvi_ae_udi_pointer_from_integer_2g
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testMM
	.globl _f
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
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:41: void f() {
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f::
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:44: *p=7;
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0007
	ld	(0x0001), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:45: }
;	genEndFunction
	ret
;	Total f function size at codegen: 1 bytes.
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:48: testMM(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMM
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_testMM::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:50: int j=5;
;	genAssign
;fetchPairLong
	ld	hl, #0x0005
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:51: if ((uintptr_t)&j == ADDRESS_PFI_2G) {
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:52: f();
;	genCall
	call	_f
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:53: ASSERT (j == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x07
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
;	skipping generated iCode
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
00103$:
;cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c:55: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testMM function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "j == 7"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/mm-pnvi-ae-udi-pointer_from_integer_2g.c"
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-pointer_from_integer_2g.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_mm-pnvi-ae-udi-pointer_from_integer_2g.c:6: __prints("Running testMM\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_mm-pnvi-ae-udi-pointer_from_integer_2g.c:7: testMM();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-pointer_from_integer_2g.c:8: }
;	genEndFunction
	jp	_testMM
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testMM"
	.db 0x0a
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-pointer_from_integer_2g.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_mm-pnvi-ae-udi-pointer_from_integer_2g.c:15: return "mm-pnvi-ae-udi-pointer_from_integer_2g.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-pointer_from_integer_2g.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "mm-pnvi-ae-udi-pointer_from_integer_2g.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
