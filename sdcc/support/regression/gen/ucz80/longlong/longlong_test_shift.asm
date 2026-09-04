;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module longlong_test_shift
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testLongLong
	.globl _LongLong_shift
	.globl ___prints
	.globl ___fail
	.globl _i
	.globl _y
	.globl _x
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
_x::
	.ds 8
_y::
	.ds 8
_i::
	.ds 2
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
;cases/longlong/longlong_test_shift.c:281: LongLong_shift (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function LongLong_shift
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_LongLong_shift::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/longlong/longlong_test_shift.c:284: for (i=0;i<64;i++) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00115$:
;cases/longlong/longlong_test_shift.c:285: y = 1ull << i;
;	genLeftShift
	ld	b, c
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_y
	ld	0 (iy), #0x01
	xor	a, a
	ld	(_y+1), a
	ld	(_y+2), a
	ld	(_y+3), a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	(_y+7), a
;	genMove_o size 0 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00296$
00295$:
	sla	0 (iy)
	rl	1 (iy)
	rl	2 (iy)
	rl	3 (iy)
	rl	4 (iy)
	rl	5 (iy)
	rl	6 (iy)
	rl	7 (iy)
00296$:
	djnz	00295$
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:287: for (j=0;j<64;j++) {
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00113$:
;cases/longlong/longlong_test_shift.c:288: expected = (j==i);
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00298$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00297$.
	xor	a, a
00298$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:289: if ((unsigned char)(y & 1) == expected)
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_y)
;	genAnd
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00299$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00300$.
;	skipping generated iCode
;cases/longlong/longlong_test_shift.c:290: match++;
;	genPlus
	inc	e
;	genLabel
00102$:
;cases/longlong/longlong_test_shift.c:291: y >>= 1;
;	genRightShift
	ld	iy, #_y
	srl	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:287: for (j=0;j<64;j++) {
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00113$
;	skipping generated iCode
;cases/longlong/longlong_test_shift.c:293: ASSERT (match==64);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00303$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0125
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
	pop	bc
;	genLabel
00116$:
;cases/longlong/longlong_test_shift.c:284: for (i=0;i<64;i++) {
;	genPlus
	inc	c
;	genCmpLt
	ld	a, c
	sub	a, #0x40
	jp	c, 00115$
;	skipping generated iCode
;cases/longlong/longlong_test_shift.c:296: for (i=0;i<64;i++) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), #0x00
;	genLabel
00119$:
;cases/longlong/longlong_test_shift.c:297: y = 0x8000000000000000ull >> i;
;	genRightShift
	ld	b, -3 (ix)
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_y+0), a
	ld	(_y+1), a
	ld	(_y+2), a
	ld	(_y+3), a
	ld	(_y+4), a
	ld	(_y+5), a
	ld	(_y+6), a
	ld	iy, #_y
	ld	7 (iy), #0x80
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00305$
00304$:
	srl	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
00305$:
	djnz	00304$
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:299: for (j=0;j<64;j++) {
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x00
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00117$:
;cases/longlong/longlong_test_shift.c:300: expected = (j==i);
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00307$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00306$.
	xor	a, a
00307$:
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:301: if ((y & 0x8000000000000000ull) ? expected : !expected)
;	genAnd
; common peephole 61 used hl instead of iy.
	ld	hl, #_y + 7
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00308$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00130$
;	genLabel
00129$:
;	genNot
	ld	a, -4 (ix)
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genLabel
00130$:
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;cases/longlong/longlong_test_shift.c:302: match++;
;	genPlus
	inc	-2 (ix)
;	genLabel
00106$:
;cases/longlong/longlong_test_shift.c:303: y <<= 1;
;	genLeftShift
	ld	iy, #_y
	sla	0 (iy)
	rl	1 (iy)
	rl	2 (iy)
	rl	3 (iy)
	rl	4 (iy)
	rl	5 (iy)
	rl	6 (iy)
	rl	7 (iy)
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:299: for (j=0;j<64;j++) {
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00117$
;	skipping generated iCode
;cases/longlong/longlong_test_shift.c:305: ASSERT (match==64);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00311$.
;	skipping generated iCode
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #___str_2
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0131
	push	hl
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00120$:
;cases/longlong/longlong_test_shift.c:296: for (i=0;i<64;i++) {
;	genPlus
	inc	-3 (ix)
;	genCmpLt
	ld	a, -3 (ix)
	sub	a, #0x40
	jp	c, 00119$
;	skipping generated iCode
;cases/longlong/longlong_test_shift.c:308: for (i=0;i<64;i++) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), #0x00
;	genLabel
00123$:
;cases/longlong/longlong_test_shift.c:309: x = (signed long long)0x8000000000000000ll >> i;
;	genRightShift
	ld	b, -3 (ix)
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_x+0), a
	ld	(_x+1), a
	ld	(_x+2), a
	ld	(_x+3), a
	ld	(_x+4), a
	ld	(_x+5), a
	ld	(_x+6), a
	ld	iy, #_x
	ld	7 (iy), #0x80
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00313$
00312$:
	sra	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
00313$:
	djnz	00312$
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:311: for (j=0;j<64;j++) {
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x00
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00121$:
;cases/longlong/longlong_test_shift.c:312: expected = (j<=i);
;	genCmpGt
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genNot
	xor	a, #0x01
;	genCast
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:313: if ((x & 0x8000000000000000ll) ? expected : !expected)
;	genAnd
; common peephole 61 used hl instead of iy.
	ld	hl, #_x + 7
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00133$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00314$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00134$
;	genLabel
00133$:
;	genNot
	ld	a, -4 (ix)
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genLabel
00134$:
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
;cases/longlong/longlong_test_shift.c:314: match++;
;	genPlus
	inc	-2 (ix)
;	genLabel
00110$:
;cases/longlong/longlong_test_shift.c:315: x <<= 1;
;	genLeftShift
	ld	iy, #_x
	sla	0 (iy)
	rl	1 (iy)
	rl	2 (iy)
	rl	3 (iy)
	rl	4 (iy)
	rl	5 (iy)
	rl	6 (iy)
	rl	7 (iy)
;	genMove_o size 8 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/longlong/longlong_test_shift.c:311: for (j=0;j<64;j++) {
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00121$
;	skipping generated iCode
;cases/longlong/longlong_test_shift.c:317: ASSERT (match==64);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00317$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x013d
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
00124$:
;cases/longlong/longlong_test_shift.c:308: for (i=0;i<64;i++) {
;	genPlus
	inc	-3 (ix)
;	genCmpLt
	ld	a, -3 (ix)
	sub	a, #0x40
	jp	c, 00123$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00125$.
;cases/longlong/longlong_test_shift.c:320: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total LongLong_shift function size at codegen: 11 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "match==64"
	.db 0x00
___str_2:
	.ascii "cases/longlong/longlong_test_shift.c"
	.db 0x00
;cases/longlong/longlong_test_shift.c:327: testLongLong (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testLongLong
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testLongLong::
;cases/longlong/longlong_test_shift.c:330: LongLong_shift();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_shift.c:332: }
;	genEndFunction
	jp	_LongLong_shift
; common peephole 152 removed unused ret.
;	Total testLongLong function size at codegen: 1 bytes.
;cases/longlong/longlong_test_shift.c:336: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/longlong/longlong_test_shift.c:338: __prints("Running testLongLong\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/longlong/longlong_test_shift.c:339: testLongLong();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_shift.c:340: }
;	genEndFunction
	jp	_testLongLong
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testLongLong"
	.db 0x0a
	.db 0x00
;cases/longlong/longlong_test_shift.c:345: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/longlong/longlong_test_shift.c:347: return "longlong_test_shift";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/longlong/longlong_test_shift.c:348: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "longlong_test_shift"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
