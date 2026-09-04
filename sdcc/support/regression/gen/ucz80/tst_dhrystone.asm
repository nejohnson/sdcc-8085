;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_dhrystone
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testDhrystone
	.globl _strcmp
	.globl _puts
	.globl _printf
	.globl ___prints
	.globl ___fail
	.globl _Reg
	.globl _Ch_1_Glob
	.globl _Int_Glob
	.globl _malloc_2
	.globl _malloc_1
	.globl _Dhrystones_Per_Second
	.globl _Microseconds
	.globl _User_Time
	.globl _End_Time
	.globl _Begin_Time
	.globl _Arr_2_Glob
	.globl _Arr_1_Glob
	.globl _Ch_2_Glob
	.globl _Bool_Glob
	.globl _Next_Ptr_Glob
	.globl _Ptr_Glob
	.globl ___numCases
	.globl _Proc_1
	.globl _Proc_2
	.globl _Proc_3
	.globl _Proc_4
	.globl _Proc_5
	.globl _Proc_6
	.globl _Proc_7
	.globl _Proc_8
	.globl _Func_1
	.globl _Func_2
	.globl _Func_3
	.globl _init
	.globl _clock
	.globl _putchar
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_Ptr_Glob::
	.ds 2
_Next_Ptr_Glob::
	.ds 2
_Bool_Glob::
	.ds 2
_Ch_2_Glob::
	.ds 1
_Arr_1_Glob::
	.ds 100
_Arr_2_Glob::
	.ds 5000
_Begin_Time::
	.ds 4
_End_Time::
	.ds 4
_User_Time::
	.ds 4
_Microseconds::
	.ds 4
_Dhrystones_Per_Second::
	.ds 4
_malloc_1::
	.ds 37
_malloc_2::
	.ds 37
_Int_Glob::
	.ds 2
_Ch_1_Glob::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_Reg::
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
;cases/./../tests/dhrystone.c:114: void testDhrystone(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testDhrystone
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 71 bytes.
_testDhrystone::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -71
	ld	hl, #-71
	add	hl, sp
	ld	sp, hl
;cases/./../tests/dhrystone.c:132: init();
;	genCall
	call	_init
;cases/./../tests/dhrystone.c:134: Next_Ptr_Glob = /*(Rec_Pointer) malloc (sizeof (Rec_Type))*/ &malloc_1;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_malloc_1
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Next_Ptr_Glob), hl
;cases/./../tests/dhrystone.c:135: Ptr_Glob = /*(Rec_Pointer) malloc (sizeof (Rec_Type))*/ &malloc_2;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_malloc_2
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:137: Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(_Ptr_Glob), hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_Next_Ptr_Glob)
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_Next_Ptr_Glob + 1)
	ld	(hl), a
;cases/./../tests/dhrystone.c:138: Ptr_Glob->Discr                       = Ident_1;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPlus
	inc	hl
	inc	hl
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/dhrystone.c:139: Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerSet
	ld	(hl), #0x02
;cases/./../tests/dhrystone.c:140: Ptr_Glob->variant.var_1.Int_Comp      = 40;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPlus
;fetchPairLong
	ld	bc, #0x0004
	add	hl, bc
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x28
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/dhrystone.c:141: strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPlus
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
	xor	a, a
00407$:
	cp	a, (hl)
	ldi
	jr	nz, 00407$
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/dhrystone.c:143: strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #5
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_1
	xor	a, a
00408$:
	cp	a, (hl)
	ldi
	jr	nz, 00408$
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/dhrystone.c:145: Arr_2_Glob [8][7] = 10;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x000a
	ld	((_Arr_2_Glob + 814)), hl
