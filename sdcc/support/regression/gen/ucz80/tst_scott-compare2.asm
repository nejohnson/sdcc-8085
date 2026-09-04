;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_scott_compare2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testCompare2
	.globl _int_gte_lit
	.globl _int_lte_lit
	.globl _int_gt_lit
	.globl _int_lt_lit
	.globl _int_gte_int
	.globl _int_lte_int
	.globl _int_gt_int
	.globl _int_lt_int
	.globl _char_gte_lit
	.globl _char_lte_lit
	.globl _char_gt_lit
	.globl _char_lt_lit
	.globl _char_gte_char
	.globl _char_lte_char
	.globl _char_gt_char
	.globl _char_lt_char
	.globl ___prints
	.globl ___fail
	.globl _achar1
	.globl _achar0
	.globl _aint1
	.globl _aint0
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
_aint0::
	.ds 2
_aint1::
	.ds 2
_achar0::
	.ds 1
_achar1::
	.ds 1
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
;cases/./../tests/scott-compare2.c:11: char_lt_char (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function char_lt_char
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_char_lt_char::
;cases/./../tests/scott-compare2.c:13: ASSERT (!(achar0 < achar1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
	ld	a, (_achar0+0)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_achar1
	sub	a, (hl)
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000d
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
;cases/./../tests/scott-compare2.c:14: }
;	genEndFunction
	ret
;	Total char_lt_char function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!(achar0 < achar1)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:17: char_gt_char (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function char_gt_char
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_char_gt_char::
;cases/./../tests/scott-compare2.c:19: ASSERT (!(achar1 > achar0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpGt
	ld	a, (_achar0+0)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_achar1
	sub	a, (hl)
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0013
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:20: }
;	genEndFunction
	ret
;	Total char_gt_char function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "!(achar1 > achar0)"
	.db 0x00
___str_5:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:23: char_lte_char (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function char_lte_char
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_char_lte_char::
;cases/./../tests/scott-compare2.c:25: ASSERT (!(achar0 <= achar1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpGt
	ld	a, (_achar1+0)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_achar0
	sub	a, (hl)
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0019
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:26: }
;	genEndFunction
	ret
;	Total char_lte_char function size at codegen: 1 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "!(achar0 <= achar1)"
	.db 0x00
___str_8:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:29: char_gte_char (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function char_gte_char
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_char_gte_char::
;cases/./../tests/scott-compare2.c:31: ASSERT (!(achar1 >= achar0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
	ld	a, (_achar1+0)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_achar0
	sub	a, (hl)
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:32: }
;	genEndFunction
	ret
;	Total char_gte_char function size at codegen: 1 bytes.
___str_9:
	.ascii "Assertion failed"
	.db 0x00
___str_10:
	.ascii "!(achar1 >= achar0)"
	.db 0x00
___str_11:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:35: char_lt_lit (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function char_lt_lit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_char_lt_lit::
;cases/./../tests/scott-compare2.c:37: ASSERT (!(achar1 < 0x10));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
	ld	a, (_achar1+0)
	sub	a, #0x10
	ret	nc
; common peephole 161 replaced jump by return.
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
	ld	hl, #___str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:38: }
;	genEndFunction
	ret
;	Total char_lt_lit function size at codegen: 1 bytes.
___str_12:
	.ascii "Assertion failed"
	.db 0x00
___str_13:
	.ascii "!(achar1 < 0x10)"
	.db 0x00
___str_14:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:41: char_gt_lit (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function char_gt_lit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_char_gt_lit::
;cases/./../tests/scott-compare2.c:43: ASSERT (!(achar1 > 0x10));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpGt
	ld	a, #0x10
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_achar1
	sub	a, (hl)
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_15
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:44: }
;	genEndFunction
	ret
;	Total char_gt_lit function size at codegen: 1 bytes.
___str_15:
	.ascii "Assertion failed"
	.db 0x00
___str_16:
	.ascii "!(achar1 > 0x10)"
	.db 0x00
___str_17:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:47: char_lte_lit (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function char_lte_lit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_char_lte_lit::
;cases/./../tests/scott-compare2.c:49: ASSERT (!(achar1 <= 0x0f));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpGt
	ld	a, #0x0f
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_achar1
	sub	a, (hl)
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0031
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:50: }
;	genEndFunction
	ret
;	Total char_lte_lit function size at codegen: 1 bytes.
___str_18:
	.ascii "Assertion failed"
	.db 0x00
___str_19:
	.ascii "!(achar1 <= 0x0f)"
	.db 0x00
___str_20:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:53: char_gte_lit (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function char_gte_lit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_char_gte_lit::
;cases/./../tests/scott-compare2.c:55: ASSERT (!(achar1 >= 0x11));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
	ld	a, (_achar1+0)
	sub	a, #0x11
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0037
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_23
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_21
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:56: }
;	genEndFunction
	ret
;	Total char_gte_lit function size at codegen: 1 bytes.
___str_21:
	.ascii "Assertion failed"
	.db 0x00
___str_22:
	.ascii "!(achar1 >= 0x11)"
	.db 0x00
___str_23:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:62: int_lt_int (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function int_lt_int
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_int_lt_int::
;cases/./../tests/scott-compare2.c:64: ASSERT (!(aint0 < aint1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
;	Shift into pair
	ld	hl, #_aint1
	ld	a, (_aint0+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_aint0+1)
	inc	hl
	ld	a, (_aint0+1)
	sbc	a, (hl)
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0040
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_25
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:65: }
;	genEndFunction
	ret
;	Total int_lt_int function size at codegen: 1 bytes.
___str_24:
	.ascii "Assertion failed"
	.db 0x00
___str_25:
	.ascii "!(aint0 < aint1)"
	.db 0x00
___str_26:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:68: int_gt_int (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function int_gt_int
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_int_gt_int::
;cases/./../tests/scott-compare2.c:70: ASSERT (!(aint1 > aint0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpGt
;	Shift into pair
	ld	hl, #_aint0
	ld	a, (hl)
	ld	iy, #_aint1
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0046
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_29
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_28
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_27
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:71: }
;	genEndFunction
	ret
;	Total int_gt_int function size at codegen: 1 bytes.
___str_27:
	.ascii "Assertion failed"
	.db 0x00
___str_28:
	.ascii "!(aint1 > aint0)"
	.db 0x00
___str_29:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:74: int_lte_int (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function int_lte_int
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_int_lte_int::
;cases/./../tests/scott-compare2.c:76: ASSERT (!(aint0 <= aint1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpGt
;	Shift into pair
	ld	hl, #_aint1
	ld	a, (hl)
	ld	iy, #_aint0
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_31
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_30
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:77: }
;	genEndFunction
	ret
;	Total int_lte_int function size at codegen: 1 bytes.
___str_30:
	.ascii "Assertion failed"
	.db 0x00
___str_31:
	.ascii "!(aint0 <= aint1)"
	.db 0x00
___str_32:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:80: int_gte_int (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function int_gte_int
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_int_gte_int::
;cases/./../tests/scott-compare2.c:82: ASSERT (!(aint1 >= aint0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
;	Shift into pair
	ld	hl, #_aint0
	ld	a, (_aint1+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_aint1+1)
	inc	hl
	ld	a, (_aint1+1)
	sbc	a, (hl)
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0052
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_35
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_34
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_33
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:83: }
;	genEndFunction
	ret
;	Total int_gte_int function size at codegen: 1 bytes.
___str_33:
	.ascii "Assertion failed"
	.db 0x00
___str_34:
	.ascii "!(aint1 >= aint0)"
	.db 0x00
___str_35:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:86: int_lt_lit (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function int_lt_lit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_int_lt_lit::
;cases/./../tests/scott-compare2.c:88: ASSERT (!(aint1 < 0x10));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0010
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_aint1)
	cp	a, a
	sbc	hl, de
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0058
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_38
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_37
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_36
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:89: }
;	genEndFunction
	ret
;	Total int_lt_lit function size at codegen: 1 bytes.
___str_36:
	.ascii "Assertion failed"
	.db 0x00
___str_37:
	.ascii "!(aint1 < 0x10)"
	.db 0x00
___str_38:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:92: int_gt_lit (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function int_gt_lit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_int_gt_lit::
;cases/./../tests/scott-compare2.c:94: ASSERT (!(aint1 > 0x10));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpGt
	ld	a, #0x10
	ld	iy, #_aint1
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_41
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_40
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_39
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:95: }
;	genEndFunction
	ret
;	Total int_gt_lit function size at codegen: 1 bytes.
___str_39:
	.ascii "Assertion failed"
	.db 0x00
___str_40:
	.ascii "!(aint1 > 0x10)"
	.db 0x00
___str_41:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:98: int_lte_lit (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function int_lte_lit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_int_lte_lit::
;cases/./../tests/scott-compare2.c:100: ASSERT (!(aint1 <= 0x0f));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpGt
	ld	a, #0x0f
	ld	iy, #_aint1
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0064
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_44
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_43
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_42
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:101: }
;	genEndFunction
	ret
;	Total int_lte_lit function size at codegen: 1 bytes.
___str_42:
	.ascii "Assertion failed"
	.db 0x00
___str_43:
	.ascii "!(aint1 <= 0x0f)"
	.db 0x00
___str_44:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:104: int_gte_lit (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function int_gte_lit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_int_gte_lit::
;cases/./../tests/scott-compare2.c:106: ASSERT (!(aint1 >= 0x11));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpLt
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0011
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_aint1)
	cp	a, a
	sbc	hl, de
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_47
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_46
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_45
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:107: }
;	genEndFunction
	ret
;	Total int_gte_lit function size at codegen: 1 bytes.
___str_45:
	.ascii "Assertion failed"
	.db 0x00
___str_46:
	.ascii "!(aint1 >= 0x11)"
	.db 0x00
___str_47:
	.ascii "cases/./../tests/scott-compare2.c"
	.db 0x00
;cases/./../tests/scott-compare2.c:116: testCompare2 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCompare2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testCompare2::
;cases/./../tests/scott-compare2.c:119: char_lt_char ();
;	genCall
	call	_char_lt_char
;cases/./../tests/scott-compare2.c:120: char_gt_char ();
;	genCall
	call	_char_gt_char
;cases/./../tests/scott-compare2.c:122: achar0++;
;	genPlus
	ld	hl, #_achar0
	inc	(hl)
;cases/./../tests/scott-compare2.c:123: char_lt_char ();
;	genCall
	call	_char_lt_char
;cases/./../tests/scott-compare2.c:124: char_gt_char ();
;	genCall
	call	_char_gt_char
;cases/./../tests/scott-compare2.c:125: char_gte_char ();
;	genCall
	call	_char_gte_char
;cases/./../tests/scott-compare2.c:126: char_lte_char ();
;	genCall
	call	_char_lte_char
;cases/./../tests/scott-compare2.c:128: achar1 = 0x10;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar1
	ld	(hl), #0x10
;cases/./../tests/scott-compare2.c:129: char_lt_lit ();
;	genCall
	call	_char_lt_lit
;cases/./../tests/scott-compare2.c:130: char_gt_lit ();
;	genCall
	call	_char_gt_lit
;cases/./../tests/scott-compare2.c:131: char_lte_lit ();
;	genCall
	call	_char_lte_lit
;cases/./../tests/scott-compare2.c:132: char_gte_lit ();
;	genCall
	call	_char_gte_lit
;cases/./../tests/scott-compare2.c:136: int_lt_int ();
;	genCall
	call	_int_lt_int
;cases/./../tests/scott-compare2.c:137: int_gt_int ();
;	genCall
	call	_int_gt_int
;cases/./../tests/scott-compare2.c:139: aint0++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_aint0)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_aint0), hl
;cases/./../tests/scott-compare2.c:140: int_lt_int ();
;	genCall
	call	_int_lt_int
;cases/./../tests/scott-compare2.c:141: int_gt_int ();
;	genCall
	call	_int_gt_int
;cases/./../tests/scott-compare2.c:142: int_gte_int ();
;	genCall
	call	_int_gte_int
;cases/./../tests/scott-compare2.c:143: int_lte_int ();
;	genCall
	call	_int_lte_int
;cases/./../tests/scott-compare2.c:145: aint1 = 0x10;
;	genAssign
;fetchPairLong
	ld	hl, #0x0010
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_aint1), hl
;cases/./../tests/scott-compare2.c:146: int_lt_lit ();
;	genCall
	call	_int_lt_lit
;cases/./../tests/scott-compare2.c:147: int_gt_lit ();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-compare2.c:148: }
;	genEndFunction
	jp	_int_gt_lit
; common peephole 152 removed unused ret.
;	Total testCompare2 function size at codegen: 1 bytes.
;cases/tst_scott-compare2.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_scott-compare2.c:6: __prints("Running testCompare2\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_48
;	genCall
	call	___prints
;cases/tst_scott-compare2.c:7: testCompare2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-compare2.c:8: }
;	genEndFunction
	jp	_testCompare2
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_48:
	.ascii "Running testCompare2"
	.db 0x0a
	.db 0x00
;cases/tst_scott-compare2.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_scott-compare2.c:15: return "scott-compare2.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_49
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-compare2.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_49:
	.ascii "scott-compare2.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__aint0:
	.dw #0x0000
__xinit__aint1:
	.dw #0x0000
__xinit__achar0:
	.db #0x00	; 0
__xinit__achar1:
	.db #0x00	; 0
	.area _CABS (ABS)
