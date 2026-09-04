;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3135
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _TestFn
	.globl _TestFn2
	.globl ___prints
	.globl ___fail
	.globl _actors
	.globl _actors_active
	.globl _projectiles
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
_projectiles::
	.ds 2
_actors_active::
	.ds 3
_actors::
	.ds 24
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
;cases/./../tests/bug-3135.c:34: void TestFn2(BankPtr* events_ptr) {
;	genLabel
;	genFunction
;	---------------------------------
; Function TestFn2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_TestFn2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3135.c:35: ASSERT (events_ptr->bank == 5 && events_ptr->offset == 0xFC00);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x05
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00116$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00117$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCmpEq
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00118$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xfc
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00118$:
;	skipping generated iCode
;	genLabel
00103$:
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
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3135.c:36: }
;	genEndFunction
	ret
;	Total TestFn2 function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "events_ptr->bank == 5 && events_ptr->offset == 0xFC00"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3135.c"
	.db 0x00
;cases/./../tests/bug-3135.c:38: void TestFn() {
;	genLabel
;	genFunction
;	---------------------------------
; Function TestFn
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_TestFn::
;cases/./../tests/bug-3135.c:42: for (i = 0; i != 1; i++) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00109$:
;cases/./../tests/bug-3135.c:43: hit = actors_active[0];
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_actors_active
;	_moveFrom_tpair_()
	ld	l, (hl)
;cases/./../tests/bug-3135.c:44: if (hit != 0xFF) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;cases/./../tests/bug-3135.c:45: if (projectiles[i].col_group == 2) {
;	genPlus
	ld	a, #<(_projectiles)
	add	a, c
	ld	e, a
	ld	a, #>(_projectiles)
	adc	a, #0x00
	ld	d, a
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3135.c:46: TestFn2(&actors[hit].hit_1_ptr);
;	genMult
	push	de
;fetchPairLong
	ld	e, l
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3135.c:45: if (projectiles[i].col_group == 2) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00147$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00148$.
;	skipping generated iCode
;cases/./../tests/bug-3135.c:46: TestFn2(&actors[hit].hit_1_ptr);
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_actors
	add	hl, de
;	genCast
;	(locations are the same)
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_TestFn2
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00104$:
;cases/./../tests/bug-3135.c:47: } else if (projectiles[i].col_group == 4) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00149$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00150$.
;	skipping generated iCode
;cases/./../tests/bug-3135.c:48: TestFn2(&actors[hit].hit_2_ptr);
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_actors
	add	hl, de
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genCast
;	(locations are the same)
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_TestFn2
	pop	bc
;	genLabel
00110$:
;cases/./../tests/bug-3135.c:42: for (i = 0; i != 1; i++) {
;	genPlus
	inc	c
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00151$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00152$.
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00111$.
;cases/./../tests/bug-3135.c:52: }
;	genEndFunction
	ret
;	Total TestFn function size at codegen: 4 bytes.
;cases/./../tests/bug-3135.c:55: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3135.c:57: projectiles[0].col_group = 2;
;	genAddrOf
	ld	hl, #_projectiles+0
;	genPointerSet
	ld	(hl), #0x02
;cases/./../tests/bug-3135.c:58: actors_active[0] = 0;
;	genAddrOf
	ld	hl, #_actors_active+0
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/bug-3135.c:59: actors[0].hit_1_ptr.bank = 5;
;	genAddrOf
	ld	hl, #_actors+0
;	genPointerSet
	ld	(hl), #0x05
;cases/./../tests/bug-3135.c:60: actors[0].hit_1_ptr.offset = 0xFC00;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0xfc00
	ld	((_actors + 1)), hl
;cases/./../tests/bug-3135.c:62: TestFn();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3135.c:63: }
;	genEndFunction
	jp	_TestFn
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-3135.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3135.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-3135.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3135.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3135.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3135.c:15: return "bug-3135.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3135.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-3135.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
