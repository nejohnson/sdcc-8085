;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module structparam_type_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testParam
	.globl _g
	.globl _f
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
;cases/structparam/structparam_type_long.c:16: long f(struct s s)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_f::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/structparam/structparam_type_long.c:18: return s.a + s.b;
;	genAddrOf
	ld	hl, #8
	add	hl, sp
	ex	de, hl
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
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
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
	ld	a, -4 (ix)
	add	a, e
	ld	e, a
	ld	a, -3 (ix)
	adc	a, d
	ld	d, a
	ld	a, -2 (ix)
	adc	a, c
	ld	l, a
	ld	a, -1 (ix)
	adc	a, b
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/structparam/structparam_type_long.c:19: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total f function size at codegen: 9 bytes.
;cases/structparam/structparam_type_long.c:23: long g(long i, long j)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_g::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/structparam/structparam_type_long.c:25: struct s s = {i, j};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	de
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
	ld	bc, #0x0004
	ldir
;cases/structparam/structparam_type_long.c:26: return f(s);
;	genPointerPush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 120 removed loads by exploiting commutativity of addition.
; common peephole 130b added +7 to immediate 0
	ld	hl, #0x7
	add	hl, sp
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
	push	bc
;	genCall
	call	_f
;	adjustStack by 8
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/structparam/structparam_type_long.c:27: }
;	genEndFunction
; common peephole 133 removed redundant pop af.
; common peephole 133 removed redundant pop af.
; common peephole 133 removed redundant pop af.
; common peephole 133 removed redundant pop af.
	ld	sp,ix
	pop	ix
	ret
;	Total g function size at codegen: 9 bytes.
;cases/structparam/structparam_type_long.c:30: void testParam (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testParam
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testParam::
;cases/structparam/structparam_type_long.c:33: ASSERT (g(23, 42) == 23 + 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x2a
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0017
	ld	l, h
;	genCall
	call	_g
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x41
	or	a, d
	or	a, l
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0021
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
;cases/structparam/structparam_type_long.c:35: }
;	genEndFunction
	ret
;	Total testParam function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "g(23, 42) == 23 + 42"
	.db 0x00
___str_2:
	.ascii "cases/structparam/structparam_type_long.c"
	.db 0x00
;cases/structparam/structparam_type_long.c:39: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/structparam/structparam_type_long.c:41: __prints("Running testParam\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/structparam/structparam_type_long.c:42: testParam();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/structparam/structparam_type_long.c:43: }
;	genEndFunction
	jp	_testParam
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testParam"
	.db 0x0a
	.db 0x00
;cases/structparam/structparam_type_long.c:48: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/structparam/structparam_type_long.c:50: return "structparam_type_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/structparam/structparam_type_long.c:51: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "structparam_type_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
