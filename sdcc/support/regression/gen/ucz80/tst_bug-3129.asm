;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3129
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _c90lib_lnlc
	.globl _calc_neighbour_degrees
	.globl _cmp
	.globl _permtest
	.globl _maprecolor
	.globl _do_recolor
	.globl _sprintf
	.globl _strrchr
	.globl _strcmp
	.globl _memcmp
	.globl _qsort
	.globl _free
	.globl _malloc
	.globl ___prints
	.globl ___fail
	.globl _stdcbench_buffer
	.globl _max_k
	.globl _ref_n
	.globl _ref_adjacency_matrix
	.globl ___numCases
	.globl _stdcbench_name_version_string
	.globl _add
	.globl _recolor
	.globl _test
	.globl _check_lnlc
	.globl _stdcbench_error
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_adjacency_matrix:
	.ds 64
_n:
	.ds 1
_node_degrees:
	.ds 8
_degree_list:
	.ds 8
_num_edges:
	.ds 1
_k:
	.ds 1
_node_colors:
	.ds 8
_ref_adjacency_matrix::
	.ds 64
_ref_n::
	.ds 1
_ref_node_degrees:
	.ds 8
_ref_degree_list:
	.ds 8
_ref_mindeg:
	.ds 1
_ref_maxdeg:
	.ds 1
_ref_num_edges:
	.ds 1
_ref_neighbour_degrees:
	.ds 8
_max_k::
	.ds 1
_instructions:
	.ds 2
_recolormap:
	.ds 4
_testperm:
	.ds 8
_stdcbench_buffer::
	.ds 1536
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
;cases/./../tests/bug-3129.c:73: bool add(void) __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function add
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 28 bytes.
_add::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -28
	ld	hl, #-28
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-3129.c:75: bool ret = false;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x00
;cases/./../tests/bug-3129.c:85: memcpy(node_degrees_backup, node_degrees, MAX_N * sizeof(node_t)); /* Copying fixed size is more efficient than copying only the part needed. */
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_node_degrees
;fetchPairLong
	ld	bc, #0x0008
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:86: memcpy(degree_list_backup, degree_list, MAX_N * sizeof(node_t));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_degree_list
;fetchPairLong
	ld	bc, #0x0008
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:87: num_edges_backup = num_edges;
;	genAssign
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_num_edges+0)
	ld	-7 (ix), a
;cases/./../tests/bug-3129.c:89: for(connect_colors = 0; connect_colors < (1 << k) && !ret; connect_colors++) /* New node can connect to any subset of existing colors. */
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x00
;	genLabel
00152$:
;	genLeftShift
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_k + 0)
	ld	b, a
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00387$
00386$:
	add	hl, hl
00387$:
	djnz	00386$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00388$
	xor	a, #0x80
00388$:
	jp	p, 00133$
;	skipping generated iCode
;	genIfx
	bit	0, -8 (ix)
	jp	nz, 00133$
;cases/./../tests/bug-3129.c:91: node_degrees[n] = 0;
;	genPlus
	ld	a, #<(_node_degrees)
;	Shift into pair
	ld	hl, #_n
	add	a, (hl)
	ld	-4 (ix), a
	ld	a, #>(_node_degrees)
	adc	a, #0x00
	ld	-3 (ix), a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;cases/./../tests/bug-3129.c:92: n++;
;	genPlus
	ld	hl, #_n
	inc	(hl)
;cases/./../tests/bug-3129.c:93: memset(adjacency_matrix[n - 1], 0, (n - 1) * sizeof(bool)); /* Doing it once here is faster than having an else branch in the loop below. */
;	genCast
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n+0)
	ld	-1 (ix), a
;	genMinus
	dec	-1 (ix)
;	genCast
;	genMove_o size 0 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), a
	rlca
	sbc	a, a
	ld	-3 (ix), a
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-26 (ix), a
	ld	a, -3 (ix)
	ld	-25 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x03
00389$:
	sla	-26 (ix)
	rl	-25 (ix)
	djnz	00389$
;	genPlus
	ld	a, #<(_adjacency_matrix)
	add	a, -26 (ix)
	ld	-4 (ix), a
	ld	a, #>(_adjacency_matrix)
	adc	a, -25 (ix)
	ld	-3 (ix), a
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-28 (ix), a
	ld	a, -3 (ix)
	ld	-27 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n+0)
	ld	-26 (ix), a
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-25 (ix), #0x00
;	genMinus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	pop	hl
	pop	bc
	push	bc
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	dec	bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), c
	ld	-3 (ix), b
; common peephole 11 loaded lh from cb directly instead of going through -4 (ix) -3 (ix).
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 29 pushed bc directly instead of going through hl.
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -28 (ix)
	ld	h, -27 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_memset
;cases/./../tests/bug-3129.c:96: for(i = 0; i < n - 1; i++)
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00135$:
;	genCast
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n+0)
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
;fetchPairLong
	ld	-26 (ix), a
	ld	-25 (ix), #0x00
; common peephole 11 loaded cb from a#0x00 directly instead of going through -26 (ix) -25 (ix).
	ld	c, a
	ld	b, #0x00
	dec	bc
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;cases/./../tests/bug-3129.c:93: memset(adjacency_matrix[n - 1], 0, (n - 1) * sizeof(bool)); /* Doing it once here is faster than having an else branch in the loop below. */
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_n)
;cases/./../tests/bug-3129.c:105: adjacency_matrix[n - 1][i] = true;
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
;	genCast
;	genMove_o size 0 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-4 (ix), a
	rlca
	sbc	a, a
	ld	-3 (ix), a
;cases/./../tests/bug-3129.c:96: for(i = 0; i < n - 1; i++)
;	genCmpLt
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	po, 00390$
	xor	a, #0x80
00390$:
	jp	p, 00107$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:97: if (connect_colors & (1 << node_colors[i]))
;	genPlus
	ld	a, #<(_node_colors)
	add	a, -1 (ix)
	ld	l, a
	ld	a, #>(_node_colors)
	adc	a, #0x00
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00392$
00391$:
	add	hl, hl
00392$:
	djnz	00391$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, l
	and	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genIfx
	or	a, c
	jp	z, 00136$
;cases/./../tests/bug-3129.c:99: num_edges++;
;	genPlus
	ld	hl, #_num_edges
	inc	(hl)
