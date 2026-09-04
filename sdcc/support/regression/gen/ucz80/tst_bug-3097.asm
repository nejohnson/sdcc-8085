;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3097
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _scene_to_map
	.globl _clear_map
	.globl ___prints
	.globl ___fail
	.globl _collision_buf
	.globl ___numCases
	.globl _scene_items
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_collision_buf::
	.ds 324
_scene_to_map_src_10000_15:
	.ds 2
_scene_to_map_x_10000_15:
	.ds 1
_scene_to_map_y_10000_15:
	.ds 1
_scene_to_map_z_10000_15:
	.ds 1
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
;cases/./../tests/bug-3097.c:32: void clear_map(void * data) {
;	genLabel
;	genFunction
;	---------------------------------
; Function clear_map
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_clear_map::
;cases/./../tests/bug-3097.c:33: data;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3097.c:34: }
;	genEndFunction
	ret
;	Total clear_map function size at codegen: 1 bytes.
;cases/./../tests/bug-3097.c:36: void scene_to_map(const scene_item_t * sour, scene_t * dest) {
;	genLabel
;	genFunction
;	---------------------------------
; Function scene_to_map
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_scene_to_map::
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_scene_to_map_src_10000_15), hl
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3097.c:43: while (src) {
;	genLabel
00105$:
;	genIfx
	ld	a, (_scene_to_map_src_10000_15+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_scene_to_map_src_10000_15
	or	a, (hl)
	ret	z
; common peephole 161 replaced jump by return.
;cases/./../tests/bug-3097.c:44: from_coords(src->coords, x, y, z);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_scene_to_map_src_10000_15)
;	genPlus
;fetchPairLong
	ld	bc, #0x0004
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into c.
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	dec	hl
;	genGetByte
;	genMove_o size 1 result type 3 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(_scene_to_map_x_10000_15+0), a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	dec	hl
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	srl	a
	rr	c
	srl	a
	rr	c
	srl	a
	rr	c
	srl	a
	rr	c
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMinus
	ld	a, #0x08
	sub	a, c
;	genAnd
	and	a, #0x0f
;	genMove_o size 1 result type 3 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(_scene_to_map_y_10000_15+0), a
;	genPointerGet
	ld	a, (hl)
;	genAnd
	and	a, #0x0f
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(#_scene_to_map_z_10000_15), a
; common peephole 19 loaded (#_scene_to_map_z_10000_15) from a directly instead of using hl.
;cases/./../tests/bug-3097.c:45: if ((x < max_scene_x) && (y < max_scene_y) && (z < max_scene_z)) {
;	genCmpLt
	ld	a, (_scene_to_map_x_10000_15+0)
	sub	a, #0x09
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;	genCmpLt
	ld	a, (_scene_to_map_y_10000_15+0)
	sub	a, #0x09
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;	genCmpLt
	ld	a, (_scene_to_map_z_10000_15+0)
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/bug-3097.c:46: (*dest)[x][z][y] = src->id + 1;
;	genMult
;fetchPairLong
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_scene_to_map_x_10000_15 + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMult
	push	de
	ld	a, (_scene_to_map_z_10000_15+0)
	ld	e, a
	add	a, a
	add	a, a
	add	a, a
	add	a, e
	pop	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, bc
;	genAssign
;	genMove_o size 1 result type 2 source type 3 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_scene_to_map_y_10000_15+0)
;	genPlus
	add	a, l
	ld	c, a
	ld	a, #0x00
	adc	a, h
	ld	b, a
;	genPointerGet
;fetchPairLong
	ld	hl, (_scene_to_map_src_10000_15)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;	genLabel
00102$:
;cases/./../tests/bug-3097.c:48: src = src->next;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_scene_to_map_src_10000_15)
;	genPointerGet
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_scene_to_map_src_10000_15+0), a
	inc	hl
	ld	(_scene_to_map_src_10000_15+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_scene_to_map_src_10000_15+1), a
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00108$.
;cases/./../tests/bug-3097.c:50: }
;	genEndFunction
	jp	00105$
; common peephole 152 removed unused ret.
;	Total scene_to_map function size at codegen: 1 bytes.
;cases/./../tests/bug-3097.c:59: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3097.c:62: scene_to_map(scene_items, &collision_buf);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_collision_buf
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_scene_items
;	genCall
	call	_scene_to_map
;cases/./../tests/bug-3097.c:64: ASSERT(collision_buf[0][0][max_scene_y - 1] == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_collision_buf + 8)
;	genCmpEq
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0040
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
;cases/./../tests/bug-3097.c:65: ASSERT(collision_buf[0][1][max_scene_y - 1] == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_collision_buf + 17)
;	genCmpEq
	cp	a, #0x02
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0041
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3097.c:67: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
_scene_items:
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x00	; 0
	.dw #0x0000
	.dw (_scene_items + 8)
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.dw #0x0001
	.dw #0x0000
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "collision_buf[0][0][max_scene_y - 1] == 2"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3097.c"
	.db 0x00
___str_3:
	.ascii "collision_buf[0][1][max_scene_y - 1] == 2"
	.db 0x00
;cases/tst_bug-3097.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3097.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug-3097.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3097.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3097.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3097.c:15: return "bug-3097.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3097.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-3097.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
