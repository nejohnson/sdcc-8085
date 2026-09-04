;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug2435941
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _sleep_timer_get
	.globl ___prints
	.globl _now
	.globl _updated
	.globl _remaining
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
_remaining::
	.ds 4
_updated::
	.ds 4
_now::
	.ds 4
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
;cases/./../tests/bug2435941.c:8: uint32_t sleep_timer_get(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function sleep_timer_get
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_sleep_timer_get::
;cases/./../tests/bug2435941.c:10: return 0x12345678;
;	genRet
;fetchPairLong
	ld	de, #0x5678
;fetchPairLong
	ld	hl, #0x1234
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug2435941.c:11: }
;	genEndFunction
	ret
;	Total sleep_timer_get function size at codegen: 1 bytes.
;cases/./../tests/bug2435941.c:20: do_test (void) __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function do_test
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_do_test:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/./../tests/bug2435941.c:22: while (1)
;	genLabel
00102$:
;cases/./../tests/bug2435941.c:24: now = sleep_timer_get();
;	genCall
	call	_sleep_timer_get
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_now), de
	ld	(_now + 2), hl
;cases/./../tests/bug2435941.c:26: remaining -= (now - updated) & 0xFF;
;	genMinus
;	Shift into pair
	ld	hl, #_updated
	ld	a, (_now+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_now+1)
; common peephole 96b move inc hl before ld c, a
; common peephole 2c removed inc hl due to unused result.
	ld	c, a
; common peephole 1 removed dead load from (_now+1) into a.
; common peephole 6b removed dead sbc a, (hl)
; common peephole 1 removed dead load from a into b.
; common peephole 96b move inc hl before ld a, (_now+2)
; common peephole 2c removed inc hl due to unused result.
; common peephole 1 removed dead load from (_now+2) into a.
; common peephole 6b removed dead sbc a, (hl)
; common peephole 1 removed dead load from a into e.
; common peephole 96b move inc hl before ld a, (_now+3)
; common peephole 2c removed inc hl due to unused result.
; common peephole 1 removed dead load from (_now+3) into a.
; common peephole 6b removed dead sbc a, (hl)
;	genAnd
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x00
	ld	de, #0x0000
;	genCast
;	genMove_o size 4 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_remaining+0)
	ld	-4 (ix), a
	ld	a, (_remaining+1)
	ld	-3 (ix), a
	ld	a, (_remaining+2)
	ld	-2 (ix), a
	ld	a, (_remaining+3)
	ld	-1 (ix), a
;	genMinus
;	Shift into pair
	ld	hl, #_remaining
	ld	a, -4 (ix)
	sub	a, c
	ld	(hl), a
	ld	a, -3 (ix)
; common peephole 96b move inc hl before sbc a, b
	inc	hl
	sbc	a, b
	ld	(hl), a
	ld	a, -2 (ix)
; common peephole 96b move inc hl before sbc a, e
	inc	hl
	sbc	a, e
	ld	(hl), a
	ld	a, -1 (ix)
; common peephole 96b move inc hl before sbc a, d
	inc	hl
	sbc	a, d
	ld	(hl), a
;cases/./../tests/bug2435941.c:27: updated = now;
;	genAssign
	ld	de, #_updated
	ld	hl, #_now
	ld	bc, #4
	ldir
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug2435941.c:29: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
; common peephole 153 removed unused ret.
;	Total do_test function size at codegen: 15 bytes.
;cases/./../tests/bug2435941.c:32: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug2435941.c:34: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug2435941.c:35: }
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
	.ascii "cases/./../tests/bug2435941.c"
	.db 0x00
;cases/tst_bug2435941.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug2435941.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug2435941.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug2435941.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug2435941.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug2435941.c:15: return "bug2435941.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug2435941.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug2435941.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
