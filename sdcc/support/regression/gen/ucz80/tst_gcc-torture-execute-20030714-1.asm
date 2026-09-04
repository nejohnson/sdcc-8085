;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20030714_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _RenderBox_isTableCell
	.globl _RenderBox_setStyle
	.globl ___prints
	.globl ___fail
	.globl _g__style
	.globl _g_this
	.globl ___numCases
	.globl _true
	.globl _false
	.globl _RenderObject_setStyle
	.globl _removeFromSpecialObjects
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_g_this::
	.ds 18
_g__style::
	.ds 5
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
;cases/./../tests/gcc-torture-execute-20030714-1.c:101: void RenderBox_setStyle(RenderBox *thisin, RenderStyle *_style)
;	genLabel
;	genFunction
;	---------------------------------
; Function RenderBox_setStyle
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 11 bytes.
_RenderBox_setStyle::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -11
	ld	iy, #-11
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20030714-1.c:103: RenderBox *this = thisin;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-11 (ix), a
	ld	a, -1 (ix)
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20030714-1.c:107: tmp = this->m_positioned;
;	genPlus
	ld	a, -2 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	rra
	sbc	a, a
	ld	e, a
;	genCast
;	Casting to bool
	xor	a, a
	cp	a, e
	rla
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20030714-1.c:111: RenderObject_setStyle(this, _style);
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_RenderObject_setStyle
	pop	bc
;cases/./../tests/gcc-torture-execute-20030714-1.c:113: tmppo = _style->noninherited_flags.f._position;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -8 (ix) -7 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
	ld	a, (hl)
	rrca
	rrca
	and	a, #0x03
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20030714-1.c:121: this->m_positioned = ltrue;
;	genPlus
	ld	a, -11 (ix)
	add	a, #0x0e
	ld	-6 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;cases/./../tests/gcc-torture-execute-20030714-1.c:115: switch(tmppo)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00155$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 107 removed load from e into a by replacing sub with cp
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00156$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00157$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20030714-1.c:118: case FIXED:
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-20030714-1.c:121: this->m_positioned = ltrue;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	set	4, (hl)
;cases/./../tests/gcc-torture-execute-20030714-1.c:122: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;cases/./../tests/gcc-torture-execute-20030714-1.c:125: default:
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-20030714-1.c:129: if (oldpos)
;	genIfx
	bit	0, -9 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;cases/./../tests/gcc-torture-execute-20030714-1.c:132: this->m_positioned = ltrue;
;	genPointerSet
	ld	a, (bc)
	or	a, #0x10
	ld	(bc), a
;cases/./../tests/gcc-torture-execute-20030714-1.c:133: removeFromSpecialObjects(this);
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_removeFromSpecialObjects
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-20030714-1.c:137: this->m_positioned = lfalse;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	res	4, (hl)
;cases/./../tests/gcc-torture-execute-20030714-1.c:140: tmpf = _style->noninherited_flags.f._floating;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x03
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20030714-1.c:142: if(!this->isTableCell (this) && !(tmpf == FNONE)) 
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #16
	add	hl, de
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -11 (ix)
	ld	h, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	call	___sdcc_call_iy
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genIfx
	bit	0, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;cases/./../tests/gcc-torture-execute-20030714-1.c:145: this->m_floating = ltrue;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000e
	add	hl, de
;	genPointerSet
	set	3, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-20030714-1.c:149: tmpp = _style->noninherited_flags.f._position;
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	rrca
	rrca
	and	a, #0x03
;	genAssign
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-20030714-1.c:150: if (tmpp == RELATIVE)
;	genCmpEq
	cp	a, #0x01
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00158$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00159$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20030714-1.c:153: this->m_relPositioned = ltrue;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000e
	add	hl, de
;	genPointerSet
	set	6, (hl)
;cases/./../tests/gcc-torture-execute-20030714-1.c:157: }
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20030714-1.c:158: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total RenderBox_setStyle function size at codegen: 17 bytes.
_false:
	.db #0x00	;  0