;cases/./../tests/bug-3129.c:100: if(num_edges + (ref_n - n) * ref_mindeg / 2 > ref_num_edges) /* Early abort when there are too many edges already. */
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_num_edges)
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_n)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into e.
;	genMinus
	sub	a, -26 (ix)
	ld	l, a
	sbc	a, a
	ld	h, a
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_mindeg+0)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	bit	7, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00156$
;	skipping generated iCode
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	de
;	genLabel
00156$:
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, bc
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_num_edges+0)
	ld	e, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genCmpGt
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	po, 00393$
	xor	a, #0x80
00393$:
	jp	m, 00132$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:102: if(num_edges - num_edges_backup > ref_maxdeg) /* Early abort when there are too many edges at the new node already. */
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
;	genMinus
	ld	a, c
	sub	a, e
	ld	c, a
	sbc	a, a
	ld	b, a
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_maxdeg)
	ld	e, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genCmpGt
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	po, 00394$
	xor	a, #0x80
00394$:
	jp	m, 00132$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:105: adjacency_matrix[n - 1][i] = true;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_adjacency_matrix
	add	hl, de
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
	add	hl, de
;	genPointerSet
	ld	(hl), #0x01
;cases/./../tests/bug-3129.c:107: degree_list[node_degrees[i]]--;
;	genPlus
	ld	a, #<(_node_degrees)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_node_degrees)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_degree_list
	add	hl, de
;	genPointerGet
;	genMinus
;	genPointerSet
	dec	(hl)
; common peephole 1 removed dead load from (hl) into e.
; common peephole 104b dec (hl) directly to remove redundant load from e into (hl)
;cases/./../tests/bug-3129.c:108: node_degrees[i]++;
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	inc	a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/bug-3129.c:109: degree_list[node_degrees[i]]++;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_degree_list
	add	hl, de
;	genPointerGet
;	genPlus
;	genPointerSet
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
;cases/./../tests/bug-3129.c:111: node_degrees[n - 1]++;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_node_degrees
	add	hl, bc
;	genPointerGet
;	genPlus
;	genPointerSet
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
;	genLabel
00136$:
;cases/./../tests/bug-3129.c:96: for(i = 0; i < n - 1; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
	jp	00135$
;	genLabel
00107$:
;cases/./../tests/bug-3129.c:113: degree_list[node_degrees[n - 1]]++;
;	genPlus
	ld	a, #<(_node_degrees)
	add	a, -4 (ix)
	ld	l, a
	ld	a, #>(_node_degrees)
	adc	a, -3 (ix)
	ld	h, a
;	genPointerGet
	ld	c, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	hl, #_degree_list
	ld	b, #0x00
	add	hl, bc
;	genPointerGet
;	genPlus
;	genPointerSet
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
;cases/./../tests/bug-3129.c:115: if(num_edges + (ref_n - n) * ref_maxdeg < ref_num_edges) /* Early abort when there are too few edges still. */
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_num_edges)
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_n)
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n+0)
	ld	e, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genMinus
	cp	a, a
	sbc	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_maxdeg+0)
	ld	e, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, bc
;	genCast
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_num_edges+0)
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genCmpLt
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jp	po, 00395$
	xor	a, #0x80
00395$:
	jp	m, 00132$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:118: if(n == ref_n)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ref_n
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00396$.
	jp	nz, 00118$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00397$.
;	skipping generated iCode
;cases/./../tests/bug-3129.c:120: if(test())
;	genCall
	call	_test
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
	jp	z, 00132$
;cases/./../tests/bug-3129.c:122: if(instructions)
;	genIfx
	ld	a, (_instructions+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_instructions
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;cases/./../tests/bug-3129.c:124: instructions += sprintf(instructions, "Add node %d of color 0, connect it to nodes of the following colors: ", n - 1);
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genMinus
;fetchPairLong
	ld	c, a
	dec	bc
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_instructions)
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
; common peephole 9 loaded a from e directly instead of going through c.
	ld	a, e
;	Shift into pair
	ld	hl, #_instructions
	add	a, (hl)
	ld	(hl), a
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	adc	a, (hl)
	ld	(hl), a
;cases/./../tests/bug-3129.c:125: for(i = 0; i < k; i++)
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00138$:
;	genCmpLt
	ld	a, -1 (ix)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_k
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00112$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:126: if (connect_colors & (1 << i))
;	genLeftShift
	ld	b, -1 (ix)
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00399$
00398$:
	add	hl, hl
00399$:
	djnz	00398$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, l
	and	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00139$
;cases/./../tests/bug-3129.c:127: instructions += sprintf(instructions, "%d ", i);
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_instructions)
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
; common peephole 9 loaded a from e directly instead of going through c.
	ld	a, e
;	Shift into pair
	ld	hl, #_instructions
	add	a, (hl)
	ld	(hl), a
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	adc	a, (hl)
	ld	(hl), a
;	genLabel
00139$:
;cases/./../tests/bug-3129.c:125: for(i = 0; i < k; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00138$
;	genLabel
00112$:
;cases/./../tests/bug-3129.c:128: instructions += sprintf(instructions, "\n");
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_instructions)
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
; common peephole 9 loaded a from e directly instead of going through c.
	ld	a, e
;	Shift into pair
	ld	hl, #_instructions
	add	a, (hl)
	ld	(hl), a
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	adc	a, (hl)
	ld	(hl), a
;	genLabel
00114$:
;cases/./../tests/bug-3129.c:131: ret = true;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x01
;cases/./../tests/bug-3129.c:133: goto tried;
;	genGoto
	jp	00132$
;	genLabel
00118$:
;cases/./../tests/bug-3129.c:137: sum = 0;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/bug-3129.c:138: ref_sum = 0;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;cases/./../tests/bug-3129.c:139: for(i = ref_n - 1; i > 0; i--)
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_n)
	ld	e, a
;	genMinus
	dec	e
;	genLabel
00141$:
;	genIfx
	ld	a, e
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;cases/./../tests/bug-3129.c:141: sum += degree_list[i];
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #_degree_list
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genPlus
	add	a, c
	ld	c, a
;cases/./../tests/bug-3129.c:142: ref_sum += ref_degree_list[i];
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #_ref_degree_list
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genPlus
	add	a, -1 (ix)
;cases/./../tests/bug-3129.c:143: if(sum > ref_sum)
;	genCmpGt
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	sub	a, c
	jp	c, 00132$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:139: for(i = ref_n - 1; i > 0; i--)
;	genMinus
	dec	e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00141$
;	genLabel
00121$:
;cases/./../tests/bug-3129.c:147: for(new_node_color = 0; new_node_color <= k && new_node_color < max_k; new_node_color++) /* New node uses existing color, or exactly one above. */
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0x00
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00148$:
;	genCmpGt
	ld	a, (_k+0)
	sub	a, -1 (ix)
	jp	c, 00132$
