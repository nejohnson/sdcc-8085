;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3834
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _InitScreen
	.globl _my_VPD_CommandSetupR36
	.globl ___prints
	.globl ___fail
	.globl _pwords
	.globl _words
	.globl _g_VDP_Command
	.globl ___numCases
	.globl _g_Settings
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_g_VDP_Command::
	.ds 7
_words::
	.ds 16
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_pwords::
	.ds 2
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
;cases/./../tests/bug-3834.c:19: void my_VPD_CommandSetupR36( void ) {
;	genLabel
;	genFunction
;	---------------------------------
; Function my_VPD_CommandSetupR36
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_my_VPD_CommandSetupR36::
;cases/./../tests/bug-3834.c:20: *pwords++ = g_VDP_Command.NX;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_pwords)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#(_g_VDP_Command + 4) + 0)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(bc), a
	inc	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(bc), a
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_pwords)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_pwords), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3834.c:21: }
;	genEndFunction
	ret
;	Total my_VPD_CommandSetupR36 function size at codegen: 1 bytes.
;cases/./../tests/bug-3834.c:44: void InitScreen( void ) {
;	genLabel
;	genFunction
;	---------------------------------
; Function InitScreen
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_InitScreen::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/./../tests/bug-3834.c:45: const struct ScreenSetting* src = &g_Settings[0];
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/bug-3834.c:46: u8 pixelWidth = src->Width / 256;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_g_Settings + 0)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from c into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
; common peephole 9 loaded e from b directly instead of going through d.
; common peephole 1 removed dead load from #0x00 into d.
;	genCast
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 13 loaded b into -4 (ix) directly instead of going through e.
	ld	-4 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3834.c:47: VDP_CommandLMMV(0, 0, src->Width, 0);
;	genAssign
;	(locations are the same)
;cases/./../tests/bug-3834.c:26: g_VDP_Command.DX = dx;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	(_g_VDP_Command), hl
;cases/./../tests/bug-3834.c:27: g_VDP_Command.DY = dy; // For this line, the order of register saves to stack is incompatible with restoring them.
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	((_g_VDP_Command + 2)), hl
;cases/./../tests/bug-3834.c:28: g_VDP_Command.NX = nx;
;	skipping iCode since result will be rematerialized
;	genPointerSet
	ld	((_g_VDP_Command + 4)), bc
;cases/./../tests/bug-3834.c:29: g_VDP_Command.CLR = col;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_g_VDP_Command + 6)
	ld	(hl), #0x00
;cases/./../tests/bug-3834.c:30: my_VPD_CommandSetupR36();
;	genCall
	call	_my_VPD_CommandSetupR36
;cases/./../tests/bug-3834.c:48: for(u8 i = 0; i < 2; ++i) {
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00106$:
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;cases/./../tests/bug-3834.c:49: u16 x = 19 % src->Width;
;	genPointerGet
	ld	de, (#_g_Settings + 0)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0013
;cases/./../tests/bug-3834.c:50: u16 y = x & 1;
;	genCall
	call	__moduint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAnd
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-2 (ix), #0x00
;cases/./../tests/bug-3834.c:51: VDP_CommandLMMV(x, y, pixelWidth, src->Red);
;	genPointerGet
	ld	a, (#(_g_Settings + 2) + 0)
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x00
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3834.c:26: g_VDP_Command.DX = dx;
;	genPointerSet
	ld	(_g_VDP_Command), de
;cases/./../tests/bug-3834.c:27: g_VDP_Command.DY = dy; // For this line, the order of register saves to stack is incompatible with restoring them.
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #(_g_VDP_Command + 2)
	push	af
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	pop	af
	pop	hl
;cases/./../tests/bug-3834.c:28: g_VDP_Command.NX = nx;
;	genPointerSet
	ld	((_g_VDP_Command + 4)), hl
;cases/./../tests/bug-3834.c:29: g_VDP_Command.CLR = col;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(#(_g_VDP_Command + 6)), a
; common peephole 19 loaded (#(_g_VDP_Command + 6)) from a directly instead of using hl.
;cases/./../tests/bug-3834.c:30: my_VPD_CommandSetupR36();
;	genCall
	push	bc
	push	de
	call	_my_VPD_CommandSetupR36
	pop	de
	pop	bc
;cases/./../tests/bug-3834.c:52: VDP_CommandLMMV(x, y, pixelWidth, src->Red);
;	genPointerGet
	ld	a, (#(_g_Settings + 2) + 0)
;cases/./../tests/bug-3834.c:26: g_VDP_Command.DX = dx;
;	genPointerSet
	ld	(_g_VDP_Command), de
;cases/./../tests/bug-3834.c:27: g_VDP_Command.DY = dy; // For this line, the order of register saves to stack is incompatible with restoring them.
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_g_VDP_Command + 2)
	push	af
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	pop	af
;cases/./../tests/bug-3834.c:28: g_VDP_Command.NX = nx;
;	genPointerSet
	ld	((_g_VDP_Command + 4)), bc
;cases/./../tests/bug-3834.c:29: g_VDP_Command.CLR = col;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#(_g_VDP_Command + 6)), a
; common peephole 19 loaded (#(_g_VDP_Command + 6)) from a directly instead of using hl.
;cases/./../tests/bug-3834.c:30: my_VPD_CommandSetupR36();
;	genCall
	call	_my_VPD_CommandSetupR36
;cases/./../tests/bug-3834.c:48: for(u8 i = 0; i < 2; ++i) {
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00108$:
;cases/./../tests/bug-3834.c:54: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total InitScreen function size at codegen: 11 bytes.
_g_Settings:
	.dw #0x0100
	.db #0x11	; 17
;cases/./../tests/bug-3834.c:56: void testBug( void ) {
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3834.c:57: InitScreen();
;	genCall
	call	_InitScreen
;cases/./../tests/bug-3834.c:59: ASSERT(words[0] == 0x0100);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_words + 0)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
	dec	h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00153$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003b
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
;cases/./../tests/bug-3834.c:60: ASSERT(words[1] == 1); // 0x1110 when bug is present
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_words + 2)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00154$.
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
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/./../tests/bug-3834.c:61: ASSERT(words[2] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_words + 4)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00155$.
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
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/./../tests/bug-3834.c:62: ASSERT(words[3] == 1); // 0x1110 when bug is present
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_words + 6)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00156$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/./../tests/bug-3834.c:63: ASSERT(words[4] == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#_words + 8)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00157$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3834.c:64: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "words[0] == 0x0100"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3834.c"
	.db 0x00
___str_3:
	.ascii "words[1] == 1"
	.db 0x00
___str_4:
	.ascii "words[2] == 1"
	.db 0x00
___str_5:
	.ascii "words[3] == 1"
	.db 0x00
___str_6:
	.ascii "words[4] == 1"
	.db 0x00
;cases/tst_bug-3834.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3834.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/tst_bug-3834.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3834.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3834.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3834.c:15: return "bug-3834.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3834.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "bug-3834.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__pwords:
	.dw _words
	.area _CABS (ABS)
