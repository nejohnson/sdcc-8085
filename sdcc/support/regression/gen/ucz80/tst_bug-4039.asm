;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_4039
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _LevelDraw
	.globl _check
	.globl ___prints
	.globl ___fail
	.globl _vdu_interrupt_state
	.globl ___numCases
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_VDPControlPort	=	0x0000
_VDPDataPortOut	=	0x0001
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_vdu_interrupt_state::
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
;cases/./../tests/bug-4039.c:32: void check(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function check
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_check::
;cases/./../tests/bug-4039.c:34: ASSERT( !vdu_interrupt_state );
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_vdu_interrupt_state
	bit	0, (hl)
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
	ld	hl, #0x0022
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-4039.c:35: }
;	genEndFunction
	ret
;	Total check function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!vdu_interrupt_state"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-4039.c"
	.db 0x00
;cases/./../tests/bug-4039.c:53: void LevelDraw() {
;	genLabel
;	genFunction
;	---------------------------------
; Function LevelDraw
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_LevelDraw::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/./../tests/bug-4039.c:56: uint16_t addr = 32;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0020
;cases/./../tests/bug-4039.c:58: do {
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x02
;cases/./../tests/bug-4039.c:63: do {
;	genLabel
00114$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x02
;	genLabel
00101$:
;cases/./../tests/bug-4039.c:40: addr += 0x1000;
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	bc
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	l, -2 (ix)
	ld	a, -1 (ix)
	add	a, #0x10
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-4039.c:42: vdu_address_set_fast( addr );
;	genAssign
;	genMove_o size 1 result type 10 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #_vdu_interrupt_state
	ld	0 (iy), #0x00
;	genCast
	out	(_VDPControlPort), a
;	genCast
;	(locations are the same)
;	genGetByte
;	genMove_o size 1 result type 5 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	af
	ld	a, h
	out	(_VDPControlPort), a
	pop	af
;	genAssign
;	genMove_o size 1 result type 10 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	0 (iy), #0x01
;cases/./../tests/bug-4039.c:43: addr += 32;
;	genPlus
	add	a, #0x20
	ld	l, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00137$
	inc	h
00137$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-4039.c:45: vdu_address_set_fast2( addr );
;	genAssign
;	genMove_o size 1 result type 10 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	0 (iy), #0x00
;	genCast
	out	(_VDPControlPort), a
;	genCast
;	(locations are the same)
;	genGetByte
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	out	(_VDPControlPort), a
;	genCall
	push	bc
	push	de
	call	_check
	pop	de
	pop	bc
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_vdu_interrupt_state
	ld	(hl), #0x01
;cases/./../tests/bug-4039.c:65: } while( --col );
;	genMinus
	dec	d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	skipping generated iCode
;cases/./../tests/bug-4039.c:67: addr += 32;
;	genPlus
	ld	a, -2 (ix)
	add	a, #0x20
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	b, a
;	genCast
;	(locations are the same)
;cases/./../tests/bug-4039.c:69: } while (--row);
;	genMinus
	dec	e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/bug-4039.c:70: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total LevelDraw function size at codegen: 5 bytes.
;cases/./../tests/bug-4039.c:73: testBug(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-4039.c:75: LevelDraw();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-4039.c:76: }
;	genEndFunction
	jp	_LevelDraw
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-4039.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-4039.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-4039.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-4039.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-4039.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-4039.c:15: return "bug-4039.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-4039.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-4039.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
