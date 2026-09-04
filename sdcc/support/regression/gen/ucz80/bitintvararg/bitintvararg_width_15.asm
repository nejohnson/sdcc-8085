;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitintvararg_width_15
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBitIntVarArg
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
;cases/bitintvararg/bitintvararg_width_15.c:24: returnFirstArg(int marker, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function returnFirstArg
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_returnFirstArg:
;cases/bitintvararg/bitintvararg_width_15.c:29: va_start(ap, marker);
;	genAddrOf
	ld	hl, #4
	add	hl, sp
;	genCast
;	(locations are the same)
;cases/bitintvararg/bitintvararg_width_15.c:30: i = va_arg(ap, bitinttype);
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;cases/bitintvararg/bitintvararg_width_15.c:34: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/bitintvararg/bitintvararg_width_15.c:35: }
;	genEndFunction
	ret
;	Total returnFirstArg function size at codegen: 1 bytes.
;cases/bitintvararg/bitintvararg_width_15.c:38: returnSecondArg(int marker, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function returnSecondArg
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_returnSecondArg:
;cases/bitintvararg/bitintvararg_width_15.c:43: va_start(ap, marker);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/bitintvararg/bitintvararg_width_15.c:44: UNUSED(va_arg(ap, bitinttype));
;	skipping iCode since result will be rematerialized
;cases/bitintvararg/bitintvararg_width_15.c:45: i = va_arg(ap, bitinttype);
;	skipping iCode since result will be rematerialized
;	genMinus
;fetchPairLong
; common peephole 129b moved decrement of hl to constant.
	ld	hl,#0x6
	add	hl,sp
; common peephole 129b moved decrement of hl to constant.
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;cases/bitintvararg/bitintvararg_width_15.c:49: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/bitintvararg/bitintvararg_width_15.c:50: }
;	genEndFunction
	ret
;	Total returnSecondArg function size at codegen: 1 bytes.
;cases/bitintvararg/bitintvararg_width_15.c:54: testBitIntVarArg(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitIntVarArg
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBitIntVarArg::
;cases/bitintvararg/bitintvararg_width_15.c:60: ASSERT(returnFirstArg(marker, (bitinttype)0xaaaaaaaaaaaaaaaaull, (bitinttype)0x5555555555555555ull) == (bitinttype)0xaaaaaaaaaaaaaaaaull);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x5555
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x2aaa
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000c
	push	hl
;	genCall
	call	_returnFirstArg
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	de, #0x2aaa
	cp	a, a
	sbc	hl, de
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
	ld	hl, #0x003c
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
;cases/bitintvararg/bitintvararg_width_15.c:61: ASSERT(returnSecondArg(marker, (bitinttype)0xaaaaaaaaaaaaaaaaull, (bitinttype)0x5555555555555555ull) == (bitinttype)0x5555555555555555ull);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x5555
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x2aaa
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000c
	push	hl
;	genCall
	call	_returnSecondArg
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	de, #0x5555
	cp	a, a
	sbc	hl, de
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
	ld	hl, #0x003d
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
;cases/bitintvararg/bitintvararg_width_15.c:64: }
;	genEndFunction
	ret
;	Total testBitIntVarArg function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "returnFirstArg(marker, (bitinttype)0xaaaaaaaaaaaaaaaaull, (b"
	.ascii "itinttype)0x5555555555555555ull) == (bitinttype)0xaaaaaaaaaa"
	.ascii "aaaaaaull"
	.db 0x00
___str_2:
	.ascii "cases/bitintvararg/bitintvararg_width_15.c"
	.db 0x00
___str_3:
	.ascii "returnSecondArg(marker, (bitinttype)0xaaaaaaaaaaaaaaaaull, ("
	.ascii "bitinttype)0x5555555555555555ull) == (bitinttype)0x555555555"
	.ascii "5555555ull"
	.db 0x00
;cases/bitintvararg/bitintvararg_width_15.c:68: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitintvararg/bitintvararg_width_15.c:70: __prints("Running testBitIntVarArg\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/bitintvararg/bitintvararg_width_15.c:71: testBitIntVarArg();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintvararg/bitintvararg_width_15.c:72: }
;	genEndFunction
	jp	_testBitIntVarArg
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBitIntVarArg"
	.db 0x0a
	.db 0x00
;cases/bitintvararg/bitintvararg_width_15.c:77: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitintvararg/bitintvararg_width_15.c:79: return "bitintvararg_width_15";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintvararg/bitintvararg_width_15.c:80: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bitintvararg_width_15"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
