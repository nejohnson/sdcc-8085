;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module uminus_lefttype_long_resulttype_long_storage_static_attr_volatile
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testUMinus
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
_testUMinus_left_10000_13:
	.ds 4
_testUMinus_result_10000_13:
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
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:11: testUMinus(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testUMinus
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testUMinus::
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:16: left = 53;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testUMinus_left_10000_13
	ld	(hl), #0x35
	xor	a, a
	ld	(_testUMinus_left_10000_13+1), a
	ld	(_testUMinus_left_10000_13+2), a
	ld	(_testUMinus_left_10000_13+3), a
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:17: result = -left;
;	genUminus
;	Shift into pair
	ld	hl, #_testUMinus_left_10000_13
;	Shift into pair
	ld	iy, #_testUMinus_result_10000_13
	xor	a, a
	sub	a, (hl)
	ld	0 (iy), a
; common peephole 96b move inc hl before ld a, #0x00
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	inc	iy
	ld	0 (iy), a
; common peephole 96b move inc hl before ld a, #0x00
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	inc	iy
	ld	0 (iy), a
; common peephole 96b move inc hl before sbc a, a
	inc	hl
	sbc	a, a
	sub	a, (hl)
; common peephole 157b merged offset into storage instruction.
	ld	1 (iy), a
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:19: ASSERT(result == -53);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testUMinus_result_10000_13)
	sub	a, #0xcb
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testUMinus_result_10000_13 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testUMinus_result_10000_13 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testUMinus_result_10000_13 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00123$:
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
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:21: left = -76;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testUMinus_left_10000_13
	ld	0 (iy), #0xb4
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:22: result = -left;
;	genUminus
;	Shift into pair
	ld	hl, #_testUMinus_left_10000_13
;	Shift into pair
	ld	iy, #_testUMinus_result_10000_13
	xor	a, a
	sub	a, (hl)
	ld	0 (iy), a
; common peephole 96b move inc hl before ld a, #0x00
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	inc	iy
	ld	0 (iy), a
; common peephole 96b move inc hl before ld a, #0x00
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	inc	iy
	ld	0 (iy), a
; common peephole 96b move inc hl before sbc a, a
	inc	hl
	sbc	a, a
	sub	a, (hl)
; common peephole 157b merged offset into storage instruction.
	ld	1 (iy), a
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:24: ASSERT(result == 76);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testUMinus_result_10000_13)
	sub	a, #0x4c
	ld	iy, #_testUMinus_result_10000_13
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0018
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
; common peephole 159 removed unused label 00101$.
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:25: }
;	genEndFunction
	ret
;	Total testUMinus function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "result == -53"
	.db 0x00
___str_2:
	.ascii "cases/uminus/uminus_lefttype_long_resulttype_long_storage_st"
	.ascii "atic_attr_volatile.c"
	.db 0x00
___str_3:
	.ascii "result == 76"
	.db 0x00
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:28: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:30: __prints("Running testUMinus\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:31: testUMinus();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:32: }
;	genEndFunction
	jp	_testUMinus
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testUMinus"
	.db 0x0a
	.db 0x00
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:37: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:39: return "uminus_lefttype_long_resulttype_long_storage_static_attr_volatile";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/uminus/uminus_lefttype_long_resulttype_long_storage_static_attr_volatile.c:40: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "uminus_lefttype_long_resulttype_long_storage_static_attr_vol"
	.ascii "atile"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
