;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module staticinit_type_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___prints
	.globl ___fail
	.globl _c
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
_c::
	.ds 2
_smallDense:
	.ds 24
_smallSparse:
	.ds 36
_smallSparseZero:
	.ds 36
_smallSparseZeroTail:
	.ds 12
_largeMixed:
	.ds 1116
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
;cases/staticinit/staticinit_type_long.c:23: testSmallDense (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSmallDense
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testSmallDense:
;cases/staticinit/staticinit_type_long.c:26: ASSERT (smallDense[0] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallDense + 0)
	ld	hl, (#_smallDense + 2)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
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
	ld	hl, #0x001a
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
;cases/staticinit/staticinit_type_long.c:27: ASSERT (smallDense[1] == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallDense + 4)
	ld	hl, (#_smallDense + 6)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
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
	ld	hl, #0x001b
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
00106$:
;cases/staticinit/staticinit_type_long.c:28: ASSERT (smallDense[2] == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallDense + 8)
	ld	hl, (#_smallDense + 10)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
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
	ld	hl, #0x001c
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
00108$:
;cases/staticinit/staticinit_type_long.c:29: ASSERT (smallDense[3] == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallDense + 12)
	ld	hl, (#_smallDense + 14)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
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
	ld	hl, #0x001d
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
00110$:
;cases/staticinit/staticinit_type_long.c:30: ASSERT (smallDense[4] == 5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallDense + 16)
	ld	hl, (#_smallDense + 18)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x05
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/staticinit/staticinit_type_long.c:31: ASSERT (smallDense[5] == 6);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallDense + 20)
	ld	hl, (#_smallDense + 22)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x06
	or	a, b
	or	a, l
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00168$.
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
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/staticinit/staticinit_type_long.c:33: }
;	genEndFunction
	ret
;	Total testSmallDense function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "smallDense[0] == 1"
	.db 0x00
___str_2:
	.ascii "cases/staticinit/staticinit_type_long.c"
	.db 0x00
___str_3:
	.ascii "smallDense[1] == 2"
	.db 0x00
___str_4:
	.ascii "smallDense[2] == 3"
	.db 0x00
___str_5:
	.ascii "smallDense[3] == 4"
	.db 0x00
___str_6:
	.ascii "smallDense[4] == 5"
	.db 0x00
___str_7:
	.ascii "smallDense[5] == 6"
	.db 0x00
;cases/staticinit/staticinit_type_long.c:45: testSmallSparse (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSmallSparse
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testSmallSparse:
;cases/staticinit/staticinit_type_long.c:49: ASSERT (smallSparse[0] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 0)
	ld	hl, (#_smallSparse + 2)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00193$.
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
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/staticinit/staticinit_type_long.c:50: ASSERT (smallSparse[1] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 4)
	ld	hl, (#_smallSparse + 6)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00194$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0032
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/staticinit/staticinit_type_long.c:51: ASSERT (smallSparse[2] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 8)
	ld	hl, (#_smallSparse + 10)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00195$.
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
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/staticinit/staticinit_type_long.c:52: ASSERT (smallSparse[3] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 12)
	ld	hl, (#_smallSparse + 14)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00196$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0034
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/staticinit/staticinit_type_long.c:53: ASSERT (smallSparse[4] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 16)
	ld	hl, (#_smallSparse + 18)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00197$.
;	skipping generated iCode
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
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/staticinit/staticinit_type_long.c:54: ASSERT (smallSparse[5] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 20)
	ld	hl, (#_smallSparse + 22)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00198$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0036
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/staticinit/staticinit_type_long.c:55: ASSERT (smallSparse[6] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 24)
	ld	hl, (#_smallSparse + 26)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00199$.
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
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/staticinit/staticinit_type_long.c:56: ASSERT (smallSparse[7] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 28)
	ld	hl, (#_smallSparse + 30)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00200$.
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
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
00118$:
;cases/staticinit/staticinit_type_long.c:57: ASSERT (smallSparse[8] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparse + 32)
	ld	hl, (#_smallSparse + 34)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00201$.
;	skipping generated iCode
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
	ld	hl, #___str_10
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/staticinit/staticinit_type_long.c:60: }
;	genEndFunction
	ret
;	Total testSmallSparse function size at codegen: 1 bytes.
___str_8:
	.ascii "Assertion failed"
	.db 0x00
___str_9:
	.ascii "smallSparse[0] == 1"
	.db 0x00
___str_10:
	.ascii "cases/staticinit/staticinit_type_long.c"
	.db 0x00
___str_11:
	.ascii "smallSparse[1] == 1"
	.db 0x00
___str_12:
	.ascii "smallSparse[2] == 1"
	.db 0x00
___str_13:
	.ascii "smallSparse[3] == 1"
	.db 0x00
___str_14:
	.ascii "smallSparse[4] == 1"
	.db 0x00
___str_15:
	.ascii "smallSparse[5] == 1"
	.db 0x00
___str_16:
	.ascii "smallSparse[6] == 1"
	.db 0x00
___str_17:
	.ascii "smallSparse[7] == 1"
	.db 0x00
___str_18:
	.ascii "smallSparse[8] == 1"
	.db 0x00
;cases/staticinit/staticinit_type_long.c:76: testSmallSparseZero (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSmallSparseZero
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testSmallSparseZero:
;cases/staticinit/staticinit_type_long.c:79: ASSERT (smallSparseZero[0] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 0)
	ld	hl, (#_smallSparseZero + 2)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
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
	ld	hl, #0x004f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_20
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/staticinit/staticinit_type_long.c:80: ASSERT (smallSparseZero[1] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 4)
	ld	hl, (#_smallSparseZero + 6)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
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
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/staticinit/staticinit_type_long.c:81: ASSERT (smallSparseZero[2] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 8)
	ld	hl, (#_smallSparseZero + 10)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
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
	ld	hl, #0x0051
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/staticinit/staticinit_type_long.c:82: ASSERT (smallSparseZero[3] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 12)
	ld	hl, (#_smallSparseZero + 14)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
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
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_24
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/staticinit/staticinit_type_long.c:83: ASSERT (smallSparseZero[4] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 16)
	ld	hl, (#_smallSparseZero + 18)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0053
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_25
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/staticinit/staticinit_type_long.c:84: ASSERT (smallSparseZero[5] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 20)
	ld	hl, (#_smallSparseZero + 22)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0054
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_26
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/staticinit/staticinit_type_long.c:85: ASSERT (smallSparseZero[6] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 24)
	ld	hl, (#_smallSparseZero + 26)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0055
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/staticinit/staticinit_type_long.c:86: ASSERT (smallSparseZero[7] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 28)
	ld	hl, (#_smallSparseZero + 30)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0056
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_28
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00118$:
;cases/staticinit/staticinit_type_long.c:87: ASSERT (smallSparseZero[8] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZero + 32)
	ld	hl, (#_smallSparseZero + 34)
;	genIfx
	ld	a, h
	or	a, l
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0057
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_29
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
00120$:
;cases/staticinit/staticinit_type_long.c:89: ASSERT (smallSparseZeroTail[0] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_smallSparseZeroTail + 0)
	ld	hl, (#_smallSparseZeroTail + 2)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00203$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0059
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_30
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/staticinit/staticinit_type_long.c:91: }
;	genEndFunction
	ret
;	Total testSmallSparseZero function size at codegen: 1 bytes.
___str_19:
	.ascii "Assertion failed"
	.db 0x00
___str_20:
	.ascii "smallSparseZero[0] == 0"
	.db 0x00
___str_21:
	.ascii "cases/staticinit/staticinit_type_long.c"
	.db 0x00
___str_22:
	.ascii "smallSparseZero[1] == 0"
	.db 0x00
___str_23:
	.ascii "smallSparseZero[2] == 0"
	.db 0x00
___str_24:
	.ascii "smallSparseZero[3] == 0"
	.db 0x00
___str_25:
	.ascii "smallSparseZero[4] == 0"
	.db 0x00
___str_26:
	.ascii "smallSparseZero[5] == 0"
	.db 0x00
___str_27:
	.ascii "smallSparseZero[6] == 0"
	.db 0x00
___str_28:
	.ascii "smallSparseZero[7] == 0"
	.db 0x00
___str_29:
	.ascii "smallSparseZero[8] == 0"
	.db 0x00
___str_30:
	.ascii "smallSparseZeroTail[0] == 1"
	.db 0x00
;cases/staticinit/staticinit_type_long.c:139: testLargeMixed (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testLargeMixed
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testLargeMixed:
;cases/staticinit/staticinit_type_long.c:142: ASSERT (largeMixed[0] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 0)
	ld	hl, (#_largeMixed + 2)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00203$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_32
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/staticinit/staticinit_type_long.c:143: ASSERT (largeMixed[1] == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 4)
	ld	hl, (#_largeMixed + 6)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00204$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_34
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/staticinit/staticinit_type_long.c:144: ASSERT (largeMixed[7] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 28)
	ld	hl, (#_largeMixed + 30)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00205$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0090
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_35
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/staticinit/staticinit_type_long.c:145: ASSERT (largeMixed[102] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 408)
	ld	hl, (#_largeMixed + 410)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00206$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0091
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_36
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/staticinit/staticinit_type_long.c:146: ASSERT (largeMixed[143] == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 572)
	ld	hl, (#_largeMixed + 574)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00207$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0092
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_37
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/staticinit/staticinit_type_long.c:147: ASSERT (largeMixed[143+8] == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 604)
	ld	hl, (#_largeMixed + 606)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00208$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0093
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_38
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/staticinit/staticinit_type_long.c:148: ASSERT (largeMixed[143+16] == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 636)
	ld	hl, (#_largeMixed + 638)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00209$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0094
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_39
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/staticinit/staticinit_type_long.c:149: ASSERT (largeMixed[143+1] == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 576)
	ld	hl, (#_largeMixed + 578)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00210$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0095
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_40
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00118$:
;cases/staticinit/staticinit_type_long.c:150: ASSERT (largeMixed[143+8+1] == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 608)
	ld	hl, (#_largeMixed + 610)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
	or	a, b
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00211$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0096
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_41
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
00120$:
;cases/staticinit/staticinit_type_long.c:151: ASSERT (largeMixed[143+16+1] == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_largeMixed + 640)
	ld	hl, (#_largeMixed + 642)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
	or	a, b
	or	a, l
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00212$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0097
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_33
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_42
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_31
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/staticinit/staticinit_type_long.c:153: }
;	genEndFunction
	ret
;	Total testLargeMixed function size at codegen: 1 bytes.
___str_31:
	.ascii "Assertion failed"
	.db 0x00
___str_32:
	.ascii "largeMixed[0] == 1"
	.db 0x00
___str_33:
	.ascii "cases/staticinit/staticinit_type_long.c"
	.db 0x00
___str_34:
	.ascii "largeMixed[1] == 2"
	.db 0x00
___str_35:
	.ascii "largeMixed[7] == 1"
	.db 0x00
___str_36:
	.ascii "largeMixed[102] == 1"
	.db 0x00
___str_37:
	.ascii "largeMixed[143] == 3"
	.db 0x00
___str_38:
	.ascii "largeMixed[143+8] == 3"
	.db 0x00
___str_39:
	.ascii "largeMixed[143+16] == 3"
	.db 0x00
___str_40:
	.ascii "largeMixed[143+1] == 4"
	.db 0x00
___str_41:
	.ascii "largeMixed[143+8+1] == 4"
	.db 0x00
___str_42:
	.ascii "largeMixed[143+16+1] == 4"
	.db 0x00
;cases/staticinit/staticinit_type_long.c:156: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/staticinit/staticinit_type_long.c:158: __prints("Running testSmallDense\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_43
;	genCall
	call	___prints
;cases/staticinit/staticinit_type_long.c:159: testSmallDense();
;	genCall
	call	_testSmallDense
;cases/staticinit/staticinit_type_long.c:160: __prints("Running testSmallSparse\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_44
;	genCall
	call	___prints
;cases/staticinit/staticinit_type_long.c:161: testSmallSparse();
;	genCall
	call	_testSmallSparse
;cases/staticinit/staticinit_type_long.c:162: __prints("Running testSmallSparseZero\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_45
;	genCall
	call	___prints
;cases/staticinit/staticinit_type_long.c:163: testSmallSparseZero();
;	genCall
	call	_testSmallSparseZero
;cases/staticinit/staticinit_type_long.c:164: __prints("Running testLargeMixed\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_46
;	genCall
	call	___prints
;cases/staticinit/staticinit_type_long.c:165: testLargeMixed();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/staticinit/staticinit_type_long.c:166: }
;	genEndFunction
	jp	_testLargeMixed
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_43:
	.ascii "Running testSmallDense"
	.db 0x0a
	.db 0x00
___str_44:
	.ascii "Running testSmallSparse"
	.db 0x0a
	.db 0x00
___str_45:
	.ascii "Running testSmallSparseZero"
	.db 0x0a
	.db 0x00
___str_46:
	.ascii "Running testLargeMixed"
	.db 0x0a
	.db 0x00
;cases/staticinit/staticinit_type_long.c:171: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/staticinit/staticinit_type_long.c:173: return "staticinit_type_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_47
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/staticinit/staticinit_type_long.c:174: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0004
___str_47:
	.ascii "staticinit_type_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
___str_48:
	.ascii "Booting"
	.db 0x00
	.area _INITIALIZER
__xinit__c:
	.dw ___str_48
__xinit__smallDense:
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x02, #0x00, #0x00, #0x00	;  2
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
__xinit__smallSparse:
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
__xinit__smallSparseZero:
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0x00, #0x00, #0x00, #0x00	;  0
	.byte #0x00, #0x00, #0x00, #0x00	;  0
__xinit__smallSparseZeroTail:
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x02, #0x00, #0x00, #0x00	;  2
	.byte #0x03, #0x00, #0x00, #0x00	;  3
__xinit__largeMixed:
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x02, #0x00, #0x00, #0x00	;  2
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x07, #0x00, #0x00, #0x00	;  7
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x01, #0x00, #0x00, #0x00	;  1
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.byte #0x03, #0x00, #0x00, #0x00	;  3
	.byte #0x04, #0x00, #0x00, #0x00	;  4
	.byte #0x05, #0x00, #0x00, #0x00	;  5
	.byte #0x06, #0x00, #0x00, #0x00	;  6
	.area _CABS (ABS)
