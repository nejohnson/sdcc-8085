;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bitwise8reg
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _test8
	.globl _or8
	.globl _and8
	.globl ___prints
	.globl ___fail
	.globl _c3
	.globl _c2
	.globl _c1
	.globl _c0
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
_c0::
	.ds 1
_c1::
	.ds 1
_c2::
	.ds 1
_c3::
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
;cases/./../tests/bitwise8reg.c:10: unsigned char and8(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function and8
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_and8::
;cases/./../tests/bitwise8reg.c:14: t0 = c0 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c0)
;	genPlus
	ld	c, a
	inc	c
;cases/./../tests/bitwise8reg.c:15: t1 = c1 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c1)
;	genPlus
	ld	l, a
	inc	l
;cases/./../tests/bitwise8reg.c:16: t2 = c2 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c2+0)
;	genPlus
	ld	b, a
	inc	b
;cases/./../tests/bitwise8reg.c:17: t3 = c3 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c3+0)
;	genPlus
	ld	e, a
	inc	e
;cases/./../tests/bitwise8reg.c:19: t4 = t0 & t1;
;	genAnd
	ld	a, c
	and	a, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bitwise8reg.c:20: t5 = t2 & t3;
;	genAnd
	ld	a, b
	and	a, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bitwise8reg.c:22: return(t4 + t5);
;	genPlus
	add	a, c
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bitwise8reg.c:23: }
;	genEndFunction
	ret
;	Total and8 function size at codegen: 1 bytes.
;cases/./../tests/bitwise8reg.c:25: unsigned char or8(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function or8
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_or8::
;cases/./../tests/bitwise8reg.c:29: t0 = c0 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c0)
;	genPlus
	ld	c, a
	inc	c
;cases/./../tests/bitwise8reg.c:30: t1 = c1 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c1)
;	genPlus
	ld	l, a
	inc	l
;cases/./../tests/bitwise8reg.c:31: t2 = c2 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c2+0)
;	genPlus
	ld	b, a
	inc	b
;cases/./../tests/bitwise8reg.c:32: t3 = c3 + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c3+0)
;	genPlus
	ld	e, a
	inc	e
;cases/./../tests/bitwise8reg.c:34: t4 = t0 | t1;
;	genOr
	ld	a, c
	or	a, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bitwise8reg.c:35: t5 = t2 | t3;
;	genOr
	ld	a, b
	or	a, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bitwise8reg.c:37: return(t4 + t5);
;	genPlus
	add	a, c
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bitwise8reg.c:38: }
;	genEndFunction
	ret
;	Total or8 function size at codegen: 1 bytes.
;cases/./../tests/bitwise8reg.c:41: test8(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test8
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test8::
;cases/./../tests/bitwise8reg.c:43: c0 = 2;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_c0
	ld	(hl), #0x02
;cases/./../tests/bitwise8reg.c:44: c1 = 2;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_c1
	ld	(hl), #0x02
;cases/./../tests/bitwise8reg.c:45: c2 = 4;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_c2
	ld	(hl), #0x04
;cases/./../tests/bitwise8reg.c:46: c3 = 4;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_c3
	ld	(hl), #0x04
;cases/./../tests/bitwise8reg.c:48: ASSERT(and8() == 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_and8
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x08
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
	ld	hl, #0x0030
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
;cases/./../tests/bitwise8reg.c:49: ASSERT(or8() == 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_or8
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x08
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
	ld	hl, #0x0031
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
;cases/./../tests/bitwise8reg.c:50: }
;	genEndFunction
	ret
;	Total test8 function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "and8() == 8"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bitwise8reg.c"
	.db 0x00
___str_3:
	.ascii "or8() == 8"
	.db 0x00
;cases/tst_bitwise8reg.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bitwise8reg.c:6: __prints("Running test8\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bitwise8reg.c:7: test8();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bitwise8reg.c:8: }
;	genEndFunction
	jp	_test8
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running test8"
	.db 0x0a
	.db 0x00
;cases/tst_bitwise8reg.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bitwise8reg.c:15: return "bitwise8reg.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bitwise8reg.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bitwise8reg.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
