;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_dbra_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _f6
	.globl _f5
	.globl _f4
	.globl _f3
	.globl _f2
	.globl _f1
	.globl ___prints
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
;cases/./../tests/gcc-torture-execute-dbra-1.c:11: f1 (a)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f1::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/gcc-torture-execute-dbra-1.c:15: for (i = 0; i < 10; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 138 used #0x0000 from hl for load into de.
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
;	genAssign
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:17: if (--a == -1)
;	genMinus
	ld	a, 4 (ix)
	add	a, #0xff
	ld	4 (ix), a
	ld	a, 5 (ix)
	adc	a, #0xff
	ld	5 (ix), a
	ld	a, 6 (ix)
	adc	a, #0xff
	ld	6 (ix), a
	ld	a, 7 (ix)
	adc	a, #0xff
	ld	7 (ix), a
;	genCmpEq
	ld	a, 4 (ix)
	and	a, 5 (ix)
	and	a, 6 (ix)
	and	a, 7 (ix)
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00132$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-dbra-1.c:18: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:15: for (i = 0; i < 10; i++)
;	genPlus
	inc	de
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, e
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-dbra-1.c:20: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:21: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total f1 function size at codegen: 6 bytes.
;cases/./../tests/gcc-torture-execute-dbra-1.c:23: f2 (a)
;	genLabel
;	genFunction
;	---------------------------------
; Function f2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/gcc-torture-execute-dbra-1.c:27: for (i = 0; i < 10; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 138 used #0x0000 from hl for load into de.
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
;	genAssign
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:29: if (--a != -1)
;	genMinus
	ld	a, 4 (ix)
	add	a, #0xff
	ld	4 (ix), a
	ld	a, 5 (ix)
	adc	a, #0xff
	ld	5 (ix), a
	ld	a, 6 (ix)
	adc	a, #0xff
	ld	6 (ix), a
	ld	a, 7 (ix)
	adc	a, #0xff
	ld	7 (ix), a
;	genCmpEq
	ld	a, 4 (ix)
	and	a, 5 (ix)
	and	a, 6 (ix)
	and	a, 7 (ix)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00132$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-dbra-1.c:30: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:27: for (i = 0; i < 10; i++)
;	genPlus
	inc	de
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, e
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-dbra-1.c:32: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:33: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total f2 function size at codegen: 6 bytes.
;cases/./../tests/gcc-torture-execute-dbra-1.c:35: f3 (a)
;	genLabel
;	genFunction
;	---------------------------------
; Function f3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f3::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/gcc-torture-execute-dbra-1.c:39: for (i = 0; i < 10; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 138 used #0x0000 from hl for load into de.
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
;	genAssign
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:41: if (--a == 0)
;	genMinus
	ld	a, 4 (ix)
	add	a, #0xff
	ld	4 (ix), a
	ld	a, 5 (ix)
	adc	a, #0xff
	ld	5 (ix), a
	ld	a, 6 (ix)
	adc	a, #0xff
	ld	6 (ix), a
	ld	a, 7 (ix)
	adc	a, #0xff
;	genIfx
; common peephole 33 loaded a from a instead of going through 7 (ix).
	ld	7 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a, 4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
;cases/./../tests/gcc-torture-execute-dbra-1.c:42: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:39: for (i = 0; i < 10; i++)
;	genPlus
	inc	de
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, e
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-dbra-1.c:44: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:45: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total f3 function size at codegen: 6 bytes.
;cases/./../tests/gcc-torture-execute-dbra-1.c:47: f4 (a)
;	genLabel
;	genFunction
;	---------------------------------
; Function f4
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f4::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/gcc-torture-execute-dbra-1.c:51: for (i = 0; i < 10; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 138 used #0x0000 from hl for load into de.
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
;	genAssign
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:53: if (--a != 0)
;	genMinus
	ld	a, 4 (ix)
	add	a, #0xff
	ld	4 (ix), a
	ld	a, 5 (ix)
	adc	a, #0xff
	ld	5 (ix), a
	ld	a, 6 (ix)
	adc	a, #0xff
	ld	6 (ix), a
	ld	a, 7 (ix)
	adc	a, #0xff
;	genIfx
; common peephole 33 loaded a from a instead of going through 7 (ix).
	ld	7 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a, 4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;cases/./../tests/gcc-torture-execute-dbra-1.c:54: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:51: for (i = 0; i < 10; i++)
;	genPlus
	inc	de
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, e
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-dbra-1.c:56: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:57: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total f4 function size at codegen: 6 bytes.
;cases/./../tests/gcc-torture-execute-dbra-1.c:59: f5 (a)
;	genLabel
;	genFunction
;	---------------------------------
; Function f5
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f5::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/gcc-torture-execute-dbra-1.c:63: for (i = 0; i < 10; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 138 used #0x0000 from hl for load into de.
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
;	genAssign
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:65: if (++a == 0)
;	genPlus
	inc	4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00132$
	inc	5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00132$
	inc	6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00132$
	inc	7 (ix)
00132$:
;	genIfx
	ld	a, 7 (ix)
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a, 4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
;cases/./../tests/gcc-torture-execute-dbra-1.c:66: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:63: for (i = 0; i < 10; i++)
;	genPlus
	inc	de
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, e
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-dbra-1.c:68: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:69: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total f5 function size at codegen: 6 bytes.
;cases/./../tests/gcc-torture-execute-dbra-1.c:71: f6 (a)
;	genLabel
;	genFunction
;	---------------------------------
; Function f6
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f6::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/gcc-torture-execute-dbra-1.c:75: for (i = 0; i < 10; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 138 used #0x0000 from hl for load into de.
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
;	genAssign
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:77: if (++a != 0)
;	genPlus
	inc	4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00132$
	inc	5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00132$
	inc	6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00132$
	inc	7 (ix)
00132$:
;	genIfx
	ld	a, 7 (ix)
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a, 4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;cases/./../tests/gcc-torture-execute-dbra-1.c:78: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:75: for (i = 0; i < 10; i++)
;	genPlus
	inc	de
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, e
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-dbra-1.c:80: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-dbra-1.c:81: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total f6 function size at codegen: 6 bytes.
;cases/./../tests/gcc-torture-execute-dbra-1.c:85: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-dbra-1.c:108: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-dbra-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-dbra-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_gcc-torture-execute-dbra-1.c:7: testTortureExecute();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-dbra-1.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-dbra-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-dbra-1.c:15: return "gcc-torture-execute-dbra-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-dbra-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcc-torture-execute-dbra-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
