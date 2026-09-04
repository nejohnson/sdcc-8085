;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module satcounteroverflow_type_unsigned_long
	
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
	.ds 4
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
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:10: void satinc(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function satinc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_satinc::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:12: cnt++;
;	genPlus
	ld	iy, #_cnt
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
	inc	3 (iy)
00113$:
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:13: if (!cnt)
;	genIfx
	ld	a, (_cnt+3)
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:14: cnt--;
;	genMinus
;	Shift into pair
	ld	hl, #_cnt
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	add	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, #0x00
	inc	hl
	ld	a, #0x00
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, #0x00
	inc	hl
	ld	a, #0x00
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, #0x00
	inc	hl
	ld	a, #0x00
	adc	a, #0xff
	ld	(hl), a
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:15: }
;	genEndFunction
	ret
;	Total satinc function size at codegen: 1 bytes.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:17: void satdec(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function satdec
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_satdec::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:19: cnt--;
;	genMinus
;	Shift into pair
	ld	hl, #_cnt
	ld	a, (hl)
	add	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:20: if (cnt == (unsigned long)-1)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt)
	inc	a
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00103$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 1)
	inc	a
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00103$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 2)
	inc	a
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00103$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 3)
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
;	skipping generated iCode
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:21: cnt++;
;	genPlus
	ld	iy, #_cnt
	inc	0 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	1 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	2 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	inc	3 (iy)
; common peephole 159 removed unused label 00115$.
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:22: }
;	genEndFunction
	ret
;	Total satdec function size at codegen: 1 bytes.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:24: void testSat(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSat
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testSat::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:26: cnt = 0;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_cnt+0), a
	ld	(_cnt+1), a
	ld	(_cnt+2), a
	ld	(_cnt+3), a
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:27: satinc ();
;	genCall
	call	_satinc
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:28: ASSERT (cnt == 1);
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
	ld	iy, #_cnt
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
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
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:29: satdec ();
;	genCall
	call	_satdec
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:30: satdec ();
;	genCall
	call	_satdec
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:31: ASSERT (cnt == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_cnt+3)
	ld	iy, #_cnt
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
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
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:33: cnt = -2;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_cnt
	ld	0 (iy), #0xfe
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:34: satinc ();
;	genCall
	call	_satinc
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:35: ASSERT (cnt == (unsigned long)-1);
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
	jr	nz, 00144$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00144$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00144$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00144$:
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
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:36: satinc ();
;	genCall
	call	_satinc
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:37: ASSERT (cnt == (unsigned long)-1);
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
	jr	nz, 00145$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00145$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00145$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_cnt + 3)
	inc	a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00145$:
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
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:38: }
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
	.ascii "cases/satcounteroverflow/satcounteroverflow_type_unsigned_lo"
	.ascii "ng.c"
	.db 0x00
___str_3:
	.ascii "cnt == 0"
	.db 0x00
___str_4:
	.ascii "cnt == (unsigned long)-1"
	.db 0x00
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:42: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:44: __prints("Running testSat\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:45: testSat();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:46: }
;	genEndFunction
	jp	_testSat
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testSat"
	.db 0x0a
	.db 0x00
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:51: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:53: return "satcounteroverflow_type_unsigned_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/satcounteroverflow/satcounteroverflow_type_unsigned_long.c:54: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "satcounteroverflow_type_unsigned_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
