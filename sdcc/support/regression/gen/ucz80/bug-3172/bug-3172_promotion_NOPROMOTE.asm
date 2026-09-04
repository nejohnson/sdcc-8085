;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_3172_promotion_NOPROMOTE
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testPass
	.globl _receive
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
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:23: receive(const char *s, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function receive
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_receive::
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:37: va_end(ap);
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:38: }
;	genEndFunction
	ret
;	Total receive function size at codegen: 1 bytes.
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:41: testPass(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testPass
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_testPass::
;	adjustStack by -2
	push	af
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:45: unsigned char i1 = 0x5a;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:46: unsigned char i2 = 0xa5;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 157b merged offset into storage instruction.
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #0
	add	hl, sp
	ld	(hl), #0x5a
	inc	hl
	ld	(hl), #0xa5
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:51: receive(0, (unsigned char)(*p1), (unsigned char)(*p2));
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:52: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total testPass function size at codegen: 2 bytes.
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:56: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:58: __prints("Running testPass\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:59: testPass();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:60: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testPass"
	.db 0x0a
	.db 0x00
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:65: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:67: return "bug-3172_promotion_NOPROMOTE";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3172/bug-3172_promotion_NOPROMOTE.c:68: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3172_promotion_NOPROMOTE"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
