;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20031204_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _root_nfs_parse_addr
	.globl _in_aton
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
_testTortureExecute_addr_10000_50:
	.ds 19
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
;cases/./../tests/gcc-torture-execute-20031204-1.c:60: static char addr[] = "10.11.12.13:/hello";
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_testTortureExecute_addr_10000_50
	ld	(hl), #0x31
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 1
;	genPointerSet
	ld	(hl), #0x30
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 2
;	genPointerSet
	ld	(hl), #0x2e
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 3
;	genPointerSet
	ld	(hl), #0x31
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 4
;	genPointerSet
	ld	(hl), #0x31
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 5
;	genPointerSet
	ld	(hl), #0x2e
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 6
;	genPointerSet
	ld	(hl), #0x31
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 7
;	genPointerSet
	ld	(hl), #0x32
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 8
;	genPointerSet
	ld	(hl), #0x2e
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 9
;	genPointerSet
	ld	(hl), #0x31
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 10
;	genPointerSet
	ld	(hl), #0x33
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 11
;	genPointerSet
	ld	(hl), #0x3a
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 12
;	genPointerSet
	ld	(hl), #0x2f
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 13
;	genPointerSet
	ld	(hl), #0x68
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 14
;	genPointerSet
	ld	(hl), #0x65
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 15
;	genPointerSet
	ld	(hl), #0x6c
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 16
;	genPointerSet
	ld	(hl), #0x6c
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 17
;	genPointerSet
	ld	(hl), #0x6f
;	genPlus
	ld	hl, #_testTortureExecute_addr_10000_50 + 18
;	genPointerSet
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/gcc-torture-execute-20031204-1.c:20: u32 in_aton(const char* x)
;	genLabel
;	genFunction
;	---------------------------------
; Function in_aton
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_in_aton::
;cases/./../tests/gcc-torture-execute-20031204-1.c:22: return 0x0a0b0c0d;
;	genRet
;fetchPairLong
	ld	de, #0x0c0d
;fetchPairLong
	ld	hl, #0x0a0b
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20031204-1.c:23: }
;	genEndFunction
	ret
;	Total in_aton function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20031204-1.c:25: u32 root_nfs_parse_addr(char *name)
;	genLabel
;	genFunction
;	---------------------------------
; Function root_nfs_parse_addr
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_root_nfs_parse_addr::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20031204-1.c:31: cp = cq = name;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), l
	ld	-2 (ix), h
; common peephole 11 loaded cb from lh directly instead of going through -3 (ix) -2 (ix).
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -3 (ix)
	ld	d, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20031204-1.c:32: while (octets < 4) {
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00113$:
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00115$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20031204-1.c:33: while (*cp >= '0' && *cp <= '9')
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00102$:
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -4 (ix).
	ld	-4 (ix), a
; common peephole 0a removed redundant load from a into a.
	sub	a, #0x30
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00147$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x39
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00147$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20031204-1.c:34: cp++;
;	genPlus
	inc	hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
;	genLabel
00147$:
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20031204-1.c:35: if (cp == cq || cp - cq > 3)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00221$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00115$
; common peephole 81 removed jp by using inverse jump logic
00221$:
;	skipping generated iCode
;	genMinus
	cp	a, a
	sbc	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpGt
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00222$
	xor	a, #0x80
00222$:
	jp	m, 00115$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20031204-1.c:37: if (*cp == '.' || octets == 3)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00223$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00224$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00225$.
;	skipping generated iCode
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-20031204-1.c:38: octets++;
;	genPlus
	inc	-1 (ix)
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-20031204-1.c:39: if (octets < 4)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00112$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20031204-1.c:40: cp++;
;	genPlus
	inc	de
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-20031204-1.c:41: cq = cp;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00115$:
;cases/./../tests/gcc-torture-execute-20031204-1.c:44: if (octets == 4 && (*cp == ':' || *cp == '\0')) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00226$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00119$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00227$.
;	skipping generated iCode
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	c, a
; common peephole 98 removed redundant load from c into a.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x3a
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00229$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00228$.
	xor	a, a
00229$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00118$
;	genIfx
	inc	c
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00119$
;	genLabel
00118$:
;cases/./../tests/gcc-torture-execute-20031204-1.c:45: if (*cp == ':')
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00117$
;cases/./../tests/gcc-torture-execute-20031204-1.c:46: *cp++ = '\0';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
;	genPlus
	inc	de
;	genLabel
00117$:
;cases/./../tests/gcc-torture-execute-20031204-1.c:47: addr = in_aton(name);
;	genSend
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_in_aton
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;cases/./../tests/gcc-torture-execute-20031204-1.c:48: strcpy(name, cp);
;	genBuiltIn
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -3 (ix)
	ld	d, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
00230$:
	cp	a, (hl)
	ldi
	jr	nz, 00230$
	pop	bc
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00119$:
;cases/./../tests/gcc-torture-execute-20031204-1.c:50: addr = (-1);
;	genAssign
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0xffff
; common peephole 174a reused value still in bc.
	ld	h, b
	ld	l, c
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-20031204-1.c:52: return addr;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00123$.
;cases/./../tests/gcc-torture-execute-20031204-1.c:53: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total root_nfs_parse_addr function size at codegen: 10 bytes.
;cases/./../tests/gcc-torture-execute-20031204-1.c:57: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20031204-1.c:61: u32 result = root_nfs_parse_addr(addr);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_testTortureExecute_addr_10000_50
;	genCall
	call	_root_nfs_parse_addr
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20031204-1.c:62: if (result != 0x0a0b0c0d) { ASSERT(0); }
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
	ld	de, #0x0a0b
	cp	a, a
	sbc	hl, de
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00113$:
;	skipping generated iCode
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
	ld	hl, #0x003e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_3
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_2
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_1
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/gcc-torture-execute-20031204-1.c:63: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20031204-1.c:65: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
__str_1:
	.ascii "Assertion failed"
	.db 0x00
__str_2:
	.ascii "0"
	.db 0x00
__str_3:
	.ascii "cases/./../tests/gcc-torture-execute-20031204-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20031204-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20031204-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20031204-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20031204-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20031204-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20031204-1.c:15: return "gcc-torture-execute-20031204-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20031204-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "gcc-torture-execute-20031204-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
