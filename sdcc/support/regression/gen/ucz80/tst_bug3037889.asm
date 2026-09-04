;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3037889
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDummy
	.globl _Bug3153956
	.globl _Bug3034976
	.globl _Bug3037889
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
;cases/./../tests/bug3037889.c:17: void Bug3037889 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Bug3037889
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Bug3037889::
;cases/./../tests/bug3037889.c:19: *((char *) 0x42e0 - 1) = 1;     /* compiler crashes */
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x42df
	ld	(hl), #0x01
;cases/./../tests/bug3037889.c:20: *((char *) 0x42e0 + 1) = 1;     /* works fine */
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xe1
	ld	(hl), #0x01
;cases/./../tests/bug3037889.c:21: *((char *) (0x42e0 - 1)) = 1;   /* works fine */
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xdf
	ld	(hl), #0x01
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3037889.c:22: }
;	genEndFunction
	ret
;	Total Bug3037889 function size at codegen: 1 bytes.
;cases/./../tests/bug3037889.c:26: void Bug3034976 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Bug3034976
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Bug3034976::
;cases/./../tests/bug3037889.c:28: while (1)
;	genLabel
00102$:
;cases/./../tests/bug3037889.c:30: *(unsigned char __data *)0 = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	ld	(hl), #0x00
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug3037889.c:32: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
; common peephole 152 removed unused ret.
;	Total Bug3034976 function size at codegen: 1 bytes.
;cases/./../tests/bug3037889.c:37: void Bug3153956 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Bug3153956
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Bug3153956::
;cases/./../tests/bug3037889.c:39: ((char volatile __xdata *)0)[1] = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
	ld	(hl), #0x00
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3037889.c:40: }
;	genEndFunction
	ret
;	Total Bug3153956 function size at codegen: 1 bytes.
;cases/./../tests/bug3037889.c:46: void testDummy (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDummy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testDummy::
;cases/./../tests/bug3037889.c:48: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testDummy function size at codegen: 1 bytes.
;cases/tst_bug3037889.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3037889.c:6: __prints("Running testDummy\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug3037889.c:7: testDummy();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3037889.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testDummy"
	.db 0x0a
	.db 0x00
;cases/tst_bug3037889.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3037889.c:15: return "bug3037889.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3037889.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug3037889.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
