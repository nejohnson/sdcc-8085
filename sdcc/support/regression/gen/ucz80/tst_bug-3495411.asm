;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3495411
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _sip_new_from
	.globl _heap_save_str
	.globl _dummy_free
	.globl _sip_add_token
	.globl _sip_new_token
	.globl _sip_add_local_uri
	.globl _line_start
	.globl ___prints
	.globl ___fail
	.globl _Sip_pCurLcb
	.globl _Sys_bRegister
	.globl _l
	.globl ___numCases
	.globl __cTokenTag
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_l::
	.ds 233
_Sys_bRegister::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_Sip_pCurLcb::
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
;cases/./../tests/bug-3495411.c:152: void line_start(PCHAR pDst) {}
;	genLabel
;	genFunction
;	---------------------------------
; Function line_start
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_line_start::
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total line_start function size at codegen: 1 bytes.
;cases/./../tests/bug-3495411.c:153: void sip_add_local_uri(BOOLEAN bIP, BOOLEAN bPort) {}
;	genLabel
;	genFunction
;	---------------------------------
; Function sip_add_local_uri
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_sip_add_local_uri::
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total sip_add_local_uri function size at codegen: 1 bytes.
;cases/./../tests/bug-3495411.c:154: void sip_new_token(PCHAR pDst, UCHAR iLen) {}
;	genLabel
;	genFunction
;	---------------------------------
; Function sip_new_token
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_sip_new_token::
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total sip_new_token function size at codegen: 3 bytes.
;cases/./../tests/bug-3495411.c:155: void sip_add_token(PCHAR pToken, PCHAR pValue) {}
;	genLabel
;	genFunction
;	---------------------------------
; Function sip_add_token
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_sip_add_token::
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total sip_add_token function size at codegen: 1 bytes.
;cases/./../tests/bug-3495411.c:156: void dummy_free(void *p) {}
;	genLabel
;	genFunction
;	---------------------------------
; Function dummy_free
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_dummy_free::
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total dummy_free function size at codegen: 1 bytes.
;cases/./../tests/bug-3495411.c:157: PCHAR heap_save_str(PCHAR pStr) { return ((PCHAR) 42);}
;	genLabel
;	genFunction
;	---------------------------------
; Function heap_save_str
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_heap_save_str::
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x002a
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total heap_save_str function size at codegen: 1 bytes.
;cases/./../tests/bug-3495411.c:161: void sip_new_from()
;	genLabel
;	genFunction
;	---------------------------------
; Function sip_new_from
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 145 bytes.
_sip_new_from::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -145
	ld	hl, #-145
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-3495411.c:175: Sip_pCurLcb->pFrom = heap_save_str(pBuf);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Sip_pCurLcb)
;	genPlus
;fetchPairLong
	ld	bc, #0x005a
	add	hl, bc
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	hl
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_heap_save_str
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;cases/./../tests/bug-3495411.c:177: Sip_pCurLcb->pFromTag = heap_save_str(pTag);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_Sip_pCurLcb)
;	genPlus
;fetchPairLong
	ld	bc, #0x005e
	add	hl, bc
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	hl
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #130
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_heap_save_str
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3495411.c:178: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total sip_new_from function size at codegen: 5 bytes.
__cTokenTag:
	.db 0x00
;cases/./../tests/bug-3495411.c:182: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3495411.c:185: l.pFrom = (PCHAR) 23;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0017
	ld	((_l + 90)), hl
;cases/./../tests/bug-3495411.c:186: sip_new_from();
;	genCall
	call	_sip_new_from
;cases/./../tests/bug-3495411.c:187: ASSERT (l.pFrom == (PCHAR) 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	hl, (#(_l + 90) + 0)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2a
	or	a, h
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
	ld	hl, #0x00bb
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
;cases/./../tests/bug-3495411.c:189: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_1:
	.ascii "Assertion failed"
	.db 0x00
___str_2:
	.ascii "l.pFrom == (PCHAR) 42"
	.db 0x00
___str_3:
	.ascii "cases/./../tests/bug-3495411.c"
	.db 0x00
;cases/tst_bug-3495411.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3495411.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug-3495411.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3495411.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3495411.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3495411.c:15: return "bug-3495411.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3495411.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-3495411.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__Sip_pCurLcb:
	.dw _l
	.area _CABS (ABS)
