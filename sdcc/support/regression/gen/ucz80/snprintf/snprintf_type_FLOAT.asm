;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module snprintf_type_FLOAT
	
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
;cases/snprintf/snprintf_type_FLOAT.c:168: test_snprintf (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test_snprintf
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 32 bytes.
_test_snprintf::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -32
	ld	hl, #-32
	add	hl, sp
;cases/snprintf/snprintf_type_FLOAT.c:175: memset (buf, 0xfe, sizeof buf);       /* cookies all over */
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x20
00133$:
	ld	(hl), #0xfe
	inc	hl
	djnz	00133$
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/snprintf/snprintf_type_FLOAT.c:177: for (i = 0; i < sizeof cases / sizeof cases[0]; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/snprintf/snprintf_type_FLOAT.c:179: sprintf (buf, cases[i].fmt, cases[i].arg);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_cases + 0)
	ld	de, (#_cases + 2)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_cases + 4)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	de
	push	bc
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;cases/snprintf/snprintf_type_FLOAT.c:187: ASSERT (!strcmp (buf, cases[i].result));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_cases + 6)
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
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #___str_2
;	skipping iCode since result will be rematerialized
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00bb
	push	hl
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
	pop	bc
;	genLabel
00103$:
;cases/snprintf/snprintf_type_FLOAT.c:190: ASSERT (buf[sizeof buf - 10] == 0xfe);        /* check for cookie */
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xfe
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00be
	push	hl
;	genIpush
	push	bc
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
;cases/snprintf/snprintf_type_FLOAT.c:193: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total test_snprintf function size at codegen: 9 bytes.
_cases:
	.byte #0x00, #0x00, #0x80, #0x3f	;  1.000000e+00
	.dw __str_4
	.dw __str_5
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!strcmp (buf, cases[i].result)"
	.db 0x00
___str_2:
	.ascii "cases/snprintf/snprintf_type_FLOAT.c"
	.db 0x00
___str_3:
	.ascii "buf[sizeof buf - 10] == 0xfe"
	.db 0x00
__str_4:
	.ascii "%f"
	.db 0x00
__str_5:
	.ascii "<NO FLOAT>"
	.db 0x00
;cases/snprintf/snprintf_type_FLOAT.c:197: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/snprintf/snprintf_type_FLOAT.c:199: __prints("Running test_snprintf\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/snprintf/snprintf_type_FLOAT.c:200: test_snprintf();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/snprintf/snprintf_type_FLOAT.c:201: }
;	genEndFunction
	jp	_test_snprintf
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running test_snprintf"
	.db 0x0a
	.db 0x00
;cases/snprintf/snprintf_type_FLOAT.c:206: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/snprintf/snprintf_type_FLOAT.c:208: return "snprintf_type_FLOAT";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/snprintf/snprintf_type_FLOAT.c:209: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "snprintf_type_FLOAT"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
