;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3607
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _func
	.globl _func_2
	.globl _func_1
	.globl _func_3
	.globl ___prints
	.globl ___fail
	.globl _func_2_count
	.globl _func_1_count
	.globl _g_arg_2
	.globl _g_arg_1
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
_g_arg_1::
	.ds 2
_g_arg_2::
	.ds 1
_func_1_count::
	.ds 1
_func_2_count::
	.ds 1
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
;cases/./../tests/bug-3607.c:22: bool func_3 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function func_3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_func_3::
;cases/./../tests/bug-3607.c:24: return true;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3607.c:25: }
;	genEndFunction
	ret
;	Total func_3 function size at codegen: 1 bytes.
;cases/./../tests/bug-3607.c:30: void func_1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function func_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_func_1::
;cases/./../tests/bug-3607.c:32: ++func_1_count;
;	genPlus
	ld	hl, #_func_1_count
	inc	(hl)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3607.c:33: }
;	genEndFunction
	ret
;	Total func_1 function size at codegen: 1 bytes.
;cases/./../tests/bug-3607.c:35: void func_2 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function func_2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_func_2::
;cases/./../tests/bug-3607.c:37: ++func_2_count;
;	genPlus
	ld	hl, #_func_2_count
	inc	(hl)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3607.c:38: }
;	genEndFunction
	ret
;	Total func_2 function size at codegen: 1 bytes.
;cases/./../tests/bug-3607.c:40: void func (uint32_t test_arg)
;	genLabel
;	genFunction
;	---------------------------------
; Function func
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_func::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3607.c:42: uint16_t t = test_arg >> 16;
;	genGetWord
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;cases/./../tests/bug-3607.c:44: if (func_3 ())
;	genCall
; common peephole 26e pushed hl directly instead of going through de.
	push	hl
	call	_func_3
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;cases/./../tests/bug-3607.c:65: if (t - g_arg_1 > sel_const1)
;	genMinus
;	Shift into pair
	ld	hl, #_g_arg_1
	ld	a, e
	sub	a, (hl)
	ld	-2 (ix), a
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	sbc	a, (hl)
	ld	-1 (ix), a
;cases/./../tests/bug-3607.c:44: if (func_3 ())
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;cases/./../tests/bug-3607.c:65: if (t - g_arg_1 > sel_const1)
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_g_arg_2
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
;	genAssign
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0xffff into bc.
	ld	de, #0x1f09
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00110$:
;	genAssign
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0xfffe into bc.
	ld	de, #0x101f
;	genLabel
00111$:
;	genGetWord
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genCmpGt
	ld	a, e
	sub	a, -2 (ix)
	ld	a, d
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;cases/./../tests/bug-3607.c:66: func_1 ();
;	genCall
	call	_func_1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00106$:
;cases/./../tests/bug-3607.c:70: if (t - g_arg_1 > sel_const2)
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_g_arg_2
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;	genAssign
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0xfff0 into bc.
	ld	de, #0x101f
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00112$:
;	genAssign
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0xfff1 into bc.
	ld	de, #0x101f
;	genLabel
00113$:
;	genGetWord
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genCmpGt
	ld	a, e
	sub	a, -2 (ix)
	ld	a, d
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;cases/./../tests/bug-3607.c:71: func_2 ();
;	genCall
	call	_func_2
;	genLabel
00108$:
;cases/./../tests/bug-3607.c:73: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total func function size at codegen: 5 bytes.
;cases/./../tests/bug-3607.c:76: void testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3607.c:80: g_arg_1 = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_g_arg_1), hl
;cases/./../tests/bug-3607.c:81: g_arg_2 = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_g_arg_2), a
; common peephole 19 loaded (#_g_arg_2) from a directly instead of using hl.
;cases/./../tests/bug-3607.c:82: func (0x10200000ul);
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	ld	hl, #0x1020
;	genCall
	call	_func
;cases/./../tests/bug-3607.c:84: g_arg_1 = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_g_arg_1), hl
;cases/./../tests/bug-3607.c:85: g_arg_2 = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_g_arg_2
	ld	(hl), #0x01
;cases/./../tests/bug-3607.c:86: func (0x1F100000ul);
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	ld	hl, #0x1f10
;	genCall
	call	_func
;cases/./../tests/bug-3607.c:88: ASSERT (func_1_count == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_func_1_count)
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0058
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
;cases/./../tests/bug-3607.c:89: ASSERT (func_2_count == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_func_2_count+0)
	or	a, a
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
	ld	hl, #0x0059
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
;cases/./../tests/bug-3607.c:92: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "func_1_count == 2"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3607.c"
	.db 0x00
___str_3:
	.ascii "func_2_count == 0"
	.db 0x00
;cases/tst_bug-3607.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3607.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug-3607.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3607.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3607.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3607.c:15: return "bug-3607.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3607.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-3607.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__g_arg_1:
	.dw #0x0000
__xinit__g_arg_2:
	.db #0x00	;  0
__xinit__func_1_count:
	.db #0x00	; 0
__xinit__func_2_count:
	.db #0x00	; 0
	.area _CABS (ABS)
