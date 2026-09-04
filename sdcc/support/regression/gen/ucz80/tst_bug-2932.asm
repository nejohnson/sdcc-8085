;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2932
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _fp
	.globl _fg
	.globl ___prints
	.globl ___fail
	.globl _error
	.globl _outfile
	.globl _infile
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
_infile::
	.ds 2
_outfile::
	.ds 2
_error::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_textsize:
	.ds 4
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
;cases/./../tests/bug-2932.c:16: int fg(void *fp)
;	genLabel
;	genFunction
;	---------------------------------
; Function fg
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_fg::
;	adjustStack by -2
	push	af
;cases/./../tests/bug-2932.c:18: volatile int i = 1;
;	genAssign
;fetchPairLong
	ld	hl, #0x0001
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2932.c:19: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2932.c:20: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from d into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total fg function size at codegen: 2 bytes.
;cases/./../tests/bug-2932.c:22: extern int fp(int c, void *fp) __smallc
;	genLabel
;	genFunction
;	---------------------------------
; Function fp
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fp::
;cases/./../tests/bug-2932.c:24: return -1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2932.c:25: }
;	genEndFunction
	ret
;	Total fp function size at codegen: 1 bytes.
;cases/./../tests/bug-2932.c:32: static void Error(const char *message)
;	genLabel
;	genFunction
;	---------------------------------
; Function Error
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Error:
;cases/./../tests/bug-2932.c:34: error++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_error)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_error), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2932.c:35: }
;	genEndFunction
	ret
;	Total Error function size at codegen: 1 bytes.
;cases/./../tests/bug-2932.c:39: static int DecodeChar(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function DecodeChar
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_DecodeChar:
;	adjustStack by -2
	push	af
;cases/./../tests/bug-2932.c:41: volatile int i = 255;
;	genAssign
;fetchPairLong
	ld	hl, #0x00ff
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2932.c:42: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2932.c:43: }
;	genEndFunction
;	adjustStack by 2
; common peephole 1 removed dead load from d into a.
; common peephole 52b replaced push/pop pair by load.
	ret
;	Total DecodeChar function size at codegen: 2 bytes.
;cases/./../tests/bug-2932.c:45: static void Decode(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Decode
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
_Decode:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -10
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-2932.c:50: textsize = fg(infile);
;	genSend
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_infile)
;	genCall
	call	_fg
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_textsize
	ld	(hl), e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_textsize+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 0
	ld	(_textsize + 2), hl
;cases/./../tests/bug-2932.c:52: for (count = 0; count < textsize; ) {
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	skipping iCode since result will be rematerialized
;	genLabel
00112$:
;	genCmpLt
;	Shift into pair
	ld	hl, #_textsize
	ld	a, -8 (ix)
	sub	a, (hl)
	ld	a, -7 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -6 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -5 (ix)
	inc	hl
	sbc	a, (hl)
	jp	nc, 00114$
;	skipping generated iCode
;cases/./../tests/bug-2932.c:53: c = DecodeChar();
;	genCall
	call	_DecodeChar
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2932.c:54: if (c < 256) {
;	genCmpLt
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/./../tests/bug-2932.c:55: if (fp(c, outfile) == -1) {
;	genIpush
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_outfile)
	push	hl
;	genCall
	call	_fp
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, l
	and	a, h
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
;	skipping generated iCode
;cases/./../tests/bug-2932.c:56: Error("");
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	_Error
;	genLabel
00102$:
;cases/./../tests/bug-2932.c:58: count++;
;	genPlus
	inc	-8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
; common peephole 84 jumped to 00112$ directly instead of via 00166$.
	inc	-7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
; common peephole 84 jumped to 00112$ directly instead of via 00166$.
	inc	-6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
; common peephole 84 jumped to 00112$ directly instead of via 00166$.
	inc	-5 (ix)
; common peephole 159 removed unused label 00166$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00105$:
;cases/./../tests/bug-2932.c:60: j = c - 255 + THRESHOLD;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0xff03
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-2932.c:61: for (k = 0; k < j; k++) {
;	genAssign
	ld	hl, #6
	add	hl, sp
	ex	de, hl
	ld	hl, #2
	add	hl, sp
	ld	bc, #4
	ldir
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00109$:
;	genCmpLt
	ld	a, c
	sub	a, -10 (ix)
	ld	a, b
	sbc	a, -9 (ix)
	jp	po, 00167$
	xor	a, #0x80
00167$:
	jp	p, 00112$
;	skipping generated iCode
;cases/./../tests/bug-2932.c:62: count++;
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00168$
	inc	-3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00168$
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00168$
	inc	-1 (ix)
00168$:
;	genAssign
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2932.c:61: for (k = 0; k < j; k++) {
;	genPlus
	inc	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00114$:
;cases/./../tests/bug-2932.c:66: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total Decode function size at codegen: 18 bytes.
___str_0:
	.db 0x00
;cases/./../tests/bug-2932.c:68: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2932.c:70: error = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_error), hl
;cases/./../tests/bug-2932.c:71: Decode();
;	genCall
	call	_Decode
;cases/./../tests/bug-2932.c:72: ASSERT (error == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_error)
	dec	a
; common peephole 54 used hl instead of iy.
	ld	hl, #_error + 1
	or	a, (hl)
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0048
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2932.c:73: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_1:
	.ascii "Assertion failed"
	.db 0x00
___str_2:
	.ascii "error == 1"
	.db 0x00
___str_3:
	.ascii "cases/./../tests/bug-2932.c"
	.db 0x00
;cases/tst_bug-2932.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2932.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug-2932.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2932.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2932.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2932.c:15: return "bug-2932.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2932.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-2932.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__textsize:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.area _CABS (ABS)
