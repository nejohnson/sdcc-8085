;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module funcptrcmp_type_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testFuncPtrCmp
	.globl _g2
	.globl _f2
	.globl _g1
	.globl _f1
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
;cases/funcptrcmp/funcptrcmp_type_long.c:14: long f1(long i)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f1::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/funcptrcmp/funcptrcmp_type_long.c:16: return i + 1;
;	genPlus
	inc	e
	ret	nz
; common peephole 161 replaced jump by return.
	inc	d
	ret	nz
; common peephole 161 replaced jump by return.
	inc	hl
; common peephole 159 removed unused label 00103$.
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/funcptrcmp/funcptrcmp_type_long.c:17: }
;	genEndFunction
	ret
;	Total f1 function size at codegen: 1 bytes.
;cases/funcptrcmp/funcptrcmp_type_long.c:19: long g1(long i)
;	genLabel
;	genFunction
;	---------------------------------
; Function g1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_g1::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/funcptrcmp/funcptrcmp_type_long.c:21: return i + 1;
;	genPlus
	inc	e
	ret	nz
; common peephole 161 replaced jump by return.
	inc	d
	ret	nz
; common peephole 161 replaced jump by return.
	inc	hl
; common peephole 159 removed unused label 00103$.
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/funcptrcmp/funcptrcmp_type_long.c:22: }
;	genEndFunction
	ret
;	Total g1 function size at codegen: 1 bytes.
;cases/funcptrcmp/funcptrcmp_type_long.c:25: long f2(long i, long j)
;	genLabel
;	genFunction
;	---------------------------------
; Function f2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_f2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/funcptrcmp/funcptrcmp_type_long.c:27: return i * 5 - j * 3;
;	genIpush
	push	hl
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0005
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0003
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	ld	a, -4 (ix)
	sub	a, e
	ld	e, a
	ld	a, -3 (ix)
	sbc	a, d
	ld	d, a
	ld	a, -2 (ix)
	sbc	a, l
	ld	l, a
	ld	a, -1 (ix)
	sbc	a, h
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/funcptrcmp/funcptrcmp_type_long.c:28: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total f2 function size at codegen: 5 bytes.
;cases/funcptrcmp/funcptrcmp_type_long.c:30: long g2(long i, long j)
;	genLabel
;	genFunction
;	---------------------------------
; Function g2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_g2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/funcptrcmp/funcptrcmp_type_long.c:32: return i * 5 - j * 3;
;	genIpush
	push	hl
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0005
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0003
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	ld	a, -4 (ix)
	sub	a, e
	ld	e, a
	ld	a, -3 (ix)
	sbc	a, d
	ld	d, a
	ld	a, -2 (ix)
	sbc	a, l
	ld	l, a
	ld	a, -1 (ix)
	sbc	a, h
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/funcptrcmp/funcptrcmp_type_long.c:33: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total g2 function size at codegen: 5 bytes.
;cases/funcptrcmp/funcptrcmp_type_long.c:36: testFuncPtrCmp(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFuncPtrCmp
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testFuncPtrCmp::
;cases/funcptrcmp/funcptrcmp_type_long.c:39: ASSERT (&f1 != &g1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #<(_f1)
	sub	a, #<(_g1)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00123$.
;	genMove_o size 1 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #>(_f1)
	sub	a, #>(_g1)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0027
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
;cases/funcptrcmp/funcptrcmp_type_long.c:40: ASSERT (&f2 != &g2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #<(_f2)
	sub	a, #<(_g2)
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00101$ directly instead of via 00125$.
;	genMove_o size 1 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #>(_f2)
	sub	a, #>(_g2)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00126$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0028
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
; common peephole 159 removed unused label 00101$.
;cases/funcptrcmp/funcptrcmp_type_long.c:42: }
;	genEndFunction
	ret
;	Total testFuncPtrCmp function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "&f1 != &g1"
	.db 0x00
___str_2:
	.ascii "cases/funcptrcmp/funcptrcmp_type_long.c"
	.db 0x00
___str_3:
	.ascii "&f2 != &g2"
	.db 0x00
;cases/funcptrcmp/funcptrcmp_type_long.c:46: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/funcptrcmp/funcptrcmp_type_long.c:48: __prints("Running testFuncPtrCmp\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/funcptrcmp/funcptrcmp_type_long.c:49: testFuncPtrCmp();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/funcptrcmp/funcptrcmp_type_long.c:50: }
;	genEndFunction
	jp	_testFuncPtrCmp
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testFuncPtrCmp"
	.db 0x0a
	.db 0x00
;cases/funcptrcmp/funcptrcmp_type_long.c:55: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/funcptrcmp/funcptrcmp_type_long.c:57: return "funcptrcmp_type_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/funcptrcmp/funcptrcmp_type_long.c:58: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "funcptrcmp_type_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
