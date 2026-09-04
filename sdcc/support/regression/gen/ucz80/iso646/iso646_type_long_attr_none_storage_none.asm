;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module iso646_type_long_attr_none_storage_none
	
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
;cases/iso646/iso646_type_long_attr_none_storage_none.c:13: testTwoOpBitwise(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTwoOpBitwise
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTwoOpBitwise:
;cases/iso646/iso646_type_long_attr_none_storage_none.c:21: ASSERT((long)(left bitand right) == (long)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:22: ASSERT((long)(right bitand left) == (long)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:23: ASSERT((long)(left bitand 0xc1ec) == (long)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:24: ASSERT((long)(0x3df7 bitand right) == (long)0x1E4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:26: ASSERT((long)(left bitor right) == (long)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:27: ASSERT((long)(right bitor left) == (long)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:28: ASSERT((long)(left bitor 0xc1ec) == (long)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:29: ASSERT((long)(0x3df7 bitor right) == (long)0xFDFF);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:31: ASSERT((long)(left xor right) == (long)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:32: ASSERT((long)(right xor left) == (long)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:33: ASSERT((long)(left xor 0xc1ec) == (long)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:34: ASSERT((long)(0x3df7 xor right) == (long)0xFC1B);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_long_attr_none_storage_none.c:36: }
;	genEndFunction
	ret
;	Total testTwoOpBitwise function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "(long)(left bitand right) == (long)0x1E4"
	.db 0x00
___str_2:
	.ascii "cases/iso646/iso646_type_long_attr_none_storage_none.c"
	.db 0x00
___str_3:
	.ascii "(long)(right bitand left) == (long)0x1E4"
	.db 0x00
___str_4:
	.ascii "(long)(left bitand 0xc1ec) == (long)0x1E4"
	.db 0x00
___str_5:
	.ascii "(long)(0x3df7 bitand right) == (long)0x1E4"
	.db 0x00
___str_6:
	.ascii "(long)(left bitor right) == (long)0xFDFF"
	.db 0x00
___str_7:
	.ascii "(long)(right bitor left) == (long)0xFDFF"
	.db 0x00
___str_8:
	.ascii "(long)(left bitor 0xc1ec) == (long)0xFDFF"
	.db 0x00
___str_9:
	.ascii "(long)(0x3df7 bitor right) == (long)0xFDFF"
	.db 0x00
___str_10:
	.ascii "(long)(left xor right) == (long)0xFC1B"
	.db 0x00
___str_11:
	.ascii "(long)(right xor left) == (long)0xFC1B"
	.db 0x00
___str_12:
	.ascii "(long)(left xor 0xc1ec) == (long)0xFC1B"
	.db 0x00
___str_13:
	.ascii "(long)(0x3df7 xor right) == (long)0xFC1B"
	.db 0x00
;cases/iso646/iso646_type_long_attr_none_storage_none.c:39: alwaysTrue(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function alwaysTrue
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_alwaysTrue:
;cases/iso646/iso646_type_long_attr_none_storage_none.c:41: return (long)1;
;	genRet
;fetchPairLong
	ld	de, #0x0001
	ld	l, d
	ld	h, d
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_long_attr_none_storage_none.c:42: }
;	genEndFunction
	ret
;	Total alwaysTrue function size at codegen: 1 bytes.
;cases/iso646/iso646_type_long_attr_none_storage_none.c:45: alwaysFalse(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function alwaysFalse
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_alwaysFalse:
;cases/iso646/iso646_type_long_attr_none_storage_none.c:47: return 0;
;	genRet
;fetchPairLong
	ld	de, #0x0000
	ld	l, e
	ld	h, e
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_long_attr_none_storage_none.c:48: }
;	genEndFunction
	ret
;	Total alwaysFalse function size at codegen: 1 bytes.
;cases/iso646/iso646_type_long_attr_none_storage_none.c:51: testNot(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testNot
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testNot:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/iso646/iso646_type_long_attr_none_storage_none.c:53: long true_ = alwaysTrue();
;	genCall
	call	_alwaysTrue
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	de
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:54: long false_ = alwaysFalse();
;	genCall
	call	_alwaysFalse
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:56: ASSERT(not false_);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
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
;	genLabel
00104$:
;cases/iso646/iso646_type_long_attr_none_storage_none.c:57: ASSERT(not not true_);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
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
;	genLabel
00106$:
;cases/iso646/iso646_type_long_attr_none_storage_none.c:58: ASSERT(not not not false_);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
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
;	genLabel
00108$:
;cases/iso646/iso646_type_long_attr_none_storage_none.c:59: ASSERT(true_ not_eq false_);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00143$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00143$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00143$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
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
;cases/iso646/iso646_type_long_attr_none_storage_none.c:60: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testNot function size at codegen: 5 bytes.
___str_14:
	.ascii "Assertion failed"
	.db 0x00
___str_15:
	.ascii "not false_"
	.db 0x00
___str_16:
	.ascii "cases/iso646/iso646_type_long_attr_none_storage_none.c"
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
;cases/iso646/iso646_type_long_attr_none_storage_none.c:63: testUnary(void)
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
;cases/iso646/iso646_type_long_attr_none_storage_none.c:66: ASSERT(compl 0xaa55 == ~0xaa55);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/iso646/iso646_type_long_attr_none_storage_none.c:67: ASSERT(bitand i == &i);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_long_attr_none_storage_none.c:68: }
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
	.ascii "cases/iso646/iso646_type_long_attr_none_storage_none.c"
	.db 0x00
__str_23:
	.ascii "bitand i == &i"
	.db 0x00
;cases/iso646/iso646_type_long_attr_none_storage_none.c:72: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/iso646/iso646_type_long_attr_none_storage_none.c:74: __prints("Running testTwoOpBitwise\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___prints
;cases/iso646/iso646_type_long_attr_none_storage_none.c:75: testTwoOpBitwise();
;	genCall
	call	_testTwoOpBitwise
;cases/iso646/iso646_type_long_attr_none_storage_none.c:76: __prints("Running testNot\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
;	genCall
	call	___prints
;cases/iso646/iso646_type_long_attr_none_storage_none.c:77: testNot();
;	genCall
	call	_testNot
;cases/iso646/iso646_type_long_attr_none_storage_none.c:78: __prints("Running testUnary\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___prints
;cases/iso646/iso646_type_long_attr_none_storage_none.c:79: testUnary();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_long_attr_none_storage_none.c:80: }
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
;cases/iso646/iso646_type_long_attr_none_storage_none.c:85: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/iso646/iso646_type_long_attr_none_storage_none.c:87: return "iso646_type_long_attr_none_storage_none";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iso646/iso646_type_long_attr_none_storage_none.c:88: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0003
___str_27:
	.ascii "iso646_type_long_attr_none_storage_none"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
