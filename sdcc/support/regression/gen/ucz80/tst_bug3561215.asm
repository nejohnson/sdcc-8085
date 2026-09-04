;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3561215
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _core_bench_state
	.globl _core_state_transition
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
;cases/./../tests/bug3561215.c:26: enum CORE_STATE core_state_transition(uint8_t **instr , uint32_t *transition_count)
;	genLabel
;	genFunction
;	---------------------------------
; Function core_state_transition
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_core_state_transition::
;cases/./../tests/bug3561215.c:28: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3561215.c:29: }
;	genEndFunction
	ret
;	Total core_state_transition function size at codegen: 1 bytes.
;cases/./../tests/bug3561215.c:32: void core_bench_state(uint32_t blksize, uint8_t *memblock, 
;	genLabel
;	genFunction
;	---------------------------------
; Function core_bench_state
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 78 bytes.
_core_bench_state::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -78
	ld	iy, #-78
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3561215.c:37: uint8_t *p=memblock;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, 4 (ix)
	ld	b, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), c
	ld	-1 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3561215.c:40: for (i=0; i<NUM_CORE_STATES; i++) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;	genLabel
00110$:
;cases/./../tests/bug3561215.c:41: final_counts[i]=track_counts[i]=0;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;	genPlus
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
	pop	de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-9 (ix), l
	ld	-8 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #32
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/bug3561215.c:40: for (i=0; i<NUM_CORE_STATES; i++) {
;	genPlus
	inc	-7 (ix)
;	genCmpLt
	ld	a, -7 (ix)
	sub	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00110$
;	skipping generated iCode
;cases/./../tests/bug3561215.c:44: while (*p!=0) {
;	genLabel
00102$:
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/./../tests/bug3561215.c:45: enum CORE_STATE fstate=core_state_transition(&p,track_counts);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #34
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #78
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_core_state_transition
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;cases/./../tests/bug3561215.c:46: final_counts[fstate]++;
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerGet
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #68
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	hl
;	genPlus
	ld	a, -14 (ix)
	add	a, #0x01
	ld	-10 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;	genPointerSet
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #70
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
;	genLabel
00104$:
;cases/./../tests/bug3561215.c:49: p=memblock;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), c
	ld	-1 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3561215.c:50: while (p < (memblock+blksize)) {
;	genPlus
	ld	a, -6 (ix)
	add	a, 4 (ix)
	ld	l, a
	ld	a, -5 (ix)
	adc	a, 5 (ix)
	ld	h, a
;	genLabel
00107$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, l
	ld	a, -1 (ix)
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00112$
;	skipping generated iCode
;cases/./../tests/bug3561215.c:51: if (*p!=',')
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x2c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00163$.
;	skipping generated iCode
;cases/./../tests/bug3561215.c:52: *p^=(uint8_t)seed1;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genXor
	xor	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genLabel
00106$:
;cases/./../tests/bug3561215.c:53: p+=step;
;	genPlus
	ld	a, -2 (ix)
	add	a, 8 (ix)
	ld	-2 (ix), a
	ld	a, -1 (ix)
	adc	a, 9 (ix)
	ld	-1 (ix), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00112$:
;cases/./../tests/bug3561215.c:55: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total core_bench_state function size at codegen: 17 bytes.
;cases/./../tests/bug3561215.c:59: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug3561215.c:61: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 9 bytes.
;cases/tst_bug3561215.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3561215.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug3561215.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3561215.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3561215.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3561215.c:15: return "bug3561215.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3561215.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug3561215.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
