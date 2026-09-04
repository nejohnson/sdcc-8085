;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module snprintf_type_INT
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _test_snprintf
	.globl _sprintf
	.globl _strcmp
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
;cases/snprintf/snprintf_type_INT.c:168: test_snprintf (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test_snprintf
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 33 bytes.
_test_snprintf::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -33
	ld	hl, #-33
	add	hl, sp
;cases/snprintf/snprintf_type_INT.c:175: memset (buf, 0xfe, sizeof buf);       /* cookies all over */
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x20
00143$:
	ld	(hl), #0xfe
	inc	hl
	djnz	00143$
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/snprintf/snprintf_type_INT.c:177: for (i = 0; i < sizeof cases / sizeof cases[0]; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00102$:
;cases/snprintf/snprintf_type_INT.c:179: sprintf (buf, cases[i].fmt, cases[i].arg);
;	genMult
;fetchPairLong
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 140 removed ex exploiting commutativity of addition.
	ld	de, #_cases
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	skipping iCode since result will be rematerialized
;	genIpush
	push	de
	push	bc
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
	pop	de
;cases/snprintf/snprintf_type_INT.c:187: ASSERT (!strcmp (buf, cases[i].result));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	(locations are the same)
;	genPointerGet
	ld	hl, #4
	add	hl, de
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00bb
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
00103$:
;cases/snprintf/snprintf_type_INT.c:177: for (i = 0; i < sizeof cases / sizeof cases[0]; i++)
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x0b
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00102$
;	skipping generated iCode
;cases/snprintf/snprintf_type_INT.c:190: ASSERT (buf[sizeof buf - 10] == 0xfe);        /* check for cookie */
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xfe
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00be
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
00104$:
;cases/snprintf/snprintf_type_INT.c:193: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total test_snprintf function size at codegen: 12 bytes.
_cases:
	.dw #0x00ab
	.dw __str_4
	.dw __str_5
	.dw #0xffff
	.dw __str_6
	.dw __str_7
	.dw #0xffff
	.dw __str_8
	.dw __str_9
	.dw #0x04d2
	.dw __str_10
	.dw __str_11
	.dw #0x3039
	.dw __str_12
	.dw __str_13
	.dw #0xfb2e
	.dw __str_14
	.dw __str_15
	.dw #0x7fff
	.dw __str_16
	.dw __str_17
	.dw #0x0001
	.dw __str_18
	.dw __str_19
	.dw #0x03e9
	.dw __str_20
	.dw __str_21
	.dw #0x0065
	.dw __str_22
	.dw __str_23
	.dw #0x029c
	.dw __str_24
	.dw __str_25
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!strcmp (buf, cases[i].result)"
	.db 0x00
___str_2:
	.ascii "cases/snprintf/snprintf_type_INT.c"
	.db 0x00
___str_3:
	.ascii "buf[sizeof buf - 10] == 0xfe"
	.db 0x00
__str_4:
	.ascii "%04x"
	.db 0x00
__str_5:
	.ascii "00ab"
	.db 0x00
__str_6:
	.ascii "0x%02X"
	.db 0x00
__str_7:
	.ascii "0xFFFF"
	.db 0x00
__str_8:
	.ascii "%u"
	.db 0x00
__str_9:
	.ascii "65535"
	.db 0x00
__str_10:
	.ascii "%+6d"
	.db 0x00
__str_11:
	.ascii " +1234"
	.db 0x00
__str_12:
	.ascii "% d"
	.db 0x00
__str_13:
	.ascii " 12345"
	.db 0x00
__str_14:
	.ascii "%d"
	.db 0x00
__str_15:
	.ascii "-1234"
	.db 0x00
__str_16:
	.ascii "%8d"
	.db 0x00
__str_17:
	.ascii "   32767"
	.db 0x00
__str_18:
	.ascii "%%%d"
	.db 0x00
__str_19:
	.ascii "%1"
	.db 0x00
__str_20:
	.ascii "%08i"
	.db 0x00
__str_21:
	.ascii "00001001"
	.db 0x00
__str_22:
	.ascii "%-+8d"
	.db 0x00
__str_23:
	.ascii "+101    "
	.db 0x00
__str_24:
	.ascii "%o(oct)"
	.db 0x00
__str_25:
	.ascii "1234(oct)"
	.db 0x00
;cases/snprintf/snprintf_type_INT.c:197: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/snprintf/snprintf_type_INT.c:199: __prints("Running test_snprintf\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___prints
;cases/snprintf/snprintf_type_INT.c:200: test_snprintf();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/snprintf/snprintf_type_INT.c:201: }
;	genEndFunction
	jp	_test_snprintf
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_26:
	.ascii "Running test_snprintf"
	.db 0x0a
	.db 0x00
;cases/snprintf/snprintf_type_INT.c:206: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/snprintf/snprintf_type_INT.c:208: return "snprintf_type_INT";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/snprintf/snprintf_type_INT.c:209: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_27:
	.ascii "snprintf_type_INT"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