;	skipping generated iCode
;	genCmpLt
	ld	a, -1 (ix)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_max_k
	sub	a, (hl)
	jp	nc, 00132$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:149: node_t k_backup = k;
;	genAssign
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_k+0)
	ld	-3 (ix), a
;cases/./../tests/bug-3129.c:151: if(new_node_color == k)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_k)
	sub	a, -1 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00400$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00401$.
;	skipping generated iCode
;cases/./../tests/bug-3129.c:152: k++;
;	genPlus
	ld	hl, #_k
	inc	(hl)
;	genLabel
00123$:
;cases/./../tests/bug-3129.c:154: node_colors[n - 1] = new_node_color;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_node_colors
	add	hl, bc
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug-3129.c:157: if(recolor())
;	genCall
	call	_recolor
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
	jp	z, 00130$
;cases/./../tests/bug-3129.c:159: if(instructions)
;	genIfx
	ld	a, (_instructions+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_instructions
	or	a, (hl)
	jp	z, 00128$
;cases/./../tests/bug-3129.c:161: instructions += sprintf(instructions, "Add node %d of color %d, connect it to nodes of the following colors: ", n - 1, new_node_color);
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_n)
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x00
;	genMinus
	dec	bc
;	skipping iCode since result will be rematerialized
;	genIpush
	push	de
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_instructions)
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
; common peephole 9 loaded a from e directly instead of going through c.
	ld	a, e
;	Shift into pair
	ld	hl, #_instructions
	add	a, (hl)
	ld	(hl), a
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	adc	a, (hl)
	ld	(hl), a
;cases/./../tests/bug-3129.c:162: for(i = 0; i < k; i++)
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00144$:
;	genCmpLt
	ld	a, -1 (ix)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_k
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00126$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:163: if (connect_colors & (1 << i))
;	genLeftShift
	ld	b, -1 (ix)
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00403$
00402$:
	add	hl, hl
00403$:
	djnz	00402$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, l
	and	a, -6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00145$
;cases/./../tests/bug-3129.c:164: instructions += sprintf(instructions, "%d ", i);
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), #0x00
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_instructions)
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
; common peephole 9 loaded a from e directly instead of going through c.
	ld	a, e
;	Shift into pair
	ld	hl, #_instructions
	add	a, (hl)
	ld	(hl), a
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	adc	a, (hl)
	ld	(hl), a
;	genLabel
00145$:
;cases/./../tests/bug-3129.c:162: for(i = 0; i < k; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00144$
;	genLabel
00126$:
;cases/./../tests/bug-3129.c:165: instructions +=  sprintf(instructions, "\n");
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_instructions)
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
; common peephole 9 loaded a from e directly instead of going through c.
	ld	a, e
;	Shift into pair
	ld	hl, #_instructions
	add	a, (hl)
	ld	(hl), a
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	adc	a, (hl)
	ld	(hl), a