;cases/./../tests/dhrystone.c:153: printf ("\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_94
;	genCall
	call	_puts
;cases/./../tests/dhrystone.c:154: if (Reg)
;	genIfx
	ld	a, (_Reg+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_Reg
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/dhrystone.c:157: printf ("\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_95
;	genCall
	call	_puts
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/./../tests/dhrystone.c:162: printf ("\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_96
;	genCall
	call	_puts
;	genLabel
00103$:
;cases/./../tests/dhrystone.c:164: printf ("Please give the number of runs through the benchmark: ");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_13
	push	hl
;	genCall
	call	_printf
;	adjustStack by 2
	pop	af
;cases/./../tests/dhrystone.c:170: printf ("\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	_puts
;cases/./../tests/dhrystone.c:172: printf ("Execution starts, %d runs through Dhrystone\n", Number_Of_Runs);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0014
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_15
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:186: Begin_Time = clock();
;	genCall
	call	_clock
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_Begin_Time), de
;	genMove_o size 2 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_Begin_Time+2), a
	ld	(_Begin_Time+3), a
;cases/./../tests/dhrystone.c:189: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0001
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00118$:
;cases/./../tests/dhrystone.c:197: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
;	skipping iCode since result will be rematerialized
;cases/./../tests/dhrystone.c:189: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
;	genCmpGt
	ld	a, #0x14
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	po, 00409$
	xor	a, #0x80
00409$:
	jp	m, 00110$
;	skipping generated iCode
;cases/./../tests/dhrystone.c:192: Proc_5();
;	genCall
	push	bc
	call	_Proc_5
;cases/./../tests/dhrystone.c:193: Proc_4();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
	call	_Proc_4
	pop	bc
;cases/./../tests/dhrystone.c:195: Int_1_Loc = 2;
;	genAssign
;fetchPairLong
	ld	hl, #0x0002
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:196: Int_2_Loc = 3;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0x03
	ld	-3 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/dhrystone.c:197: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
;	skipping iCode since result will be rematerialized
;	genBuiltIn
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #38
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_16
	xor	a, a
00410$:
	cp	a, (hl)
	ldi
	jr	nz, 00410$
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/dhrystone.c:198: Enum_Loc = Ident_2;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:199: Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
;	genSend
; common peephole 51 eliminated dead pop/push bc pair.
	ld	-67 (ix), #0x01
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #38
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #7
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_Func_2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genNot
	ld	a, d
	or	a, e
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_Bool_Glob+0), a
;	genMove_o size 1 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_Bool_Glob+1), a
;cases/./../tests/dhrystone.c:201: while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -71 (ix)
	ld	-2 (ix), a
	ld	a, -70 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, #0x03
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00224$
;	skipping generated iCode
;cases/./../tests/dhrystone.c:203: Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
;	genMult
;fetchPairLong
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	ld	a, l
	add	a, #0xfd
	ld	-69 (ix), a
	ld	a, h
	adc	a, #0xff
	ld	-68 (ix), a
;cases/./../tests/dhrystone.c:205: Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0003
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_Proc_7
	pop	bc
;cases/./../tests/dhrystone.c:207: Int_1_Loc += 1;
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00411$
	inc	-1 (ix)
00411$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-71 (ix), a
	ld	a, -1 (ix)
	ld	-70 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00224$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-71 (ix), a
	ld	a, -1 (ix)
	ld	-70 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:210: Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -69 (ix)
	ld	h, -68 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_Arr_2_Glob
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_Arr_1_Glob
;	genCall
	call	_Proc_8
;cases/./../tests/dhrystone.c:212: Proc_1 (Ptr_Glob);
;	genSend
; common peephole 50a eliminated dead pop/push bc pair.
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genCall
	call	_Proc_1
	pop	bc
;cases/./../tests/dhrystone.c:213: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x41
;	genLabel
00115$:
;	genCmpGt
	ld	a, (_Ch_2_Glob+0)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00109$
;	skipping generated iCode
;cases/./../tests/dhrystone.c:216: if (Enum_Loc == Func_1 (Ch_Index, 'C'))
;	genSend
	push	bc
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x43
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_Func_1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -67 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00412$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00413$.
;	skipping generated iCode
;cases/./../tests/dhrystone.c:219: Proc_6 (Ident_1, &Enum_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
	call	_Proc_6
	pop	bc
;cases/./../tests/dhrystone.c:220: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
;	skipping iCode since result will be rematerialized
;	genBuiltIn
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #38
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_17
	xor	a, a
00414$:
	cp	a, (hl)
	ldi
	jr	nz, 00414$
	pop	bc
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/dhrystone.c:221: Int_2_Loc = Run_Index;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), c
	ld	-3 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:222: Int_Glob = Run_Index;
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_Int_Glob), bc
;	genLabel
00116$:
;cases/./../tests/dhrystone.c:213: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00109$:
;cases/./../tests/dhrystone.c:226: Int_2_Loc = Int_2_Loc * Int_1_Loc;
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
; common peephole 52a replaced push/pop pair by loads.
	pop	de
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:227: Int_1_Loc = Int_2_Loc / Int_3_Loc;
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genSend
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -69 (ix)
	ld	d, -68 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__divsint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	de
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:228: Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
;	genMinus
	ld	a, l
	sub	a, -69 (ix)
	ld	l, a
	ld	a, h
	sbc	a, -68 (ix)
	ld	h, a
;	genMult
	push	de
;fetchPairLong
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMinus
	ld	a, l
	sub	a, e
	ld	-2 (ix), a
	ld	a, h
	sbc	a, d
	ld	-1 (ix), a
;cases/./../tests/dhrystone.c:230: Proc_2 (&Int_1_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_Proc_2
	pop	bc
;cases/./../tests/dhrystone.c:189: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
;	genPlus
	inc	bc
;	genGoto
	jp	00118$
;	genLabel
00110$:
;cases/./../tests/dhrystone.c:247: End_Time = clock();
;	genCall
	call	_clock
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_End_Time), de
;	genMove_o size 2 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_End_Time+2), a
	ld	(_End_Time+3), a
;cases/./../tests/dhrystone.c:253: printf ("\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_99
;	genCall
	call	_puts
;cases/./../tests/dhrystone.c:254: printf ("Int_Glob:            %d\n", Int_Glob);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #___str_24
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Int_Glob)
	push	hl
;	genIpush
	push	bc
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:255: printf ("        should be:   %d\n", 5); ASSERT(Int_Glob == 5);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0005
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_Int_Glob)
	sub	a, #0x05
; common peephole 54 used hl instead of iy.
	ld	hl, #_Int_Glob + 1
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00123$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00415$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ff
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_27
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00123$:
;cases/./../tests/dhrystone.c:256: printf ("Bool_Glob:           %d\n", Bool_Glob);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #___str_29
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Bool_Glob)
	push	hl
;	genIpush
	push	bc
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:257: printf ("        should be:   %d\n", 1); ASSERT(Bool_Glob == 1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_Bool_Glob)
	dec	a
; common peephole 54 used hl instead of iy.
	ld	hl, #_Bool_Glob + 1
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00125$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00416$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0101
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_30
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00125$:
;cases/./../tests/dhrystone.c:258: printf ("Ch_1_Glob:           %c\n", Ch_1_Glob);
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_Ch_1_Glob)
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_31
;	genIpush
	push	bc
;	genIpush
	push	de
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:259: printf ("        should be:   %c\n", 'A'); ASSERT(Ch_1_Glob == 'A');
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0041
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_Ch_1_Glob)
	sub	a, #0x41
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00127$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00417$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0103
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_33
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00127$:
;cases/./../tests/dhrystone.c:260: printf ("Ch_2_Glob:           %c\n", Ch_2_Glob);
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_Ch_2_Glob)
	ld	c, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_34
;	genIpush
	push	bc
