;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module preserves_regs_type_unsigned_char
	
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
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:8: void write_bc(void) __preserves_regs(a, d, e, h, l, iyl, iyh) __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function write_bc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_write_bc::
; naked function: no prologue.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:13: __endasm;
;	genInline
;	genInline
	ld bc, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:14: }
;	genEndFunction
; naked function: No epilogue.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:16: void write_de(void) __preserves_regs(a, b, c, h, l, iyl, iyh) __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function write_de
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_write_de::
; naked function: no prologue.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:21: __endasm;
;	genInline
;	genInline
	ld de, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:22: }
;	genEndFunction
; naked function: No epilogue.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:24: void write_hl(void) __preserves_regs(a, b, c, d, e, iyl, iyh) __naked
;	genLabel
;	genFunction
;	---------------------------------
; Function write_hl
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_write_hl::
; naked function: no prologue.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:29: __endasm;
;	genInline
;	genInline
	ld hl, #0
	ret
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:30: }
;	genEndFunction
; naked function: No epilogue.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:32: unsigned char add_bc(unsigned char a, unsigned char b)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_bc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_add_bc::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:34: unsigned char r = a + b;
;	genPlus
	add	a, l
	ld	c, a
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:36: write_de();
;	genCall
	call	_write_de
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:37: write_hl();
;	genCall
	call	_write_hl
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:39: return(r);
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:40: }
;	genEndFunction
	ret
;	Total add_bc function size at codegen: 1 bytes.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:42: unsigned char add_de(unsigned char a, unsigned char b)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_de
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_add_de::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:44: unsigned char r = a + b;
;	genPlus
	add	a, l
	ld	e, a
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:46: write_bc();
;	genCall
	call	_write_bc
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:47: write_hl();
;	genCall
	call	_write_hl
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:49: return(r);
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:50: }
;	genEndFunction
	ret
;	Total add_de function size at codegen: 1 bytes.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:53: unsigned char add_hl(unsigned char a, unsigned char b)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_hl
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_add_hl::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:55: unsigned char r = a + b;
;	genPlus
	add	a, l
	ld	l, a
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:57: write_bc();
;	genCall
	call	_write_bc
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:58: write_de();
;	genCall
	call	_write_de
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:60: return(r);
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:61: }
;	genEndFunction
	ret
;	Total add_hl function size at codegen: 1 bytes.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:64: unsigned char add_iy(unsigned char a, unsigned char b)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_iy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_add_iy::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:66: unsigned char r = a + b;
;	genPlus
	add	a, l
	ld	c, a
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:68: write_bc();
;	genCall
	push	bc
	call	_write_bc
	pop	bc
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:69: write_de();
;	genCall
	call	_write_de
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:70: write_hl();
;	genCall
	call	_write_hl
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:72: return(r);
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:73: }
;	genEndFunction
	ret
;	Total add_iy function size at codegen: 1 bytes.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:76: void testRegs(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testRegs
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testRegs::
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:79: ASSERT(add_bc(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xaa
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x55
;	genCall
	call	_add_bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xff
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
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:80: ASSERT(add_de(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xaa
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x55
;	genCall
	call	_add_de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xff
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
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:81: ASSERT(add_hl(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xaa
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x55
;	genCall
	call	_add_hl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xff
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
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:82: ASSERT(add_iy(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xaa
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x55
;	genCall
	call	_add_iy
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xff
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
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:84: }
;	genEndFunction
	ret
;	Total testRegs function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "add_bc(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa)"
	.db 0x00
___str_2:
	.ascii "cases/preserves_regs/preserves_regs_type_unsigned_char.c"
	.db 0x00
___str_3:
	.ascii "add_de(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa)"
	.db 0x00
___str_4:
	.ascii "add_hl(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa)"
	.db 0x00
___str_5:
	.ascii "add_iy(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa)"
	.db 0x00
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:88: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:90: __prints("Running testRegs\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:91: testRegs();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:92: }
;	genEndFunction
	jp	_testRegs
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testRegs"
	.db 0x0a
	.db 0x00
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:97: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:99: return "preserves_regs_type_unsigned_char";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/preserves_regs/preserves_regs_type_unsigned_char.c:100: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "preserves_regs_type_unsigned_char"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
