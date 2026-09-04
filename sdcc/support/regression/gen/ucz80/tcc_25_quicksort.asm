;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tcc_25_quicksort
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abort
	.globl __putchar
	.globl _main_
	.globl _quicksort
	.globl _partition
	.globl _swap
	.globl _puts
	.globl _printf
	.globl ___prints
	.globl ___fail
	.globl _array
	.globl ___numCases
	.globl ___getSuiteName
	.globl _putchar
	.globl ___runSuite
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_array::
	.ds 32
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
;cases/tcc_25_quicksort.c:6: __code const char * __getSuiteName(void) { return "tcc/25_quicksort"; }
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
	ld	de, #___str_0
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_0:
	.ascii "tcc/25_quicksort"
	.db 0x00
;cases/../tcc/25_quicksort.c:6: void swap(int a, int b)
;	genLabel
;	genFunction
;	---------------------------------
; Function swap
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_swap::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/../tcc/25_quicksort.c:8: int tmp  = array[a];
;	skipping iCode since result will be rematerialized
;	genLeftShift
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, #<(_array)
	ld	c, a
	ld	a, h
	adc	a, #>(_array)
	ld	b, a
;	genPointerGet
;	_moveFrom_tpair_()
	ld	a, (bc)
	ld	-2 (ix), a
	inc	bc
;	_moveFrom_tpair_()
	ld	a, (bc)
	ld	-1 (ix), a
	dec	bc
;cases/../tcc/25_quicksort.c:9: array[a] = array[b];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_array
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
	dec	hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
	inc	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/../tcc/25_quicksort.c:10: array[b] = tmp;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/../tcc/25_quicksort.c:11: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total swap function size at codegen: 5 bytes.
;cases/../tcc/25_quicksort.c:15: int partition(int left, int right)
;	genLabel
;	genFunction
;	---------------------------------
; Function partition
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_partition::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -6
	push	af
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../tcc/25_quicksort.c:18: int pivotValue = array[pivotIndex];
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_array
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, de
;	genPointerGet
	ld	a, 0 (iy)
	ld	-6 (ix), a
	ld	a, 1 (iy)
	ld	-5 (ix), a
;cases/../tcc/25_quicksort.c:22: swap(pivotIndex, right);
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_swap
	pop	bc
;cases/../tcc/25_quicksort.c:23: for(i = left; i < right; i++)
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), c
	ld	-1 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	(locations are the same)
;	genLabel
00105$:
;	genCmpLt
	ld	a, c
	sub	a, -4 (ix)
	ld	a, b
	sbc	a, -3 (ix)
	jp	po, 00134$
	xor	a, #0x80
00134$:
	jp	p, 00103$
;	skipping generated iCode
;cases/../tcc/25_quicksort.c:25: if(array[i] < pivotValue)
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_array
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genCmpLt
	ld	a, e
	sub	a, -6 (ix)
	ld	a, d
	sbc	a, -5 (ix)
	jp	po, 00135$
	xor	a, #0x80
00135$:
	jp	p, 00106$
;	skipping generated iCode
;cases/../tcc/25_quicksort.c:27: swap(i, index);
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_swap
	pop	bc
;cases/../tcc/25_quicksort.c:28: index += 1;
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00136$
	inc	-1 (ix)
00136$:
;	genLabel
00106$:
;cases/../tcc/25_quicksort.c:23: for(i = left; i < right; i++)
;	genPlus
	inc	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00103$:
;cases/../tcc/25_quicksort.c:31: swap(right, index);
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_swap
;cases/../tcc/25_quicksort.c:33: return index;
;	genRet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/../tcc/25_quicksort.c:34: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total partition function size at codegen: 5 bytes.
;cases/../tcc/25_quicksort.c:37: void quicksort(int left, int right)
;	genLabel
;	genFunction
;	---------------------------------
; Function quicksort
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_quicksort::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/../tcc/25_quicksort.c:39: if(left >= right)
;	genCmpLt
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jp	po, 00113$
	xor	a, #0x80
00113$:
	jp	m, 00102$
;	skipping generated iCode
;cases/../tcc/25_quicksort.c:40: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/../tcc/25_quicksort.c:42: int index = partition(left, right);
;	genSend
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_partition
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
;cases/../tcc/25_quicksort.c:43: quicksort(left, index - 1);
;	genMinus
;fetchPairLong
	pop	de
	push	de
	dec	de
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_quicksort
	pop	bc