;	genIpush
	push	de
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:261: printf ("        should be:   %c\n", 'B'); ASSERT(Ch_2_Glob == 'B');
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0042
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_32
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_Ch_2_Glob)
	sub	a, #0x42
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00418$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0105
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_35
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00129$:
;cases/./../tests/dhrystone.c:262: printf ("Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, (#(_Arr_1_Glob + 16) + 0)
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #___str_36
;	genIpush
	push	hl
;	genIpush
	push	bc
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:263: printf ("        should be:   %d\n", 7); ASSERT(Arr_1_Glob[8] == 7);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0007
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	hl, (#(_Arr_1_Glob + 16) + 0)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x07
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00131$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00419$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0107
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_37
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00131$:
;cases/./../tests/dhrystone.c:264: printf ("Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
;	genPointerGet
	ld	hl, (#(_Arr_2_Glob + 814) + 0)
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #___str_38
;	genIpush
	push	hl
;	genIpush
	push	bc
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:265: printf ("        should be:   Number_Of_Runs + 10\n"); ASSERT(Arr_2_Glob[8][7] == Number_Of_Runs + 10);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_40
;	genCall
	call	_puts
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	hl, (#(_Arr_2_Glob + 814) + 0)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x1e
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00133$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00420$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0109
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_41
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00133$:
;cases/./../tests/dhrystone.c:266: printf ("Ptr_Glob->\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_43
;	genCall
	call	_puts
;cases/./../tests/dhrystone.c:267: printf ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
;	genPointerGet
;fetchPairLong
	ld	hl, (_Ptr_Glob)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_44
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:268: printf ("        should be:   (implementation-dependent)\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_46
;	genCall
	call	_puts
;cases/./../tests/dhrystone.c:269: printf ("  Discr:             %d\n", Ptr_Glob->Discr);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_47
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:270: printf ("        should be:   %d\n", 0); ASSERT(Ptr_Glob->Discr == 0);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00135$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_48
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x010e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00135$:
;cases/./../tests/dhrystone.c:271: printf ("  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_49
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:272: printf ("        should be:   %d\n", 2); ASSERT(Ptr_Glob->variant.var_1.Enum_Comp == 2);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00137$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00421$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0110
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_50
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00137$:
;cases/./../tests/dhrystone.c:273: printf ("  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	ld	de, #0x0004
	add	hl, de
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_51
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:274: printf ("        should be:   %d\n", 17); ASSERT(Ptr_Glob->variant.var_1.Int_Comp == 17);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0011
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	ld	de, #0x0004
	add	hl, de
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x11
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00139$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00422$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0112
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_52
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00139$:
;cases/./../tests/dhrystone.c:275: printf ("  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPlus
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_53
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:276: printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n"); ASSERT(!strcmp(Ptr_Glob->variant.var_1.Str_Comp, "DHRYSTONE PROGRAM, SOME STRING"));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_55
;	genCall
	call	_puts
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPlus
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00141$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_56
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0114
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #___str_28
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
;	genLabel
00141$:
;cases/./../tests/dhrystone.c:277: printf ("Next_Ptr_Glob->\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_58
;	genCall
	call	_puts
;cases/./../tests/dhrystone.c:278: printf ("  Ptr_Comp:          %d\n", (int) Next_Ptr_Glob->Ptr_Comp);
;	genPointerGet
;fetchPairLong
	ld	hl, (_Next_Ptr_Glob)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_44
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:279: printf ("        should be:   (implementation-dependent), same as above\n"); ASSERT((int) Ptr_Glob->Ptr_Comp == (int) Next_Ptr_Glob->Ptr_Comp);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_60
;	genCall
	call	_puts
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
;fetchPairLong
	ld	hl, (_Ptr_Glob)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	hl, (_Next_Ptr_Glob)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00143$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00423$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0117
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_61
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00143$:
;cases/./../tests/dhrystone.c:280: printf ("  Discr:             %d\n", Next_Ptr_Glob->Discr);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Next_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_47
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:281: printf ("        should be:   %d\n", 0); ASSERT(Next_Ptr_Glob->Discr == 0);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Next_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00145$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_62
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0119
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #___str_28
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
;	genLabel
00145$:
;cases/./../tests/dhrystone.c:282: printf ("  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Next_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_49
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:283: printf ("        should be:   %d\n", 1); ASSERT(Next_Ptr_Glob->variant.var_1.Enum_Comp == 1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Next_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCmpEq
	dec	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00147$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00424$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x011b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_63
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00147$:
;cases/./../tests/dhrystone.c:284: printf ("  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Next_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	ld	de, #0x0004
	add	hl, de
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_51
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:285: printf ("        should be:   %d\n", 18); ASSERT(Next_Ptr_Glob->variant.var_1.Int_Comp == 18);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0012
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Next_Ptr_Glob)
;	genPointerGet
;fetchPairLong
	ld	de, #0x0004
	add	hl, de
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x12
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00149$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00425$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x011d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_64
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00149$:
;cases/./../tests/dhrystone.c:287: Next_Ptr_Glob->variant.var_1.Str_Comp);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Next_Ptr_Glob)
;	genPlus
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;cases/./../tests/dhrystone.c:286: printf ("  Str_Comp:          %s\n",
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_53
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:288: printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n"); ASSERT(!strcmp(Next_Ptr_Glob->variant.var_1.Str_Comp, "DHRYSTONE PROGRAM, SOME STRING"));
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_55
;	genCall
	call	_puts
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Next_Ptr_Glob)
;	genPlus
;fetchPairLong
	ld	bc, #0x0006
	add	hl, bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00151$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_66
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0120
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00151$:
;cases/./../tests/dhrystone.c:289: printf ("Int_1_Loc:           %d\n", Int_1_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_67
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:290: printf ("        should be:   %d\n", 5); ASSERT(Int_1_Loc == 5);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0005
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -71 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x05
	or	a, -70 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00153$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00426$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0122
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_68
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00153$:
;cases/./../tests/dhrystone.c:291: printf ("Int_2_Loc:           %d\n", Int_2_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_69
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:292: printf ("        should be:   %d\n", 13); ASSERT(Int_2_Loc == 13);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000d
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
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
	sub	a, #0x0d
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00155$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00427$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0124
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_70
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00155$:
;cases/./../tests/dhrystone.c:293: printf ("Int_3_Loc:           %d\n", Int_3_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_71
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:294: printf ("        should be:   %d\n", 7); ASSERT(Int_3_Loc == 7);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0007
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -69 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x07
	or	a, -68 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00157$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00428$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0126
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_72
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00157$:
;cases/./../tests/dhrystone.c:295: printf ("Enum_Loc:            %d\n", Enum_Loc);
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -67 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_73
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
;cases/./../tests/dhrystone.c:296: printf ("        should be:   %d\n", 1); ASSERT(Enum_Loc == 1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
; common peephole 143 used ex to move hl onto the stack.
	ex	(sp),hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -67 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00159$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00429$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0128
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_74
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00159$:
;cases/./../tests/dhrystone.c:297: printf ("Str_1_Loc:           %s\n", Str_1_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #5
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_75
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:298: printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"); ASSERT(!strcmp(Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING"));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_77
;	genCall
	call	_puts
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #5
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00161$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_78
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x012a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00161$:
;cases/./../tests/dhrystone.c:299: printf ("Str_2_Loc:           %s\n", Str_2_Loc);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #36
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_79
	push	hl
;	genCall
	call	_printf
;	adjustStack by 4
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:300: printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"); ASSERT(!strcmp(Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING"));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_81
;	genCall
	call	_puts
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #36
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00163$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_82
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x012c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_28
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_26
;	genCall
	call	___fail
;	genLabel
00163$:
;cases/./../tests/dhrystone.c:301: printf ("\n");
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	_puts
;cases/./../tests/dhrystone.c:303: User_Time = End_Time - Begin_Time;
;	genMinus
;	Shift into pair
	ld	hl, #_Begin_Time
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_User_Time
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (_End_Time+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_End_Time+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_End_Time+1)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_End_Time+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_End_Time+2)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_End_Time+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_End_Time+3)
	sbc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/./../tests/dhrystone.c:305: if (User_Time < Too_Small_Time)
;	genCmpLt
	ld	a, (_User_Time+0)
	sub	a, #0xd0
	ld	a, (_User_Time+1)
	sbc	a, #0x07
	ld	a, (_User_Time+2)
	sbc	a, #0x00
	ld	a, (_User_Time+3)
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00112$
;	skipping generated iCode
;cases/./../tests/dhrystone.c:309: printf ("\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_101
;	genCall
	call	_puts
;	genGoto
	jp	00120$
;	genLabel
00112$:
;cases/./../tests/dhrystone.c:318: Microseconds = (float) User_Time * Mic_secs_Per_Second 
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_User_Time)
	ld	hl, (_User_Time + 2)
;	genCall
	call	___slong2fs
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
	pop	iy
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
	push	bc
	push	iy
	push	iy
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x2400
	ld	hl, #0x4974
;cases/./../tests/dhrystone.c:319: / ((float) HZ * ((float) Number_Of_Runs));
;	genCall
	call	___fsmul
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
; common peephole 50a eliminated dead pop/push bc pair.
; common peephole 50a eliminated dead pop/push iy pair.
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x469c
	ex	(sp), hl
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x4000
	ex	(sp), hl
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsdiv
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	iy
	pop	bc
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	(_Microseconds), de
	ld	(_Microseconds + 2), hl
;cases/./../tests/dhrystone.c:321: / (float) User_Time;
;	genIpush
	push	iy
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x4000
	ld	hl, #0x469c
;	genCall
	call	___fsdiv
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_Dhrystones_Per_Second), de
	ld	(_Dhrystones_Per_Second + 2), hl
;cases/./../tests/dhrystone.c:323: printf ("Microseconds for one run through Dhrystone: ");
;	genAddrOf
	ld	bc, #___str_89+0
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genCall
	call	_printf
;	adjustStack by 2
	pop	af
;cases/./../tests/dhrystone.c:325: printf ("%ld \n", (long int)Microseconds);
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_Microseconds)
	ld	hl, (_Microseconds + 2)
;	genCall
	call	___fs2slong
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_90
	push	hl
;	genCall
	call	_printf
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:326: printf ("Dhrystones per Second:                      ");
;	genAddrOf
	ld	bc, #___str_91+0
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genCall
	call	_printf
;	adjustStack by 2
	pop	af
;cases/./../tests/dhrystone.c:328: printf ("%ld \n", (long int)Dhrystones_Per_Second);
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_Dhrystones_Per_Second)
	ld	hl, (_Dhrystones_Per_Second + 2)
;	genCall
	call	___fs2slong
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
	push	hl
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_90
	push	hl
;	genCall
	call	_printf
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
;cases/./../tests/dhrystone.c:329: printf ("\n");
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	_puts
;	genLabel
00120$:
;cases/./../tests/dhrystone.c:332: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testDhrystone function size at codegen: 28 bytes.
___str_0:
	.ascii "DHRYSTONE PROGRAM, SOME STRING"
	.db 0x00
___str_1:
	.ascii "DHRYSTONE PROGRAM, 1'ST STRING"
	.db 0x00
___str_3:
	.db 0x00
___str_13:
	.ascii "Please give the number of runs through the benchmark: "
	.db 0x00
___str_15:
	.ascii "Execution starts, %d runs through Dhrystone"
	.db 0x0a
	.db 0x00
___str_16:
	.ascii "DHRYSTONE PROGRAM, 2'ND STRING"
	.db 0x00
___str_17:
	.ascii "DHRYSTONE PROGRAM, 3'RD STRING"
	.db 0x00
___str_24:
	.ascii "Int_Glob:            %d"
	.db 0x0a
	.db 0x00
___str_25:
	.ascii "        should be:   %d"
	.db 0x0a
	.db 0x00
___str_26:
	.ascii "Assertion failed"
	.db 0x00
___str_27:
	.ascii "Int_Glob == 5"
	.db 0x00
___str_28:
	.ascii "cases/./../tests/dhrystone.c"
	.db 0x00
___str_29:
	.ascii "Bool_Glob:           %d"
	.db 0x0a
	.db 0x00
___str_30:
	.ascii "Bool_Glob == 1"
	.db 0x00
___str_31:
	.ascii "Ch_1_Glob:           %c"
	.db 0x0a
	.db 0x00
___str_32:
	.ascii "        should be:   %c"
	.db 0x0a
	.db 0x00
___str_33:
	.ascii "Ch_1_Glob == 'A'"
	.db 0x00
___str_34:
	.ascii "Ch_2_Glob:           %c"
	.db 0x0a
	.db 0x00
___str_35:
	.ascii "Ch_2_Glob == 'B'"
	.db 0x00
___str_36:
	.ascii "Arr_1_Glob[8]:       %d"
	.db 0x0a
	.db 0x00
___str_37:
	.ascii "Arr_1_Glob[8] == 7"
	.db 0x00
___str_38:
	.ascii "Arr_2_Glob[8][7]:    %d"
	.db 0x0a
	.db 0x00
___str_40:
	.ascii "        should be:   Number_Of_Runs + 10"
	.db 0x00
___str_41:
	.ascii "Arr_2_Glob[8][7] == Number_Of_Runs + 10"
	.db 0x00
___str_43:
	.ascii "Ptr_Glob->"
	.db 0x00
___str_44:
	.ascii "  Ptr_Comp:          %d"
	.db 0x0a
	.db 0x00
___str_46:
	.ascii "        should be:   (implementation-dependent)"
	.db 0x00
___str_47:
	.ascii "  Discr:             %d"
	.db 0x0a
	.db 0x00
___str_48:
	.ascii "Ptr_Glob->Discr == 0"
	.db 0x00
___str_49:
	.ascii "  Enum_Comp:         %d"
	.db 0x0a
	.db 0x00
___str_50:
	.ascii "Ptr_Glob->variant.var_1.Enum_Comp == 2"
	.db 0x00
___str_51:
	.ascii "  Int_Comp:          %d"
	.db 0x0a
	.db 0x00
___str_52:
	.ascii "Ptr_Glob->variant.var_1.Int_Comp == 17"
	.db 0x00
___str_53:
	.ascii "  Str_Comp:          %s"
	.db 0x0a
	.db 0x00
___str_55:
	.ascii "        should be:   DHRYSTONE PROGRAM, SOME STRING"
	.db 0x00
___str_56:
	.ascii "!strcmp(Ptr_Glob->variant.var_1.Str_Comp, "
	.db 0x22
	.ascii "DHRYSTONE PROGRAM, SOME STRING"
	.db 0x22
	.ascii ")"
	.db 0x00
___str_58:
	.ascii "Next_Ptr_Glob->"
	.db 0x00
___str_60:
	.ascii "        should be:   (implementation-dependent), same as abo"
	.ascii "ve"
	.db 0x00
___str_61:
	.ascii "(int) Ptr_Glob->Ptr_Comp == (int) Next_Ptr_Glob->Ptr_Comp"
	.db 0x00
___str_62:
	.ascii "Next_Ptr_Glob->Discr == 0"
	.db 0x00
___str_63:
	.ascii "Next_Ptr_Glob->variant.var_1.Enum_Comp == 1"
	.db 0x00
___str_64:
	.ascii "Next_Ptr_Glob->variant.var_1.Int_Comp == 18"
	.db 0x00
___str_66:
	.ascii "!strcmp(Next_Ptr_Glob->variant.var_1.Str_Comp, "
	.db 0x22
	.ascii "DHRYSTONE PROGRAM, SOME STRING"
	.db 0x22
	.ascii ")"
	.db 0x00
___str_67:
	.ascii "Int_1_Loc:           %d"
	.db 0x0a
	.db 0x00
___str_68:
	.ascii "Int_1_Loc == 5"
	.db 0x00
___str_69:
	.ascii "Int_2_Loc:           %d"
	.db 0x0a
	.db 0x00
___str_70:
	.ascii "Int_2_Loc == 13"
	.db 0x00
___str_71:
	.ascii "Int_3_Loc:           %d"
	.db 0x0a
	.db 0x00
___str_72:
	.ascii "Int_3_Loc == 7"
	.db 0x00
___str_73:
	.ascii "Enum_Loc:            %d"
	.db 0x0a
	.db 0x00
___str_74:
	.ascii "Enum_Loc == 1"
	.db 0x00
___str_75:
	.ascii "Str_1_Loc:           %s"
	.db 0x0a
	.db 0x00
___str_77:
	.ascii "        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
	.db 0x00
___str_78:
	.ascii "!strcmp(Str_1_Loc, "
	.db 0x22
	.ascii "DHRYSTONE PROGRAM, 1'ST STRING"
	.db 0x22
	.ascii ")"
	.db 0x00
___str_79:
	.ascii "Str_2_Loc:           %s"
	.db 0x0a
	.db 0x00
___str_81:
	.ascii "        should be:   DHRYSTONE PROGRAM, 2'ND STRING"
	.db 0x00
___str_82:
	.ascii "!strcmp(Str_2_Loc, "
	.db 0x22
	.ascii "DHRYSTONE PROGRAM, 2'ND STRING"
	.db 0x22
	.ascii ")"
	.db 0x00
___str_89:
	.ascii "Microseconds for one run through Dhrystone: "
	.db 0x00
___str_90:
	.ascii "%ld "
	.db 0x0a
	.db 0x00
___str_91:
	.ascii "Dhrystones per Second:                      "
	.db 0x00
___str_94:
	.db 0x0a
	.ascii "Dhrystone Benchmark, Version 2.1 (Language: C)"
	.db 0x0a
	.db 0x00
___str_95:
	.ascii "Program compiled with 'register' attribute"
	.db 0x0a
	.db 0x00
___str_96:
	.ascii "Program compiled without 'register' attribute"
	.db 0x0a
	.db 0x00
___str_99:
	.ascii "Execution ends"
	.db 0x0a
	.db 0x0a
	.ascii "Final values of the variables used in the benchmark:"
	.db 0x0a
	.db 0x00
___str_101:
	.ascii "Measured time too small to obtain meaningful results"
	.db 0x0a
	.ascii "Please increase number of runs"
	.db 0x0a
	.db 0x00
;cases/./../tests/dhrystone.c:334: void Proc_1 (REG Rec_Pointer Ptr_Val_Par)
;	genLabel
;	genFunction
;	---------------------------------
; Function Proc_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 11 bytes.
_Proc_1::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -11
	ld	iy, #-11
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:340: REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-11 (ix), a
	ld	a, -1 (ix)
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-9 (ix), e
	ld	-8 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:345: structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genBuiltIn
;fetchPairLong
	ld	bc, #0x0025
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/dhrystone.c:346: Ptr_Val_Par->variant.var_1.Int_Comp = 5;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0004
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x05
	inc	hl
;cases/./../tests/dhrystone.c:347: Next_Record->variant.var_1.Int_Comp 
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
; common peephole 97b reused constant loaded into register pair.
	ld	de, #0x0004
	ld	(hl), d
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/dhrystone.c:348: = Ptr_Val_Par->variant.var_1.Int_Comp;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), l
	ld	-6 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -7 (ix) -6 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x05
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/dhrystone.c:349: Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/dhrystone.c:350: Proc_3 (&Next_Record->Ptr_Comp);
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_Proc_3
;cases/./../tests/dhrystone.c:353: if (Next_Record->Discr == Ident_1)
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	pop	bc
	push	bc
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	bc
	inc	bc
;	_moveFrom_tpair_()
	ld	a, (bc)
;	genIfx
; common peephole 33 loaded a from a instead of going through -3 (ix).
	ld	-3 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/dhrystone.c:356: Next_Record->variant.var_1.Int_Comp = 6;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -7 (ix)
	ld	h, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x06
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/dhrystone.c:358: &Next_Record->variant.var_1.Enum_Comp);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	pop	de
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	de
	inc	de
	inc	de
;cases/./../tests/dhrystone.c:357: Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_Proc_6
;cases/./../tests/dhrystone.c:359: Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
;	genPointerGet
;fetchPairLong
	ld	hl, (_Ptr_Glob)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/dhrystone.c:360: Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
;	genPointerGet
;fetchPairLong
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -7 (ix)
	ld	d, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000a
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_Proc_7
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00102$:
;cases/./../tests/dhrystone.c:364: structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genCast
;	(locations are the same)
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;fetchPairLong
	ld	bc, #0x0025
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genLabel
00104$:
;cases/./../tests/dhrystone.c:365: } /* Proc_1 */
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total Proc_1 function size at codegen: 12 bytes.
;cases/./../tests/dhrystone.c:368: void Proc_2 (One_Fifty *Int_Par_Ref)
;	genLabel
;	genFunction
;	---------------------------------
; Function Proc_2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_Proc_2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:377: Int_Loc = *Int_Par_Ref + 10;
;	genPointerGet
;fetchPairLong
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
	add	a, #0x0a
	ld	c, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00120$
	inc	b
00120$:
;cases/./../tests/dhrystone.c:379: if (Ch_1_Glob == 'A')
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_Ch_1_Glob)
	sub	a, #0x41
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00121$.
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00122$.
;	skipping generated iCode
;cases/./../tests/dhrystone.c:382: Int_Loc -= 1;
;	genMinus
	dec	bc
;cases/./../tests/dhrystone.c:383: *Int_Par_Ref = Int_Loc - Int_Glob;
;	genMinus
;	Shift into pair
	ld	hl, #_Int_Glob
	ld	a, c
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, b
	sbc	a, (hl)
	ld	b, a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/dhrystone.c:386: while (Enum_Loc != Ident_1); /* true */
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/dhrystone.c:387: } /* Proc_2 */
;	genEndFunction
	ret
;	Total Proc_2 function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:390: void Proc_3 (Rec_Pointer *Ptr_Ref_Par)
;	genLabel
;	genFunction
;	---------------------------------
; Function Proc_3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Proc_3::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:396: if (Ptr_Glob != Null)
;	genIfx
	ld	a, (_Ptr_Glob+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_Ptr_Glob
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/dhrystone.c:398: *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
;	genPointerGet
;fetchPairLong
	ld	hl, (_Ptr_Glob)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genLabel
00102$:
;cases/./../tests/dhrystone.c:399: Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Ptr_Glob)
;	genPlus
;fetchPairLong
	ld	bc, #0x0004
	add	hl, bc
;	genIpush
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_Int_Glob)
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x000a
;	genCall
	call	_Proc_7
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/dhrystone.c:400: } /* Proc_3 */
;	genEndFunction
	ret
