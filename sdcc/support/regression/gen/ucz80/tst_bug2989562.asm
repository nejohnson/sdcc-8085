;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug2989562
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _mix_columns
	.globl _mult
	.globl _average
	.globl ___prints
	.globl _MIXCON
	.globl _sample_count
	.globl _buf
	.globl _str
	.globl _adc_samples
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
_adc_samples::
	.ds 16
_str::
	.ds 4
_buf::
	.ds 20
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_sample_count::
	.ds 1
_MIXCON::
	.ds 16
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
;cases/./../tests/bug2989562.c:17: unsigned int average(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function average
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_average::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug2989562.c:22: if (!sample_count) return 0;    // Avoid a divide by zero
;	genIfx
	ld	a, (_sample_count+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00102$:
;cases/./../tests/bug2989562.c:23: index = sample_count;           // Copy the size for a loop counter
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_sample_count)
	ld	l, a
;cases/./../tests/bug2989562.c:24: sum = sample_count / 2;         // Add half the size for averaging
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_sample_count+0)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genRightShift
;fetchPairLong
	ld	e, a
	sra	d
	rr	e
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	rlca
	sbc	a, a
	ld	c, a
	ld	b, a
;cases/./../tests/bug2989562.c:25: do {
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00103$:
;cases/./../tests/bug2989562.c:26: --index;
;	genMinus
	dec	-1 (ix)
;cases/./../tests/bug2989562.c:27: sum += adc_samples[index];  // Accumulate a sum of elements
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
	push	de
;fetchPairLong
	ld	de, #_adc_samples
	add	hl, de
	pop	de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-5 (ix), a
	ld	-4 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
;	genPlus
	ld	a, -5 (ix)
	add	a, e
	ld	e, a
	ld	a, -4 (ix)
	adc	a, d
	ld	d, a
	ld	a, #0x00
	adc	a, c
	ld	c, a
	ld	a, #0x00
	adc	a, b
	ld	b, a
;cases/./../tests/bug2989562.c:28: } while (index & 0x07);
;	genAnd
	ld	a, -1 (ix)
	and	a, #0x07
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00137$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00138$.
;	skipping generated iCode
;cases/./../tests/bug2989562.c:30: return sum/sample_count;        // Return sum divided by number-of-elements
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_sample_count)
	ld	l, a
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
	ld	iy, #0x0000
;	genIpush
	push	iy
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	__divulong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00106$:
;cases/./../tests/bug2989562.c:31: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total average function size at codegen: 8 bytes.
;cases/./../tests/bug2989562.c:35: unsigned char mult(unsigned char x, unsigned char pol)
;	genLabel
;	genFunction
;	---------------------------------
; Function mult
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_mult::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, l
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug2989562.c:37: return x * pol;
;	genMult
	ld	h, a
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00103$:
	add	hl, hl
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
	add	hl, de
00104$:
	djnz	00103$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug2989562.c:38: }
;	genEndFunction
	ret
;	Total mult function size at codegen: 1 bytes.
;cases/./../tests/bug2989562.c:51: void mix_columns(unsigned char *dbuf)
;	genLabel
;	genFunction
;	---------------------------------
; Function mix_columns
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_mix_columns::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	push	af
	push	af
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug2989562.c:55: byte= 0;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/bug2989562.c:57: for (col=0; col<4; col++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00105$:
;cases/./../tests/bug2989562.c:59: mixi= 0;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x00
;cases/./../tests/bug2989562.c:61: for (i=0; i<4; i++)
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genLabel
00103$:
;cases/./../tests/bug2989562.c:63: dbuf[byte]= mult(MIXCON[mixi+3], str[3]);
;	genPlus
	ld	a, e
	add	a, c
	ld	-5 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-4 (ix), a
;	genPointerGet
;	_moveFrom_tpair_()
; common peephole 18 loaded 0 into a directly instead of using hl.
	ld	a, (#(_str + 3) + 0)
	ld	-3 (ix), a
;	genCast
;	(locations are the same)
;	genPlus
	ld	a, -2 (ix)
	inc	a
	inc	a
	inc	a
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genPlus
	ld	a, l
	add	a, #<(_MIXCON)
	ld	l, a
	ld	a, h
	adc	a, #>(_MIXCON)
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genSend
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_mult
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug2989562.c:64: byte++;
;	genPlus
	inc	c
;cases/./../tests/bug2989562.c:65: mixi= mixi+4;
;	genPlus
	inc	-2 (ix)
	inc	-2 (ix)
	inc	-2 (ix)
	inc	-2 (ix)
;cases/./../tests/bug2989562.c:61: for (i=0; i<4; i++)
;	genPlus
	inc	b
;	genCmpLt
	ld	a, b
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00103$
;	skipping generated iCode
;cases/./../tests/bug2989562.c:57: for (col=0; col<4; col++)
;	genAssign
;	(locations are the same)
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00105$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug2989562.c:68: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mix_columns function size at codegen: 8 bytes.
;cases/./../tests/bug2989562.c:73: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug2989562.c:76: mix_columns(buf);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_buf
;	genCall
	call	_mix_columns
;cases/./../tests/bug2989562.c:77: average();
;	genCall
	call	_average
;cases/./../tests/bug2989562.c:79: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug2989562.c:80: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug2989562.c"
	.db 0x00
;cases/tst_bug2989562.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug2989562.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug2989562.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug2989562.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug2989562.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug2989562.c:15: return "bug2989562.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug2989562.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug2989562.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__sample_count:
	.db #0x08	; 8
__xinit__MIXCON:
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.area _CABS (ABS)
