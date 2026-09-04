;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module gte_20001124_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl _abort
	.globl _exit__substitute
	.globl _longjmp
	.globl ___setjmp
	.globl ___prints
	.globl ___fail
	.globl _f
	.globl _i
	.globl _s
	.globl _after_main
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
_after_main::
	.ds 6
_s::
	.ds 5
_i::
	.ds 10
_f::
	.ds 8
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
;cases/gte_20001124-1.c:7: void exit__substitute(int i){ASSERT(!i); longjmp(after_main, 1);}
;	genLabel
;	genFunction
;	---------------------------------
; Function exit__substitute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_exit__substitute::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0007
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
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_after_main
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	jp	_longjmp
; common peephole 152 removed unused ret.
;	Total exit__substitute function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!i"
	.db 0x00
___str_2:
	.ascii "cases/gte_20001124-1.c"
	.db 0x00
;cases/gte_20001124-1.c:11: void abort(void) {ASSERT(0);}
;	genLabel
;	genFunction
;	---------------------------------
; Function abort
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_abort::
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
	ld	hl, #0x000b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total abort function size at codegen: 1 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/gte_20001124-1.c"
	.db 0x00
;cases/../gte/20001124-1.c:18: isofs_bread(unsigned int block)
;	genLabel
;	genFunction
;	---------------------------------
; Function isofs_bread
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_isofs_bread:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/20001124-1.c:20: if (block)
;	genIfx
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/../gte/20001124-1.c:21: abort ();
;	genCall
	call	_abort
;	genLabel
00102$:
;cases/../gte/20001124-1.c:22: exit(0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/../gte/20001124-1.c:23: }
;	genEndFunction
	jp	_exit__substitute
; common peephole 152 removed unused ret.
;	Total isofs_bread function size at codegen: 1 bytes.
;cases/../gte/20001124-1.c:26: do_isofs_readdir(struct inode *inode, struct file *filp)
;	genLabel
;	genFunction
;	---------------------------------
; Function do_isofs_readdir
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 37 bytes.
_do_isofs_readdir:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -37
	ld	iy, #-37
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/20001124-1.c:28: int bufsize = inode->i_sb->s_blocksize;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	bc
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, 8 (iy)
	ld	-5 (ix), a
	ld	a, 9 (iy)
	ld	-4 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-17 (ix), a
;cases/../gte/20001124-1.c:29: unsigned char bufbits = inode->i_sb->s_blocksize_bits;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;cases/../gte/20001124-1.c:31: char *bh = 0;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-16 (ix), a
	ld	-15 (ix), a
;cases/../gte/20001124-1.c:34: if (filp->f_pos >= inode->i_size)
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), e
	ld	-13 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	bc
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), c
	ld	-11 (ix), b
; common peephole 11 loaded ed from cb directly instead of going through -12 (ix) -11 (ix).
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #1
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genCmpLt
	ld	a, -28 (ix)
	sub	a, -36 (ix)
	ld	a, -27 (ix)
	sbc	a, -35 (ix)
	ld	a, -26 (ix)
	sbc	a, -34 (ix)
	ld	a, -25 (ix)
	sbc	a, -33 (ix)
	ld	a, -24 (ix)
	sbc	a, -32 (ix)
	ld	a, -23 (ix)
	sbc	a, -31 (ix)
	ld	a, -22 (ix)
	sbc	a, -30 (ix)
	ld	a, -21 (ix)
	sbc	a, -29 (ix)
	jp	po, 00172$
	xor	a, #0x80
00172$:
	jp	m, 00102$
;	skipping generated iCode
;cases/../gte/20001124-1.c:35: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	jp	00114$
;	genLabel
00102$:
;cases/../gte/20001124-1.c:37: offset = filp->f_pos & (bufsize - 1);
;	genMinus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	c, -18 (ix)
	ld	b, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	dec	bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-20 (ix), a
	ld	a, -9 (ix)
	ld	-19 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -28 (ix)
	ld	-7 (ix), a
	ld	a, -27 (ix)
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, -7 (ix)
	and	a, -20 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	and	a, -19 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/20001124-1.c:38: block = filp->f_pos >> bufbits;
;	genRightShift
	ld	b, -3 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -28 (ix)
	ld	-37 (ix), a
	ld	a, -27 (ix)
	ld	-36 (ix), a
	ld	a, -26 (ix)
	ld	-35 (ix), a
	ld	a, -25 (ix)
	ld	-34 (ix), a
	ld	a, -24 (ix)
	ld	-33 (ix), a
	ld	a, -23 (ix)
	ld	-32 (ix), a
	ld	a, -22 (ix)
	ld	-31 (ix), a
	ld	a, -21 (ix)
	ld	-30 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00174$
00173$:
	sra	-30 (ix)
	rr	-31 (ix)
	rr	-32 (ix)
	rr	-33 (ix)
	rr	-34 (ix)
	rr	-35 (ix)
	rr	-36 (ix)
	rr	-37 (ix)
00174$:
	djnz	00173$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -37 (ix)
	ld	-8 (ix), a
	ld	a, -36 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/20001124-1.c:39: hs = inode->i_sb->s_hs;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
