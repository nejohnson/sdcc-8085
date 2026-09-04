;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_generic
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testGenericWithType
	.globl _testGeneric
	.globl ___prints
	.globl _c
	.globl _l
	.globl _i
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
_i::
	.ds 2
_l::
	.ds 4
_c::
	.ds 1
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
;cases/./../tests/generic.c:13: void testGeneric(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testGeneric
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testGeneric::
;cases/./../tests/generic.c:16: ASSERT (_Generic(i, default : 0, int : 1, long : 2) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/generic.c:17: ASSERT (_Generic(l, default : 0, int : 1, long int : 2) == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/generic.c:18: ASSERT (_Generic(l, default : 0, int : 1, char : 2) == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/generic.c:19: ASSERT (_Generic('c', default : 0, int : 1, char : 2) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/generic.c:20: ASSERT (_Generic(7, default : 0, int : 1, char : 2) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/generic.c:21: ASSERT (_Generic(e, default : 0, int : 1, char : 2) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/generic.c:22: ASSERT (_Generic(c, default : 0, int : 1, char : 2) == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/generic.c:23: ASSERT (_Generic("c"[0], char : 1, default : 0) == _Generic(c, char : 1, default : 0)); // There once was a bug where the sign of plain char different from the sign of char in string literals.
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/generic.c:25: }
;	genEndFunction
	ret
;	Total testGeneric function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "_Generic(i, default : 0, int : 1, long : 2) == 1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/generic.c"
	.db 0x00
__str_3:
	.ascii "_Generic(l, default : 0, int : 1, long int : 2) == 2"
	.db 0x00
__str_4:
	.ascii "_Generic(l, default : 0, int : 1, char : 2) == 0"
	.db 0x00
__str_5:
	.ascii "_Generic('c', default : 0, int : 1, char : 2) == 1"
	.db 0x00
__str_6:
	.ascii "_Generic(7, default : 0, int : 1, char : 2) == 1"
	.db 0x00
__str_7:
	.ascii "_Generic(e, default : 0, int : 1, char : 2) == 1"
	.db 0x00
__str_8:
	.ascii "_Generic(c, default : 0, int : 1, char : 2) == 2"
	.db 0x00
__str_9:
	.ascii "c"
	.db 0x00
__str_10:
	.ascii "_Generic("
	.db 0x22
	.ascii "c"
	.db 0x22
	.ascii "[0], char : 1, default : 0) == _Generic(c, char : 1, default"
	.ascii " : 0)"
	.db 0x00
;cases/./../tests/generic.c:32: void testGenericWithType(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testGenericWithType
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testGenericWithType::
;cases/./../tests/generic.c:36: ASSERT (_Generic(typeof(i), int : 0, const int : 1, default : 2) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/generic.c:38: }
;	genEndFunction
	ret
;	Total testGenericWithType function size at codegen: 1 bytes.
__str_11:
	.ascii "Assertion failed"
	.db 0x00
__str_12:
	.ascii "_Generic(typeof(i), int : 0, const int : 1, default : 2) == "
	.ascii "1"
	.db 0x00
__str_13:
	.ascii "cases/./../tests/generic.c"
	.db 0x00
;cases/tst_generic.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_generic.c:6: __prints("Running testGeneric\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genCall
	call	___prints
;cases/tst_generic.c:7: testGeneric();
;	genCall
	call	_testGeneric
;cases/tst_generic.c:8: __prints("Running testGenericWithType\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
;	genCall
	call	___prints
;cases/tst_generic.c:9: testGenericWithType();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_generic.c:10: }
;	genEndFunction
	jp	_testGenericWithType
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_14:
	.ascii "Running testGeneric"
	.db 0x0a
	.db 0x00
___str_15:
	.ascii "Running testGenericWithType"
	.db 0x0a
	.db 0x00
;cases/tst_generic.c:15: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_generic.c:17: return "generic.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_generic.c:18: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_16:
	.ascii "generic.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
