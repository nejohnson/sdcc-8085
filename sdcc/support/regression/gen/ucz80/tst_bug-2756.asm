;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2756
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _m
	.globl _doall
	.globl _date
	.globl _current
	.globl _findyear
	.globl _findday
	.globl _findmon3
	.globl _findmon2
	.globl _findmon1
	.globl _usage
	.globl _pnmatch
	.globl _errx
	.globl _err
	.globl _bfgets
	.globl _bgetenv
	.globl ___fopen
	.globl _bprintf
	.globl _bfprintf
	.globl _strlen
	.globl _strcat
	.globl _malloc
	.globl _atoi
	.globl ___prints
	.globl _all
	.globl _mflag
	.globl _CurLinep
	.globl _CurLine
	.globl _advance
	.globl _wday
	.globl _argv0
	.globl _bstderr
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
_bstderr::
	.ds 2
_argv0::
	.ds 2
_wday::
	.ds 2
_advance::
	.ds 2
_CurLine::
	.ds 64
_CurLinep::
	.ds 2
_mflag::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_all::
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
;cases/./../tests/bug-2756.c:21: int bfprintf(FILE *_bstream, const char *__fmt, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function bfprintf
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bfprintf::
;cases/./../tests/bug-2756.c:23: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:24: }
;	genEndFunction
	ret
;	Total bfprintf function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:26: int bprintf(const char *_bfmt, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function bprintf
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bprintf::
;cases/./../tests/bug-2756.c:28: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:29: }
;	genEndFunction
	ret
;	Total bprintf function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:31: FILE *__fopen(const char *_bpath, int _bfd, FILE * _bstream, const char *_bmode)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fopen
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___fopen::
;cases/./../tests/bug-2756.c:33: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:34: }
;	genEndFunction
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total __fopen function size at codegen: 4 bytes.
;cases/./../tests/bug-2756.c:38: char *bgetenv(char *__name)
;	genLabel
;	genFunction
;	---------------------------------
; Function bgetenv
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bgetenv::
;cases/./../tests/bug-2756.c:40: return "env";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:41: }
;	genEndFunction
	ret
;	Total bgetenv function size at codegen: 1 bytes.
___str_0:
	.ascii "env"
	.db 0x00
;cases/./../tests/bug-2756.c:43: char *bfgets(char *_bs, size_t _bsize, FILE *_bstream)
;	genLabel
;	genFunction
;	---------------------------------
; Function bfgets
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bfgets::
;cases/./../tests/bug-2756.c:45: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:46: }
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total bfgets function size at codegen: 3 bytes.
;cases/./../tests/bug-2756.c:50: void err(int _beval, const char *_bfmt, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function err
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_err::
;cases/./../tests/bug-2756.c:52: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total err function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:54: void errx(int _beval, const char *_bfmt, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function errx
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_errx::
;cases/./../tests/bug-2756.c:56: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total errx function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:71: int pnmatch(const char *s, const char *p, int unanch)
;	genLabel
;	genFunction
;	---------------------------------
; Function pnmatch
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_pnmatch::
;cases/./../tests/bug-2756.c:73: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:74: }
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total pnmatch function size at codegen: 3 bytes.
;cases/./../tests/bug-2756.c:76: void usage(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function usage
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_usage::
;cases/./../tests/bug-2756.c:78: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total usage function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:80: int findmon1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function findmon1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_findmon1::
;cases/./../tests/bug-2756.c:82: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:83: }
;	genEndFunction
	ret
;	Total findmon1 function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:85: int findmon2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function findmon2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_findmon2::
;cases/./../tests/bug-2756.c:87: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:88: }
;	genEndFunction
	ret
;	Total findmon2 function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:90: int findmon3(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function findmon3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_findmon3::
;cases/./../tests/bug-2756.c:92: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:93: }
;	genEndFunction
	ret
;	Total findmon3 function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:95: int findday(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function findday
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_findday::
;cases/./../tests/bug-2756.c:97: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:98: }
;	genEndFunction
	ret
;	Total findday function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:100: int findyear(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function findyear
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_findyear::
;cases/./../tests/bug-2756.c:102: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:103: }
;	genEndFunction
	ret
;	Total findyear function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:105: int current(int opt)
;	genLabel
;	genFunction
;	---------------------------------
; Function current
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_current::
;cases/./../tests/bug-2756.c:107: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:108: }
;	genEndFunction
	ret
