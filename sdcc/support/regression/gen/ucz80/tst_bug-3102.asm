;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3102
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
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
_Flag:
	.ds 10
_Object:
	.ds 10
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
;cases/./../tests/bug-3102.c:17: static void Message(unsigned char m)
;	genLabel
;	genFunction
;	---------------------------------
; Function Message
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Message:
;cases/./../tests/bug-3102.c:19: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total Message function size at codegen: 1 bytes.
;cases/./../tests/bug-3102.c:21: static void DropItem(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function DropItem
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_DropItem:
;cases/./../tests/bug-3102.c:23: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total DropItem function size at codegen: 1 bytes.
;cases/./../tests/bug-3102.c:25: static void Put(unsigned char obj, unsigned char loc)
;	genLabel
;	genFunction
;	---------------------------------
; Function Put
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Put:
;cases/./../tests/bug-3102.c:27: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total Put function size at codegen: 1 bytes.
;cases/./../tests/bug-3102.c:29: static void Wear(unsigned char obj)
;	genLabel
;	genFunction
;	---------------------------------
; Function Wear
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_Wear:
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3102.c:31: if (Object[obj] == WORN) {
;	skipping iCode since result will be rematerialized
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9 loaded l from a directly instead of going through c.
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_Object
	add	hl, de
;	genPointerGet
	ld	c, (hl)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_Flag + 3)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00105$ directly instead of via 00124$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;	skipping generated iCode
;cases/./../tests/bug-3102.c:33: return;
;	genRet
; common peephole 87b removed unreachable jump to 00105$
;	genLabel
; common peephole 85a eliminated jump.
; common peephole 159 removed unused label 00102$.
;cases/./../tests/bug-3102.c:35: if (Object[obj] != CARRIED) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_Flag + 2)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
;	skipping generated iCode
;cases/./../tests/bug-3102.c:37: return;
;	genRet
;cases/./../tests/bug-3102.c:40: Put(obj, WORN);
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/bug-3102.c:41: }
;	genEndFunction
	ret
;	Total Wear function size at codegen: 1 bytes.
;cases/./../tests/bug-3102.c:44: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3102.c:46: Wear(0);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3102.c:47: }
;	genEndFunction
	jp	_Wear
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-3102.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3102.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-3102.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3102.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3102.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3102.c:15: return "bug-3102.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3102.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3102.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
