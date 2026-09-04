;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3166
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _match
	.globl ___prints
	.globl ___fail
	.globl _rule_terminal
	.globl _rule
	.globl _rule_alts_lists
	.globl _rule_seq_lists
	.globl _bad_stack
	.globl _good_pool
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
_good_pool::
	.ds 260
_bad_stack::
	.ds 102
_match_pos_10000_14:
	.ds 2
_match_bad_sp_10000_14:
	.ds 2
_match_good_alloc_10000_14:
	.ds 2
_match_good_10000_14:
	.ds 2
_match_rgood_10000_14:
	.ds 2
_match_alts_10000_14:
	.ds 2
_match_seq_10000_14:
	.ds 2
_match_rpos_10000_14:
	.ds 2
_match_ruleno_10000_14:
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_rule_seq_lists::
	.ds 18
_rule_alts_lists::
	.ds 10
_rule::
	.ds 8
_rule_terminal::
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
;cases/./../tests/bug-3166.c:43: int match(char* pos_arg)
;	genLabel
;	genFunction
;	---------------------------------
; Function match
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_match::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_pos_10000_14), hl
;cases/./../tests/bug-3166.c:65: bad_sp     = bad_stack;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_bad_stack
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_match_bad_sp_10000_14), hl
;cases/./../tests/bug-3166.c:66: good_alloc = good_pool;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_good_pool
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_match_good_alloc_10000_14), hl
;cases/./../tests/bug-3166.c:67: good       = NULL;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_good_10000_14), hl
;cases/./../tests/bug-3166.c:68: rgood      = NULL;
;	genAssign
;fetchPairLong
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_rgood_10000_14), hl
;cases/./../tests/bug-3166.c:69: alts       = NULL;
;	genAssign
;fetchPairLong
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_alts_10000_14), hl
;cases/./../tests/bug-3166.c:70: seq        = NULL;
;	genAssign
;fetchPairLong
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_seq_10000_14), hl
;cases/./../tests/bug-3166.c:71: rpos       = NULL;
;	genAssign
;fetchPairLong
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_rpos_10000_14), hl
;cases/./../tests/bug-3166.c:72: ruleno     = 0;
;	genAssign
;fetchPairLong
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_ruleno_10000_14), hl
;cases/./../tests/bug-3166.c:74: while (1) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00119$:
;cases/./../tests/bug-3166.c:78: alts = rule[ruleno];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_ruleno_10000_14)
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_rule
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_match_alts_10000_14+0), a
	inc	hl
	ld	(_match_alts_10000_14+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_match_alts_10000_14+1), a
;cases/./../tests/bug-3166.c:81: rpos = pos;
;	genAssign
;fetchPairLong
	ld	hl, (_match_pos_10000_14)
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3166.c:79: if (alts) {
;	genIfx
	ld	a, (_match_alts_10000_14+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_match_alts_10000_14
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/bug-3166.c:80: rgood = good;
;	genAssign
;fetchPairLong
	ld	hl, (_match_good_10000_14)
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_rgood_10000_14), hl
;cases/./../tests/bug-3166.c:81: rpos = pos;
;	genAssign
;fetchPairLong
	pop	hl
	push	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_rpos_10000_14), hl
;cases/./../tests/bug-3166.c:82: goto first_alt;
;	genGoto
	jp	00115$
;	genLabel
00102$:
;cases/./../tests/bug-3166.c:85: if (*pos != rule_terminal[ruleno])
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_rule_terminal
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_match_ruleno_10000_14)
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00195$.
	jp	nz, 00112$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00196$.
;	skipping generated iCode
;cases/./../tests/bug-3166.c:87: ++pos;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_pos_10000_14)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_pos_10000_14), hl
;cases/./../tests/bug-3166.c:88: success:
;	genLabel
00105$:
;cases/./../tests/bug-3166.c:89: if (!good) {
;	genIfx
	ld	a, (_match_good_10000_14+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_match_good_10000_14
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
;cases/./../tests/bug-3166.c:90: if (*pos != '\0')
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_pos_10000_14)
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;cases/./../tests/bug-3166.c:92: return 1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	jp	00121$
;	genLabel
00109$:
;cases/./../tests/bug-3166.c:94: seq = good->seq;
;	genPointerGet
;fetchPairLong
	ld	hl, (_match_good_10000_14)
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_match_seq_10000_14+0), a
	inc	hl
	ld	(_match_seq_10000_14+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_match_seq_10000_14+1), a