;	Total Proc_3 function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:403: void Proc_4 (void) /* without parameters */
;	genLabel
;	genFunction
;	---------------------------------
; Function Proc_4
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Proc_4::
;cases/./../tests/dhrystone.c:408: Bool_Loc = Ch_1_Glob == 'A';
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_Ch_1_Glob)
	sub	a, #0x41
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00103$.
	xor	a, a
00104$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into b.
;cases/./../tests/dhrystone.c:409: Bool_Glob = Bool_Loc | Bool_Glob;
;	genOr
	ld	a, (_Bool_Glob+0)
	or	a, c
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_Bool_Glob+0), a
;	genMove_o size 1 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:410: Ch_2_Glob = 'B';
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_Ch_2_Glob
	ld	(hl), #0x42
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dhrystone.c:411: } /* Proc_4 */
;	genEndFunction
	ret
;	Total Proc_4 function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:414: void Proc_5 (void) /* without parameters */
;	genLabel
;	genFunction
;	---------------------------------
; Function Proc_5
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Proc_5::
;cases/./../tests/dhrystone.c:418: Ch_1_Glob = 'A';
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_Ch_1_Glob
	ld	(hl), #0x41
;cases/./../tests/dhrystone.c:419: Bool_Glob = false;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_Bool_Glob), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dhrystone.c:420: } /* Proc_5 */
;	genEndFunction
	ret
