;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module snprintf_type_LONG
	
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
;cases/snprintf/snprintf_type_LONG.c:168: test_snprintf (void)
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
;cases/snprintf/snprintf_type_LONG.c:175: memset (buf, 0xfe, sizeof buf);       /* cookies all over */
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
;cases/snprintf/snprintf_type_LONG.c:177: for (i = 0; i < sizeof cases / sizeof cases[0]; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00102$:
;cases/snprintf/snprintf_type_LONG.c:179: sprintf (buf, cases[i].fmt, cases[i].arg);
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_cases
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, de
;	genPointerGet
	ld	c, 0 (iy)
	ld	b, 1 (iy)
	ld	e, 2 (iy)
	ld	d, 3 (iy)
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	iy
	pop	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	skipping iCode since result will be rematerialized
;	genIpush
	push	iy
	push	de
	push	bc
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 0
	push	af
	ld	hl, #10
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 0
; common peephole 142 used ex to move hl onto the stack.
	ex	(sp),hl
;	genCall
	call	_sprintf
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	pop	iy
;cases/snprintf/snprintf_type_LONG.c:187: ASSERT (!strcmp (buf, cases[i].result));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	(locations are the same)
;	genPointerGet
	ld	e, 6 (iy)
	ld	d, 7 (iy)
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
;cases/snprintf/snprintf_type_LONG.c:177: for (i = 0; i < sizeof cases / sizeof cases[0]; i++)
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x09
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00102$
;	skipping generated iCode
;cases/snprintf/snprintf_type_LONG.c:190: ASSERT (buf[sizeof buf - 10] == 0xfe);        /* check for cookie */
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
;cases/snprintf/snprintf_type_LONG.c:193: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total test_snprintf function size at codegen: 12 bytes.
_cases:
	.byte #0x78, #0x56, #0x34, #0x12	;  305419896
	.dw __str_4
	.dw __str_5
	.byte #0xff, #0xff, #0xff, #0x7f	;  2147483647
	.dw __str_6
	.dw __str_7
	.byte #0xde, #0xbc, #0x9a, #0x78	;  2023406814
	.dw __str_8
	.dw __str_9
	.byte #0x0a, #0x00, #0x01, #0x00	;  65546
	.dw __str_10
	.dw __str_11
	.byte #0x00, #0x00, #0x00, #0x80	; -2147483648
	.dw __str_12
	.dw __str_13
	.byte #0x00, #0x00, #0x00, #0x80	; -2147483648
	.dw __str_14
	.dw __str_15
	.byte #0x2e, #0xfb, #0xff, #0xff	; -1234
	.dw __str_16
	.dw __str_17
	.byte #0x53, #0x70, #0x97, #0x53	;  1402433619
	.dw __str_18
	.dw __str_19
	.byte #0xff, #0xff, #0xff, #0xff	; -1
	.dw __str_18
	.dw __str_20
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!strcmp (buf, cases[i].result)"
	.db 0x00
___str_2:
	.ascii "cases/snprintf/snprintf_type_LONG.c"
	.db 0x00
___str_3:
	.ascii "buf[sizeof buf - 10] == 0xfe"
	.db 0x00
__str_4:
	.ascii "0x%lx"
	.db 0x00
__str_5:
	.ascii "0x12345678"
	.db 0x00
__str_6:
	.ascii "%10lx"
	.db 0x00
__str_7:
	.ascii "  7fffffff"
	.db 0x00
__str_8:
	.ascii "0x%-10lX"
	.db 0x00
__str_9:
	.ascii "0x789ABCDE  "
	.db 0x00
__str_10:
	.ascii "0x%02lX"
	.db 0x00
__str_11:
	.ascii "0x1000A"
	.db 0x00
__str_12:
	.ascii "%lu"
	.db 0x00
__str_13:
	.ascii "2147483648"
	.db 0x00
__str_14:
	.ascii "%li"
	.db 0x00
__str_15:
	.ascii "-2147483648"
	.db 0x00
__str_16:
	.ascii "%+6ld"
	.db 0x00
__str_17:
	.ascii " -1234"
	.db 0x00
__str_18:
	.ascii "%lo(oct)"
	.db 0x00
__str_19:
	.ascii "12345670123(oct)"
	.db 0x00
__str_20:
	.ascii "37777777777(oct)"
	.db 0x00
;cases/snprintf/snprintf_type_LONG.c:197: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/snprintf/snprintf_type_LONG.c:199: __prints("Running test_snprintf\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_21
;	genCall
	call	___prints
;cases/snprintf/snprintf_type_LONG.c:200: test_snprintf();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/snprintf/snprintf_type_LONG.c:201: }
;	genEndFunction
	jp	_test_snprintf
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_21:
	.ascii "Running test_snprintf"
	.db 0x0a
	.db 0x00
;cases/snprintf/snprintf_type_LONG.c:206: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/snprintf/snprintf_type_LONG.c:208: return "snprintf_type_LONG";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/snprintf/snprintf_type_LONG.c:209: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_22:
	.ascii "snprintf_type_LONG"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
