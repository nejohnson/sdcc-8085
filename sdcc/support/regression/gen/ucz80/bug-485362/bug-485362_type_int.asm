;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_485362_type_int
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDivBySelf
	.globl _spoil
	.globl ___prints
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
;cases/bug-485362/bug-485362_type_int.c:7: spoil(int f)
;	genLabel
;	genFunction
;	---------------------------------
; Function spoil
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_spoil::
;cases/bug-485362/bug-485362_type_int.c:9: UNUSED(f);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-485362/bug-485362_type_int.c:10: }
;	genEndFunction
	ret
;	Total spoil function size at codegen: 1 bytes.
;cases/bug-485362/bug-485362_type_int.c:13: testDivBySelf(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDivBySelf
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 4 bytes.
_testDivBySelf::
;	adjustStack by -4
	push	af
	push	af
;cases/bug-485362/bug-485362_type_int.c:17: left = 17;
;	genAssign
;fetchPairLong
	ld	hl, #0x0011
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-485362/bug-485362_type_int.c:18: result = left/left;
;	genAssign
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #2
	add	hl, sp
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/bug-485362/bug-485362_type_int.c:20: spoil(result);
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-485362/bug-485362_type_int.c:21: }
;	genEndFunction
;	adjustStack by 4
	pop	af
	pop	af
	ret
;	Total testDivBySelf function size at codegen: 3 bytes.
;cases/bug-485362/bug-485362_type_int.c:24: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-485362/bug-485362_type_int.c:26: __prints("Running testDivBySelf\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/bug-485362/bug-485362_type_int.c:27: testDivBySelf();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-485362/bug-485362_type_int.c:28: }
;	genEndFunction
	jp	_testDivBySelf
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testDivBySelf"
	.db 0x0a
	.db 0x00
;cases/bug-485362/bug-485362_type_int.c:33: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-485362/bug-485362_type_int.c:35: return "bug-485362_type_int";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-485362/bug-485362_type_int.c:36: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-485362_type_int"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
