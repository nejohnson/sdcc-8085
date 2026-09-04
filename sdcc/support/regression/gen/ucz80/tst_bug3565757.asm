;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3565757
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _init_geometry
	.globl _set_edge
	.globl _get_edge
	.globl _init_edges
	.globl ___prints
	.globl _edge_cache
	.globl _edges
	.globl ___numCases
	.globl _vertices
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_edges::
	.ds 36
_edge_cache::
	.ds 9
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
;cases/./../tests/bug3565757.c:28: void init_edges(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function init_edges
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_init_edges::
;cases/./../tests/bug3565757.c:30: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total init_edges function size at codegen: 1 bytes.
;cases/./../tests/bug3565757.c:32: void get_edge(struct edge_t *const e, const edge_index_t e_i)
;	genLabel
;	genFunction
;	---------------------------------
; Function get_edge
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_get_edge::
;cases/./../tests/bug3565757.c:34: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total get_edge function size at codegen: 1 bytes.
;cases/./../tests/bug3565757.c:36: void set_edge(const edge_index_t e_i, const struct edge_t *const e)
;	genLabel
;	genFunction
;	---------------------------------
; Function set_edge
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_set_edge::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3565757.c:38: memcpy(edges + e_i, e, sizeof(struct edge_t));
;	skipping iCode since result will be rematerialized
;	genMult
;fetchPairLong
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	bc, #_edges
	add	hl, bc
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genBuiltIn
	ex	de, hl
;fetchPairLong
	ld	bc, #0x0009
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3565757.c:39: }
;	genEndFunction
	ret
;	Total set_edge function size at codegen: 5 bytes.
;cases/./../tests/bug3565757.c:45: void init_geometry(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function init_geometry
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_init_geometry::
;cases/./../tests/bug3565757.c:50: for(i = 0; i < 4; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0x0000
;	genLabel
00102$:
;cases/./../tests/bug3565757.c:53: edge_cache.u[0] = vertices[(i + 0) % 4][0];
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	iy
	pop	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, e
	and	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	bc, #_vertices
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	(#_edge_cache), a
; common peephole 19 loaded (#_edge_cache) from a directly instead of using hl.
	pop	hl
;cases/./../tests/bug3565757.c:54: edge_cache.u[1] = vertices[(i + 0) % 4][1];
;	skipping iCode since result will be rematerialized
;	genAssign
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(#(_edge_cache + 1)), a
; common peephole 19 loaded (#(_edge_cache + 1)) from a directly instead of using hl.
;cases/./../tests/bug3565757.c:55: edge_cache.v[0] = vertices[(i + 1) % 4][0];
;	skipping iCode since result will be rematerialized
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	bc
;	genAnd
	ld	a, c
	and	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	push	de
;fetchPairLong
	ld	de, #_vertices
	add	hl, de
	pop	de
;	genPointerGet
	ld	a, (hl)
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	(#(_edge_cache + 2)), a
; common peephole 19 loaded (#(_edge_cache + 2)) from a directly instead of using hl.
	pop	hl
;cases/./../tests/bug3565757.c:56: edge_cache.v[1] = vertices[(i + 1) % 4][1];
;	skipping iCode since result will be rematerialized
;	genAssign
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(#(_edge_cache + 3)), a
; common peephole 19 loaded (#(_edge_cache + 3)) from a directly instead of using hl.
;cases/./../tests/bug3565757.c:57: edge_cache.prev = (i + 3) % 4;
;	skipping iCode since result will be rematerialized
;	genPlus
	inc	de
	inc	de
	inc	de
;	genAnd
	ld	a, e
	and	a, #0x03
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	((_edge_cache + 4)), hl
;cases/./../tests/bug3565757.c:58: edge_cache.next = (i + 1) % 4;
;	skipping iCode since result will be rematerialized
;	genCast
;	(locations are the same)
;	genPointerSet
	ld	((_edge_cache + 6)), bc
;cases/./../tests/bug3565757.c:59: set_edge(i, &edge_cache);
;	skipping iCode since result will be rematerialized
;	genSend
	push	iy
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_edge_cache
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	iy
	pop	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_set_edge
	pop	iy
;cases/./../tests/bug3565757.c:50: for(i = 0; i < 4; i++)
;	genPlus
	inc	iy
;fetchPairLong
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	iy
	pop	bc
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, c
	sub	a, #0x04
	ld	a, b
	sbc	a, #0x00
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00102$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug3565757.c:61: }
;	genEndFunction
	ret
;	Total init_geometry function size at codegen: 1 bytes.
_vertices:
	.db #0x07	; 7
	.db #0xbc	; 188
	.db #0xf8	; 248
	.db #0xbc	; 188
	.db #0xf8	; 248
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x09	; 9
;cases/./../tests/bug3565757.c:64: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug3565757.c:67: init_geometry();
;	genCall
	call	_init_geometry
;cases/./../tests/bug3565757.c:69: ASSERT(edges[0].prev = 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0003
	ld	((_edges + 4)), hl
;cases/./../tests/bug3565757.c:70: ASSERT(edges[3].prev = 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0002
	ld	((_edges + 31)), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3565757.c:72: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "edges[0].prev = 3"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug3565757.c"
	.db 0x00
___str_3:
	.ascii "edges[3].prev = 2"
	.db 0x00
;cases/tst_bug3565757.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3565757.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug3565757.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3565757.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3565757.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3565757.c:15: return "bug3565757.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3565757.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug3565757.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