;cases/../tcc/25_quicksort.c:44: quicksort(index + 1, right);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_quicksort
;	genLabel
00103$:
;cases/../tcc/25_quicksort.c:45: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total quicksort function size at codegen: 5 bytes.
;cases/../tcc/25_quicksort.c:47: int main()
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_main_::
;cases/../tcc/25_quicksort.c:51: array[0] = 62;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x003e
	ld	(_array), hl
;cases/../tcc/25_quicksort.c:52: array[1] = 83;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x53
	ld	((_array + 2)), hl
;cases/../tcc/25_quicksort.c:53: array[2] = 4;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x04
	ld	((_array + 4)), hl
;cases/../tcc/25_quicksort.c:54: array[3] = 89;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x59
	ld	((_array + 6)), hl
;cases/../tcc/25_quicksort.c:55: array[4] = 36;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x24
	ld	((_array + 8)), hl
;cases/../tcc/25_quicksort.c:56: array[5] = 21;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x15
	ld	((_array + 10)), hl
;cases/../tcc/25_quicksort.c:57: array[6] = 74;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x4a
	ld	((_array + 12)), hl
;cases/../tcc/25_quicksort.c:58: array[7] = 37;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x25
	ld	((_array + 14)), hl
;cases/../tcc/25_quicksort.c:59: array[8] = 65;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x41
	ld	((_array + 16)), hl
;cases/../tcc/25_quicksort.c:60: array[9] = 33;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x21
	ld	((_array + 18)), hl
;cases/../tcc/25_quicksort.c:61: array[10] = 96;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x60
	ld	((_array + 20)), hl
;cases/../tcc/25_quicksort.c:62: array[11] = 38;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x26
	ld	((_array + 22)), hl
;cases/../tcc/25_quicksort.c:63: array[12] = 53;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x35
	ld	((_array + 24)), hl
;cases/../tcc/25_quicksort.c:64: array[13] = 16;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x10
	ld	((_array + 26)), hl
;cases/../tcc/25_quicksort.c:65: array[14] = 74;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x4a
	ld	((_array + 28)), hl
;cases/../tcc/25_quicksort.c:66: array[15] = 55;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	l, #0x37
	ld	((_array + 30)), hl
;cases/../tcc/25_quicksort.c:68: for (i = 0; i < 16; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00103$:
;cases/../tcc/25_quicksort.c:69: printf("%d ", array[i]);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_array
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
	pop	bc
;cases/../tcc/25_quicksort.c:68: for (i = 0; i < 16; i++)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00103$
;	skipping generated iCode
;cases/../tcc/25_quicksort.c:71: printf("\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	_puts
;cases/../tcc/25_quicksort.c:73: quicksort(0, 15);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000f
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
	call	_quicksort
;cases/../tcc/25_quicksort.c:75: for (i = 0; i < 16; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00105$:
;cases/../tcc/25_quicksort.c:76: printf("%d ", array[i]);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_array
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	bc
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
	pop	bc
;cases/../tcc/25_quicksort.c:75: for (i = 0; i < 16; i++)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00105$
;	skipping generated iCode
;cases/../tcc/25_quicksort.c:78: printf("\n");
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	_puts
;cases/../tcc/25_quicksort.c:80: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/../tcc/25_quicksort.c:81: }
;	genEndFunction
	ret
;	Total main_ function size at codegen: 1 bytes.
___str_1:
	.ascii "%d "
	.db 0x00
___str_3:
	.db 0x00
;cases/tcc_25_quicksort.c:13: int putchar(int c){_putchar(c);return(c);}
;	genLabel
;	genFunction
;	---------------------------------
; Function putchar
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_putchar::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__putchar
	pop	de
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total putchar function size at codegen: 1 bytes.
;cases/tcc_25_quicksort.c:14: void abort(void) {ASSERT(0);}
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
	ld	hl, #0x000e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_7
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_5
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total abort function size at codegen: 1 bytes.
__str_5:
	.ascii "Assertion failed"
	.db 0x00
__str_6:
	.ascii "0"
	.db 0x00
__str_7:
	.ascii "cases/tcc_25_quicksort.c"
	.db 0x00
;cases/tcc_25_quicksort.c:16: void __runSuite(void) { __prints("Running main\n"); ASSERT(!main_(MAINARGS)); }
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
	ld	hl, #___str_8
;	genCall
	call	___prints
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_main_
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
	ret	z
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0010
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __runSuite function size at codegen: 1 bytes.
___str_8:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
___str_9:
	.ascii "Assertion failed"
	.db 0x00
___str_10:
	.ascii "!main_(MAINARGS)"
	.db 0x00
___str_11:
	.ascii "cases/tcc_25_quicksort.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