_true:
	.db #0x01	;  1
;cases/./../tests/gcc-torture-execute-20030714-1.c:166: void RenderObject_setStyle(RenderBox *this, RenderStyle *_style)
;	genLabel
;	genFunction
;	---------------------------------
; Function RenderObject_setStyle
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_RenderObject_setStyle::
;cases/./../tests/gcc-torture-execute-20030714-1.c:169: (void) _style;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20030714-1.c:170: }
;	genEndFunction
	ret
;	Total RenderObject_setStyle function size at codegen: 13 bytes.
;cases/./../tests/gcc-torture-execute-20030714-1.c:172: void removeFromSpecialObjects(RenderBox *this)
;	genLabel
;	genFunction
;	---------------------------------
; Function removeFromSpecialObjects
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_removeFromSpecialObjects::
;cases/./../tests/gcc-torture-execute-20030714-1.c:174: (void) this;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20030714-1.c:175: }
;	genEndFunction
	ret
;	Total removeFromSpecialObjects function size at codegen: 13 bytes.
;cases/./../tests/gcc-torture-execute-20030714-1.c:177: bool RenderBox_isTableCell (RenderBox *this)
;	genLabel
;	genFunction
;	---------------------------------
; Function RenderBox_isTableCell
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_RenderBox_isTableCell::
;cases/./../tests/gcc-torture-execute-20030714-1.c:180: return false;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20030714-1.c:181: }
;	genEndFunction
	ret
;	Total RenderBox_isTableCell function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20030714-1.c:187: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20030714-1.c:193: g_this.m_relPositioned = false;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_g_this + 14)
	res	6, (hl)
;cases/./../tests/gcc-torture-execute-20030714-1.c:194: g_this.m_positioned = false;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	res	4, (hl)
;cases/./../tests/gcc-torture-execute-20030714-1.c:195: g_this.m_floating = false;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	res	3, (hl)
;cases/./../tests/gcc-torture-execute-20030714-1.c:196: g_this.isTableCell = RenderBox_isTableCell;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #_RenderBox_isTableCell
	ld	((_g_this + 16)), hl
;cases/./../tests/gcc-torture-execute-20030714-1.c:198: g__style.noninherited_flags.f._position = FIXED;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_g__style + 2)
	ld	a, (hl)
	or	a, #0x0c
;cases/./../tests/gcc-torture-execute-20030714-1.c:199: g__style.noninherited_flags.f._floating = FNONE;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
	and	a, #0xcf
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-20030714-1.c:201: RenderBox_setStyle (&g_this, &g__style);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_g__style
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_g_this
;	genCall
	call	_RenderBox_setStyle
;cases/./../tests/gcc-torture-execute-20030714-1.c:203: if (g_this.m_positioned != true)
;	genPointerGet
	ld	a, (#(_g_this + 14) + 0)
	rlca
	rlca
	rlca
	rlca
	rra
	sbc	a, a
;	genCast
;	Casting to bool
	add	a, #0xff
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20030714-1.c:204: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00cc
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-20030714-1.c:205: if (g_this.m_relPositioned != false)
;	genPointerGet
	ld	a, (#(_g_this + 14) + 0)
	rlca
	rlca
	rra
	sbc	a, a
;	genCast
;	Casting to bool
	add	a, #0xff
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20030714-1.c:206: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ce
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20030714-1.c:207: if (g_this.m_floating != false)
;	genPointerGet
	ld	a, (#(_g_this + 14) + 0)
	rrca
	rrca
	rrca
	rra
	sbc	a, a
;	genCast
;	Casting to bool
	add	a, #0xff
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00135$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20030714-1.c:208: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00d0
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/gcc-torture-execute-20030714-1.c:210: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/gcc-torture-execute-20030714-1.c:215: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 11 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20030714-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20030714-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20030714-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20030714-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20030714-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20030714-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20030714-1.c:15: return "gcc-torture-execute-20030714-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20030714-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20030714-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
