;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module qct_0059_multistring
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl ___getSuiteName
	.globl ___runSuite
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
;cases/qct_0059-multistring.c:6: __code const char * __getSuiteName(void) { return "qct/0059-multistring"; }
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_0:
	.ascii "qct/0059-multistring"
	.db 0x00
;cases/../qct/0059-multistring.c:4: int main()
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_main_::
;cases/../qct/0059-multistring.c:8: s = "abc" "def";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/../qct/0059-multistring.c:9: if(s[0] != 'a') return 1;
;	genPointerGet
	ld	a, (#___str_1 + 0)
;	genCmpEq
	cp	a, #0x61
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00173$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;cases/../qct/0059-multistring.c:10: if(s[1] != 'b') return 2;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#___str_1 + 1)
;	genCmpEq
	cp	a, #0x62
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00174$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0002
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00104$:
;cases/../qct/0059-multistring.c:11: if(s[2] != 'c') return 3;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#___str_1 + 2)
;	genCmpEq
	cp	a, #0x63
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00175$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0003
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00106$:
;cases/../qct/0059-multistring.c:12: if(s[3] != 'd') return 4;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#___str_1 + 3)
;	genCmpEq
	cp	a, #0x64
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00176$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0004
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00108$:
;cases/../qct/0059-multistring.c:13: if(s[4] != 'e') return 5;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#___str_1 + 4)
;	genCmpEq
	cp	a, #0x65
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00177$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0005
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00110$:
;cases/../qct/0059-multistring.c:14: if(s[5] != 'f') return 6;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#___str_1 + 5)
;	genCmpEq
	cp	a, #0x66
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00178$.
;	skipping generated iCode
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0006
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00112$:
;cases/../qct/0059-multistring.c:15: if(s[6] != 0) return 7;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#___str_1 + 6)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0007
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00114$:
;cases/../qct/0059-multistring.c:17: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00115$.
;cases/../qct/0059-multistring.c:18: }
;	genEndFunction
	ret
;	Total main_ function size at codegen: 1 bytes.
___str_1:
	.ascii "abcdef"
	.db 0x00
;cases/qct_0059-multistring.c:10: void __runSuite(void) { __prints("Running main\n"); ASSERT(!main_(MAINARGS)); }
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___runSuite::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
;	genCall
	call	___prints
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_main_
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
	ld	hl, #0x000a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __runSuite function size at codegen: 1 bytes.
___str_2:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.ascii "!main_(MAINARGS)"
	.db 0x00
___str_5:
	.ascii "cases/qct_0059-multistring.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