;cases/../gte/20001124-1.c:41: while (filp->f_pos < inode->i_size) {
;	genLeftShift
	ld	b, -3 (ix)
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00176$
00175$:
	sla	-4 (ix)
	rl	-3 (ix)
00176$:
	djnz	00175$
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00111$:
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #3
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genCmpLt
	ld	a, -34 (ix)
	sub	a, -26 (ix)
	ld	a, -33 (ix)
	sbc	a, -25 (ix)
	ld	a, -32 (ix)
	sbc	a, -24 (ix)
	ld	a, -31 (ix)
	sbc	a, -23 (ix)
	ld	a, -30 (ix)
	sbc	a, -22 (ix)
	ld	a, -29 (ix)
	sbc	a, -21 (ix)
	ld	a, -28 (ix)
	sbc	a, -20 (ix)
	ld	a, -27 (ix)
	sbc	a, -19 (ix)
	jp	po, 00177$
	xor	a, #0x80
00177$:
	jp	p, 00113$
;	skipping generated iCode
;cases/../gte/20001124-1.c:42: if (!bh)
;	genIfx
	ld	a, -15 (ix)
	or	a, -16 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;cases/../gte/20001124-1.c:43: bh = isofs_bread(block);
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_isofs_bread
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), e
	ld	-15 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;cases/../gte/20001124-1.c:45: hs += block << bufbits;
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	b, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	add	a, -4 (ix)
	ld	c, a
	ld	a, b
	adc	a, -3 (ix)
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), c
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../gte/20001124-1.c:47: if (hs == 0)
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/../gte/20001124-1.c:48: filp->f_pos++;
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genPlus
	inc	-26 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00178$
	inc	-25 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00178$
	inc	-24 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00178$
	inc	-23 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00178$
	inc	-22 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00178$
	inc	-21 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00178$
	inc	-20 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00178$
	inc	-19 (ix)
00178$:
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ld	bc, #0x0008
	ldir
;	genLabel
00106$:
;cases/../gte/20001124-1.c:50: if (offset >= bufsize)
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -18 (ix)
	ld	b, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, c
	ld	a, -1 (ix)
	sbc	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;cases/../gte/20001124-1.c:51: offset &= bufsize - 1;
;	genAnd
	ld	a, -2 (ix)
	and	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	and	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00108$:
;cases/../gte/20001124-1.c:53: if (*bh)
;	genPointerGet
;fetchPairLong
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
;cases/../gte/20001124-1.c:54: filp->f_pos++;
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genPlus
	inc	-26 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00179$
	inc	-25 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00179$
	inc	-24 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00179$
	inc	-23 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00179$
	inc	-22 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00179$
	inc	-21 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00179$
	inc	-20 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00179$
	inc	-19 (ix)
00179$:
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ld	bc, #0x0008
	ldir
;	genLabel
00110$:
;cases/../gte/20001124-1.c:56: filp->f_pos++;
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genPlus
	inc	-26 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00180$
	inc	-25 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00180$
	inc	-24 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00180$
	inc	-23 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00180$
	inc	-22 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00180$
	inc	-21 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00180$
	inc	-20 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00180$
	inc	-19 (ix)
00180$:
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ld	bc, #0x0008
	ldir
;	genGoto
	jp	00111$
;	genLabel
00113$:
;cases/../gte/20001124-1.c:58: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00114$:
;cases/../gte/20001124-1.c:59: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total do_isofs_readdir function size at codegen: 49 bytes.
;cases/../gte/20001124-1.c:66: main(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_main_::
;cases/../gte/20001124-1.c:68: s.s_blocksize = 512;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0200
	ld	(_s), hl
;cases/../gte/20001124-1.c:69: s.s_blocksize_bits = 9;
;	genPlus
	ld	hl, #_s + 2
;	genPointerSet
	ld	(hl), #0x09
;cases/../gte/20001124-1.c:70: i.i_size = 2048;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_i
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x08
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/../gte/20001124-1.c:71: i.i_sb = &s;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #_s
	ld	((_i + 8)), hl
;cases/../gte/20001124-1.c:72: f.f_pos = 0;
;	genAddrOf
	ld	de, #_f+0
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/../gte/20001124-1.c:74: do_isofs_readdir(&i,&f);
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_i
;	genCall
	call	_do_isofs_readdir
;cases/../gte/20001124-1.c:75: abort ();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../gte/20001124-1.c:76: }
;	genEndFunction
	jp	_abort
; common peephole 152 removed unused ret.
;	Total main_ function size at codegen: 1 bytes.
;cases/gte_20001124-1.c:14: void __runSuite(void) { __prints("Running main\n");if(!setjmp(after_main))
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___runSuite::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_after_main
;	genCall
	call	___setjmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
;cases/gte_20001124-1.c:15: main_(MAINARGS); }
;	genCall
;	genLabel
	jp	z, _main_
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00103$.
;	genEndFunction
	ret
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
;cases/gte_20001124-1.c:17: __code const char * __getSuiteName(void) { return "gte/20001124-1"; }
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gte/20001124-1"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
