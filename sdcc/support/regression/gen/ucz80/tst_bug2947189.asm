;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug2947189
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl ___prints
	.globl ___fail
	.globl _u
	.globl _s
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
_s::
	.ds 1
_u::
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
;cases/./../tests/bug2947189.c:16: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/./../tests/bug2947189.c:21: switch (s.c) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s + 0)
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
;cases/./../tests/bug2947189.c:22: case 0:      a += 3;      break; 
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
;cases/./../tests/bug2947189.c:23: case 1:      a += 2;      break;    
;	genLabel
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug2947189.c:24: }
;	genLabel
	ld	c, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 159 removed unused label 00102$.
	ld	c, #0x02
; common peephole 170nz used double assignment in case of nz condition.
00103$:
;cases/./../tests/bug2947189.c:28: switch (s.b) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_s + 0)
	rrca
	and	a, #0x03
;cases/./../tests/bug2947189.c:29: case 0:      a += 3;      break; 
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, c
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug2947189.c:28: switch (s.b) {
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	genCmpEq
	cp	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00189$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00190$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;cases/./../tests/bug2947189.c:29: case 0:      a += 3;      break; 
;	genLabel
00104$:
;	genPlus
	ld	c, b
	inc	c
	inc	c
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;cases/./../tests/bug2947189.c:30: case 1:      a += 2;      break;    
;	genLabel
00105$:
;	genPlus
	ld	c, b
	inc	c
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;cases/./../tests/bug2947189.c:31: case 2:      a += 1;      break; 
;	genLabel
00106$:
;	genPlus
	ld	c, b
	inc	c
;cases/./../tests/bug2947189.c:33: }
;	genLabel
00108$:
;cases/./../tests/bug2947189.c:36: switch (s.a) {
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	a, (#_s)
; common peephole 17 loaded a from (#_s) directly instead of using hl.
	rrca
	rrca
	rrca
	and	a, #0x07
	ld	e, a
;	genCmpGt
	ld	a, #0x06
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00116$
;	skipping generated iCode
;cases/./../tests/bug2947189.c:29: case 0:      a += 3;      break; 
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, b
	add	a, #0x03
	ld	-2 (ix), a
;cases/./../tests/bug2947189.c:31: case 2:      a += 1;      break; 
;	genPlus
	ld	c, b
	inc	c
;cases/./../tests/bug2947189.c:37: case 0:      a += 4;      break;
;	genPlus
	ld	a, b
	add	a, #0x04
	ld	-1 (ix), a
;cases/./../tests/bug2947189.c:36: switch (s.a) {
;	genJumpTab
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
	ld	hl, #00191$
	add	hl, de
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	jp	(hl)
00191$:
	.dw	00109$
	.dw	00110$
	.dw	00111$
	.dw	00112$
	.dw	00113$
	.dw	00114$
	.dw	00115$
;cases/./../tests/bug2947189.c:37: case 0:      a += 4;      break;
;	genLabel
00109$:
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;cases/./../tests/bug2947189.c:38: case 1:      a += 3;      break;  
;	genLabel
00110$:
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;cases/./../tests/bug2947189.c:39: case 2:      a += 1;      break;
;	genLabel
00111$:
;	genAssign
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;cases/./../tests/bug2947189.c:40: case 3:      a += 5;      break;
;	genLabel
00112$:
;	genPlus
	ld	a, b
	add	a, #0x05
	ld	c, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;cases/./../tests/bug2947189.c:42: case 4:      a += 4;      break;
;	genLabel
00113$:
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;cases/./../tests/bug2947189.c:43: case 5:      a += 3;      break;  
;	genLabel
00114$:
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
;cases/./../tests/bug2947189.c:44: case 6:      a += 1;      break;
;	genLabel
;	genAssign
;	(locations are the same)
;cases/./../tests/bug2947189.c:46: }
;	genLabel
; common peephole 85b eliminated jump.
00115$:
00116$:
;cases/./../tests/bug2947189.c:48: switch (u) {
;	genCmpGt
	ld	a, #0x06
	ld	iy, #_u
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00124$
;	skipping generated iCode
;cases/./../tests/bug2947189.c:29: case 0:      a += 3;      break; 
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	b,c
; common peephole 176a remove unnecessary load back
	inc	c
	inc	c
	inc	c
;cases/./../tests/bug2947189.c:31: case 2:      a += 1;      break; 
;	genPlus
	ld	e, b
	inc	e
;cases/./../tests/bug2947189.c:37: case 0:      a += 4;      break;
;	genPlus
	ld	d, b
	inc	d
	inc	d
	inc	d
	inc	d
;cases/./../tests/bug2947189.c:48: switch (u) {
;	genJumpTab
	push	de
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	hl, #00192$
	add	hl, de
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	pop	de
	jp	(hl)
00192$:
	.dw	00117$
	.dw	00118$
	.dw	00119$
	.dw	00120$
	.dw	00121$
	.dw	00122$
	.dw	00123$
;cases/./../tests/bug2947189.c:49: case 0:      a += 4;      break;
;	genLabel
00117$:
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;cases/./../tests/bug2947189.c:50: case 1:      a += 3;      break;  
;	genLabel
00118$:
;	genAssign
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;cases/./../tests/bug2947189.c:51: case 2:      a += 1;      break;
;	genLabel
00119$:
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;cases/./../tests/bug2947189.c:52: case 3:      a += 5;      break;
;	genLabel
00120$:
;	genPlus
	ld	a, b
	add	a, #0x05
	ld	c, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;cases/./../tests/bug2947189.c:54: case 4:      a += 4;      break;
;	genLabel
00121$:
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;cases/./../tests/bug2947189.c:55: case 5:      a += 3;      break;  
;	genLabel
00122$:
;	genAssign
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;cases/./../tests/bug2947189.c:56: case 6:      a += 1;      break;
;	genLabel
00123$:
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug2947189.c:58: }
;	genLabel
00124$:
;cases/./../tests/bug2947189.c:60: ASSERT (a == (2 + 1 + 5 + 5));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00125$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00193$.
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
00125$:
;cases/./../tests/bug2947189.c:61: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBug function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "a == (2 + 1 + 5 + 5)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug2947189.c"
	.db 0x00
;cases/tst_bug2947189.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug2947189.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug2947189.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug2947189.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug2947189.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug2947189.c:15: return "bug2947189.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug2947189.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug2947189.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__s:
	.db 0x1d
__xinit__u:
	.db #0x03	; 3
	.area _CABS (ABS)
