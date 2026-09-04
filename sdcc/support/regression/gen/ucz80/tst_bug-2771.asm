;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2771
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl ___prints
	.globl _port
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
_port::
	.ds 2
_cpu_id:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_cpu_cache:
	.ds 2
_cpu_bugs:
	.ds 2
_z80_nmos:
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
;cases/./../tests/bug-2771.c:16: static void cpu_ident(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function cpu_ident
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_cpu_ident:
;cases/./../tests/bug-2771.c:21: __endasm;
;	genInline
;	genInline
set_id:
	ld (_cpu_id),a
;cases/./../tests/bug-2771.c:23: switch(cpu_id) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cpu_id)
	sub	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;cases/./../tests/bug-2771.c:25: cpu_cache = 256;
;	genAssign
;fetchPairLong
	ld	hl, #0x0100
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_cpu_cache), hl
;cases/./../tests/bug-2771.c:27: }
;	genLabel
00102$:
;cases/./../tests/bug-2771.c:28: if (z80_nmos == 1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_z80_nmos)
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00126$.
;	skipping generated iCode
;cases/./../tests/bug-2771.c:29: cpu_bugs = "iff";
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_cpu_bugs), hl
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/bug-2771.c:30: }
;	genEndFunction
	ret
;	Total cpu_ident function size at codegen: 1 bytes.
___str_0:
	.ascii "iff"
	.db 0x00
;cases/./../tests/bug-2771.c:33: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2771.c:35: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-2771.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2771.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
;cases/tst_bug-2771.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2771.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_1:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2771.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2771.c:15: return "bug-2771.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2771.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_2:
	.ascii "bug-2771.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
___str_3:
	.db 0x00
	.area _INITIALIZER
__xinit__cpu_cache:
	.dw #0x0000
__xinit__cpu_bugs:
	.dw ___str_3
__xinit__z80_nmos:
	.db #0xff	; -1
	.area _CABS (ABS)
