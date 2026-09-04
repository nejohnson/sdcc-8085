;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_mm_pnvi_ae_udi_provenance_tag_bits_via_uintptr_t_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testMM
	.globl ___prints
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
;cases/./../tests/mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:33: testMM(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMM
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testMM::
;cases/./../tests/mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:52: ASSERT (*r == x);
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:54: }
;	genEndFunction
	ret
;	Total testMM function size at codegen: 1 bytes.
;cases/tst_mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:6: __prints("Running testMM\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
;cases/tst_mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:7: testMM();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testMM"
	.db 0x0a
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:15: return "mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "mm-pnvi-ae-udi-provenance_tag_bits_via_uintptr_t_1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__x:
	.dw #0x0001
	.area _CABS (ABS)
