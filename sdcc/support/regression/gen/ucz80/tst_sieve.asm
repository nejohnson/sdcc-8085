;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_sieve
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testSieve
	.globl ___prints
	.globl ___fail
	.globl _flags
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
_flags::
	.ds 8191
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
;cases/./../tests/sieve.c:17: void testSieve (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function testSieve
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_testSieve::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;cases/./../tests/sieve.c:20: for (iter = 1; iter <= 10; iter ++) {
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x01
;cases/./../tests/sieve.c:22: for (i = 0; i <= size; i++)
;	genLabel
00129$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00109$:
;cases/./../tests/sieve.c:23: flags[i] = true; 
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_flags
	add	hl, bc
;	genPointerSet
	ld	(hl), #0x01
;cases/./../tests/sieve.c:22: for (i = 0; i <= size; i++)
;	genPlus
	inc	bc
;	genCmpGt
	ld	a, #0xfe
	cp	a, c
	ld	a, #0x1f
	sbc	a, b
	jp	po, 00202$
	xor	a, #0x80
00202$:
	jp	p, 00109$
;	skipping generated iCode
;cases/./../tests/sieve.c:24: for (i = 0; i <= size; i++) { 
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
; common peephole 174a reused value still in bc.
	ld	d, b
	ld	e, c
;	genLabel
00111$:
;cases/./../tests/sieve.c:25: if (flags[i]) {
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_flags
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;cases/./../tests/sieve.c:26: prime = i + i + 3; 
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/sieve.c:27: k = i + prime; 
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;cases/./../tests/sieve.c:28: while (k <= size) { 
;	genLabel
00102$:
;	genCmpGt
	ld	a, #0xfe
	cp	a, l
	ld	a, #0x1f
	sbc	a, h
	jp	po, 00203$
	xor	a, #0x80
00203$:
	jp	m, 00104$
;	skipping generated iCode
;cases/./../tests/sieve.c:29: flags[k] = false; 
;	genPlus
	ld	a, #<(_flags)
	add	a, l
	ld	-3 (ix), a
	ld	a, #>(_flags)
	adc	a, h
	ld	-2 (ix), a
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0x00
	pop	hl
;cases/./../tests/sieve.c:30: k += prime; 
;	genPlus
	ld	a, -5 (ix)
	add	a, l
	ld	l, a
	ld	a, -4 (ix)
	adc	a, h
	ld	h, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
;	genLabel
00104$:
;cases/./../tests/sieve.c:32: count = count + 1;
;	genPlus
	inc	bc
;	genLabel
00112$:
;cases/./../tests/sieve.c:24: for (i = 0; i <= size; i++) { 
;	genPlus
	inc	de
;	genCmpGt
	ld	a, #0xfe
	cp	a, e
	ld	a, #0x1f
	sbc	a, d
	jp	po, 00204$
	xor	a, #0x80
00204$:
	jp	p, 00111$
;	skipping generated iCode
;cases/./../tests/sieve.c:20: for (iter = 1; iter <= 10; iter ++) {
;	genPlus
	inc	-1 (ix)
;	genCmpGt
	ld	a, #0x0a
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00129$
;	skipping generated iCode
;cases/./../tests/sieve.c:36: ASSERT (count == 1899);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x6b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00205$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x07
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00115$
; common peephole 81 removed jp by using inverse jump logic
00205$:
;	skipping generated iCode
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
00115$:
;cases/./../tests/sieve.c:38: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testSieve function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "count == 1899"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/sieve.c"
	.db 0x00
;cases/tst_sieve.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_sieve.c:6: __prints("Running testSieve\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_sieve.c:7: testSieve();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_sieve.c:8: }
;	genEndFunction
	jp	_testSieve
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testSieve"
	.db 0x0a
	.db 0x00
;cases/tst_sieve.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_sieve.c:15: return "sieve.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_sieve.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "sieve.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
