;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_467035
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testForMerge
	.globl _plot_point
	.globl _line
	.globl _color
	.globl _getpix
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
_plot_point_ea_10000_27:
	.ds 1
_plot_point_eb_10000_27:
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
;cases/./../tests/bug-467035.c:9: getpix(UBYTE x, UBYTE y)
;	genLabel
;	genFunction
;	---------------------------------
; Function getpix
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_getpix::
;cases/./../tests/bug-467035.c:14: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-467035.c:15: }
;	genEndFunction
	ret
;	Total getpix function size at codegen: 1 bytes.
;cases/./../tests/bug-467035.c:18: color(UBYTE a, UBYTE b, UBYTE c)
;	genLabel
;	genFunction
;	---------------------------------
; Function color
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_color::
;cases/./../tests/bug-467035.c:20: UNUSED(a & b & c);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-467035.c:21: }
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total color function size at codegen: 3 bytes.
;cases/./../tests/bug-467035.c:24: line(UBYTE a, UBYTE b, UBYTE c, UBYTE d)
;	genLabel
;	genFunction
;	---------------------------------
; Function line
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_line::
;cases/./../tests/bug-467035.c:26: UNUSED(a & b & c & d);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-467035.c:27: }
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total line function size at codegen: 3 bytes.
;cases/./../tests/bug-467035.c:30: plot_point(UBYTE a, UBYTE b)
;	genLabel
;	genFunction
;	---------------------------------
; Function plot_point
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_plot_point::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-467035.c:34: ASSERT(b == eb);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_plot_point_eb_10000_27)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0022
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
	pop	bc
;	genLabel
00106$:
;cases/./../tests/bug-467035.c:35: ASSERT(a == ea);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_plot_point_ea_10000_27)
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0023
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
00108$:
;cases/./../tests/bug-467035.c:37: ea++;
;	genPlus
	ld	hl, #_plot_point_ea_10000_27
	inc	(hl)
;cases/./../tests/bug-467035.c:38: if (ea > 12) {
;	genCmpGt
	ld	a, #0x0c
	ld	iy, #_plot_point_ea_10000_27
	sub	a, 0 (iy)
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/bug-467035.c:39: ea = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/bug-467035.c:40: eb++;
;	genPlus
	ld	hl, #_plot_point_eb_10000_27
	inc	(hl)
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/bug-467035.c:43: }
;	genEndFunction
	ret
;	Total plot_point function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "b == eb"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-467035.c"
	.db 0x00
___str_3:
	.ascii "a == ea"
	.db 0x00
;cases/./../tests/bug-467035.c:46: testForMerge(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testForMerge
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testForMerge::
;cases/./../tests/bug-467035.c:50: for (b=0; b<=10U; b++) {
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x00
;cases/./../tests/bug-467035.c:51: for (a=0; a<=12U; a++) {
;	genLabel
00112$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLabel
00103$:
;cases/./../tests/bug-467035.c:53: plot_point(a,b);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_plot_point
	pop	hl
;cases/./../tests/bug-467035.c:51: for (a=0; a<=12U; a++) {
;	genPlus
	inc	h
;	genCmpGt
	ld	a, #0x0c
	sub	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00103$
;	skipping generated iCode
;cases/./../tests/bug-467035.c:50: for (b=0; b<=10U; b++) {
;	genPlus
	inc	l
;	genCmpGt
	ld	a, #0x0a
	sub	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00112$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug-467035.c:57: }
;	genEndFunction
	ret
;	Total testForMerge function size at codegen: 1 bytes.
;cases/tst_bug-467035.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-467035.c:6: __prints("Running testForMerge\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug-467035.c:7: testForMerge();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-467035.c:8: }
;	genEndFunction
	jp	_testForMerge
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testForMerge"
	.db 0x0a
	.db 0x00
;cases/tst_bug-467035.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-467035.c:15: return "bug-467035.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-467035.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-467035.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
