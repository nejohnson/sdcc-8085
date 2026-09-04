;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3480545
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _do_switch
	.globl ___prints
	.globl ___fail
	.globl _var
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
_var::
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
;cases/./../tests/bug3480545.c:9: char do_switch(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function do_switch
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_do_switch::
;cases/./../tests/bug3480545.c:11: switch( var )
;	genCmpGt
	ld	a, #0x11
	ld	iy, #_var
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00119$
;	skipping generated iCode
;	genJumpTab
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, 0 (iy)
	ld	b, #0x00
	ld	hl, #00130$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00130$:
	.dw	00101$
	.dw	00102$
	.dw	00103$
	.dw	00104$
	.dw	00105$
	.dw	00106$
	.dw	00107$
	.dw	00108$
	.dw	00109$
	.dw	00110$
	.dw	00111$
	.dw	00112$
	.dw	00113$
	.dw	00114$
	.dw	00115$
	.dw	00116$
	.dw	00117$
	.dw	00118$
;cases/./../tests/bug3480545.c:13: case 0  : return 0;
;	genLabel
00101$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:14: case 1  : return 1;
;	genLabel
00102$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:15: case 2  : return 2;
;	genLabel
00103$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:16: case 3  : return 3;
;	genLabel
00104$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:17: case 4  : return 3;
;	genLabel
00105$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:18: case 5  : return 3;
;	genLabel
00106$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:19: case 6  : return 3;
;	genLabel
00107$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:20: case 7  : return 3;
;	genLabel
00108$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:21: case 8  : return 0;
;	genLabel
00109$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:22: case 9  : return 1;
;	genLabel
00110$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:23: case 10 : return 2;
;	genLabel
00111$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:24: case 11 : return 3;
;	genLabel
00112$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:25: case 12 : return 3;
;	genLabel
00113$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:26: case 13 : return 3;
;	genLabel
00114$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:27: case 14 : return 3;
;	genLabel
00115$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:28: case 15 : return 3;
;	genLabel
00116$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:29: case 16 : return 3;
;	genLabel
00117$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:30: case 17 : return 3;
;	genLabel
00118$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/bug3480545.c:31: }
;	genLabel
00119$:
;cases/./../tests/bug3480545.c:33: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00120$.
;cases/./../tests/bug3480545.c:34: }
;	genEndFunction
	ret
;	Total do_switch function size at codegen: 1 bytes.
;cases/./../tests/bug3480545.c:37: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug3480545.c:39: ASSERT (do_switch() == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_do_switch
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x01
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3480545.c:40: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "do_switch() == 1"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug3480545.c"
	.db 0x00
;cases/tst_bug3480545.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3480545.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug3480545.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3480545.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3480545.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3480545.c:15: return "bug3480545.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3480545.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug3480545.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__var:
	.db #0x01	; 1
	.area _CABS (ABS)
