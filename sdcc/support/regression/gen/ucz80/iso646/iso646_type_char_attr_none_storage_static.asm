;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module iso646_type_char_attr_none_storage_static
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
_testTwoOpBitwise_left_10000_32:
	.ds 1
_testTwoOpBitwise_right_10000_32:
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
;cases/iso646/iso646_type_char_attr_none_storage_static.c:13: testTwoOpBitwise(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTwoOpBitwise
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTwoOpBitwise:
;cases/iso646/iso646_type_char_attr_none_storage_static.c:18: left = (char)0x3df7;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_testTwoOpBitwise_left_10000_32
	ld	(hl), #0xf7
;cases/iso646/iso646_type_char_attr_none_storage_static.c:19: right = (char)0xc1ec;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_testTwoOpBitwise_right_10000_32
	ld	(hl), #0xec
;cases/iso646/iso646_type_char_attr_none_storage_static.c:21: ASSERT((char)(left bitand right) == (char)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:22: ASSERT((char)(right bitand left) == (char)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:23: ASSERT((char)(left bitand 0xc1ec) == (char)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:24: ASSERT((char)(0x3df7 bitand right) == (char)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:26: ASSERT((char)(left bitor right) == (char)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:27: ASSERT((char)(right bitor left) == (char)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:28: ASSERT((char)(left bitor 0xc1ec) == (char)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:29: ASSERT((char)(0x3df7 bitor right) == (char)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:31: ASSERT((char)(left xor right) == (char)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:32: ASSERT((char)(right xor left) == (char)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:33: ASSERT((char)(left xor 0xc1ec) == (char)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:34: ASSERT((char)(0x3df7 xor right) == (char)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_char_attr_none_storage_static.c:36: }
;	genEndFunction
	ret
;	Total testTwoOpBitwise function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "(char)(left bitand right) == (char)0x1E4"
	.db 0x00
___str_2:
	.ascii "cases/iso646/iso646_type_char_attr_none_storage_static.c"
	.db 0x00
___str_3:
	.ascii "(char)(right bitand left) == (char)0x1E4"
	.db 0x00
___str_4:
	.ascii "(char)(left bitand 0xc1ec) == (char)0x1E4"
	.db 0x00
___str_5:
	.ascii "(char)(0x3df7 bitand right) == (char)0x1E4"
	.db 0x00
___str_6:
	.ascii "(char)(left bitor right) == (char)0xFDFF"
	.db 0x00
___str_7:
	.ascii "(char)(right bitor left) == (char)0xFDFF"
	.db 0x00
___str_8:
	.ascii "(char)(left bitor 0xc1ec) == (char)0xFDFF"
	.db 0x00
___str_9:
	.ascii "(char)(0x3df7 bitor right) == (char)0xFDFF"
	.db 0x00
___str_10:
	.ascii "(char)(left xor right) == (char)0xFC1B"
	.db 0x00
___str_11:
	.ascii "(char)(right xor left) == (char)0xFC1B"
	.db 0x00
___str_12:
	.ascii "(char)(left xor 0xc1ec) == (char)0xFC1B"
	.db 0x00
___str_13:
	.ascii "(char)(0x3df7 xor right) == (char)0xFC1B"
	.db 0x00
;cases/iso646/iso646_type_char_attr_none_storage_static.c:39: alwaysTrue(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function alwaysTrue
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_alwaysTrue:
;cases/iso646/iso646_type_char_attr_none_storage_static.c:41: return (char)1;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_char_attr_none_storage_static.c:42: }
;	genEndFunction
	ret
;	Total alwaysTrue function size at codegen: 1 bytes.
;cases/iso646/iso646_type_char_attr_none_storage_static.c:45: alwaysFalse(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function alwaysFalse
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_alwaysFalse:
;cases/iso646/iso646_type_char_attr_none_storage_static.c:47: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_char_attr_none_storage_static.c:48: }
;	genEndFunction
	ret
;	Total alwaysFalse function size at codegen: 1 bytes.
;cases/iso646/iso646_type_char_attr_none_storage_static.c:51: testNot(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testNot
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_testNot:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;cases/iso646/iso646_type_char_attr_none_storage_static.c:53: char true_ = alwaysTrue();
;	genCall
	call	_alwaysTrue
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:54: char false_ = alwaysFalse();
;	genCall
	call	_alwaysFalse
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:56: ASSERT(not false_);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0038
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_16
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genCall
	call	___fail
	pop	bc
;	genLabel
00104$:
;cases/iso646/iso646_type_char_attr_none_storage_static.c:57: ASSERT(not not true_);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0039
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_16
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genCall
	call	___fail
	pop	bc
;	genLabel
00106$:
;cases/iso646/iso646_type_char_attr_none_storage_static.c:58: ASSERT(not not not false_);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_16
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genCall
	call	___fail
	pop	bc
;	genLabel
00108$:
;cases/iso646/iso646_type_char_attr_none_storage_static.c:59: ASSERT(true_ not_eq false_);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_16
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/iso646/iso646_type_char_attr_none_storage_static.c:60: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total testNot function size at codegen: 4 bytes.
___str_14:
	.ascii "Assertion failed"
	.db 0x00
___str_15:
	.ascii "not false_"
	.db 0x00
___str_16:
	.ascii "cases/iso646/iso646_type_char_attr_none_storage_static.c"
	.db 0x00
___str_17:
	.ascii "not not true_"
	.db 0x00
___str_18:
	.ascii "not not not false_"
	.db 0x00
___str_19:
	.ascii "true_ not_eq false_"
	.db 0x00
;cases/iso646/iso646_type_char_attr_none_storage_static.c:63: testUnary(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testUnary
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_testUnary:
;	adjustStack by -2
	push	af
;cases/iso646/iso646_type_char_attr_none_storage_static.c:66: ASSERT(compl 0xaa55 == ~0xaa55);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_char_attr_none_storage_static.c:67: ASSERT(bitand i == &i);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_char_attr_none_storage_static.c:68: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total testUnary function size at codegen: 2 bytes.
__str_20:
	.ascii "Assertion failed"
	.db 0x00
__str_21:
	.ascii "compl 0xaa55 == ~0xaa55"
	.db 0x00
__str_22:
	.ascii "cases/iso646/iso646_type_char_attr_none_storage_static.c"
	.db 0x00
__str_23:
	.ascii "bitand i == &i"
	.db 0x00
;cases/iso646/iso646_type_char_attr_none_storage_static.c:72: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/iso646/iso646_type_char_attr_none_storage_static.c:74: __prints("Running testTwoOpBitwise\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___prints
;cases/iso646/iso646_type_char_attr_none_storage_static.c:75: testTwoOpBitwise();
;	genCall
	call	_testTwoOpBitwise
;cases/iso646/iso646_type_char_attr_none_storage_static.c:76: __prints("Running testNot\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
;	genCall
	call	___prints
;cases/iso646/iso646_type_char_attr_none_storage_static.c:77: testNot();
;	genCall
	call	_testNot
;cases/iso646/iso646_type_char_attr_none_storage_static.c:78: __prints("Running testUnary\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___prints
;cases/iso646/iso646_type_char_attr_none_storage_static.c:79: testUnary();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_char_attr_none_storage_static.c:80: }
;	genEndFunction
	jp	_testUnary
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_24:
	.ascii "Running testTwoOpBitwise"
	.db 0x0a
	.db 0x00
___str_25:
	.ascii "Running testNot"
	.db 0x0a
	.db 0x00
___str_26:
	.ascii "Running testUnary"
	.db 0x0a
	.db 0x00
;cases/iso646/iso646_type_char_attr_none_storage_static.c:85: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/iso646/iso646_type_char_attr_none_storage_static.c:87: return "iso646_type_char_attr_none_storage_static";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_char_attr_none_storage_static.c:88: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0003
___str_27:
	.ascii "iso646_type_char_attr_none_storage_static"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