;cases/./../tests/bug-3166.c:95: good = good->prev;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_good_10000_14)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_match_good_10000_14+0), a
	inc	hl
	ld	(_match_good_10000_14+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_match_good_10000_14+1), a
;cases/./../tests/bug-3166.c:96: ruleno = *seq++;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_seq_10000_14)
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_match_ruleno_10000_14+0), a
	inc	hl
	ld	(_match_ruleno_10000_14+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_match_ruleno_10000_14+1), a
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_seq_10000_14)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3166.c:97: if (*seq >= 0) {
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(_match_seq_10000_14), hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into c.
	inc	hl
;	_moveFrom_tpair_()
;	genCmpLt
; common peephole 73 tested bit 7 of (hl) directly instead of going through b.
	bit	7, (hl)
	jp	nz, 00119$
;	skipping generated iCode
;cases/./../tests/bug-3166.c:98: struct good* ngood = good_alloc++;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_match_good_alloc_10000_14)
;	genPlus
;	Shift into pair
	ld	hl, #_match_good_alloc_10000_14
	ld	a, (hl)
	add	a, #0x04
	ld	(hl), a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00197$
	inc	hl
	inc	(hl)
00197$:
;cases/./../tests/bug-3166.c:99: ngood->seq = seq;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_seq_10000_14)
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_seq_10000_14 + 1)
	ld	(hl), a
;cases/./../tests/bug-3166.c:100: ngood->prev = good;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	de
	inc	de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_match_good_10000_14)
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_match_good_10000_14 + 1)
	ld	(de), a
;cases/./../tests/bug-3166.c:101: good = ngood;
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_good_10000_14), bc
;cases/./../tests/bug-3166.c:103: continue;
;	genGoto
	jp	00119$
;cases/./../tests/bug-3166.c:104: failure:
;	genLabel
00112$:
;cases/./../tests/bug-3166.c:105: if (bad_sp == bad_stack) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_bad_sp_10000_14)
	sub	a, #<(_bad_stack)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00198$.
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_bad_sp_10000_14 + 1)
	sub	a, #>(_bad_stack)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00198$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00199$.
;	skipping generated iCode
;cases/./../tests/bug-3166.c:106: return 0;       
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	jp	00121$
;	genLabel
00114$:
;cases/./../tests/bug-3166.c:108: --bad_sp;
;	genMinus
;	Shift into pair
	ld	hl, #_match_bad_sp_10000_14
	ld	a, (hl)
	add	a, #0xfa
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
;cases/./../tests/bug-3166.c:109: alts = bad_sp->alts;
;	genPointerGet
;fetchPairLong
	ld	hl, (_match_bad_sp_10000_14)
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_match_alts_10000_14+0), a
	inc	hl
	ld	(_match_alts_10000_14+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_match_alts_10000_14+1), a
;cases/./../tests/bug-3166.c:110: rgood = bad_sp->old_good;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_match_bad_sp_10000_14)
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #4
	add	hl, bc
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_match_rgood_10000_14+0), a
	inc	hl
	ld	(_match_rgood_10000_14+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_match_rgood_10000_14+1), a
;cases/./../tests/bug-3166.c:111: rpos = bad_sp->old_pos;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_match_rpos_10000_14+0), a
	inc	hl
	ld	(_match_rpos_10000_14+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_match_rpos_10000_14+1), a
