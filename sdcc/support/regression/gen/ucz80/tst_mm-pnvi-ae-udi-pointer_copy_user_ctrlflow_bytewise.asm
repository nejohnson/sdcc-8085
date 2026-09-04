;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_mm_pnvi_ae_udi_pointer_copy_user_ctrlflow_bytewise
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testMM
	.globl _user_memcpy2
	.globl _control_flow_copy
	.globl ___prints
	.globl ___fail
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
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_x::
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
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:30: unsigned char control_flow_copy(unsigned char c) {
;	genLabel
;	genFunction
;	---------------------------------
; Function control_flow_copy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_control_flow_copy::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:31: switch (c) {
;	genJumpTab
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
	ld	hl, #00360$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00360$:
	.dw	00101$
	.dw	00102$
	.dw	00103$
	.dw	00104$
	.dw	00105$
	.dw	00106$
	.dw	00107$
	.dw	00108$
	.dw	00109$
	.dw	00110$
	.dw	00111$
	.dw	00112$
	.dw	00113$
	.dw	00114$
	.dw	00115$
	.dw	00116$
	.dw	00117$
	.dw	00118$
	.dw	00119$
	.dw	00120$
	.dw	00121$
	.dw	00122$
	.dw	00123$
	.dw	00124$
	.dw	00125$
	.dw	00126$
	.dw	00127$
	.dw	00128$
	.dw	00129$
	.dw	00130$
	.dw	00131$
	.dw	00132$
	.dw	00133$
	.dw	00134$
	.dw	00135$
	.dw	00136$
	.dw	00137$
	.dw	00138$
	.dw	00139$
	.dw	00140$
	.dw	00141$
	.dw	00142$
	.dw	00143$
	.dw	00144$
	.dw	00145$
	.dw	00146$
	.dw	00147$
	.dw	00148$
	.dw	00149$
	.dw	00150$
	.dw	00151$
	.dw	00152$
	.dw	00153$
	.dw	00154$
	.dw	00155$
	.dw	00156$
	.dw	00157$
	.dw	00158$
	.dw	00159$
	.dw	00160$
	.dw	00161$
	.dw	00162$
	.dw	00163$
	.dw	00164$
	.dw	00165$
	.dw	00166$
	.dw	00167$
	.dw	00168$
	.dw	00169$
	.dw	00170$
	.dw	00171$
	.dw	00172$
	.dw	00173$
	.dw	00174$
	.dw	00175$
	.dw	00176$
	.dw	00177$
	.dw	00178$
	.dw	00179$
	.dw	00180$
	.dw	00181$
	.dw	00182$
	.dw	00183$
	.dw	00184$
	.dw	00185$
	.dw	00186$
	.dw	00187$
	.dw	00188$
	.dw	00189$
	.dw	00190$
	.dw	00191$
	.dw	00192$
	.dw	00193$
	.dw	00194$
	.dw	00195$
	.dw	00196$
	.dw	00197$
	.dw	00198$
	.dw	00199$
	.dw	00200$
	.dw	00201$
	.dw	00202$
	.dw	00203$
	.dw	00204$
	.dw	00205$
	.dw	00206$
	.dw	00207$
	.dw	00208$
	.dw	00209$
	.dw	00210$
	.dw	00211$
	.dw	00212$
	.dw	00213$
	.dw	00214$
	.dw	00215$
	.dw	00216$
	.dw	00217$
	.dw	00218$
	.dw	00219$
	.dw	00220$
	.dw	00221$
	.dw	00222$
	.dw	00223$
	.dw	00224$
	.dw	00225$
	.dw	00226$
	.dw	00227$
	.dw	00228$
	.dw	00229$
	.dw	00230$
	.dw	00231$
	.dw	00232$
	.dw	00233$
	.dw	00234$
	.dw	00235$
	.dw	00236$
	.dw	00237$
	.dw	00238$
	.dw	00239$
	.dw	00240$
	.dw	00241$
	.dw	00242$
	.dw	00243$
	.dw	00244$
	.dw	00245$
	.dw	00246$
	.dw	00247$
	.dw	00248$
	.dw	00249$
	.dw	00250$
	.dw	00251$
	.dw	00252$
	.dw	00253$
	.dw	00254$
	.dw	00255$
	.dw	00256$
	.dw	00257$
	.dw	00258$
	.dw	00259$
	.dw	00260$
	.dw	00261$
	.dw	00262$
	.dw	00263$
	.dw	00264$
	.dw	00265$
	.dw	00266$
	.dw	00267$
	.dw	00268$
	.dw	00269$
	.dw	00270$
	.dw	00271$
	.dw	00272$
	.dw	00273$
	.dw	00274$
	.dw	00275$
	.dw	00276$
	.dw	00277$
	.dw	00278$
	.dw	00279$
	.dw	00280$
	.dw	00281$
	.dw	00282$
	.dw	00283$
	.dw	00284$
	.dw	00285$
	.dw	00286$
	.dw	00287$
	.dw	00288$
	.dw	00289$
	.dw	00290$
	.dw	00291$
	.dw	00292$
	.dw	00293$
	.dw	00294$
	.dw	00295$
	.dw	00296$
	.dw	00297$
	.dw	00298$
	.dw	00299$
	.dw	00300$
	.dw	00301$
	.dw	00302$
	.dw	00303$
	.dw	00304$
	.dw	00305$
	.dw	00306$
	.dw	00307$
	.dw	00308$
	.dw	00309$
	.dw	00310$
	.dw	00311$
	.dw	00312$
	.dw	00313$
	.dw	00314$
	.dw	00315$
	.dw	00316$
	.dw	00317$
	.dw	00318$
	.dw	00319$
	.dw	00320$
	.dw	00321$
	.dw	00322$
	.dw	00323$
	.dw	00324$
	.dw	00325$
	.dw	00326$
	.dw	00327$
	.dw	00328$
	.dw	00329$
	.dw	00330$
	.dw	00331$
	.dw	00332$
	.dw	00333$
	.dw	00334$
	.dw	00335$
	.dw	00336$
	.dw	00337$
	.dw	00338$
	.dw	00339$
	.dw	00340$
	.dw	00341$
	.dw	00342$
	.dw	00343$
	.dw	00344$
	.dw	00345$
	.dw	00346$
	.dw	00347$
	.dw	00348$
	.dw	00349$
	.dw	00350$
	.dw	00351$
	.dw	00352$
	.dw	00353$
	.dw	00354$
	.dw	00355$
	.dw	00356$
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:32: case 0: return(0);
;	genLabel
00101$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:33: case 1: return(1);
;	genLabel
00102$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:34: case 2: return(2);
;	genLabel
00103$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:35: case 3: return(3);
;	genLabel
00104$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x03
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:36: case 4: return(4);
;	genLabel
00105$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x04
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:37: case 5: return(5);
;	genLabel
00106$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x05
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:38: case 6: return(6);
;	genLabel
00107$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x06
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:39: case 7: return(7);
;	genLabel
00108$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x07
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:40: case 8: return(8);
;	genLabel
00109$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x08
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:41: case 9: return(9);
;	genLabel
00110$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x09
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:42: case 10: return(10);
;	genLabel
00111$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:43: case 11: return(11);
;	genLabel
00112$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:44: case 12: return(12);
;	genLabel
00113$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:45: case 13: return(13);
;	genLabel
00114$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:46: case 14: return(14);
;	genLabel
00115$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:47: case 15: return(15);
;	genLabel
00116$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:48: case 16: return(16);
;	genLabel
00117$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x10
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:49: case 17: return(17);
;	genLabel
00118$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x11
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:50: case 18: return(18);
;	genLabel
00119$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x12
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:51: case 19: return(19);
;	genLabel
00120$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x13
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:52: case 20: return(20);
;	genLabel
00121$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x14
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:53: case 21: return(21);
;	genLabel
00122$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x15
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:54: case 22: return(22);
;	genLabel
00123$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x16
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:55: case 23: return(23);
;	genLabel
00124$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x17
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:56: case 24: return(24);
;	genLabel
00125$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x18
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:57: case 25: return(25);
;	genLabel
00126$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x19
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:58: case 26: return(26);
;	genLabel
00127$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:59: case 27: return(27);
;	genLabel
00128$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:60: case 28: return(28);
;	genLabel
00129$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:61: case 29: return(29);
;	genLabel
00130$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:62: case 30: return(30);
;	genLabel
00131$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:63: case 31: return(31);
;	genLabel
00132$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:64: case 32: return(32);
;	genLabel
00133$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x20
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:65: case 33: return(33);
;	genLabel
00134$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x21
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:66: case 34: return(34);
;	genLabel
00135$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x22
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:67: case 35: return(35);
;	genLabel
00136$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x23
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:68: case 36: return(36);
;	genLabel
00137$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x24
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:69: case 37: return(37);
;	genLabel
00138$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x25
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:70: case 38: return(38);
;	genLabel
00139$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x26
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:71: case 39: return(39);
;	genLabel
00140$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x27
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:72: case 40: return(40);
;	genLabel
00141$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x28
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:73: case 41: return(41);
;	genLabel
00142$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x29
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:74: case 42: return(42);
;	genLabel
00143$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:75: case 43: return(43);
;	genLabel
00144$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:76: case 44: return(44);
;	genLabel
00145$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:77: case 45: return(45);
;	genLabel
00146$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:78: case 46: return(46);
;	genLabel
00147$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:79: case 47: return(47);
;	genLabel
00148$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:80: case 48: return(48);
;	genLabel
00149$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x30
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:81: case 49: return(49);
;	genLabel
00150$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x31
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:82: case 50: return(50);
;	genLabel
00151$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x32
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:83: case 51: return(51);
;	genLabel
00152$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x33
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:84: case 52: return(52);
;	genLabel
00153$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x34
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:85: case 53: return(53);
;	genLabel
00154$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x35
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:86: case 54: return(54);
;	genLabel
00155$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x36
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:87: case 55: return(55);
;	genLabel
00156$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x37
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:88: case 56: return(56);
;	genLabel
00157$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x38
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:89: case 57: return(57);
;	genLabel
00158$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x39
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:90: case 58: return(58);
;	genLabel
00159$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x3a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:91: case 59: return(59);
;	genLabel
00160$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x3b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:92: case 60: return(60);
;	genLabel
00161$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x3c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:93: case 61: return(61);
;	genLabel
00162$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x3d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:94: case 62: return(62);
;	genLabel
00163$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x3e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:95: case 63: return(63);
;	genLabel
00164$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x3f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:96: case 64: return(64);
;	genLabel
00165$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x40
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:97: case 65: return(65);
;	genLabel
00166$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x41
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:98: case 66: return(66);
;	genLabel
00167$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x42
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:99: case 67: return(67);
;	genLabel
00168$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x43
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:100: case 68: return(68);
;	genLabel
00169$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x44
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:101: case 69: return(69);
;	genLabel
00170$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x45
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:102: case 70: return(70);
;	genLabel
00171$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x46
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:103: case 71: return(71);
;	genLabel
00172$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x47
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:104: case 72: return(72);
;	genLabel
00173$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x48
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:105: case 73: return(73);
;	genLabel
00174$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x49
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:106: case 74: return(74);
;	genLabel
00175$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x4a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:107: case 75: return(75);
;	genLabel
00176$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x4b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:108: case 76: return(76);
;	genLabel
00177$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x4c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:109: case 77: return(77);
;	genLabel
00178$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x4d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:110: case 78: return(78);
;	genLabel
00179$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x4e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:111: case 79: return(79);
;	genLabel
00180$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x4f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:112: case 80: return(80);
;	genLabel
00181$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x50
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:113: case 81: return(81);
;	genLabel
00182$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x51
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:114: case 82: return(82);
;	genLabel
00183$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x52
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:115: case 83: return(83);
;	genLabel
00184$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x53
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:116: case 84: return(84);
;	genLabel
00185$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x54
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:117: case 85: return(85);
;	genLabel
00186$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x55
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:118: case 86: return(86);
;	genLabel
00187$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x56
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:119: case 87: return(87);
;	genLabel
00188$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x57
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:120: case 88: return(88);
;	genLabel
00189$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x58
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:121: case 89: return(89);
;	genLabel
00190$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x59
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:122: case 90: return(90);
;	genLabel
00191$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x5a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:123: case 91: return(91);
;	genLabel
00192$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x5b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:124: case 92: return(92);
;	genLabel
00193$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x5c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:125: case 93: return(93);
;	genLabel
00194$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x5d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:126: case 94: return(94);
;	genLabel
00195$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x5e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:127: case 95: return(95);
;	genLabel
00196$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x5f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:128: case 96: return(96);
;	genLabel
00197$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x60
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:129: case 97: return(97);
;	genLabel
00198$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x61
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:130: case 98: return(98);
;	genLabel
00199$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x62
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:131: case 99: return(99);
;	genLabel
00200$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x63
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:132: case 100: return(100);
;	genLabel
00201$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x64
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:133: case 101: return(101);
;	genLabel
00202$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x65
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:134: case 102: return(102);
;	genLabel
00203$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x66
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:135: case 103: return(103);
;	genLabel
00204$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x67
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:136: case 104: return(104);
;	genLabel
00205$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x68
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:137: case 105: return(105);
;	genLabel
00206$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x69
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:138: case 106: return(106);
;	genLabel
00207$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x6a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:139: case 107: return(107);
;	genLabel
00208$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x6b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:140: case 108: return(108);
;	genLabel
00209$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x6c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:141: case 109: return(109);
;	genLabel
00210$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x6d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:142: case 110: return(110);
;	genLabel
00211$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x6e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:143: case 111: return(111);
;	genLabel
00212$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x6f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:144: case 112: return(112);
;	genLabel
00213$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x70
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:145: case 113: return(113);
;	genLabel
00214$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x71
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:146: case 114: return(114);
;	genLabel
00215$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x72
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:147: case 115: return(115);
;	genLabel
00216$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x73
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:148: case 116: return(116);
;	genLabel
00217$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x74
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:149: case 117: return(117);
;	genLabel
00218$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x75
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:150: case 118: return(118);
;	genLabel
00219$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x76
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:151: case 119: return(119);
;	genLabel
00220$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x77
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:152: case 120: return(120);
;	genLabel
00221$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x78
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:153: case 121: return(121);
;	genLabel
00222$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x79
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:154: case 122: return(122);
;	genLabel
00223$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:155: case 123: return(123);
;	genLabel
00224$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:156: case 124: return(124);
;	genLabel
00225$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:157: case 125: return(125);
;	genLabel
00226$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:158: case 126: return(126);
;	genLabel
00227$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:159: case 127: return(127);
;	genLabel
00228$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x7f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:160: case 128: return(128);
;	genLabel
00229$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x80
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:161: case 129: return(129);
;	genLabel
00230$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x81
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:162: case 130: return(130);
;	genLabel
00231$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x82
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:163: case 131: return(131);
;	genLabel
00232$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x83
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:164: case 132: return(132);
;	genLabel
00233$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x84
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:165: case 133: return(133);
;	genLabel
00234$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x85
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:166: case 134: return(134);
;	genLabel
00235$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x86
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:167: case 135: return(135);
;	genLabel
00236$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x87
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:168: case 136: return(136);
;	genLabel
00237$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x88
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:169: case 137: return(137);
;	genLabel
00238$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x89
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:170: case 138: return(138);
;	genLabel
00239$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x8a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:171: case 139: return(139);
;	genLabel
00240$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x8b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:172: case 140: return(140);
;	genLabel
00241$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x8c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:173: case 141: return(141);
;	genLabel
00242$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x8d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:174: case 142: return(142);
;	genLabel
00243$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x8e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:175: case 143: return(143);
;	genLabel
00244$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x8f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:176: case 144: return(144);
;	genLabel
00245$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x90
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:177: case 145: return(145);
;	genLabel
00246$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x91
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:178: case 146: return(146);
;	genLabel
00247$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x92
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:179: case 147: return(147);
;	genLabel
00248$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x93
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:180: case 148: return(148);
;	genLabel
00249$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x94
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:181: case 149: return(149);
;	genLabel
00250$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x95
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:182: case 150: return(150);
;	genLabel
00251$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x96
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:183: case 151: return(151);
;	genLabel
00252$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x97
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:184: case 152: return(152);
;	genLabel
00253$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x98
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:185: case 153: return(153);
;	genLabel
00254$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x99
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:186: case 154: return(154);
;	genLabel
00255$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x9a
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:187: case 155: return(155);
;	genLabel
00256$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x9b
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:188: case 156: return(156);
;	genLabel
00257$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x9c
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:189: case 157: return(157);
;	genLabel
00258$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x9d
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:190: case 158: return(158);
;	genLabel
00259$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x9e
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:191: case 159: return(159);
;	genLabel
00260$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x9f
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:192: case 160: return(160);
;	genLabel
00261$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa0
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:193: case 161: return(161);
;	genLabel
00262$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa1
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:194: case 162: return(162);
;	genLabel
00263$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa2
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:195: case 163: return(163);
;	genLabel
00264$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa3
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:196: case 164: return(164);
;	genLabel
00265$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa4
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:197: case 165: return(165);
;	genLabel
00266$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa5
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:198: case 166: return(166);
;	genLabel
00267$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa6
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:199: case 167: return(167);
;	genLabel
00268$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa7
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:200: case 168: return(168);
;	genLabel
00269$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa8
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:201: case 169: return(169);
;	genLabel
00270$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa9
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:202: case 170: return(170);
;	genLabel
00271$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xaa
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:203: case 171: return(171);
;	genLabel
00272$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xab
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:204: case 172: return(172);
;	genLabel
00273$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xac
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:205: case 173: return(173);
;	genLabel
00274$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xad
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:206: case 174: return(174);
;	genLabel
00275$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xae
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:207: case 175: return(175);
;	genLabel
00276$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xaf
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:208: case 176: return(176);
;	genLabel
00277$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb0
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:209: case 177: return(177);
;	genLabel
00278$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb1
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:210: case 178: return(178);
;	genLabel
00279$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb2
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:211: case 179: return(179);
;	genLabel
00280$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb3
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:212: case 180: return(180);
;	genLabel
00281$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb4
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:213: case 181: return(181);
;	genLabel
00282$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb5
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:214: case 182: return(182);
;	genLabel
00283$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb6
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:215: case 183: return(183);
;	genLabel
00284$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb7
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:216: case 184: return(184);
;	genLabel
00285$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb8
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:217: case 185: return(185);
;	genLabel
00286$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xb9
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:218: case 186: return(186);
;	genLabel
00287$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xba
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:219: case 187: return(187);
;	genLabel
00288$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbb
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:220: case 188: return(188);
;	genLabel
00289$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbc
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:221: case 189: return(189);
;	genLabel
00290$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbd
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:222: case 190: return(190);
;	genLabel
00291$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbe
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:223: case 191: return(191);
;	genLabel
00292$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbf
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:224: case 192: return(192);
;	genLabel
00293$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc0
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:225: case 193: return(193);
;	genLabel
00294$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc1
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:226: case 194: return(194);
;	genLabel
00295$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc2
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:227: case 195: return(195);
;	genLabel
00296$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc3
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:228: case 196: return(196);
;	genLabel
00297$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc4
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:229: case 197: return(197);
;	genLabel
00298$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc5
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:230: case 198: return(198);
;	genLabel
00299$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc6
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:231: case 199: return(199);
;	genLabel
00300$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc7
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:232: case 200: return(200);
;	genLabel
00301$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc8
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:233: case 201: return(201);
;	genLabel
00302$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc9
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:234: case 202: return(202);
;	genLabel
00303$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xca
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:235: case 203: return(203);
;	genLabel
00304$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xcb
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:236: case 204: return(204);
;	genLabel
00305$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xcc
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:237: case 205: return(205);
;	genLabel
00306$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xcd
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:238: case 206: return(206);
;	genLabel
00307$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xce
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:239: case 207: return(207);
;	genLabel
00308$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xcf
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:240: case 208: return(208);
;	genLabel
00309$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd0
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:241: case 209: return(209);
;	genLabel
00310$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd1
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:242: case 210: return(210);
;	genLabel
00311$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd2
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:243: case 211: return(211);
;	genLabel
00312$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd3
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:244: case 212: return(212);
;	genLabel
00313$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd4
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:245: case 213: return(213);
;	genLabel
00314$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd5
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:246: case 214: return(214);
;	genLabel
00315$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd6
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:247: case 215: return(215);
;	genLabel
00316$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd7
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:248: case 216: return(216);
;	genLabel
00317$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd8
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:249: case 217: return(217);
;	genLabel
00318$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xd9
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:250: case 218: return(218);
;	genLabel
00319$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xda
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:251: case 219: return(219);
;	genLabel
00320$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xdb
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:252: case 220: return(220);
;	genLabel
00321$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xdc
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:253: case 221: return(221);
;	genLabel
00322$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xdd
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:254: case 222: return(222);
;	genLabel
00323$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xde
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:255: case 223: return(223);
;	genLabel
00324$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xdf
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:256: case 224: return(224);
;	genLabel
00325$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe0
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:257: case 225: return(225);
;	genLabel
00326$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe1
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:258: case 226: return(226);
;	genLabel
00327$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe2
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:259: case 227: return(227);
;	genLabel
00328$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe3
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:260: case 228: return(228);
;	genLabel
00329$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe4
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:261: case 229: return(229);
;	genLabel
00330$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe5
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:262: case 230: return(230);
;	genLabel
00331$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe6
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:263: case 231: return(231);
;	genLabel
00332$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe7
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:264: case 232: return(232);
;	genLabel
00333$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe8
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:265: case 233: return(233);
;	genLabel
00334$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xe9
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:266: case 234: return(234);
;	genLabel
00335$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xea
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:267: case 235: return(235);
;	genLabel
00336$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xeb
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:268: case 236: return(236);
;	genLabel
00337$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xec
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:269: case 237: return(237);
;	genLabel
00338$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xed
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:270: case 238: return(238);
;	genLabel
00339$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xee
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:271: case 239: return(239);
;	genLabel
00340$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xef
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:272: case 240: return(240);
;	genLabel
00341$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf0
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:273: case 241: return(241);
;	genLabel
00342$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf1
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:274: case 242: return(242);
;	genLabel
00343$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf2
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:275: case 243: return(243);
;	genLabel
00344$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf3
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:276: case 244: return(244);
;	genLabel
00345$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf4
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:277: case 245: return(245);
;	genLabel
00346$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf5
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:278: case 246: return(246);
;	genLabel
00347$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf6
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:279: case 247: return(247);
;	genLabel
00348$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf7
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:280: case 248: return(248);
;	genLabel
00349$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf8
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:281: case 249: return(249);
;	genLabel
00350$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xf9
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:282: case 250: return(250);
;	genLabel
00351$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfa
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:283: case 251: return(251);
;	genLabel
00352$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfb
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:284: case 252: return(252);
;	genLabel
00353$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfc
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:285: case 253: return(253);
;	genLabel
00354$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfd
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:286: case 254: return(254);
;	genLabel
00355$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xfe
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:287: case 255: return(255);
;	genLabel
00356$:
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xff
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:288: }
;	genLabel
; common peephole 159 removed unused label 00358$.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:289: }
;	genEndFunction
	ret
