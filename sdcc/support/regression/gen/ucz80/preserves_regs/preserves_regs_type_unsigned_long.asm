;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module preserves_regs_type_unsigned_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testRegs
	.globl _add_iy
	.globl _add_hl
	.globl _add_de
	.globl _add_bc
	.globl _write_hl
	.globl _write_de
	.globl _write_bc
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
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:8: void write_bc(void) __preserves_regs(a, d, e, h, l, iyl, iyh) __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function write_bc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_write_bc::
; naked function: no prologue.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:13: __endasm;
;	genInline
;	genInline
	ld bc, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:14: }
;	genEndFunction
; naked function: No epilogue.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:16: void write_de(void) __preserves_regs(a, b, c, h, l, iyl, iyh) __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function write_de
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_write_de::
; naked function: no prologue.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:21: __endasm;
;	genInline
;	genInline
	ld de, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:22: }
;	genEndFunction
; naked function: No epilogue.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:24: void write_hl(void) __preserves_regs(a, b, c, d, e, iyl, iyh) __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function write_hl
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_write_hl::
; naked function: no prologue.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:29: __endasm;
;	genInline
;	genInline
	ld hl, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:30: }
;	genEndFunction
; naked function: No epilogue.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:32: unsigned long add_bc(unsigned long a, unsigned long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_bc
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_add_bc::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:34: unsigned long r = a + b;
;	genPlus
	ld	a, e
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
	ld	a, c
	adc	a, 6 (ix)
	ld	c, a
	ld	a, b
	adc	a, 7 (ix)
	ld	b, a
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:36: write_de();
;	genCall
	push	de
	call	_write_de
	pop	de
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:37: write_hl();
;	genCall
	call	_write_hl
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:39: return(r);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:40: }
;	genEndFunction
	pop	ix
	ret
;	Total add_bc function size at codegen: 3 bytes.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:42: unsigned long add_de(unsigned long a, unsigned long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_de
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_add_de::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:44: unsigned long r = a + b;
;	genPlus
	ld	a, e
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
	ld	a, c
	adc	a, 6 (ix)
	ld	l, a
	ld	a, b
	adc	a, 7 (ix)
	ld	h, a
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:46: write_bc();
;	genCall
	call	_write_bc
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:47: write_hl();
;	genCall
	push	hl
	call	_write_hl
	pop	hl
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:49: return(r);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:50: }
;	genEndFunction
	pop	ix
	ret
;	Total add_de function size at codegen: 3 bytes.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:53: unsigned long add_hl(unsigned long a, unsigned long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_hl
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_add_hl::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:55: unsigned long r = a + b;
;	genPlus
	ld	a, e
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
	ld	a, c
	adc	a, 6 (ix)
	ld	l, a
	ld	a, b
	adc	a, 7 (ix)
	ld	h, a
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:57: write_bc();
;	genCall
	call	_write_bc
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:58: write_de();
;	genCall
	push	de
	call	_write_de
	pop	de
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:60: return(r);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:61: }
;	genEndFunction
	pop	ix
	ret
;	Total add_hl function size at codegen: 3 bytes.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:64: unsigned long add_iy(unsigned long a, unsigned long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_iy
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_add_iy::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:66: unsigned long r = a + b;
;	genPlus
	ld	a, e
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
	ld	a, c
	adc	a, 6 (ix)
	ld	l, a
	ld	a, b
	adc	a, 7 (ix)
	ld	h, a
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:68: write_bc();
;	genCall
	call	_write_bc
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:69: write_de();
;	genCall
	push	de
	call	_write_de
	pop	de
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:70: write_hl();
;	genCall
	push	hl
	call	_write_hl
	pop	hl
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:72: return(r);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:73: }
;	genEndFunction
	pop	ix
	ret
;	Total add_iy function size at codegen: 3 bytes.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:76: void testRegs(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testRegs
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testRegs::
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:79: ASSERT(add_bc(0x55, 0xaa) == (unsigned long)(0x55 + 0xaa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xaa
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0055
	ld	l, h
;	genCall
	call	_add_bc
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	inc	a
	or	a, d
	or	a, l
	or	a, h
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
	ld	hl, #0x004f
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
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:80: ASSERT(add_de(0x55, 0xaa) == (unsigned long)(0x55 + 0xaa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xaa
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0055
	ld	l, h
;	genCall
	call	_add_de
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	inc	a
	or	a, d
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
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
	ld	hl, #0x0050
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
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:81: ASSERT(add_hl(0x55, 0xaa) == (unsigned long)(0x55 + 0xaa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xaa
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0055
	ld	l, h
;	genCall
	call	_add_hl
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	inc	a
	or	a, d
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
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
	ld	hl, #0x0051
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
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:82: ASSERT(add_iy(0x55, 0xaa) == (unsigned long)(0x55 + 0xaa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xaa
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0055
	ld	l, h
;	genCall
	call	_add_iy
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	inc	a
	or	a, d
	or	a, l
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0052
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
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:84: }
;	genEndFunction
	ret
;	Total testRegs function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "add_bc(0x55, 0xaa) == (unsigned long)(0x55 + 0xaa)"
	.db 0x00
___str_2:
	.ascii "cases/preserves_regs/preserves_regs_type_unsigned_long.c"
	.db 0x00
___str_3:
	.ascii "add_de(0x55, 0xaa) == (unsigned long)(0x55 + 0xaa)"
	.db 0x00
___str_4:
	.ascii "add_hl(0x55, 0xaa) == (unsigned long)(0x55 + 0xaa)"
	.db 0x00
___str_5:
	.ascii "add_iy(0x55, 0xaa) == (unsigned long)(0x55 + 0xaa)"
	.db 0x00
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:88: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:90: __prints("Running testRegs\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:91: testRegs();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:92: }
;	genEndFunction
	jp	_testRegs
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testRegs"
	.db 0x0a
	.db 0x00
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:97: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:99: return "preserves_regs_type_unsigned_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_long.c:100: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "preserves_regs_type_unsigned_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