;	Total current function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:110: int date(int day, int month, int year)
;	genLabel
;	genFunction
;	---------------------------------
; Function date
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_date::
;cases/./../tests/bug-2756.c:112: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2756.c:113: }
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total date function size at codegen: 3 bytes.
;cases/./../tests/bug-2756.c:115: void doall(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function doall
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_doall::
;cases/./../tests/bug-2756.c:117: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total doall function size at codegen: 1 bytes.
;cases/./../tests/bug-2756.c:119: int m(int argc, char *argv[])
;	genLabel
;	genFunction
;	---------------------------------
; Function m
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 56 bytes.
_m::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -56
	ld	iy, #-56
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:136: argv0 = argv[0];
;	genPointerGet
;fetchPairLong
	ld	-4 (ix), e
	ld	-3 (ix), d
; common peephole 11 loaded lh from ed directly instead of going through -4 (ix) -3 (ix).
; common peephole 157 used ex to load de into hl.
	ex	de, hl
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_argv0+0), a
	inc	hl
	ld	(_argv0+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_argv0+1), a
;cases/./../tests/bug-2756.c:137: mflag = NONE; 				/* Default to no match */
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 19 loaded (#_mflag) from a directly instead of using hl.
;cases/./../tests/bug-2756.c:139: for (arg = 1; arg < argc; arg++)  { 	/* Read option string */
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_mflag), a
; common peephole 94a' reused constant #0 in a.
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0001
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-16 (ix), a
	ld	-15 (ix), a
;	genLabel
00199$:
;	genCmpLt
	ld	a, c
	sub	a, -2 (ix)
	ld	a, b
	sbc	a, -1 (ix)
	jp	po, 00500$
	xor	a, #0x80
00500$:
	jp	p, 00309$
;	skipping generated iCode
;cases/./../tests/bug-2756.c:140: cp = argv[arg];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-10 (ix), a
;cases/./../tests/bug-2756.c:141: sw:	switch (*cp) {
;	genLabel
00101$:
;	genPointerGet
;fetchPairLong
	ld	l, -11 (ix)
	ld	h, -10 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-9 (ix), a
;cases/./../tests/bug-2756.c:143: cp++;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -11 (ix)
	ld	h, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/bug-2756.c:141: sw:	switch (*cp) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00501$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x61
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00502$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x64
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00503$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x66
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00504$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x6d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00505$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x77
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00506$.
;	skipping generated iCode
;cases/./../tests/bug-2756.c:290: return 0;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;cases/./../tests/bug-2756.c:142: case '-':
;	genLabel
00102$:
;cases/./../tests/bug-2756.c:143: cp++;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-11 (ix), a
	ld	a, -7 (ix)
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:144: goto sw;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;cases/./../tests/bug-2756.c:145: case 'a':
;	genLabel
00103$:
;cases/./../tests/bug-2756.c:146: all = 1;
;	genAssign
;fetchPairLong
	ld	hl, #0x0001
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_all), hl
;cases/./../tests/bug-2756.c:147: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;cases/./../tests/bug-2756.c:148: case 'f':
;	genLabel
00104$:
;cases/./../tests/bug-2756.c:149: filename[arg-1] = ++cp;
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	e
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	rlca
	sbc	a, a
	ld	d, a
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
	add	hl, hl
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	e, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
	ld	(hl), e
;cases/./../tests/bug-2756.c:150: nfiles++;
;	genPlus
	inc	-6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 84 jumped to 00110$ directly instead of via 00507$.
	inc	-5 (ix)
; common peephole 159 removed unused label 00507$.
;cases/./../tests/bug-2756.c:151: continue;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;cases/./../tests/bug-2756.c:152: case 'd':
;	genLabel
00105$:
;cases/./../tests/bug-2756.c:153: matchstr = ++cp;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-16 (ix), a
	ld	a, -7 (ix)
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:154: mflag = DAY;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_mflag
	ld	(hl), #0x01
;cases/./../tests/bug-2756.c:155: continue;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;cases/./../tests/bug-2756.c:156: case 'w':
;	genLabel
00106$:
;cases/./../tests/bug-2756.c:157: matchstr = ++cp;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-16 (ix), a
	ld	a, -7 (ix)
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:158: mflag = WEEK;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_mflag
	ld	(hl), #0x02
;cases/./../tests/bug-2756.c:159: continue;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;cases/./../tests/bug-2756.c:160: case 'm':
;	genLabel
00107$:
;cases/./../tests/bug-2756.c:161: matchstr = ++cp;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-16 (ix), a
	ld	a, -7 (ix)
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:162: mflag = MONTH;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_mflag
	ld	(hl), #0x03
;cases/./../tests/bug-2756.c:167: }
;	genLabel
00110$:
;cases/./../tests/bug-2756.c:139: for (arg = 1; arg < argc; arg++)  { 	/* Read option string */
;	genPlus
	inc	bc
;	genGoto
	jp	00199$
;cases/./../tests/bug-2756.c:170: doall();
;	genLabel
00309$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:175: if (nfiles)  {
;	genIfx
	ld	a, -5 (ix)
	ld	-13 (ix), a
; common peephole 174c reused value still in a.
	or	a, -6 (ix)
	jp	z, 00127$
;cases/./../tests/bug-2756.c:176: for (arg = 0; arg < nfiles; arg++ )  {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genLabel
00201$:
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, -14 (ix)
	ld	a, -5 (ix)
	sbc	a, -13 (ix)
	jp	po, 00508$
	xor	a, #0x80
00508$:
	jp	p, 00128$
;	skipping generated iCode
;cases/./../tests/bug-2756.c:177: if ((fp[arg] = fopen(filename[arg], "r")) == NULL)
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-12 (ix), a
	ld	a, -5 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-12 (ix)
	rl	-11 (ix)
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #20
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	skipping iCode since result will be rematerialized
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -8 (ix) -7 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-7 (ix), a
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fopen
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), e
	ld	-7 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug-2756.c:176: for (arg = 0; arg < nfiles; arg++ )  {
;	genPlus
	inc	-6 (ix)
	jp	nz, 00201$
; common peephole 84 jumped to 00201$ directly instead of via 00510$.
	inc	-5 (ix)
; common peephole 159 removed unused label 00510$.
;	genGoto
	jp	00201$
;cases/./../tests/bug-2756.c:183: err(1, "cannot open any files specified");
;	genLabel
00127$:
;cases/./../tests/bug-2756.c:187: nfiles = 1;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), #0x01
	ld	-13 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-2756.c:188: if ((hp = bgetenv("HOME")) == NULL)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	_bgetenv
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:190: filename[0] = malloc(strlen(hp) + strlen(CALFILE) + 1);
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
; common peephole 11 loaded lh from ed directly instead of going through -12 (ix) -11 (ix).
; common peephole 157 used ex to load de into hl.
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_strlen
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
	ld	-9 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	_strlen
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), e
	ld	-7 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-6 (ix), l
	ld	-5 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -6 (ix) -5 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -8 (ix) -7 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_malloc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPointerSet
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-56 (ix), a
	ld	a, -5 (ix)
	ld	-55 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:193: strcpy(filename[0], hp);
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
00511$:
	cp	a, (hl)
	ldi
	jr	nz, 00511$
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-2756.c:194: strcat(filename[0], CALFILE);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcat
;cases/./../tests/bug-2756.c:195: if ((fp[0] = fopen(filename[0], "r")) == NULL)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -56 (ix)
	ld	-6 (ix), a
	ld	a, -55 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fopen
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-36 (ix), a
	ld	a, -5 (ix)
	ld	-35 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2756.c:196: err(1, "cannot open file $HOME/.calendar");
;	genLabel
00128$:
;cases/./../tests/bug-2756.c:201: switch (mflag)  {
;	genIfx
; common peephole 1 removed dead load from (_mflag+0) into a.
; common peephole 6b removed dead or a, a
; common peephole 163 changed absolute to relative conditional jump.
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
; common peephole 1 removed dead load from (_mflag) into a.
; common peephole 6a removed dead dec a
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 84 jumped to 00305$ directly instead of via 00131$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00512$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
; common peephole 84 jumped to 00305$ directly instead of via 00131$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00513$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
; common peephole 1 removed dead load from (_mflag) into a.
; common peephole 6c removed dead cp a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 107 removed load from (_mflag) into a by replacing sub with cp
; common peephole 6b removed dead sub a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00514$.
;	skipping generated iCode
;	genGoto
;cases/./../tests/bug-2756.c:206: case WEEK:
;	genLabel
; common peephole 159 removed unused label 00131$.
;cases/./../tests/bug-2756.c:207: if (*matchstr == '\0') 
;	genPointerGet
;fetchPairLong
; common peephole 7 removed dead load from -16 (ix) into l.
; common peephole 7 removed dead load from -15 (ix) into h.
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into a.
;cases/./../tests/bug-2756.c:208: matchdate = current(0);
;	genGoto
;cases/./../tests/bug-2756.c:221: case MONTH:
;	genLabel
;cases/./../tests/bug-2756.c:222: if (*matchstr == '\0')
;	genPointerGet
;fetchPairLong
; common peephole 7 removed dead load from -16 (ix) into l.
; common peephole 7 removed dead load from -15 (ix) into h.
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into a.
;cases/./../tests/bug-2756.c:235: for (arg = 0; arg < nfiles; arg++) {
;	genLabel
; common peephole 85b eliminated jump.
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00141$.
; common peephole 159 removed unused label 00305$.
; common peephole 164 eliminated relative conditional jump.
; common peephole 164 eliminated relative conditional jump.
; common peephole 164 eliminated relative conditional jump.
; common peephole 164 eliminated relative conditional jump.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genLabel
00204$:
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, -14 (ix)
	ld	a, -5 (ix)
	sbc	a, -13 (ix)
	jp	po, 00515$
	xor	a, #0x80
00515$:
	jp	p, 00197$
;	skipping generated iCode
;cases/./../tests/bug-2756.c:236: if (fp[arg] == NULL)
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -6 (ix)
	ld	b, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	hl, #20
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -8 (ix) -7 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through b.
	ld	a, (hl)
	inc	hl
; common peephole 99a removed load by reordering or arguments.
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00196$
;cases/./../tests/bug-2756.c:238: while ((thisline = bfgets(CurLine,sizeof(CurLine),fp[arg]))!=NULL) {
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00193$:
;	genPointerGet
;fetchPairLong
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0040
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_CurLine
;	genCall
	call	_bfgets
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00196$
;cases/./../tests/bug-2756.c:239: CurLinep = &CurLine[0];
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_CurLine
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_CurLinep), hl
;cases/./../tests/bug-2756.c:240: advance = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_advance), hl
;cases/./../tests/bug-2756.c:241: if ((atsign = strchr(CurLinep, '@')) != NULL)
;	genBuiltIn
	ld	d, #0x40
;fetchPairLong
	ld	bc, (_CurLinep)
00518$:
	ld	a, (bc)
	cp	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00517$
	or	a, a
	inc	bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00518$
	ld	c, a
	ld	b, a
00517$:
;	skipping generated iCode
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00151$
;cases/./../tests/bug-2756.c:242: advance = atoi(atsign + 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -8 (ix) -7 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_atoi
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_advance), de
;	genLabel
00151$:
;cases/./../tests/bug-2756.c:243: if ((thismonth = findmon3()) == -1)
;	genCall
	call	_findmon3
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
; common peephole 1 removed dead load from e into a.
; common peephole 6b removed dead and a, d
; common peephole 6a removed dead inc a
; common peephole 1 removed dead load from #0x01 into a.
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00519$.
; common peephole 6b removed dead xor a, a
; common peephole 159 removed unused label 00520$.
; common peephole 164 eliminated relative conditional jump.
;cases/./../tests/bug-2756.c:245: if ((thisday = findday()) == -1)
;	genCall
	call	_findday
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
; common peephole 1 removed dead load from e into a.
; common peephole 6b removed dead and a, d
; common peephole 6a removed dead inc a
; common peephole 1 removed dead load from #0x01 into a.
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00521$.
; common peephole 6b removed dead xor a, a
; common peephole 159 removed unused label 00522$.
; common peephole 164 eliminated relative conditional jump.
;cases/./../tests/bug-2756.c:247: if ((thisyear = findyear()) == -1)
;	genCall
	call	_findyear
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
; common peephole 1 removed dead load from e into a.
; common peephole 6b removed dead and a, d
; common peephole 6a removed dead inc a
; common peephole 1 removed dead load from #0x01 into a.
; common peephole 84 jumped to 00193$ directly instead of via 00524$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00523$.
; common peephole 6b removed dead xor a, a
; common peephole 159 removed unused label 00524$.
;cases/./../tests/bug-2756.c:270: break;
;	genGoto
; common peephole 78 removed redundant jp
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00193$
;cases/./../tests/bug-2756.c:285: thisline = NULL;
;	genLabel
00196$:
;cases/./../tests/bug-2756.c:235: for (arg = 0; arg < nfiles; arg++) {
;	genPlus
	inc	-6 (ix)
	jp	nz, 00204$
; common peephole 84 jumped to 00204$ directly instead of via 00525$.
	inc	-5 (ix)
; common peephole 159 removed unused label 00525$.
;	genGoto
	jp	00204$
;	genLabel
00197$:
;cases/./../tests/bug-2756.c:290: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00205$.
;cases/./../tests/bug-2756.c:291: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total m function size at codegen: 10 bytes.
___str_2:
	.ascii "r"
	.db 0x00
___str_5:
	.ascii "HOME"
	.db 0x00
___str_7:
	.ascii "/.calendar"
	.db 0x00
;cases/./../tests/bug-2756.c:295: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2756.c:297: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 6 bytes.
;cases/tst_bug-2756.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2756.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genCall
;cases/tst_bug-2756.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2756.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_13:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2756.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2756.c:15: return "bug-2756.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2756.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_14:
	.ascii "bug-2756.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__all:
	.dw #0x0000
	.area _CABS (ABS)
