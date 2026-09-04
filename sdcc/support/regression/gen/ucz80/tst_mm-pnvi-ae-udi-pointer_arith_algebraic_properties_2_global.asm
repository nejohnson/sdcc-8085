;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_mm_pnvi_ae_udi_pointer_arith_algebraic_properties_2_global
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testMM
	.globl ___prints
	.globl ___fail
	.globl _x
	.globl _y
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
_y::
	.ds 4
_x::
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
;cases/./../tests/mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:33: testMM(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMM
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testMM::
;cases/./../tests/mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:35: int *p=(int*)(((uintptr_t)&(x[0])) + 
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAddrOf
	ld	bc, #_y+0
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_y + 2)
;	genCast
;	(locations are the same)
;	genMinus
	cp	a, a
	sbc	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_x
	add	hl, de
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:37: *p = 11;  // is this free of undefined behaviour?
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0x0b
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:38: ASSERT (x[1] == *p);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_x + 2)
;	genPointerGet
;fetchPairLong
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a
; common peephole 23 optimize 16-bit load from de.
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
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
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:39: }
;	genEndFunction
	ret
;	Total testMM function size at codegen: 4 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "x[1] == *p"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/mm-pnvi-ae-udi-pointer_arith_algebraic_prop"
	.ascii "erties_2_global.c"
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:6: __prints("Running testMM\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:7: testMM();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:8: }
;	genEndFunction
	jp	_testMM
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testMM"
	.db 0x0a
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:15: return "mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "mm-pnvi-ae-udi-pointer_arith_algebraic_properties_2_global.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
