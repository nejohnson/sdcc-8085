;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2966
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _PSGPlay
	.globl _SMS_getKeysPressed
	.globl _filter_paddle
	.globl _PSGStop
	.globl _PSGFrame
	.globl _SMS_waitForVBlank
	.globl _displayOn
	.globl ___prints
	.globl _kp
	.globl _VolumeTest_psgc
	.globl _CH3_psgc
	.globl _CH2_psgc
	.globl _CH1_psgc
	.globl _CH0_psgc
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
_CH0_psgc::
	.ds 2
_CH1_psgc::
	.ds 2
_CH2_psgc::
	.ds 2
_CH3_psgc::
	.ds 2
_VolumeTest_psgc::
	.ds 2
_kp::
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
;cases/./../tests/bug-2966.c:25: void displayOn (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function displayOn
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_displayOn::
;cases/./../tests/bug-2966.c:26: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2966.c:27: }
;	genEndFunction
	ret
;	Total displayOn function size at codegen: 1 bytes.
;cases/./../tests/bug-2966.c:29: void SMS_waitForVBlank (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function SMS_waitForVBlank
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_SMS_waitForVBlank::
;cases/./../tests/bug-2966.c:30: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2966.c:31: }
;	genEndFunction
	ret
;	Total SMS_waitForVBlank function size at codegen: 1 bytes.
;cases/./../tests/bug-2966.c:33: void PSGFrame (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function PSGFrame
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_PSGFrame::
;cases/./../tests/bug-2966.c:34: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2966.c:35: }
;	genEndFunction
	ret
;	Total PSGFrame function size at codegen: 1 bytes.
;cases/./../tests/bug-2966.c:37: void PSGStop (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function PSGStop
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_PSGStop::
;cases/./../tests/bug-2966.c:38: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2966.c:39: }
;	genEndFunction
	ret
;	Total PSGStop function size at codegen: 1 bytes.
;cases/./../tests/bug-2966.c:41: unsigned int filter_paddle (unsigned int i) {
;	genLabel
;	genFunction
;	---------------------------------
; Function filter_paddle
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_filter_paddle::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2966.c:42: return i;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2966.c:43: }
;	genEndFunction
	ret
;	Total filter_paddle function size at codegen: 1 bytes.
;cases/./../tests/bug-2966.c:45: unsigned int SMS_getKeysPressed (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function SMS_getKeysPressed
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_SMS_getKeysPressed::
;cases/./../tests/bug-2966.c:46: return PORT_B_KEY_2;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0800
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2966.c:47: }
;	genEndFunction
	ret
;	Total SMS_getKeysPressed function size at codegen: 1 bytes.
;cases/./../tests/bug-2966.c:49: void PSGPlay (void *p) {
;	genLabel
;	genFunction
;	---------------------------------
; Function PSGPlay
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_PSGPlay::
;cases/./../tests/bug-2966.c:50: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2966.c:51: }
;	genEndFunction
	ret
;	Total PSGPlay function size at codegen: 1 bytes.
;cases/./../tests/bug-2966.c:57: void testBug (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2966.c:58: displayOn();
;	genLabel
00114$:
;cases/./../tests/bug-2966.c:63: kp=filter_paddle(SMS_getKeysPressed());
;	genCall
	call	_SMS_getKeysPressed
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_filter_paddle
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_kp), de
;cases/./../tests/bug-2966.c:74: if (kp & (PORT_A_KEY_2|PORT_B_KEY_2))
;	genAnd
	ld	iy, #_kp
	bit	5, 0 (iy)
	ret	nz
; common peephole 161 replaced jump by return.
	bit	3, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00132$.
;	skipping generated iCode
;cases/./../tests/bug-2966.c:77: PSGStop();
;	genLabel
; common peephole 159 removed unused label 00116$.
;cases/./../tests/bug-2966.c:78: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 13 bytes.
;cases/tst_bug-2966.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2966.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-2966.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2966.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2966.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2966.c:15: return "bug-2966.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2966.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-2966.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
