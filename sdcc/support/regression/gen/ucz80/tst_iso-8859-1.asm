;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_iso_8859_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testCharconst
	.globl _testStr
	.globl _lcdWriteText
	.globl _lcdWriteData
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
_lcdWriteData_i_10000_41:
	.ds 2
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
;cases/./../tests/iso-8859-1.c:13: do_multibyte (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function do_multibyte
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_do_multibyte:
;cases/./../tests/iso-8859-1.c:15: const char *str = "ÔÂ";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/iso-8859-1.c:17: ASSERT (str[0] == '\xd4');
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (#___str_0 + 0)
;	genCmpEq
	cp	a, #0xd4
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
	ld	hl, #0x0011
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
00104$:
;cases/./../tests/iso-8859-1.c:18: ASSERT (str[1] == '\xc2');
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#___str_0 + 1)
;	genCmpEq
	cp	a, #0xc2
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0012
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/iso-8859-1.c:19: }
;	genEndFunction
	ret
;	Total do_multibyte function size at codegen: 1 bytes.
___str_0:
	.db 0xd4
	.db 0xc2
	.db 0x00
___str_1:
	.ascii "Assertion failed"
	.db 0x00
___str_2:
	.ascii "str[0] == '"
	.db 0x5c
	.ascii "xd4'"
	.db 0x00
___str_3:
	.ascii "cases/./../tests/iso-8859-1.c"
	.db 0x00
___str_4:
	.ascii "str[1] == '"
	.db 0x5c
	.ascii "xc2'"
	.db 0x00
;cases/./../tests/iso-8859-1.c:22: void lcdWriteData (unsigned char LcdData)
;	genLabel
;	genFunction
;	---------------------------------
; Function lcdWriteData
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_lcdWriteData::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/iso-8859-1.c:24: const unsigned char output[] = {'a', 0xe1, 'u', 0xf5, 0};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x61
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0xe1
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), #0x75
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0xf5
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;cases/./../tests/iso-8859-1.c:28: ASSERT (LcdData == output[i++]);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_lcdWriteData_i_10000_41)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_lcdWriteData_i_10000_41)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_lcdWriteData_i_10000_41), hl
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
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
	ld	hl, #0x001c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/./../tests/iso-8859-1.c:29: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total lcdWriteData function size at codegen: 5 bytes.
___str_5:
	.ascii "Assertion failed"
	.db 0x00
___str_6:
	.ascii "LcdData == output[i++]"
	.db 0x00
___str_7:
	.ascii "cases/./../tests/iso-8859-1.c"
	.db 0x00
;cases/./../tests/iso-8859-1.c:31: void lcdWriteText (char *pcText)
;	genLabel
;	genFunction
;	---------------------------------
; Function lcdWriteText
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_lcdWriteText::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/iso-8859-1.c:35: while (pcText[i] != '\0') {
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00107$:
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
;cases/./../tests/iso-8859-1.c:36: switch (pcText[i]) {
;	genCmpEq
	cp	a, #0xdf
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00161$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0xe4
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00162$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0xf6
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00163$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0xfc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;cases/./../tests/iso-8859-1.c:37: case 'ä' : lcdWriteData (0xE1);
;	genLabel
00101$:
;	genSend
	push	de
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xe1
;	genCall
	call	_lcdWriteData
	pop	de
;cases/./../tests/iso-8859-1.c:38: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;cases/./../tests/iso-8859-1.c:39: case 'ü' : lcdWriteData (0xF5);
;	genLabel
00102$:
;	genSend
	push	de
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xf5
;	genCall
	call	_lcdWriteData
	pop	de
;cases/./../tests/iso-8859-1.c:40: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;cases/./../tests/iso-8859-1.c:41: case 'ö' : lcdWriteData (0xEF);
;	genLabel
00103$:
;	genSend
	push	de
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xef
;	genCall
	call	_lcdWriteData
	pop	de
;cases/./../tests/iso-8859-1.c:42: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;cases/./../tests/iso-8859-1.c:43: case 'ß' : lcdWriteData (0xE2);
;	genLabel
00104$:
;	genSend
	push	de
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xe2
;	genCall
	call	_lcdWriteData
	pop	de
;cases/./../tests/iso-8859-1.c:44: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;cases/./../tests/iso-8859-1.c:45: default : lcdWriteData (pcText[i]);
;	genLabel
00105$:
;	genSend
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_lcdWriteData
	pop	de
;cases/./../tests/iso-8859-1.c:47: }
;	genLabel
00106$:
;cases/./../tests/iso-8859-1.c:48: i++;
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00110$:
;cases/./../tests/iso-8859-1.c:50: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total lcdWriteText function size at codegen: 4 bytes.
;cases/./../tests/iso-8859-1.c:53: void testStr (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testStr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testStr::
;cases/./../tests/iso-8859-1.c:56: do_multibyte ();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/iso-8859-1.c:58: }
;	genEndFunction
	jp	_do_multibyte
; common peephole 152 removed unused ret.
;	Total testStr function size at codegen: 1 bytes.
;cases/./../tests/iso-8859-1.c:60: void testCharconst (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCharconst
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testCharconst::
;cases/./../tests/iso-8859-1.c:63: lcdWriteText ("aäuü");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/iso-8859-1.c:65: }
;	genEndFunction
	jp	_lcdWriteText
; common peephole 152 removed unused ret.
;	Total testCharconst function size at codegen: 1 bytes.
___str_8:
	.ascii "a"
	.db 0xe4
	.ascii "u"
	.db 0xfc
	.db 0x00
;cases/tst_iso-8859-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_iso-8859-1.c:6: __prints("Running testStr\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___prints
;cases/tst_iso-8859-1.c:7: testStr();
;	genCall
	call	_testStr
;cases/tst_iso-8859-1.c:8: __prints("Running testCharconst\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___prints
;cases/tst_iso-8859-1.c:9: testCharconst();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_iso-8859-1.c:10: }
;	genEndFunction
	jp	_testCharconst
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_9:
	.ascii "Running testStr"
	.db 0x0a
	.db 0x00
___str_10:
	.ascii "Running testCharconst"
	.db 0x0a
	.db 0x00
;cases/tst_iso-8859-1.c:15: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_iso-8859-1.c:17: return "iso-8859-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_iso-8859-1.c:18: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_11:
	.ascii "iso-8859-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