;	Total control_flow_copy function size at codegen: 1 bytes.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:291: void user_memcpy2(unsigned char* dest, 
;	genLabel
;	genFunction
;	---------------------------------
; Function user_memcpy2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_user_memcpy2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:293: while (n > 0)  {		
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 4 (ix)
	ld	b, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00101$:
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:294: *dest = control_flow_copy(*src);
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
	push	hl
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_control_flow_copy
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
	pop	hl
;	genPointerSet
	ld	(hl), a
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:295: src += 1;
;	genPlus
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:296: dest += 1;
;	genPlus
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:297: n -= 1;
;	genMinus
	dec	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00104$:
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:299: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total user_memcpy2 function size at codegen: 5 bytes.
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:302: testMM(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testMM
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_testMM::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:304: int *p = &x;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #<(_x)
	ld	-3 (ix), #>(_x)
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:306: user_memcpy2((unsigned char*)&q, (unsigned char*)&p, 
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_user_memcpy2
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:309: *q = 11; // does this have undefined behaviour?
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x0b
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:310: ASSERT (*p == *q);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0136
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
00103$:
;cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:312: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testMM function size at codegen: 8 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "*p == *q"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_b"
	.ascii "ytewise.c"
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:6: __prints("Running testMM\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:7: testMM();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:8: }
;	genEndFunction
	jp	_testMM
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testMM"
	.db 0x0a
	.db 0x00
;cases/tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:15: return "mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__x:
	.dw #0x0001
	.area _CABS (ABS)