;cases/./../tests/bug-3166.c:112: first_alt:
;	genLabel
00115$:
;cases/./../tests/bug-3166.c:113: good = good_alloc++;
;	genAssign
;fetchPairLong
	ld	hl, (_match_good_alloc_10000_14)
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_good_10000_14), hl
;	genPlus
;	Shift into pair
	ld	hl, #_match_good_alloc_10000_14
	ld	a, (hl)
	add	a, #0x04
	ld	(hl), a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00200$
	inc	hl
	inc	(hl)
00200$:
;cases/./../tests/bug-3166.c:114: good->seq = *alts++;
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_match_good_10000_14)
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_alts_10000_14)
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_match_alts_10000_14)
	inc	hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_match_alts_10000_14), hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
	inc	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/bug-3166.c:115: good->prev = rgood;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_good_10000_14)
;	genPlus
	inc	hl
	inc	hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_rgood_10000_14)
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_rgood_10000_14 + 1)
	ld	(hl), a
;cases/./../tests/bug-3166.c:116: pos = rpos;
;	genAssign
;fetchPairLong
	ld	hl, (_match_rpos_10000_14)
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_match_pos_10000_14), hl
;cases/./../tests/bug-3166.c:117: if (*alts) {
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_alts_10000_14)
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through b.
	ld	a, (hl)
	inc	hl
; common peephole 99a removed load by reordering or arguments.
	or	a, (hl)
	jp	z, 00105$
;cases/./../tests/bug-3166.c:118: bad_sp->alts = alts;
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_bad_sp_10000_14)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_alts_10000_14)
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_alts_10000_14 + 1)
	ld	(hl), a
;cases/./../tests/bug-3166.c:119: bad_sp->old_good = rgood;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_bad_sp_10000_14)
;	genPlus
;fetchPairLong
	ld	bc, #0x0004
	add	hl, bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_rgood_10000_14)
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_rgood_10000_14 + 1)
	ld	(hl), a
;cases/./../tests/bug-3166.c:120: bad_sp->old_pos  = pos;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_match_bad_sp_10000_14)
;	genPlus
	inc	hl
	inc	hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_pos_10000_14)
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_match_pos_10000_14 + 1)
	ld	(hl), a
;cases/./../tests/bug-3166.c:121: ++bad_sp;
;	genPlus
;	Shift into pair
	ld	hl, #_match_bad_sp_10000_14
	ld	a, (hl)
	add	a, #0x06
	ld	(hl), a
	jp	nc, 00105$
; common peephole 84 jumped to 00105$ directly instead of via 00201$.
	inc	hl
	inc	(hl)
; common peephole 159 removed unused label 00201$.
;cases/./../tests/bug-3166.c:123: goto success;
;	genGoto
	jp	00105$
;	genLabel
00121$:
;cases/./../tests/bug-3166.c:125: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total match function size at codegen: 5 bytes.
;cases/./../tests/bug-3166.c:129: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3166.c:132: ASSERT (match("baaab"));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	_match
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0084
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
;cases/./../tests/bug-3166.c:134: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "baaab"
	.db 0x00
___str_1:
	.ascii "Assertion failed"
	.db 0x00
___str_2:
	.ascii "match("
	.db 0x22
	.ascii "baaab"
	.db 0x22
	.ascii ")"
	.db 0x00
___str_3:
	.ascii "cases/./../tests/bug-3166.c"
	.db 0x00
;cases/tst_bug-3166.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3166.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug-3166.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3166.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3166.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3166.c:15: return "bug-3166.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3166.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-3166.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__rule_seq_lists:
	.dw #0x0003
	.dw #0x0001
	.dw #0x0003
	.dw #0xffff
	.dw #0x0002
	.dw #0xffff
	.dw #0x0002
	.dw #0x0001
	.dw #0xffff
__xinit__rule_alts_lists:
	.dw (_rule_seq_lists + 0)
	.dw #0x0000
	.dw (_rule_seq_lists + 8)
	.dw (_rule_seq_lists + 12)
	.dw #0x0000
__xinit__rule:
	.dw (_rule_alts_lists + 0)
	.dw (_rule_alts_lists + 4)
	.dw #0x0000
	.dw #0x0000
__xinit__rule_terminal:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.area _CABS (ABS)