;	Total Proc_5 function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:426: void Proc_6 (Enumeration Enum_Val_Par, Enumeration *Enum_Ref_Par)
;	genLabel
;	genFunction
;	---------------------------------
; Function Proc_6
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_Proc_6::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:431: *Enum_Ref_Par = Enum_Val_Par;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
; common peephole 98 removed redundant load from c into a.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/dhrystone.c:432: if (! Func_3 (Enum_Val_Par))
;	genSend
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_Func_3
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/dhrystone.c:434: *Enum_Ref_Par = Ident_4;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x03
	ld	(de), a
;	genLabel
00102$:
;cases/./../tests/dhrystone.c:435: switch (Enum_Val_Par)
;	genCmpGt
	ld	a, #0x04
	sub	a, c
	ret	c
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	genJumpTab
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x00
	ld	hl, #00138$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00138$:
	.dw	00103$
	.dw	00104$
	.dw	00108$
	.dw	00112$
	.dw	00110$
;cases/./../tests/dhrystone.c:437: case Ident_1: 
;	genLabel
00103$:
;cases/./../tests/dhrystone.c:438: *Enum_Ref_Par = Ident_1;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
;cases/./../tests/dhrystone.c:439: break;
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/dhrystone.c:440: case Ident_2: 
;	genLabel
00104$:
;cases/./../tests/dhrystone.c:441: if (Int_Glob > 100)
;	genCmpGt
	ld	a, #0x64
	ld	iy, #_Int_Glob
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	po, 00139$
	xor	a, #0x80