;	genLabel
00128$:
;cases/./../tests/bug-3129.c:168: ret = true;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x01
;cases/./../tests/bug-3129.c:170: goto tried;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00132$
;	genLabel
00130$:
;cases/./../tests/bug-3129.c:173: k = k_backup;
;	genAssign
;	genMove_o size 1 result type 11 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
	ld	(#_k), a
; common peephole 19 loaded (#_k) from a directly instead of using hl.
;cases/./../tests/bug-3129.c:147: for(new_node_color = 0; new_node_color <= k && new_node_color < max_k; new_node_color++) /* New node uses existing color, or exactly one above. */
;	genPlus
	inc	-1 (ix)
;	genAssign
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00148$
;cases/./../tests/bug-3129.c:176: tried:
;	genLabel
00132$:
;cases/./../tests/bug-3129.c:177: n--;
;	genMinus
;	Shift into pair
	ld	hl, #_n
	dec	(hl)
;cases/./../tests/bug-3129.c:178: degree_list[n] = 0;
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_degree_list
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
	ld	e, a
	ld	d, #0x00
	add	hl, de
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/bug-3129.c:179: memcpy(degree_list, degree_list_backup, MAX_N * sizeof(node_t));
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_degree_list
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #12
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0008
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:180: memcpy(node_degrees, node_degrees_backup, MAX_N * sizeof(node_t));
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_node_degrees
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0008
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:181: num_edges = num_edges_backup;
;	genAssign
;	genMove_o size 1 result type 11 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	ld	(#_num_edges), a
; common peephole 19 loaded (#_num_edges) from a directly instead of using hl.
;cases/./../tests/bug-3129.c:89: for(connect_colors = 0; connect_colors < (1 << k) && !ret; connect_colors++) /* New node can connect to any subset of existing colors. */
;	genPlus
	inc	-2 (ix)
;	genGoto
	jp	00152$
;	genLabel
00133$:
;cases/./../tests/bug-3129.c:184: return(ret);
;	genRet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00154$.
;cases/./../tests/bug-3129.c:185: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total add function size at codegen: 13 bytes.
___str_0:
	.ascii "Add node %d of color 0, connect it to nodes of the following"
	.ascii " colors: "
	.db 0x00
___str_1:
	.ascii "%d "
	.db 0x00
___str_2:
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "Add node %d of color %d, connect it to nodes of the followin"
	.ascii "g colors: "
	.db 0x00
;cases/./../tests/bug-3129.c:189: bool do_recolor(void)  __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function do_recolor
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 23 bytes.
_do_recolor::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -23
	ld	hl, #-23
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-3129.c:191: bool ret = false;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), #0x00
;cases/./../tests/bug-3129.c:198: if(recolormap[node_colors[n - 1]] != node_colors[n - 1] &&
;	skipping iCode since result will be rematerialized
;	genAddrOf
	ld	bc, #_node_colors+0
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genPlus
	add	hl, bc
;	genPointerGet
	ld	e, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #_recolormap
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	d, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00255$.
;	skipping generated iCode
;cases/./../tests/bug-3129.c:199: recolormap[node_colors[n - 1]] == recolormap[recolormap[node_colors[n - 1]]]) /* Recoloring the new node just for closing gaps created by recoloring of other nodes is ok. */
;	genPlus
	ld	a, #<(_recolormap)
	add	a, d
	ld	l, a
	ld	a, #>(_recolormap)
	adc	a, #0x00
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00256$.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00257$.
;	skipping generated iCode
;cases/./../tests/bug-3129.c:200: return(false);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, d
; common peephole 124b removed xor a, a (since a has just been tested to be #0x00).
;	genLabel
	jp	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
00102$:
;cases/./../tests/bug-3129.c:202: k_backup = k;
;	genAssign
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_k+0)
	ld	-6 (ix), a
;cases/./../tests/bug-3129.c:203: memcpy(node_colors_backup, node_colors, MAX_N * sizeof(node_t));
;	genAddrOf
	ld	hl, #0
	add	hl, sp
	ex	de, hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_node_colors
;fetchPairLong
	ld	bc, #0x0008
	ldir
	pop	bc
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:206: memset(used_colors, 0, MAX_N * sizeof(bool));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #10
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x08
00258$:
	ld	(hl), #0x00
	inc	hl
	djnz	00258$
	pop	bc
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:207: k = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_k), a
; common peephole 19 loaded (#_k) from a directly instead of using hl.
;cases/./../tests/bug-3129.c:208: for(i = 0; i < k_backup; i++)
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00119$:
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00106$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:210: used_colors[recolormap[i]] = true;
;	genPlus
	ld	a, -1 (ix)
	add	a, #<(_recolormap)
	ld	-3 (ix), a
	ld	a, #0x00
	adc	a, #>(_recolormap)
	ld	-2 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genPlus
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, l
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #10
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
	pop	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genPointerSet
	ld	(hl), #0x01
;cases/./../tests/bug-3129.c:211: if(recolormap[i] >= k)
;	genPointerGet
;fetchPairLong
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -2 (ix).
	ld	-2 (ix), a
; common peephole 0a removed redundant load from a into a.
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_k
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00120$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:212: k = recolormap[i] + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	a
	ld	(#_k), a
; common peephole 19 loaded (#_k) from a directly instead of using hl.
;	genLabel
00120$:
;cases/./../tests/bug-3129.c:208: for(i = 0; i < k_backup; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00119$
;	genLabel
00106$:
;cases/./../tests/bug-3129.c:215: for(i = 0; i < k; i++)
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00122$:
;	genCmpLt
	ld	a, -1 (ix)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_k
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00156$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:216: if(!used_colors[i])
;	genPlus
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #10
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
	pop	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genPointerGet
;	genIfx
; common peephole 73 tested bit 0 of (hl) directly instead of going through l.
	bit	0, (hl)
	jp	z, 00117$
;cases/./../tests/bug-3129.c:215: for(i = 0; i < k; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
;cases/./../tests/bug-3129.c:220: for(i = 0; i < n; i++)
;	genLabel
00156$:
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00125$:
;	genCmpLt
	ld	a, -1 (ix)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_n
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00110$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:221: node_colors[i] = recolormap[node_colors[i]];
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #_recolormap
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x00
	add	iy, bc
	pop	bc
;	genPointerGet
	ld	a, (iy)
;	genPointerSet
	ld	(hl), a
;cases/./../tests/bug-3129.c:220: for(i = 0; i < n; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00125$
;	genLabel
00110$:
;cases/./../tests/bug-3129.c:224: if(ret = add())
;	genCall
	push	bc
	push	de
	call	_add
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genAssign
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	bit	0, l
	jp	z, 00117$
;cases/./../tests/bug-3129.c:226: for(i = 0; i < n; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00128$:
;	genCmpLt
	ld	a, -1 (ix)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_n
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:227: if (node_colors[i] != node_colors_backup[i] && instructions)
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00260$.
;	skipping generated iCode
;	genIfx
	ld	a, (_instructions+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_instructions
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;cases/./../tests/bug-3129.c:228: instructions += sprintf(instructions, "Recolor node %d from %d to %d\n", i, node_colors_backup[i], node_colors[i]);
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	-4 (ix), #0x00
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	-2 (ix), #0x00
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	de
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -5 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_4
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_instructions)
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), e
	ld	-2 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genPlus
	ld	a, -3 (ix)
;	Shift into pair
	ld	hl, #_instructions
	add	a, (hl)
	ld	(hl), a
	ld	a, -2 (ix)
	inc	hl
	adc	a, (hl)
	ld	(hl), a
;	genLabel
00129$:
;cases/./../tests/bug-3129.c:226: for(i = 0; i < n; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
	jp	00128$
;cases/./../tests/bug-3129.c:231: tried:
;	genLabel
00117$:
;cases/./../tests/bug-3129.c:232: memcpy(node_colors, node_colors_backup, MAX_N * sizeof(node_t));
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_node_colors
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0008
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:233: k = k_backup;
;	genAssign
;	genMove_o size 1 result type 11 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	(#_k), a
; common peephole 19 loaded (#_k) from a directly instead of using hl.
;cases/./../tests/bug-3129.c:235: return(ret);
;	genRet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00130$:
;cases/./../tests/bug-3129.c:236: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total do_recolor function size at codegen: 13 bytes.
___str_4:
	.ascii "Recolor node %d from %d to %d"
	.db 0x0a
	.db 0x00
;cases/./../tests/bug-3129.c:238: bool maprecolor(node_t i)  __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function maprecolor
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_maprecolor::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:242: if (i == k) /* Recurse in graph construction algorithm. */
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_k)
	sub	a, c
	jp	z, _do_recolor
; common peephole 84 jumped to _do_recolor directly instead of via 00144$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;cases/./../tests/bug-3129.c:243: return(do_recolor());
;	genCall
; common peephole 87b removed unreachable jump to _do_recolor
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 152 removed unused ret.
; common peephole 160 replaced jump by return.
;cases/./../tests/bug-3129.c:245: for(j = 0; j <= i; j++)	/* Never consider higher colors for recoloring. */
;	genLabel
; common peephole 85a eliminated jump.
; common peephole 159 removed unused label 00117$.
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genLabel
00107$:
;cases/./../tests/bug-3129.c:247: recolormap[i] = j;
;	genPlus
	ld	a, #<(_recolormap)
	add	a, c
	ld	l, a
	ld	a, #>(_recolormap)
	adc	a, #0x00
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), b
;cases/./../tests/bug-3129.c:248: if(maprecolor(i + 1))
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	inc	a
;	genSend
	push	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_maprecolor
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genIfx
	bit	0, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/./../tests/bug-3129.c:249: return(true);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00108$:
;cases/./../tests/bug-3129.c:245: for(j = 0; j <= i; j++)	/* Never consider higher colors for recoloring. */
;	genPlus
	inc	b
;	genCmpGt
	ld	a, c
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00107$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:251: return(false);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/bug-3129.c:252: }
;	genEndFunction
	ret
;	Total maprecolor function size at codegen: 1 bytes.
;cases/./../tests/bug-3129.c:255: bool recolor(void)  __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function recolor
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_recolor::
;cases/./../tests/bug-3129.c:257: return(maprecolor(0));
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3129.c:258: }
;	genEndFunction
	jp	_maprecolor
; common peephole 152 removed unused ret.
;	Total recolor function size at codegen: 1 bytes.
;cases/./../tests/bug-3129.c:263: bool permtest(node_t i) __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function permtest
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
_permtest::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -10
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
;	genReceive
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:268: for(j = 0; j + 2 < i; j++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00113$:
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genPlus
	inc	bc
	inc	bc
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;cases/./../tests/bug-3129.c:269: if((testperm[i - 1] > testperm[j] ? adjacency_matrix[testperm[i - 1]][testperm[j]] : adjacency_matrix[testperm[j]][testperm[i - 1]]) != ref_adjacency_matrix[i - 1][j])
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:268: for(j = 0; j + 2 < i; j++)
;	genCmpLt
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	po, 00193$
	xor	a, #0x80
00193$:
	jp	p, 00103$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:269: if((testperm[i - 1] > testperm[j] ? adjacency_matrix[testperm[i - 1]][testperm[j]] : adjacency_matrix[testperm[j]][testperm[i - 1]]) != ref_adjacency_matrix[i - 1][j])
;	genMinus
	ld	a, -10 (ix)
	dec	a
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_testperm
	add	hl, de
;	genPointerGet
	ld	c, (hl)
;	genPlus
	ld	a, #<(_testperm)
	add	a, -1 (ix)
	ld	l, a
	ld	a, #>(_testperm)
	adc	a, #0x00
	ld	h, a
;	genPointerGet
	ld	b, (hl)
;	genCmpGt
	ld	a, b
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00119$
;	skipping generated iCode
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
	push	de
;fetchPairLong
	ld	de, #_adjacency_matrix
	add	hl, de
	pop	de
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	c, b
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x00
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00119$:
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, #<(_adjacency_matrix)
	ld	l, a
	ld	a, h
	adc	a, #>(_adjacency_matrix)
	ld	h, a
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x00
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCast
;	(locations are the same)
;	genLabel
00120$:
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_ref_adjacency_matrix
	add	hl, de
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -1 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00194$.
;	skipping generated iCode
;cases/./../tests/bug-3129.c:270: return(false);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	jp	00117$
;	genLabel
00114$:
;cases/./../tests/bug-3129.c:268: for(j = 0; j + 2 < i; j++)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00103$:
;cases/./../tests/bug-3129.c:272: if(i == n)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
	sub	a, -2 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00195$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00138$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00196$.
;	skipping generated iCode
;cases/./../tests/bug-3129.c:273: return(true);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	jp	00117$
;cases/./../tests/bug-3129.c:275: for(j = i; j < n; j++)
;	genLabel
00138$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_ref_node_degrees)
	add	a, -2 (ix)
	ld	-9 (ix), a
	ld	a, #>(_ref_node_degrees)
	adc	a, #0x00
	ld	-8 (ix), a
;	genAssign
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00116$:
;	genCmpLt
	ld	a, -1 (ix)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_n
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00111$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:279: if (node_degrees[testperm[j]] != ref_node_degrees[i]) /* Do not try permutations where degrees do not match. */
;	genPlus
	ld	a, #<(_testperm)
	add	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, #>(_testperm)
	adc	a, #0x00
	ld	-6 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -7 (ix)
	ld	h, -6 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
;	genPlus
	ld	a, #<(_node_degrees)
	add	a, -5 (ix)
	ld	-4 (ix), a
	ld	a, #>(_node_degrees)
	adc	a, #0x00
	ld	-3 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPointerGet
;fetchPairLong
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	_moveFrom_tpair_()
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 22a used (hl) in sub directly instead of going through c.
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00197$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00198$.
;	skipping generated iCode
;cases/./../tests/bug-3129.c:282: t = testperm[i];
;	genPlus
	ld	a, #<(_testperm)
	add	a, -2 (ix)
	ld	e, a
	ld	a, #>(_testperm)
	adc	a, #0x00
	ld	d, a
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:283: testperm[i] = testperm[j];
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug-3129.c:284: testperm[j] = t;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -7 (ix)
	ld	h, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), c
;cases/./../tests/bug-3129.c:286: if(permtest(i + 1))
;	genPlus
	ld	a, -10 (ix)
	inc	a
;	genSend
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_permtest
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;cases/./../tests/bug-3129.c:287: return(true);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00117$
;	genLabel
00109$:
;cases/./../tests/bug-3129.c:289: t = testperm[i];
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:290: testperm[i] = testperm[j];
;	genPointerGet
;fetchPairLong
	ld	l, -7 (ix)
	ld	h, -6 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug-3129.c:291: testperm[j] = t;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -7 (ix)
	ld	h, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
;	genLabel
00110$:
;cases/./../tests/bug-3129.c:275: for(j = i; j < n; j++)
;	genPlus
	inc	-1 (ix)
;	genGoto
	jp	00116$
;	genLabel
00111$:
;cases/./../tests/bug-3129.c:294: return(false);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00117$:
;cases/./../tests/bug-3129.c:295: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total permtest function size at codegen: 5 bytes.
;cases/./../tests/bug-3129.c:297: int cmp(const void *l, const void *r) __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function cmp
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_cmp::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:299: return *((node_t*)r) - *((node_t *)l);
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into b.
;	genPointerGet
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
;	genMinus
; common peephole 1 removed dead load from a into c.
; common peephole 176a remove unnecessary load back
; common peephole 115a used (hl) in sub instead of going through e.
	sub	a, (hl)
	ld	e, a
	sbc	a, a
	ld	d, a
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3129.c:300: }
;	genEndFunction
	ret
;	Total cmp function size at codegen: 1 bytes.
;cases/./../tests/bug-3129.c:302: void calc_neighbour_degrees(node_t *restrict neighbour_degrees, bool (*adjacency_matrix)[MAX_N], const node_t *restrict degrees)
;	genLabel
;	genFunction
;	---------------------------------
; Function calc_neighbour_degrees
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 9 bytes.
_calc_neighbour_degrees::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -9
	ld	iy, #-9
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:306: memset(neighbour_degrees, 0, MAX_N);
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	bc
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genBuiltIn
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x08
00155$:
	ld	(hl), #0x00
	inc	hl
	djnz	00155$
	pop	bc
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:307: for(i = 0; i < ref_n; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genLabel
00109$:
;	genCmpLt
	ld	a, e
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ref_n
	sub	a, (hl)
	jp	nc, 00104$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:308: for(j = 0; j < i; j++)
;	genPlus
	ld	a, e
	add	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, #0x00
	adc	a, 5 (ix)
	ld	-6 (ix), a
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genLabel
00106$:
;	genCmpLt
	ld	a, d
	sub	a, e
	jp	nc, 00110$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:309: if(adjacency_matrix[i][j])
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, -2 (ix)
	ld	l, a
	ld	a, h
	adc	a, -1 (ix)
	ld	h, a
;	genPlus
	ld	a, l
	add	a, d
	ld	l, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00157$
	inc	h
00157$:
;	genPointerGet
;	genIfx
; common peephole 73 tested bit 0 of (hl) directly instead of going through l.
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;cases/./../tests/bug-3129.c:311: neighbour_degrees[i] += (1 << (degrees[j] - 1));
;	genPlus
	ld	a, c
	add	a, e
	ld	-5 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-4 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genPlus
	ld	a, d
	add	a, 4 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, 5 (ix)
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	(locations are the same)
;	genMinus
	dec	l
;	genLeftShift
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	l
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00159$
00158$:
	add	a, a
00159$:
	dec	l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00158$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, l
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug-3129.c:312: neighbour_degrees[j] += (1 << (degrees[i] - 1));
;	genPlus
	ld	a, d
	add	a, c
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, b
	ld	-3 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPointerGet
;fetchPairLong
	ld	l, -7 (ix)
	ld	h, -6 (ix)
;	_moveFrom_tpair_()
	ld	h, (hl)
;	genCast
;	(locations are the same)
;	genMinus
	dec	h
;	genLeftShift
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, #0x01
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	h
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00161$
00160$:
	sla	l
00161$:
	dec	h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00160$
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPlus
	add	a, l
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;	genLabel
00107$:
;cases/./../tests/bug-3129.c:308: for(j = 0; j < i; j++)
;	genPlus
	inc	d
;	genGoto
	jp	00106$
;	genLabel
00110$:
;cases/./../tests/bug-3129.c:307: for(i = 0; i < ref_n; i++)
;	genPlus
	inc	e
;	genGoto
	jp	00109$
;	genLabel
00104$:
;cases/./../tests/bug-3129.c:314: qsort(neighbour_degrees, ref_n, sizeof(node_t), cmp);
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_n)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_cmp
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0001
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_qsort
;	genLabel
; common peephole 159 removed unused label 00111$.
;cases/./../tests/bug-3129.c:315: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total calc_neighbour_degrees function size at codegen: 11 bytes.
;cases/./../tests/bug-3129.c:318: bool test(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_test::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-3129.c:324: if (memcmp(ref_degree_list, degree_list, n * sizeof(node_t)))
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_degree_list
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_ref_degree_list
;	genCall
	call	_memcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/bug-3129.c:325: return(false);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00102$:
;cases/./../tests/bug-3129.c:328: calc_neighbour_degrees(neighbour_degrees, adjacency_matrix, node_degrees);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_node_degrees
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_adjacency_matrix
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_calc_neighbour_degrees
;cases/./../tests/bug-3129.c:329: if (memcmp(ref_neighbour_degrees, neighbour_degrees, n * sizeof(node_t)))
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_n)
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_ref_neighbour_degrees
;	genCall
	call	_memcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
;cases/./../tests/bug-3129.c:330: return(false);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;cases/./../tests/bug-3129.c:332: for(i = 0; i < n; i++)
;	genLabel
00118$:
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00107$:
;	genCmpLt
	ld	a, c
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_n
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:333: testperm[i] = i;
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	hl, #_testperm
	ld	b, #0x00
	add	hl, bc
;	genPointerSet
	ld	(hl), c
;cases/./../tests/bug-3129.c:332: for(i = 0; i < n; i++)
;	genPlus
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00105$:
;cases/./../tests/bug-3129.c:335: return(permtest(0));
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
	call	_permtest
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00109$:
;cases/./../tests/bug-3129.c:336: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total test function size at codegen: 5 bytes.
;cases/./../tests/bug-3129.c:340: bool check_lnlc(bool output_instructions)
;	genLabel
;	genFunction
;	---------------------------------
; Function check_lnlc
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_check_lnlc::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:344: char *outinstructions = stdcbench_buffer.basic_char;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/bug-3129.c:347: if(!ref_n)
;	genIfx
	ld	a, (_ref_n+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/bug-3129.c:348: return(true);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	jp	00133$
;	genLabel
00102$:
;cases/./../tests/bug-3129.c:350: memset(ref_node_degrees, 0, MAX_N * sizeof(node_t));
;	genAddrOf
	ld	hl, #_ref_node_degrees+0
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b,l
	ld	d,h
; common peephole 104 removed redundant load from db into hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genBuiltIn
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x08
00279$:
	ld	(hl), #0x00
	inc	hl
	djnz	00279$
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:351: memset(ref_degree_list + 1, 0, (MAX_N - 1) * sizeof(node_t));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
; common peephole 50a eliminated dead pop/push bc pair.
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #(_ref_degree_list + 1)
	ld	b, #0x07
00281$:
	ld	(hl), #0x00
	inc	hl
	djnz	00281$
	pop	bc
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:352: ref_degree_list[0] = ref_n;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_ref_degree_list
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_ref_n)
	ld	(hl), a
;cases/./../tests/bug-3129.c:353: ref_num_edges = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_ref_num_edges), a
; common peephole 19 loaded (#_ref_num_edges) from a directly instead of using hl.
;cases/./../tests/bug-3129.c:354: for(i = 0; i < ref_n; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genLabel
00128$:
;	genCmpLt
	ld	a, e
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ref_n
	sub	a, (hl)
	jp	nc, 00106$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:355: for(j = 0; j < i; j++)
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00125$:
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, e
	jp	nc, 00129$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:356: if(ref_adjacency_matrix[i][j])
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
	push	de
;fetchPairLong
	ld	de, #_ref_adjacency_matrix
	add	hl, de
	pop	de
;	genPlus
	ld	a, l
	add	a, -1 (ix)
	ld	l, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00283$
	inc	h
00283$:
;	genPointerGet
;	genIfx
; common peephole 73 tested bit 0 of (hl) directly instead of going through l.
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00126$
;cases/./../tests/bug-3129.c:358: ref_degree_list[ref_node_degrees[i]]--;
;	genPlus
	ld	a, b
	add	a, e
	ld	-3 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-2 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPlus
	add	a, #<(_ref_degree_list)
	ld	l, a
	ld	a, #0x00
	adc	a, #>(_ref_degree_list)
	ld	h, a
;	genPointerGet
;	genMinus
; common peephole 155c turned add into dec.
;	genPointerSet
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;cases/./../tests/bug-3129.c:359: ref_node_degrees[i]++;
;	genPointerGet
;fetchPairLong
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPlus
	inc	a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug-3129.c:360: ref_degree_list[ref_node_degrees[i]]++;
;	genPlus
	add	a, #<(_ref_degree_list)
	ld	l, a
	ld	a, #0x00
	adc	a, #>(_ref_degree_list)
	ld	h, a
;	genPointerGet
;	genPlus
;	genPointerSet
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
;cases/./../tests/bug-3129.c:361: ref_degree_list[ref_node_degrees[j]]--;
;	genPlus
	ld	a, b
	add	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-2 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPlus
	add	a, #<(_ref_degree_list)
	ld	l, a
	ld	a, #0x00
	adc	a, #>(_ref_degree_list)
	ld	h, a
;	genPointerGet
;	genMinus
; common peephole 155c turned add into dec.
;	genPointerSet
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;cases/./../tests/bug-3129.c:362: ref_node_degrees[j]++;
;	genPointerGet
;fetchPairLong
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPlus
	inc	a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug-3129.c:363: ref_degree_list[ref_node_degrees[j]]++;
;	genPlus
	add	a, #<(_ref_degree_list)
	ld	l, a
	ld	a, #0x00
	adc	a, #>(_ref_degree_list)
	ld	h, a
;	genPointerGet
;	genPlus
;	genPointerSet
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
;cases/./../tests/bug-3129.c:364: ref_num_edges++;
;	genPlus
	ld	hl, #_ref_num_edges
	inc	(hl)
;	genLabel
00126$:
;cases/./../tests/bug-3129.c:355: for(j = 0; j < i; j++)
;	genPlus
	inc	-1 (ix)
;	genGoto
	jp	00125$
;	genLabel
00129$:
;cases/./../tests/bug-3129.c:354: for(i = 0; i < ref_n; i++)
;	genPlus
	inc	e
;	genGoto
	jp	00128$
;	genLabel
00106$:
;cases/./../tests/bug-3129.c:367: for(i = 1, ref_mindeg = ref_maxdeg = ref_node_degrees[0]; i < ref_n; i++)
;	genPointerGet
;fetchPairLong
	ld	l, b
	ld	h, d
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(#_ref_maxdeg), a
; common peephole 19 loaded (#_ref_maxdeg) from a directly instead of using hl.
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(#_ref_mindeg), a
; common peephole 19 loaded (#_ref_mindeg) from a directly instead of using hl.
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x01
;	genLabel
00131$:
;	genCmpLt
	ld	a, -1 (ix)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ref_n
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00111$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:369: node_t ref_deg = ref_node_degrees[i];
;	genPlus
	ld	a, -1 (ix)
	add	a, b
	ld	l, a
	ld	a, #0x00
	adc	a, d
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	e, (hl)
;cases/./../tests/bug-3129.c:370: if (ref_deg < ref_mindeg)
;	genCmpLt
	ld	a, e
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ref_mindeg
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:371: ref_mindeg = ref_deg;
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_ref_mindeg
	ld	(hl), e
;	genLabel
00108$:
;cases/./../tests/bug-3129.c:372: if (ref_deg > ref_maxdeg)
;	genCmpGt
	ld	a, (_ref_maxdeg+0)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00132$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:373: ref_maxdeg = ref_deg;
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_ref_maxdeg
	ld	(hl), e
;	genLabel
00132$:
;cases/./../tests/bug-3129.c:367: for(i = 1, ref_mindeg = ref_maxdeg = ref_node_degrees[0]; i < ref_n; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00131$
;	genLabel
00111$:
;cases/./../tests/bug-3129.c:376: calc_neighbour_degrees(ref_neighbour_degrees, ref_adjacency_matrix, ref_node_degrees);
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_ref_adjacency_matrix
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_ref_neighbour_degrees
;	genCall
	call	_calc_neighbour_degrees
	pop	bc
;cases/./../tests/bug-3129.c:378: memset(degree_list, 0, MAX_N * sizeof(node_t));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #_degree_list
	ld	b, #0x08
00284$:
	ld	(hl), #0x00
	inc	hl
	djnz	00284$
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-3129.c:379: num_edges = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 19 loaded (#_num_edges) from a directly instead of using hl.
;cases/./../tests/bug-3129.c:380: k = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_num_edges), a
; common peephole 94a' reused constant #0 in a.
	ld	(#_k), a
; common peephole 19 loaded (#_k) from a directly instead of using hl.
;cases/./../tests/bug-3129.c:382: if(output_instructions)
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
;cases/./../tests/bug-3129.c:384: if(!(startinstructions = instructions = malloc (60 + (ref_n) * (72 + max_k / 8 * 2) + (ref_n - 1) * (ref_n - 2) / 2 * 28)))
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_max_k)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	add	a, a
;	genPlus
	add	a, #0x48
	ld	c, a
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ref_n)
	ld	e, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMult
	push	de
	ld	e, c
	ld	h, a
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00286$:
	add	hl, hl
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00287$
	add	hl, de
00287$:
	djnz	00286$
	pop	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, #0x3c
	ld	-2 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-1 (ix), a
;	genMinus
;fetchPairLong
	ld	l, e
	ld	h, d
	dec	hl
;	genMinus
	dec	de
	dec	de
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00136$
;	skipping generated iCode
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
;	genLabel
00136$:
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
;	genMult
;fetchPairLong
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
	add	hl, de
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_malloc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
	ld	c, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_instructions), de
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
	ld	-4 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;cases/./../tests/bug-3129.c:385: stdcbench_error("c90lib c90lib_lnlc(): malloc() failed\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	_stdcbench_error
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00117$
;	genLabel
00113$:
;cases/./../tests/bug-3129.c:387: startinstructions[0] = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
; common peephole 177b bubbled down push
	push	hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00117$
;	genLabel
00116$:
;cases/./../tests/bug-3129.c:390: startinstructions = instructions = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_instructions), hl
;	genAssign
;fetchPairLong
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00117$:
;cases/./../tests/bug-3129.c:392: ret = add();
;	genCall
	call	_add
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3129.c:394: if (ret && startinstructions)
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
;	genIfx
	ld	a, -4 (ix)
	or	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
;cases/./../tests/bug-3129.c:398: outinstructions += sprintf(outinstructions, "Instructions for constructing the graph:");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_stdcbench_buffer
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_stdcbench_buffer
	add	hl, de
;cases/./../tests/bug-3129.c:400: while(c = strrchr(startinstructions, '\n'))
;	genLabel
00118$:
;	genSend
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000a
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strrchr
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/bug-3129.c:402: outinstructions += sprintf(outinstructions, c);
;	genIpush
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genIpush
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genPlus
	add	hl, de
;cases/./../tests/bug-3129.c:403: *c = 0;
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x00
	pop	hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
;	genLabel
00120$:
;cases/./../tests/bug-3129.c:405: outinstructions += sprintf(outinstructions, "\n%s\n", startinstructions);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
	push	de
;	genIpush
	push	hl
;	genCall
	call	_sprintf
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;	genLabel
00122$:
;cases/./../tests/bug-3129.c:408: free(startinstructions);
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_free
;cases/./../tests/bug-3129.c:410: return(ret);
;	genRet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00133$:
;cases/./../tests/bug-3129.c:411: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total check_lnlc function size at codegen: 17 bytes.
___str_5:
	.ascii "c90lib c90lib_lnlc(): malloc() failed"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "Instructions for constructing the graph:"
	.db 0x00
___str_7:
	.db 0x0a
	.ascii "%s"
	.db 0x0a
	.db 0x00
;cases/./../tests/bug-3129.c:432: void c90lib_lnlc(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function c90lib_lnlc
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_c90lib_lnlc::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/./../tests/bug-3129.c:436: ref_n = 6;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_ref_n
	ld	(hl), #0x06
;cases/./../tests/bug-3129.c:437: for(i = 0; i < ref_n; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00113$:
;	genCmpLt
	ld	a, c
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ref_n
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:438: for(j = 0; j < ref_n; j++)
;	genMult
;fetchPairLong
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genLabel
00110$:
;	genCmpLt
	ld	a, b
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ref_n
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00114$
;	skipping generated iCode
;cases/./../tests/bug-3129.c:439: ref_adjacency_matrix[i][j] = prism[i][j];
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_ref_adjacency_matrix
	add	hl, de
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, b
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
	add	hl, de
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_prism)
	add	a, -2 (ix)
	ld	e, a
	ld	a, #>(_prism)
	adc	a, -1 (ix)
	ld	d, a
;	genPlus
	ld	a, e
	add	a, b
	ld	e, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00177$
	inc	d
00177$:
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), a
;cases/./../tests/bug-3129.c:438: for(j = 0; j < ref_n; j++)
;	genPlus
	inc	b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00114$:
;cases/./../tests/bug-3129.c:437: for(i = 0; i < ref_n; i++)
;	genPlus
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00102$:
;cases/./../tests/bug-3129.c:441: for(max_k = 0; max_k <= MAX_K; max_k++)
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_max_k), a
; common peephole 19 loaded (#_max_k) from a directly instead of using hl.
;	genLabel
00115$:
;cases/./../tests/bug-3129.c:442: if(check_lnlc(true))
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genCall
	call	_check_lnlc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
;cases/./../tests/bug-3129.c:441: for(max_k = 0; max_k <= MAX_K; max_k++)
;	genPlus
	ld	hl, #_max_k
	inc	(hl)
;	genCmpGt
	ld	a, #0x04
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_max_k
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00115$
;	skipping generated iCode
;	genLabel
00105$:
;cases/./../tests/bug-3129.c:445: if(k != 1 || strcmp(stdcbench_buffer.basic_char, resultinstructions))
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_k)
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00178$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00179$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_resultinstructions
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_stdcbench_buffer
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00117$
;	genLabel
00106$:
;cases/./../tests/bug-3129.c:446: stdcbench_error("c90lib c90lib_lnlc(): Result validation failed");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	_stdcbench_error
;	genLabel
00117$:
;cases/./../tests/bug-3129.c:447: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total c90lib_lnlc function size at codegen: 5 bytes.
_resultinstructions:
	.ascii "Instructions for constructing the graph:"
	.db 0x0a
	.db 0x0a
	.ascii "Add node 0 of color 0, connect it to nodes of the following "
	.ascii "colors: "
	.db 0x0a
	.ascii "Add node 1 of color 1, connect it to nodes of the following "
	.ascii "colors: "
	.db 0x0a
	.ascii "Add node 2 of color 2, connect it to nodes of the following "
	.ascii "colors: 0 1 "
	.db 0x0a
	.ascii "Add node 3 of color 1, connect it to nodes of the following "
	.ascii "colors: 0 "
	.db 0x0a
	.ascii "Add node 4 of color 0, connect it to nodes of the following "
	.ascii "colors: 0 1 "
	.db 0x0a
	.ascii "Recolor node 2 from 2 to 1"
	.db 0x0a
	.ascii "Add node 5 of color 0, connect it to nodes of the following "
	.ascii "colors: 1 "
	.db 0x0a
	.db 0x00
_prism:
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
___str_8:
	.ascii "c90lib c90lib_lnlc(): Result validation failed"
	.db 0x00
;cases/./../tests/bug-3129.c:451: void stdcbench_error(const char *message)
;	genLabel
;	genFunction
;	---------------------------------
; Function stdcbench_error
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_stdcbench_error::
;cases/./../tests/bug-3129.c:453: ASSERT(0);
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
	ld	hl, #0x01c5
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_10
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3129.c:454: }
;	genEndFunction
	ret
;	Total stdcbench_error function size at codegen: 1 bytes.
__str_10:
	.ascii "Assertion failed"
	.db 0x00
__str_11:
	.ascii "0"
	.db 0x00
__str_12:
	.ascii "cases/./../tests/bug-3129.c"
	.db 0x00
;cases/./../tests/bug-3129.c:464: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3129.c:467: c90lib_lnlc();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3129.c:469: }
;	genEndFunction
	jp	_c90lib_lnlc
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
_stdcbench_name_version_string:
	.ascii "stdcbench 0.6"
	.db 0x00
;cases/tst_bug-3129.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3129.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genCall
	call	___prints
;cases/tst_bug-3129.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3129.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_14:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3129.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3129.c:15: return "bug-3129.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3129.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_15:
	.ascii "bug-3129.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
