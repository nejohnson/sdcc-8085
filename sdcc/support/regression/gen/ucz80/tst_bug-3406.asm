;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3406
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _dummy
	.globl _testBug
	.globl b_SelectAmount
	.globl _SelectAmount
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _KeyMenuWait
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_KeyMenuWait_i_10000_23:
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
;cases/./../tests/bug-3406.c:18: uint16_t SelectAmount(uint16_t amount, uint8_t step, const char *post) __banked {
;	genLabel
;	genFunction
;	---------------------------------
; Function SelectAmount
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
	b_SelectAmount	= 0
_SelectAmount::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;	genLabel
00113$:
;cases/./../tests/bug-3406.c:24: *text = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x00
;cases/./../tests/bug-3406.c:26: uint8_t key = KeyMenuWait();
;	genCall
	call	_KeyMenuWait
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3406.c:28: switch( key ) {
;	genCmpGt
	ld	a, #0x05
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00113$
;	skipping generated iCode
;cases/./../tests/bug-3406.c:32: if ( amount < 1000 ) amount += step;
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 7 (ix)
	ld	d, 8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3406.c:28: switch( key ) {
;	genJumpTab
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x00
	ld	hl, #00149$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00149$:
	.dw	00101$
	.dw	00104$
	.dw	00108$
	.dw	00108$
	.dw	00110$
	.dw	00110$
;cases/./../tests/bug-3406.c:31: case 0:
;	genLabel
00101$:
;cases/./../tests/bug-3406.c:32: if ( amount < 1000 ) amount += step;
;	genCmpLt
	ld	a, e
	sub	a, #0xe8
	ld	a, d
	sbc	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00113$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, 9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genPlus
	add	hl, de
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	7 (ix), l
	ld	8 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3406.c:33: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;cases/./../tests/bug-3406.c:36: case 1:
;	genLabel
00104$:
;cases/./../tests/bug-3406.c:37: if ( amount > step ) amount -= step;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genCmpGt
	ld	a, 9 (ix)
; common peephole 15 loaded 9 (ix) into a directly instead of going through c.
	ld	b, #0x00
	sub	a, 7 (ix)
	ld	a, b
	sbc	a, 8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00113$
;	skipping generated iCode
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x00
;	genMinus
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	7 (ix), c
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3406.c:38: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;cases/./../tests/bug-3406.c:41: case 3:
;	genLabel
00108$:
;cases/./../tests/bug-3406.c:42: return 0; // cancel
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;cases/./../tests/bug-3406.c:45: case 5:
;	genLabel
00110$:
;cases/./../tests/bug-3406.c:46: return amount;
;	genRet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 7 (ix)
	ld	d, 8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3406.c:47: }
;	genLabel
00115$:
;cases/./../tests/bug-3406.c:49: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total SelectAmount function size at codegen: 5 bytes.
;cases/./../tests/bug-3406.c:51: void testBug(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3406.c:52: ASSERT(SelectAmount(0, 1, 0) == 0);
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
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	e, #b_SelectAmount
	ld	hl, #_SelectAmount
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	pop	af
	pop	af
	inc	sp
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
	ld	hl, #0x0034
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
;cases/./../tests/bug-3406.c:53: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 9 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "SelectAmount(0, 1, 0) == 0"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3406.c"
	.db 0x00
;cases/./../tests/bug-3406.c:55: uint8_t KeyMenuWait() {
;	genLabel
;	genFunction
;	---------------------------------
; Function KeyMenuWait
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_KeyMenuWait::
;cases/./../tests/bug-3406.c:57: return i++;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_KeyMenuWait_i_10000_23)
	ld	c, a
;	genPlus
	ld	hl, #_KeyMenuWait_i_10000_23
	inc	(hl)
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3406.c:58: }
;	genEndFunction
	ret
;	Total KeyMenuWait function size at codegen: 1 bytes.
;cases/./../tests/bug-3406.c:61: void dummy (void) __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function dummy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_dummy::
; naked function: no prologue.
;cases/./../tests/bug-3406.c:67: __endasm;
;	genInline
;	genInline
get_bank::
set_bank::
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3406.c:68: }
;	genEndFunction
; naked function: No epilogue.
;cases/tst_bug-3406.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3406.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-3406.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3406.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3406.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3406.c:15: return "bug-3406.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3406.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-3406.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