00139$:
	jp	p, 00106$
;	skipping generated iCode
;cases/./../tests/dhrystone.c:443: *Enum_Ref_Par = Ident_1;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00106$:
;cases/./../tests/dhrystone.c:444: else *Enum_Ref_Par = Ident_4;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x03
	ld	(de), a
;cases/./../tests/dhrystone.c:445: break;
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/dhrystone.c:446: case Ident_3: /* executed */
;	genLabel
00108$:
;cases/./../tests/dhrystone.c:447: *Enum_Ref_Par = Ident_2;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x01
	ld	(de), a
;cases/./../tests/dhrystone.c:448: break;
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/dhrystone.c:450: case Ident_5: 
;	genLabel
00110$:
;cases/./../tests/dhrystone.c:451: *Enum_Ref_Par = Ident_3;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x02
	ld	(de), a
;cases/./../tests/dhrystone.c:453: } /* switch */
;	genLabel
00112$:
;cases/./../tests/dhrystone.c:454: } /* Proc_6 */
;	genEndFunction
	ret
;	Total Proc_6 function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:457: void Proc_7 (One_Fifty Int_1_Par_Val, One_Fifty Int_2_Par_Val, One_Fifty *Int_Par_Ref)
;	genLabel
;	genFunction
;	---------------------------------
; Function Proc_7
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_Proc_7::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:469: Int_Loc = Int_1_Par_Val + 2;
;	genPlus
; common peephole 96b move inc hl before add ix, sp
; common peephole 96b move inc hl before ld ix, #0
; common peephole 96d move inc hl before push ix
	inc	hl
