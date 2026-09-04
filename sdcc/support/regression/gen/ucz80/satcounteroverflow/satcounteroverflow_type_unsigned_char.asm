;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module satcounteroverflow_type_unsigned_char
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testSat
	.globl _satdec
	.globl _satinc
	.globl ___prints
	.globl ___fail
	.globl _cnt
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
_cnt::
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
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:10: void satinc(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function satinc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_satinc::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:12: cnt++;
;	genPlus
	ld	hl, #_cnt
	inc	(hl)
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:13: if (!cnt)
;	genIfx
	ld	a, (_cnt+0)
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:14: cnt--;
;	genMinus
	or	a, a
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 0a removed redundant load from a into a.
; common peephole 121a replaced constant #0x00 by a (which has just been tested to be #0x00).
; common peephole 155c turned add into dec.
	dec	a
	ld	(hl), a
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:15: }
;	genEndFunction
	ret
;	Total satinc function size at codegen: 1 bytes.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:17: void satdec(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function satdec
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_satdec::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:19: cnt--;
;	genMinus
;	Shift into pair
	ld	hl, #_cnt
	dec	(hl)
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:20: if (cnt == (unsigned char)-1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt)
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
;	skipping generated iCode
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:21: cnt++;
;	genPlus
	ld	hl, #_cnt
	inc	(hl)
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:22: }
;	genEndFunction
	ret
;	Total satdec function size at codegen: 1 bytes.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:24: void testSat(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSat
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testSat::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:26: cnt = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_cnt), a
; common peephole 19 loaded (#_cnt) from a directly instead of using hl.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:27: satinc ();
;	genCall
	call	_satinc
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:28: ASSERT (cnt == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
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
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:29: satdec ();
;	genCall
	call	_satdec
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:30: satdec ();
;	genCall
	call	_satdec
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:31: ASSERT (cnt == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_cnt+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001f
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
00106$:
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:33: cnt = -2;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_cnt
	ld	(hl), #0xfe
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:34: satinc ();
;	genCall
	call	_satinc
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:35: ASSERT (cnt == (unsigned char)-1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
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
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:36: satinc ();
;	genCall
	call	_satinc
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:37: ASSERT (cnt == (unsigned char)-1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt)
	inc	a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0025
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:38: }
;	genEndFunction
	ret
;	Total testSat function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "cnt == 1"
	.db 0x00
___str_2:
	.ascii "cases/satcounteroverflow/satcounteroverflow_type_unsigned_ch"
	.ascii "ar.c"
	.db 0x00
___str_3:
	.ascii "cnt == 0"
	.db 0x00
___str_4:
	.ascii "cnt == (unsigned char)-1"
	.db 0x00
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:42: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:44: __prints("Running testSat\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:45: testSat();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:46: }
;	genEndFunction
	jp	_testSat
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testSat"
	.db 0x0a
	.db 0x00
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:51: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:53: return "satcounteroverflow_type_unsigned_char";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_char.c:54: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "satcounteroverflow_type_unsigned_char"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
