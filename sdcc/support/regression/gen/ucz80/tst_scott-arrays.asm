;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_scott_arrays
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testArrays
	.globl _bool_and_lit1
	.globl _bool_or_lit1
	.globl _bool_test3
	.globl _bin_xor1
	.globl _bin_or1
	.globl _bool_and1
	.globl _bool_test2
	.globl _bool_test1
	.globl _bool_or2
	.globl _bool_or1
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
;cases/./../tests/scott-arrays.c:11: bool_or1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bool_or1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bool_or1::
;cases/./../tests/scott-arrays.c:14: ASSERT (!((achar0 > 0) || (achar1 > 0)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_achar0+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	genIfx
	ld	a, (_achar1+0)
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000e
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
;cases/./../tests/scott-arrays.c:15: }
;	genEndFunction
	ret
;	Total bool_or1 function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!((achar0 > 0) || (achar1 > 0))"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:18: bool_or2 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bool_or2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bool_or2::
;cases/./../tests/scott-arrays.c:21: ASSERT (!(achar0 || achar1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_achar0+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	genIfx
	ld	a, (_achar1+0)
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0015
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
;cases/./../tests/scott-arrays.c:22: }
;	genEndFunction
	ret
;	Total bool_or2 function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "!(achar0 || achar1)"
	.db 0x00
___str_5:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:25: bool_test1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bool_test1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bool_test1::
;cases/./../tests/scott-arrays.c:28: ASSERT (!((achar0 == 0) || achar1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_achar0+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;	genIfx
	ld	a, (_achar1+0)
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001c
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
;cases/./../tests/scott-arrays.c:29: }
;	genEndFunction
	ret
;	Total bool_test1 function size at codegen: 1 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "!((achar0 == 0) || achar1)"
	.db 0x00
___str_8:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:33: bool_test2 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bool_test2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bool_test2::
;cases/./../tests/scott-arrays.c:36: ASSERT (!((achar0 == 0) || aint0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_achar0+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;	genIfx
	ld	a, (_aint0+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_aint0
	or	a, (hl)
	ret	z
; common peephole 161 replaced jump by return.
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0024
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
;cases/./../tests/scott-arrays.c:37: }
;	genEndFunction
	ret
;	Total bool_test2 function size at codegen: 1 bytes.
___str_9:
	.ascii "Assertion failed"
	.db 0x00
___str_10:
	.ascii "!((achar0 == 0) || aint0)"
	.db 0x00
___str_11:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:40: bool_and1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bool_and1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bool_and1::
;cases/./../tests/scott-arrays.c:43: ASSERT (!(achar0 && achar1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_achar0+0)
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;	genIfx
	ld	a, (_achar1+0)
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
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
;cases/./../tests/scott-arrays.c:44: }
;	genEndFunction
	ret
;	Total bool_and1 function size at codegen: 1 bytes.
___str_12:
	.ascii "Assertion failed"
	.db 0x00
___str_13:
	.ascii "!(achar0 && achar1)"
	.db 0x00
___str_14:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:47: bin_or1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bin_or1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bin_or1::
;cases/./../tests/scott-arrays.c:52: t = achar0 | achar1;
;	genOr
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_achar1
	or	a, (hl)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/scott-arrays.c:53: ASSERT (!(t));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, c
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0035
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
;cases/./../tests/scott-arrays.c:54: }
;	genEndFunction
	ret
;	Total bin_or1 function size at codegen: 1 bytes.
___str_15:
	.ascii "Assertion failed"
	.db 0x00
___str_16:
	.ascii "!(t)"
	.db 0x00
___str_17:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:57: bin_xor1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bin_xor1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bin_xor1::
;cases/./../tests/scott-arrays.c:60: ASSERT (!(achar0 ^ achar1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genXor
	ld	a, (_achar0+0)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_achar1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	xor	a,(hl)
; common peephole 101 removed redundant or after xor.
	ret	z
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003c
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
;cases/./../tests/scott-arrays.c:61: }
;	genEndFunction
	ret
;	Total bin_xor1 function size at codegen: 1 bytes.
___str_18:
	.ascii "Assertion failed"
	.db 0x00
___str_19:
	.ascii "!(achar0 ^ achar1)"
	.db 0x00
___str_20:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:65: bool_test3 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bool_test3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bool_test3::
;cases/./../tests/scott-arrays.c:68: ASSERT (!((achar0 == 0x42) || (achar1 == 42)));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
	sub	a, #0x42
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00119$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar1)
	sub	a, #0x2a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00120$.
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00121$.
;	skipping generated iCode
;	genLabel
00106$:
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
;cases/./../tests/scott-arrays.c:69: }
;	genEndFunction
	ret
;	Total bool_test3 function size at codegen: 1 bytes.
___str_21:
	.ascii "Assertion failed"
	.db 0x00
___str_22:
	.ascii "!((achar0 == 0x42) || (achar1 == 42))"
	.db 0x00
___str_23:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:73: bool_or_lit1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bool_or_lit1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bool_or_lit1::
;cases/./../tests/scott-arrays.c:76: achar0 |= 0x0f;
;	genOr
	ld	a, (_achar0+0)
	or	a, #0x0f
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_achar0+0), a
;cases/./../tests/scott-arrays.c:78: ASSERT (!(achar0 > 0x10));
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
	ld	hl, #_achar0
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004e
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
00104$:
;cases/./../tests/scott-arrays.c:80: ASSERT (!((achar0 | 0x10) > 0xf0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genOr
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
	set	4, a
;	genCmpGt
	cp	a, #0xf1
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
	ld	hl, #0x0050
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_24
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-arrays.c:82: }
;	genEndFunction
	ret
;	Total bool_or_lit1 function size at codegen: 1 bytes.
___str_24:
	.ascii "Assertion failed"
	.db 0x00
___str_25:
	.ascii "!(achar0 > 0x10)"
	.db 0x00
___str_26:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
___str_27:
	.ascii "!((achar0 | 0x10) > 0xf0)"
	.db 0x00
;cases/./../tests/scott-arrays.c:85: bool_and_lit1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bool_and_lit1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bool_and_lit1::
;cases/./../tests/scott-arrays.c:88: achar0 &= 0xf0;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genAnd
	and	a, #0xf0
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-arrays.c:90: ASSERT (!(achar0 > 0x10));
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
	ld	hl, #_achar0
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
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
	ld	hl, #___str_30
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_29
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_28
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/./../tests/scott-arrays.c:92: ASSERT (!((achar0 & 0x10) > 0xf0));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/./../tests/scott-arrays.c:94: achar0 &= 0xef;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_achar0)
;	genAnd
	and	a, #0xef
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-arrays.c:96: }
;	genEndFunction
	ret
;	Total bool_and_lit1 function size at codegen: 1 bytes.
___str_28:
	.ascii "Assertion failed"
	.db 0x00
___str_29:
	.ascii "!(achar0 > 0x10)"
	.db 0x00
___str_30:
	.ascii "cases/./../tests/scott-arrays.c"
	.db 0x00
;cases/./../tests/scott-arrays.c:99: testArrays (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testArrays
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testArrays::
;cases/./../tests/scott-arrays.c:102: bool_or1 ();
;	genCall
	call	_bool_or1
;cases/./../tests/scott-arrays.c:103: bool_or2 ();
;	genCall
	call	_bool_or2
;cases/./../tests/scott-arrays.c:104: bool_and1 ();
;	genCall
	call	_bool_and1
;cases/./../tests/scott-arrays.c:105: bin_or1 ();
;	genCall
	call	_bin_or1
;cases/./../tests/scott-arrays.c:106: bin_xor1 ();
;	genCall
	call	_bin_xor1
;cases/./../tests/scott-arrays.c:108: achar0++;
;	genPlus
	ld	hl, #_achar0
	inc	(hl)
;cases/./../tests/scott-arrays.c:109: bool_and1 ();
;	genCall
	call	_bool_and1
;cases/./../tests/scott-arrays.c:110: bool_test1 ();
;	genCall
	call	_bool_test1
;cases/./../tests/scott-arrays.c:111: bool_test2 ();
;	genCall
	call	_bool_test2
;cases/./../tests/scott-arrays.c:112: bool_test3 ();
;	genCall
	call	_bool_test3
;cases/./../tests/scott-arrays.c:115: achar0--;
;	genMinus
;	Shift into pair
	ld	hl, #_achar0
	dec	(hl)
;cases/./../tests/scott-arrays.c:116: achar1++;
;	genPlus
	ld	hl, #_achar1
	inc	(hl)
;cases/./../tests/scott-arrays.c:117: bool_and1 ();
;	genCall
	call	_bool_and1
;cases/./../tests/scott-arrays.c:119: achar0 = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-arrays.c:120: achar1 = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_achar0), a
; common peephole 94a' reused constant #0 in a.
	ld	(#_achar1), a
; common peephole 19 loaded (#_achar1) from a directly instead of using hl.
;cases/./../tests/scott-arrays.c:122: bool_or_lit1 ();
;	genCall
	call	_bool_or_lit1
;cases/./../tests/scott-arrays.c:123: bool_and_lit1 ();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-arrays.c:124: }
;	genEndFunction
	jp	_bool_and_lit1
; common peephole 152 removed unused ret.
;	Total testArrays function size at codegen: 1 bytes.
;cases/tst_scott-arrays.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_scott-arrays.c:6: __prints("Running testArrays\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
;	genCall
	call	___prints
;cases/tst_scott-arrays.c:7: testArrays();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-arrays.c:8: }
;	genEndFunction
	jp	_testArrays
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_32:
	.ascii "Running testArrays"
	.db 0x0a
	.db 0x00
;cases/tst_scott-arrays.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_scott-arrays.c:15: return "scott-arrays.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_33
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-arrays.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_33:
	.ascii "scott-arrays.c"
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