; common peephole 96b move inc hl before add ix, sp
; common peephole 96b move inc hl before ld ix, #0
; common peephole 96d move inc hl before push ix
	inc	hl
	push	ix
	ld	ix, #0
	add	ix, sp
;cases/./../tests/dhrystone.c:470: *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 4 (ix)
	ld	b, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(bc), a
	inc	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(bc), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dhrystone.c:471: } /* Proc_7 */
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total Proc_7 function size at codegen: 5 bytes.
;cases/./../tests/dhrystone.c:474: void Proc_8 (Arr_1_Dim Arr_1_Par_Ref, Arr_2_Dim Arr_2_Par_Ref, int Int_1_Par_Val, int Int_2_Par_Val)
;	genLabel
;	genFunction
;	---------------------------------
; Function Proc_8
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 12 bytes.
_Proc_8::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -12
	ld	iy, #-12
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:483: Int_Loc = Int_1_Par_Val + 5;
;	genPlus
	ld	a, 4 (ix)
	add	a, #0x05
	ld	c, a
	ld	a, 5 (ix)
	adc	a, #0x00
	ld	b, a
;cases/./../tests/dhrystone.c:484: Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/dhrystone.c:485: Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, c
	ld	h, b
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -10 (ix) -9 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, -4 (ix)
	add	a, l
	ld	l, a
	ld	a, -3 (ix)
	adc	a, h
	ld	h, a
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
	ld	-2 (ix), a
	ld	a, 7 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/dhrystone.c:486: Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
;	genPlus
;fetchPairLong
	ld	hl, #0x001e
	add	hl, bc
;	genLeftShift
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, -4 (ix)
	ld	l, a
	ld	a, h
	adc	a, -3 (ix)
	ld	h, a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/dhrystone.c:487: for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -6 (ix)
	add	a, l
	ld	-8 (ix), a
	ld	a, -5 (ix)
	adc	a, h
	ld	-7 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), c
	ld	-1 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00103$:
