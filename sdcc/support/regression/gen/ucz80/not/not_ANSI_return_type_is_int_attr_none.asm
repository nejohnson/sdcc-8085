;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module not_ANSI_return_type_is_int_attr_none
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testNot
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
;cases/not/not_ANSI_return_type_is_int_attr_none.c:10: testNot(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testNot
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testNot::
;cases/not/not_ANSI_return_type_is_int_attr_none.c:23: ASSERT(!(  signed char) 0 * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:24: ASSERT(!(unsigned char) 0 * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:25: ASSERT(!sc   * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:26: ASSERT(!uc   * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:27: ASSERT(! 0   * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:28: ASSERT(! 0u  * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:29: ASSERT(!ui   * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:30: ASSERT(! 0l  * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:31: ASSERT(! 0ul * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:32: ASSERT(!ul   * -1 < 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:34: ASSERT(!(char) 0 <<  8 == 0x100);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:35: ASSERT(!sc       <<  8 == 0x100);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:37: ASSERT(!0  << 16 == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:38: ASSERT(!0l << 16 == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:39: ASSERT(!ui << 16 == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/not/not_ANSI_return_type_is_int_attr_none.c:40: ASSERT(!ul << 16 == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/not/not_ANSI_return_type_is_int_attr_none.c:42: }
;	genEndFunction
	ret
;	Total testNot function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "!( signed char) 0 * -1 < 0"
	.db 0x00
__str_2:
	.ascii "cases/not/not_ANSI_return_type_is_int_attr_none.c"
	.db 0x00
__str_3:
	.ascii "!(unsigned char) 0 * -1 < 0"
	.db 0x00
__str_6:
	.ascii "! 0 * -1 < 0"
	.db 0x00
__str_7:
	.ascii "! 0u * -1 < 0"
	.db 0x00
__str_9:
	.ascii "! 0l * -1 < 0"
	.db 0x00
__str_10:
	.ascii "! 0ul * -1 < 0"
	.db 0x00
__str_12:
	.ascii "!(char) 0 << 8 == 0x100"
	.db 0x00
__str_14:
	.ascii "!0 << 16 == 0"
	.db 0x00
__str_15:
	.ascii "!0l << 16 == 0"
	.db 0x00
__str_16:
	.ascii "!ui << 16 == 0"
	.db 0x00
__str_17:
	.ascii "!ul << 16 == 0"
	.db 0x00
;cases/not/not_ANSI_return_type_is_int_attr_none.c:45: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/not/not_ANSI_return_type_is_int_attr_none.c:47: __prints("Running testNot\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genCall
	call	___prints
;cases/not/not_ANSI_return_type_is_int_attr_none.c:48: testNot();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/not/not_ANSI_return_type_is_int_attr_none.c:49: }
;	genEndFunction
	jp	_testNot
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_18:
	.ascii "Running testNot"
	.db 0x0a
	.db 0x00
;cases/not/not_ANSI_return_type_is_int_attr_none.c:54: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/not/not_ANSI_return_type_is_int_attr_none.c:56: return "not_ANSI_return_type_is_int_attr_none";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/not/not_ANSI_return_type_is_int_attr_none.c:57: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_19:
	.ascii "not_ANSI_return_type_is_int_attr_none"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
