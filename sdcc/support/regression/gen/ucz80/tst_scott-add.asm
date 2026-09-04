;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_scott_add
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _test_add_uchar2uchar2
	.globl _test_add_uchar2uchar2_setup
	.globl _test_add_uchar2uchar
	.globl _test_add_uchar2uchar_setup
	.globl _test_add_lit2uchar
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
;cases/./../tests/scott-add.c:39: test_add_lit2uchar(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test_add_lit2uchar
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test_add_lit2uchar::
;cases/./../tests/scott-add.c:41: achar0 = achar0 + 5;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genPlus
	add	a, #0x05
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-add.c:43: ASSERT(achar0 == 5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0x05
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
	ld	hl, #0x002b
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
;cases/./../tests/scott-add.c:45: achar0 += 10;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genPlus
	add	a, #0x0a
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-add.c:47: ASSERT(achar0 == 15);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0x0f
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
	ld	hl, #0x002f
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
;cases/./../tests/scott-add.c:49: achar0 = achar0 +1;  // Should be an increment
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genPlus
	inc	a
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-add.c:51: ASSERT(achar0 == 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0x10
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
;cases/./../tests/scott-add.c:53: for(achar1 = 0; achar1 < 100; achar1++)
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar1
	ld	(hl), #0x64
;	genLabel
00104$:
;cases/./../tests/scott-add.c:54: achar0 += 2;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genPlus
	add	a, #0x02
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;	genMinus
;	Shift into pair
	ld	hl, #_achar1
	dec	(hl)
;cases/./../tests/scott-add.c:53: for(achar1 = 0; achar1 < 100; achar1++)
;	genIfx
	ld	a, (_achar1+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar1
	ld	(hl), #0x64
;cases/./../tests/scott-add.c:56: ASSERT(achar0 == 216);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0xd8
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
;cases/./../tests/scott-add.c:57: }
;	genEndFunction
	ret
;	Total test_add_lit2uchar function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "achar0 == 5"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/scott-add.c"
	.db 0x00
___str_3:
	.ascii "achar0 == 15"
	.db 0x00
___str_4:
	.ascii "achar0 == 16"
	.db 0x00
___str_5:
	.ascii "achar0 == 216"
	.db 0x00
;cases/./../tests/scott-add.c:60: test_add_uchar2uchar_setup(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test_add_uchar2uchar_setup
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test_add_uchar2uchar_setup::
;cases/./../tests/scott-add.c:62: achar0=16;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar0
	ld	(hl), #0x10
;cases/./../tests/scott-add.c:63: achar1=0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_achar1), a
; common peephole 19 loaded (#_achar1) from a directly instead of using hl.
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-add.c:64: }
;	genEndFunction
	ret
;	Total test_add_uchar2uchar_setup function size at codegen: 1 bytes.
;cases/./../tests/scott-add.c:67: test_add_uchar2uchar(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test_add_uchar2uchar
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test_add_uchar2uchar::
;cases/./../tests/scott-add.c:69: achar1 = achar1 + achar0;
;	genPlus
;	Shift into pair
	ld	hl, #_achar1
	ld	a, (hl)
	ld	iy, #_achar0
	add	a, 0 (iy)
	ld	(hl), a
;cases/./../tests/scott-add.c:71: ASSERT(achar1 == 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar1)
	sub	a, #0x10
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
	ld	hl, #0x0047
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
;cases/./../tests/scott-add.c:73: for(achar2 = 0; achar2<7; achar2++)
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar2
	ld	(hl), #0x07
;	genLabel
00104$:
;cases/./../tests/scott-add.c:74: achar1 += achar0;
;	genPlus
;	Shift into pair
	ld	hl, #_achar1
	ld	a, (hl)
	ld	iy, #_achar0
	add	a, 0 (iy)
	ld	(hl), a
;	genMinus
;	Shift into pair
	ld	hl, #_achar2
	dec	(hl)
;cases/./../tests/scott-add.c:73: for(achar2 = 0; achar2<7; achar2++)
;	genIfx
	ld	a, (_achar2+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar2
	ld	(hl), #0x07
;cases/./../tests/scott-add.c:76: ASSERT(achar1 == 128);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar1)
	sub	a, #0x80
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
	ld	hl, #0x004c
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
;cases/./../tests/scott-add.c:77: }
;	genEndFunction
	ret
;	Total test_add_uchar2uchar function size at codegen: 1 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "achar1 == 16"
	.db 0x00
___str_8:
	.ascii "cases/./../tests/scott-add.c"
	.db 0x00
___str_9:
	.ascii "achar1 == 128"
	.db 0x00
;cases/./../tests/scott-add.c:85: test_add_uchar2uchar2_setup(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test_add_uchar2uchar2_setup
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test_add_uchar2uchar2_setup::
;cases/./../tests/scott-add.c:87: achar0 = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-add.c:88: achar1 = 32;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_achar1
	ld	(hl), #0x20
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-add.c:89: }
;	genEndFunction
	ret
;	Total test_add_uchar2uchar2_setup function size at codegen: 1 bytes.
;cases/./../tests/scott-add.c:92: test_add_uchar2uchar2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test_add_uchar2uchar2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test_add_uchar2uchar2::
;cases/./../tests/scott-add.c:94: achar0++;
;	genPlus
	ld	hl, #_achar0
	inc	(hl)
;cases/./../tests/scott-add.c:95: achar0 = achar0 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genPlus
	inc	a
	ld	(hl), a
;cases/./../tests/scott-add.c:96: achar0 = achar0 + 2;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genPlus
	add	a, #0x02
	ld	(hl), a
;cases/./../tests/scott-add.c:97: achar0 = achar0 + 3;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genPlus
	add	a, #0x03
	ld	(hl), a
;cases/./../tests/scott-add.c:99: ASSERT(achar0 == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0x07
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
	ld	hl, #0x0063
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
;cases/./../tests/scott-add.c:101: achar1 += achar0;
;	genPlus
;	Shift into pair
	ld	hl, #_achar1
	ld	a, (hl)
	ld	iy, #_achar0
	add	a, 0 (iy)
	ld	(hl), a
;cases/./../tests/scott-add.c:102: ASSERT(achar1 == 39);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar1)
	sub	a, #0x27
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
	ld	hl, #0x0066
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
;cases/./../tests/scott-add.c:104: achar2 = achar1 + achar0;
;	genPlus
;	Shift into pair
	ld	hl, #_achar0
	ld	a, (_achar1+0)
	add	a, (hl)
	ld	(#_achar2), a
; common peephole 19 loaded (#_achar2) from a directly instead of using hl.
;cases/./../tests/scott-add.c:105: ASSERT(achar2 == 46);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar2)
	sub	a, #0x2e
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
	ld	hl, #0x0069
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
;cases/./../tests/scott-add.c:107: achar3 = achar2 + achar1 + achar0;
;	genPlus
;	Shift into pair
	ld	hl, #_achar1
	ld	a, (_achar2+0)
	add	a, (hl)
;	genPlus
;	Shift into pair
	ld	hl, #_achar0
	add	a, (hl)
	ld	(#_achar3), a
; common peephole 19 loaded (#_achar3) from a directly instead of using hl.
;cases/./../tests/scott-add.c:108: ASSERT(achar3 == 92);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar3)
	sub	a, #0x5c
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
	ld	hl, #0x006c
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
;cases/./../tests/scott-add.c:110: }
;	genEndFunction
	ret
;	Total test_add_uchar2uchar2 function size at codegen: 1 bytes.
___str_10:
	.ascii "Assertion failed"
	.db 0x00
___str_11:
	.ascii "achar0 == 7"
	.db 0x00
___str_12:
	.ascii "cases/./../tests/scott-add.c"
	.db 0x00
___str_13:
	.ascii "achar1 == 39"
	.db 0x00
___str_14:
	.ascii "achar2 == 46"
	.db 0x00
___str_15:
	.ascii "achar3 == 92"
	.db 0x00
;cases/tst_scott-add.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_scott-add.c:6: __prints("Running test_add_lit2uchar\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genCall
	call	___prints
;cases/tst_scott-add.c:7: test_add_lit2uchar();
;	genCall
	call	_test_add_lit2uchar
;cases/tst_scott-add.c:8: __prints("Running test_add_uchar2uchar_setup\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___prints
;cases/tst_scott-add.c:9: test_add_uchar2uchar_setup();
;	genCall
	call	_test_add_uchar2uchar_setup
;cases/tst_scott-add.c:10: __prints("Running test_add_uchar2uchar\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genCall
	call	___prints
;cases/tst_scott-add.c:11: test_add_uchar2uchar();
;	genCall
	call	_test_add_uchar2uchar
;cases/tst_scott-add.c:12: __prints("Running test_add_uchar2uchar2_setup\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___prints
;cases/tst_scott-add.c:13: test_add_uchar2uchar2_setup();
;	genCall
	call	_test_add_uchar2uchar2_setup
;cases/tst_scott-add.c:14: __prints("Running test_add_uchar2uchar2\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_20
;	genCall
	call	___prints
;cases/tst_scott-add.c:15: test_add_uchar2uchar2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-add.c:16: }
;	genEndFunction
	jp	_test_add_uchar2uchar2
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_16:
	.ascii "Running test_add_lit2uchar"
	.db 0x0a
	.db 0x00
___str_17:
	.ascii "Running test_add_uchar2uchar_setup"
	.db 0x0a
	.db 0x00
___str_18:
	.ascii "Running test_add_uchar2uchar"
	.db 0x0a
	.db 0x00
___str_19:
	.ascii "Running test_add_uchar2uchar2_setup"
	.db 0x0a
	.db 0x00
___str_20:
	.ascii "Running test_add_uchar2uchar2"
	.db 0x0a
	.db 0x00
;cases/tst_scott-add.c:21: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_scott-add.c:23: return "scott-add.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-add.c:24: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0005
___str_21:
	.ascii "scott-add.c"
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