;	genCmpGt
	ld	a, -10 (ix)
	sub	a, -2 (ix)
	ld	a, -9 (ix)
	sbc	a, -1 (ix)
	jp	po, 00124$
	xor	a, #0x80
00124$:
	jp	m, 00101$
;	skipping generated iCode
;cases/./../tests/dhrystone.c:488: Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -8 (ix)
	ld	l, a
	ld	a, h
	adc	a, -7 (ix)
	ld	h, a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/dhrystone.c:487: for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 84 jumped to 00103$ directly instead of via 00125$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00125$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00101$:
;cases/./../tests/dhrystone.c:489: Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
;	genLeftShift
	add	a, a
;	genPlus
	add	a, -8 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -7 (ix)
	ld	h, a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-7 (ix), a
	dec	hl
;	genPlus
	ld	a, -8 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/dhrystone.c:490: Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
;	genPlus
;fetchPairLong
	ld	hl, #0x0014
	add	hl, bc
;	genMult
;fetchPairLong
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	c, -6 (ix)
	ld	b, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genPlus
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/dhrystone.c:491: Int_Glob = 5;
;	genAssign
;fetchPairLong
	ld	hl, #0x0005
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_Int_Glob), hl
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/dhrystone.c:492: } /* Proc_8 */
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total Proc_8 function size at codegen: 8 bytes.
;cases/./../tests/dhrystone.c:495: Enumeration Func_1 (Capital_Letter Ch_1_Par_Val, Capital_Letter Ch_2_Par_Val)
;	genLabel
;	genFunction
;	---------------------------------
; Function Func_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Func_1::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:508: if (Ch_2_Loc != Ch_2_Par_Val)
;	genCmpEq
	cp	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
;	skipping generated iCode
;cases/./../tests/dhrystone.c:510: return (Ident_1);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;cases/./../tests/dhrystone.c:513: Ch_1_Glob = Ch_1_Loc;
;	genAssign
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_Ch_1_Glob), a
; common peephole 19 loaded (#_Ch_1_Glob) from a directly instead of using hl.
;cases/./../tests/dhrystone.c:514: return (Ident_2);
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/dhrystone.c:516: } /* Func_1 */
;	genEndFunction
	ret
;	Total Func_1 function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:519: Boolean Func_2 (Str_30 Str_1_Par_Ref, Str_30 Str_2_Par_Ref)
;	genLabel
;	genFunction
;	---------------------------------
; Function Func_2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_Func_2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:529: Int_Loc = 2;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x02
;cases/./../tests/dhrystone.c:530: while (Int_Loc <= 2) /* loop body executed once */
;	genLabel
00103$:
;	genCmpGt
	ld	a, #0x02
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00107$
;	skipping generated iCode
;cases/./../tests/dhrystone.c:532: Str_2_Par_Ref[Int_Loc+1]) == Ident_1)
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/./../tests/dhrystone.c:531: if (Func_1 (Str_1_Par_Ref[Int_Loc],
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	h, (hl)
;	genSend
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_Func_1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;cases/./../tests/dhrystone.c:536: Int_Loc += 1;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x03
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;cases/./../tests/dhrystone.c:540: Int_Loc = 7;
;	genLabel
00107$:
;cases/./../tests/dhrystone.c:546: if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpGt
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	po, 00158$
	xor	a, #0x80
00158$:
	jp	p, 00110$
;	skipping generated iCode
;cases/./../tests/dhrystone.c:550: Int_Glob = Int_Loc;
;	genAssign
;fetchPairLong
	ld	hl, #0x000a
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_Int_Glob), hl
;cases/./../tests/dhrystone.c:551: return (true);
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00110$:
;cases/./../tests/dhrystone.c:554: return (false);
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00115$:
;cases/./../tests/dhrystone.c:556: } /* Func_2 */
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total Func_2 function size at codegen: 4 bytes.
;cases/./../tests/dhrystone.c:559: Boolean Func_3 (Enumeration Enum_Par_Val)
;	genLabel
;	genFunction
;	---------------------------------
; Function Func_3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_Func_3::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/dhrystone.c:567: if (Enum_Loc == Ident_3)
;	genCmpEq
	cp	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;cases/./../tests/dhrystone.c:569: return (true);
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;cases/./../tests/dhrystone.c:571: return (false);
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/dhrystone.c:572: } /* Func_3 */
;	genEndFunction
	ret
;	Total Func_3 function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:574: void init(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_init::
;cases/./../tests/dhrystone.c:576: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total init function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:578: unsigned int clock(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function clock
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_clock::
;cases/./../tests/dhrystone.c:580: return(0);
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dhrystone.c:581: }
;	genEndFunction
	ret
;	Total clock function size at codegen: 1 bytes.
;cases/./../tests/dhrystone.c:584: int putchar(int c)
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
;cases/./../tests/dhrystone.c:586: return(c);
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/dhrystone.c:587: }
;	genEndFunction
	ret
;	Total putchar function size at codegen: 1 bytes.
;cases/tst_dhrystone.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_dhrystone.c:6: __prints("Running testDhrystone\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_102
;	genCall
	call	___prints
;cases/tst_dhrystone.c:7: testDhrystone();
;	genCall
	call	_testDhrystone
;cases/tst_dhrystone.c:8: __prints("Running testDhrystone\n");
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_102
;	genCall
	call	___prints
;cases/tst_dhrystone.c:9: testDhrystone();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_dhrystone.c:10: }
;	genEndFunction
	jp	_testDhrystone
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_102:
	.ascii "Running testDhrystone"
	.db 0x0a
	.db 0x00
;cases/tst_dhrystone.c:15: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_dhrystone.c:17: return "dhrystone.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_103
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_dhrystone.c:18: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_103:
	.ascii "dhrystone.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__Reg:
	.dw #0x0001
	.area _CABS (ABS)
