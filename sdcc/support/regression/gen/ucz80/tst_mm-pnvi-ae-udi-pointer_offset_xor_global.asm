;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_mm_pnvi_ae_udi_pointer_offset_xor_global
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testMM
	.globl ___prints
	.globl ___fail
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
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_x::
	.ds 2
_y::
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
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:34: testMM(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMM
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testMM::
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:36: int *p = &x;
;	genAddrOf
	ld	bc, #_x+0
;	genCast
;	(locations are the same)
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:37: int *q = &y;
;	genAddrOf
	ld	hl, #_y+0
;	genCast
;	(locations are the same)
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:38: uintptr_t i = (uintptr_t) p;
;	genCast
;	(locations are the same)
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:39: uintptr_t j = (uintptr_t) q;
;	skipping iCode since result will be rematerialized
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:40: uintptr_t k = i ^ j;
;	genXor
	ld	a, c
	xor	a, #<(_y)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, #>(_y)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:41: uintptr_t l = k ^ i;
;	genXor
	ld	a, c
	xor	a, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, d
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:42: int *r = (int *)l;
;	genCast
;	(locations are the same)
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:44: *r = 11;     // does this have defined behaviour?             
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x0b
	inc	hl
	ld	(hl), #0x00
	pop	hl
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:45: _Bool b = (r==q); 
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:46: if (b)
;	skipping generated iCode
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:47: ASSERT (*r == y);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCmpEq
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_y)
	xor	a, a
	sbc	hl, bc
	ret	z
; common peephole 161 replaced jump by return.
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
	ld	hl, #0x002f
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
; common peephole 159 removed unused label 00103$.
;cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c:48: }
;	genEndFunction
	ret
;	Total testMM function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "*r == y"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/mm-pnvi-ae-udi-pointer_offset_xor_global.c"
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-pointer_offset_xor_global.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_mm-pnvi-ae-udi-pointer_offset_xor_global.c:6: __prints("Running testMM\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_mm-pnvi-ae-udi-pointer_offset_xor_global.c:7: testMM();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-pointer_offset_xor_global.c:8: }
;	genEndFunction
	jp	_testMM
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testMM"
	.db 0x0a
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-pointer_offset_xor_global.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_mm-pnvi-ae-udi-pointer_offset_xor_global.c:15: return "mm-pnvi-ae-udi-pointer_offset_xor_global.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-pointer_offset_xor_global.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "mm-pnvi-ae-udi-pointer_offset_xor_global.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__x:
	.dw #0x0001
__xinit__y:
	.dw #0x0002
	.area _CABS (ABS)
