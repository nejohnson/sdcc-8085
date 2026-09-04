;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_scott_sub
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testSub
	.globl _sub_uchar2uchar2
	.globl _sub_uchar2uchar
	.globl _sub_lit_from_uchar
	.globl ___prints
	.globl ___fail
	.globl _acharP
	.globl _achar3
	.globl _achar2
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
_achar2::
	.ds 1
_achar3::
	.ds 1
_acharP::
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
;cases/./../tests/scott-sub.c:39: void sub_lit_from_uchar(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function sub_lit_from_uchar
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_sub_lit_from_uchar::
;cases/./../tests/scott-sub.c:42: achar0 = achar0 - 5;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genMinus
	add	a, #0xfb
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-sub.c:44: ASSERT(!(achar0 != 0xfb));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0xfb
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00163$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002c
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
00108$:
;cases/./../tests/scott-sub.c:46: achar0 -= 10;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genMinus
	add	a, #0xf6
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-sub.c:48: ASSERT(!(achar0 != 0xf1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0xf1
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0030
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
00110$:
;cases/./../tests/scott-sub.c:50: achar0 = achar0 -1;  // Should be a decrement
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-sub.c:51: ASSERT(!(achar0 != 0xf0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0xf0
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0033
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/./../tests/scott-sub.c:53: for(achar1 = 0; achar1 < 100; achar1++)
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar1
	ld	(hl), #0x64
;	genLabel
00104$:
;cases/./../tests/scott-sub.c:54: achar0 -= 2;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genMinus
	add	a, #0xfe
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;	genMinus
;	Shift into pair
	ld	hl, #_achar1
	dec	(hl)
;cases/./../tests/scott-sub.c:53: for(achar1 = 0; achar1 < 100; achar1++)
;	genIfx
	ld	a, (_achar1+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar1
	ld	(hl), #0x64
;cases/./../tests/scott-sub.c:56: ASSERT(!(achar0 != 40));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0x28
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00166$.
;	skipping generated iCode
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/scott-sub.c:58: }
;	genEndFunction
	ret
;	Total sub_lit_from_uchar function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!(achar0 != 0xfb)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/scott-sub.c"
	.db 0x00
___str_3:
	.ascii "!(achar0 != 0xf1)"
	.db 0x00
___str_4:
	.ascii "!(achar0 != 0xf0)"
	.db 0x00
___str_5:
	.ascii "!(achar0 != 40)"
	.db 0x00
;cases/./../tests/scott-sub.c:63: void sub_uchar2uchar(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function sub_uchar2uchar
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_sub_uchar2uchar::
;cases/./../tests/scott-sub.c:66: achar1 = achar1 - achar0;
;	genMinus
;	Shift into pair
	ld	hl, #_achar0
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_achar1
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (de)
	sub	a, (hl)
	ld	(de), a
	pop	de
;cases/./../tests/scott-sub.c:68: ASSERT(!(achar1 != 99));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar1+0)
	sub	a, #0x63
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0044
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
00108$:
;cases/./../tests/scott-sub.c:70: for(achar2 = 0; achar2<7; achar2++)
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar2
	ld	(hl), #0x07
;	genLabel
00104$:
;cases/./../tests/scott-sub.c:71: achar1 -= achar0;
;	genMinus
;	Shift into pair
	ld	hl, #_achar0
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_achar1
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (de)
	sub	a, (hl)
	ld	(de), a
	pop	de
;	genMinus
;	Shift into pair
	ld	hl, #_achar2
	dec	(hl)
;cases/./../tests/scott-sub.c:70: for(achar2 = 0; achar2<7; achar2++)
;	genIfx
	ld	a, (_achar2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar2
	ld	(hl), #0x07
;cases/./../tests/scott-sub.c:73: ASSERT(!(achar1 != 92));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar1+0)
	sub	a, #0x5c
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
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
	ld	hl, #0x0049
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/scott-sub.c:75: }
;	genEndFunction
	ret
;	Total sub_uchar2uchar function size at codegen: 1 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "!(achar1 != 99)"
	.db 0x00
___str_8:
	.ascii "cases/./../tests/scott-sub.c"
	.db 0x00
___str_9:
	.ascii "!(achar1 != 92)"
	.db 0x00
;cases/./../tests/scott-sub.c:82: void sub_uchar2uchar2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function sub_uchar2uchar2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_sub_uchar2uchar2::
;cases/./../tests/scott-sub.c:86: achar0--;
;	genMinus
;	Shift into pair
	ld	hl, #_achar0
	dec	(hl)
;cases/./../tests/scott-sub.c:87: achar0 = achar0 - 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
	ld	hl, #_achar0
	ld	(hl), a
;cases/./../tests/scott-sub.c:88: achar0 = achar0 - 2;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genMinus
	add	a, #0xfe
	ld	(hl), a
;cases/./../tests/scott-sub.c:89: achar0 = achar0 - 3;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genMinus
	add	a, #0xfd
	ld	(hl), a
;cases/./../tests/scott-sub.c:90: ASSERT(!(achar0 != 3));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/./../tests/scott-sub.c:93: achar1 -= achar0;
;	genMinus
;	Shift into pair
	ld	hl, #_achar0
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_achar1
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (de)
	sub	a, (hl)
	ld	(de), a
	pop	de
;cases/./../tests/scott-sub.c:94: ASSERT(!(achar1 != 29));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar1+0)
	sub	a, #0x1d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
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
	ld	hl, #0x005e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/./../tests/scott-sub.c:96: achar2 = achar1 - achar0;
;	genMinus
;	Shift into pair
	ld	hl, #_achar0
	ld	a, (_achar1+0)
	sub	a, (hl)
	ld	(#_achar2), a
; common peephole 19 loaded (#_achar2) from a directly instead of using hl.
;cases/./../tests/scott-sub.c:97: ASSERT(!(achar2 != 26));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar2)
	sub	a, #0x1a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0061
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/./../tests/scott-sub.c:100: achar3 = achar2 - achar1 - achar0;
;	genMinus
;	Shift into pair
	ld	hl, #_achar1
	ld	a, (_achar2+0)
	sub	a, (hl)
;	genMinus
;	Shift into pair
	ld	hl, #_achar0
	sub	a, (hl)
	ld	(#_achar3), a
; common peephole 19 loaded (#_achar3) from a directly instead of using hl.
;cases/./../tests/scott-sub.c:101: ASSERT(!(achar3 != 0xfa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar3)
	sub	a, #0xfa
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0065
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-sub.c:103: }
;	genEndFunction
	ret
;	Total sub_uchar2uchar2 function size at codegen: 1 bytes.
___str_10:
	.ascii "Assertion failed"
	.db 0x00
___str_11:
	.ascii "!(achar0 != 3)"
	.db 0x00
___str_12:
	.ascii "cases/./../tests/scott-sub.c"
	.db 0x00
___str_13:
	.ascii "!(achar1 != 29)"
	.db 0x00
___str_14:
	.ascii "!(achar2 != 26)"
	.db 0x00
___str_15:
	.ascii "!(achar3 != 0xfa)"
	.db 0x00
;cases/./../tests/scott-sub.c:157: testSub(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSub
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSub::
;cases/./../tests/scott-sub.c:160: sub_lit_from_uchar();
;	genCall
	call	_sub_lit_from_uchar
;cases/./../tests/scott-sub.c:162: achar0=1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar0
	ld	(hl), #0x01
;cases/./../tests/scott-sub.c:163: achar1=100;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar1
	ld	(hl), #0x64
;cases/./../tests/scott-sub.c:164: sub_uchar2uchar();
;	genCall
	call	_sub_uchar2uchar
;cases/./../tests/scott-sub.c:167: achar0 = 10;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar0
	ld	(hl), #0x0a
;cases/./../tests/scott-sub.c:168: achar1 = 32;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar1
	ld	(hl), #0x20
;cases/./../tests/scott-sub.c:169: sub_uchar2uchar2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-sub.c:179: }
;	genEndFunction
	jp	_sub_uchar2uchar2
; common peephole 152 removed unused ret.
;	Total testSub function size at codegen: 1 bytes.
;cases/tst_scott-sub.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_scott-sub.c:6: __prints("Running testSub\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genCall
	call	___prints
;cases/tst_scott-sub.c:7: testSub();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-sub.c:8: }
;	genEndFunction
	jp	_testSub
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_16:
	.ascii "Running testSub"
	.db 0x0a
	.db 0x00
;cases/tst_scott-sub.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_scott-sub.c:15: return "scott-sub.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-sub.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_17:
	.ascii "scott-sub.c"
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
__xinit__achar2:
	.db #0x00	; 0
__xinit__achar3:
	.db #0x00	; 0
__xinit__acharP:
	.dw #0x0000
	.area _CABS (ABS)
