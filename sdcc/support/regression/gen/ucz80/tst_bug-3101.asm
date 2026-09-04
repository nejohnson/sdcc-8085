;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3101
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _dizzy_catches_firefly
	.globl _find_firefly
	.globl _my_puts
	.globl _strcmp
	.globl ___prints
	.globl ___fail
	.globl ___temp_m
	.globl ___temp_l
	.globl ___temp_k
	.globl ___temp_j
	.globl ___temp_i
	.globl _fly_ptr
	.globl _flies
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
_flies::
	.ds 12
_fly_ptr::
	.ds 2
___temp_i::
	.ds 1
___temp_j::
	.ds 1
___temp_k::
	.ds 1
___temp_l::
	.ds 1
___temp_m::
	.ds 1
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
;cases/./../tests/bug-3101.c:23: int my_puts(const char *s)
;	genLabel
;	genFunction
;	---------------------------------
; Function my_puts
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_my_puts::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3101.c:25: ASSERT (!strcmp(s, "ok"));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
	ret	z
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0019
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3101.c:26: }
;	genEndFunction
	ret
;	Total my_puts function size at codegen: 1 bytes.
___str_0:
	.ascii "ok"
	.db 0x00
___str_1:
	.ascii "Assertion failed"
	.db 0x00
___str_2:
	.ascii "!strcmp(s, "
	.db 0x22
	.ascii "ok"
	.db 0x22
	.ascii ")"
	.db 0x00
___str_3:
	.ascii "cases/./../tests/bug-3101.c"
	.db 0x00
;cases/./../tests/bug-3101.c:28: fly_coord_t * find_firefly(UBYTE tile_x, UBYTE tile_y) {
;	genLabel
;	genFunction
;	---------------------------------
; Function find_firefly
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_find_firefly::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3101.c:30: for (__temp_i = 0; __temp_i < 3; __temp_i++) {
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#___temp_i), a
; common peephole 19 loaded (#___temp_i) from a directly instead of using hl.
;	skipping iCode since result will be rematerialized
;	genLabel
00107$:
;cases/./../tests/bug-3101.c:31: fly_ptr = &flies[__temp_i];
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (___temp_i)
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_flies
	add	hl, de
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3101.c:33: ff_tile_x = fly_ptr->x >> 3, ff_tile_y = fly_ptr->y >> 3;        
;	genPointerGet
;fetchPairLong
; common peephole 9b reused value still in hl.
	ld	(_fly_ptr), hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_fly_ptr)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, e
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3101.c:35: if ((ff_tile_x >= tile_x) && (ff_tile_x <= tile_x + 2) &&
;	genCmpLt
	cp	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genPlus
	inc	hl
	inc	hl
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpGt
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;cases/./../tests/bug-3101.c:36: (ff_tile_y >= tile_y) && (ff_tile_y <= tile_y + 1)) return fly_ptr;
;	genCmpLt
	ld	a, b
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genPlus
	inc	hl
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpGt
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_fly_ptr)
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00108$:
;cases/./../tests/bug-3101.c:30: for (__temp_i = 0; __temp_i < 3; __temp_i++) {
;	genPlus
	ld	hl, #___temp_i
	inc	(hl)
;	genCmpLt
	ld	a, (___temp_i+0)
	sub	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00107$
;	skipping generated iCode
;cases/./../tests/bug-3101.c:38: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00109$:
;cases/./../tests/bug-3101.c:39: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total find_firefly function size at codegen: 4 bytes.
;cases/./../tests/bug-3101.c:41: UBYTE dizzy_catches_firefly(UBYTE tile_x, UBYTE tile_y, UBYTE id) {
;	genLabel
;	genFunction
;	---------------------------------
; Function dizzy_catches_firefly
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_dizzy_catches_firefly::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3101.c:44: temp_fly = find_firefly(tile_x, tile_y);
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_find_firefly
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3101.c:45: if (temp_fly) my_puts("ok"); else my_puts("fail");
;	genIfx
; common peephole 9 loaded a from d directly instead of going through b.
	ld	a, d
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	_my_puts
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	_my_puts
;	genLabel
00103$:
;cases/./../tests/bug-3101.c:46: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug-3101.c:47: }
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total dizzy_catches_firefly function size at codegen: 3 bytes.
___str_4:
	.ascii "ok"
	.db 0x00
___str_5:
	.ascii "fail"
	.db 0x00
;cases/./../tests/bug-3101.c:51: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3101.c:53: flies[0].x=7*8;    flies[0].y=16*8+5;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0038
	ld	(_flies), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x85
	ld	((_flies + 2)), hl
;cases/./../tests/bug-3101.c:54: flies[1].x=11*8+2; flies[1].y=14*8+3;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x5a
	ld	((_flies + 4)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x73
	ld	((_flies + 6)), hl
;cases/./../tests/bug-3101.c:55: flies[2].x=18*8;   flies[2].y=5*8+1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x90
	ld	((_flies + 8)), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x29
	ld	((_flies + 10)), hl
;cases/./../tests/bug-3101.c:56: dizzy_catches_firefly(10, 14, 0);
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x0e
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0a
;	genCall
	call	_dizzy_catches_firefly
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3101.c:57: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-3101.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3101.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_bug-3101.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3101.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3101.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3101.c:15: return "bug-3101.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3101.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "bug-3101.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
