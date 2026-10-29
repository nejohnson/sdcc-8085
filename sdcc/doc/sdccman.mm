.\" SDCC Compiler User Guide.
.\"
.\" groff -mm source, with tbl tables and pic figures.  It is set in two
.\" passes, for the cross-references and the index:  see Makefile.in.
.\"
.if !d sdcc-version .ds sdcc-version (unknown version)
.mso www.tmac
.if '\*[.T]'pdf' .mso pdf.tmac
.\" In HTML, tables and pictures are images.  mm, unlike ms, does not ask
.\" for them:  its TS, TE, PS and PE are extended to.  (The images are made
.\" by a PostScript pass, so this is not conditional on the html device;
.\" elsewhere, the www.tmac macros do nothing.)
.am TS
.HTML-IMAGE
..
.am TE
.HTML-IMAGE-END
..
.am PS
.HTML-IMAGE
..
.am PE
.HTML-IMAGE-END
..
.\" grohtml makes the contents itself, and there are no pages.
.if '\*[.T]'html' .PH ""
.\" Option dashes and minus signs are ASCII '-', so that commands copied
.\" from the manual work.  In plain text hyphens and quotes are too, rather
.\" than Unicode's.
.char \- \N'45'
.if n .char - \N'45'
.if n .shc \N'45'
.if n .char ' \N'39'
.\" mmroff's first pass (Ref=1) keeps everything sent to the terminal,
.\" as references:  tbl's warnings are left to the second pass.
.de no-tm
..
.if r Ref .if \n[Ref] .als tm1 no-tm
.if r Ref .if \n[Ref] .als tmc no-tm
.INITR sdccman
.\" A4, with 2cm margins.  For PDF, the paper size also needs -P-pa4.
.PGFORM 17c 29.7c 2c
.\" The PostScript pass that makes HTML's images has 11in pages, and a
.\" table that crosses a page cannot be an image:  that pass keeps each
.\" table on one page (see TK).  Elsewhere a table starts only where
.\" there is room for its heading and a few rows.
.if r ps4html .PGFORM 17c 11i 2c
.de TK
.ne 1i
.if r ps4html .DS
..
.de TKE
.if r ps4html .DE
..
.INITI N sdccman
.\" Headings:  break after levels 1-3, number to level 5, contents to 3.
.nr Hb 4
.nr Hs 3
.nr Cl 3
.nr Ej 1
.nr Hy 1
.ds HF B B B B B B B
.\" A level-1 heading number is "6." :  in a reference, "6".
.de Rd
.ds Rd*t \\*[\\$1]
.substring Rd*t -1
.if '\\*[Rd*t]'.' .substring \\$1 0 -2
..
.ds HP +4 +2 +1 0 0 0 0
.\" Commands are in sans serif, which terminals do not have.
.if n .ftr HR R
.if n .ftr HB B
.if n .ftr HI I
.if n .ftr HBI BI
.\" Title page
.ce 3
.sp 6
\s[+8]\f[B]SDCC Compiler User Guide\f[]\s[0]
.sp 2
SDCC \*[sdcc-version]
.if '\*[.T]'pdf' .pdfpagename title
.SK
.H 1 "\&Introduction"
.H 2 "\&About SDCC"
.P
\f[B]SDCC\f[R] (\f[I]S\f[R]mall \f[I]D\f[R]evice \f[I]C\f[R] \f[I]C\f[R]ompiler) is free open source, retargettable, optimizing standard (ANSI C89 / ISO C90, ISO C99, ISO C11 / ISO C17) C compiler suite originally written by \f[B]Sandeep Dutta\f[R] designed for 8 bit Microprocessors. The current version targets Intel MCS-51 based Microprocessors (8031, 8032, 8051, 8052\c
.IND "8031, 8032, 8051, 8052, mcs51 CPU"
, etc.), Dallas DS80C390 variants, NXP (formerly Freescale/Motorola) HC08 based (HC08, S08), Zilog Z80 based MCUs (Z80, Z80N, Z180, SM83, Rabbit 2000/3000/3000A, Toshiba TLCS-90, Zilog eZ80, ASCII R800\c
.IND "Z80, Z180, SM83, Rabbit 2000/3000, Rabbit 3000A CPU"
), the Intel 8080 and 8085, STMicroelectronics STM8\c
.IND "STM8"
, Padauk PDK14 and PDK15. It can be retargeted for other microprocessors; support for Padauk PDK13, Rabbit 4000/5000/6000, and MOS6502 is under development, whereas Microchip PIC is currently unmaintained. The entire source code for the compiler is distributed under GPL. SDCC uses a modified version of ASXXXX\c
.IND "sdas (sdasgb, sdas6808, sdas8051, sdasz80)"
 & ASLINK\c
.IND "sdld"
, free open source retargetable assembler & linker. SDCC has extensive language extensions suitable for utilizing various microcontrollers and underlying hardware effectively. \c
.br
You might also want to have a look at the wiki \c
.URL "https://sourceforge.net/p/sdcc/wiki/" "" "."
\c
.sp
In addition to the MCU specific optimizations SDCC also does a host of standard optimizations like:
.BL
.LI
global sub expression elimination,
.LI
loop optimizations (loop invariant, strength reduction of induction variables and loop reversing),
.LI
constant folding & propagation,
.LI
copy propagation,
.LI
dead code elimination
.LI
jump tables for \f[I]switch\f[R] statements.
.LE
.P
For the back-end SDCC uses a global register allocation scheme which should be well suited for other 8 bit MCUs.\c
.sp
The peep hole optimizer uses a rule based substitution mechanism which is MCU independent.\c
.sp
Supported data-types are:\c
.br
.P
\c
.TK
.TS
tab(	);
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |
| c | c | c | c | cw(1.04i) |.
_
type	width	default	signed range	T{
unsigned range
T}
_
_Bool / bool	8 bits, 1 byte	unsigned	\-	T{
0, 1
T}
_
char	8 bits, 1 byte	unsigned	\-128, +127	T{
0, +255
T}
_
short	16 bits, 2 bytes	signed	\-32.768, +32.767	T{
0, +65.535
T}
_
int	16 bits, 2 bytes	signed	\-32.768, +32.767	T{
0, +65.535
T}
_
long	32 bits, 4 bytes	signed	\-2.147.483.648, +2.147.483.647	T{
0, +4.294.967.295
T}
_
long long\u\s-2a\s+2\d	64 bits, 8 bytes	signed		
_
_BitInt\u\s-2b\s+2\d	8 to 64 bits, 1 to 8 bytes			
_
float	4 bytes similar to IEEE 754	signed		T{
1.175494351E-38, 3.402823466E+38
T}
_
pointer	1, 2, 3 or 4 bytes	generic		
_
__bit\u\s-2c\s+2\d	1 bit	unsigned	\-	T{
0, 1
T}
_
.TE
.TKE
.FS a
Incomplete support in the pic14 and pic16 backends.
.FE
.FS b
Incomplete support in the pic14 and pic16 backends.
.FE
.FS c
Only supported in the mcs51, ds390, ds400 backends.
.FE
\c
.br
The compiler also allows \f[I]inline assembler code\f[R] to be embedded anywhere in a function. In addition, routines developed in assembly can also be called.\c
.sp
SDCC also provides an option (\-\&\-cyclomatic) to report the relative complexity of a function. These functions can then be further optimized, or hand coded in assembly if needed.\c
.sp
SDCC also comes with a companion source level debugger SDCDB. The debugger currently uses ucSim, a free open source simulator for 8051 and other micro-controllers.\c
.sp
The latest SDCC version can be downloaded from \c
.URL "http://sdcc.sourceforge.net/snap.php" "" "."
\f[I]Please note: the compiler will probably always be some steps ahead of this documentation\f[B]\c
.IND "Status of documentation"
\*F\c
.FS
Obviously this has pros and cons
.FE
\&.\f[R]
.H 2 "\&SDCC Suite Licenses"
.P
SDCC suite is a collection of several components derived from different sources with different licenses:
.BL
.LI
executables:
.BL
.LI
sdcc compiler:\c
.br
sdcc compiler is licensed under the GPLv2 (GPLv3 might apply depending on the libraries used when building).\c
.br
The code or object files generated by SDCC suite are not licensed, so they can be used in FLOSS or proprietary (closed source) applications.
.LI
sdcpp preprocessor:\c
.br
derived from GCC cpp preprocessor \c
.URL "http://gcc.gnu.org/" "" ";"
GPLv3 license
.LI
sdas assemblers and sdld linker:\c
.br
derived from ASXXXX \c
.URL "https://shop-pdp.net/ashtml/" "" ";"
GPLv3 license
.LI
ASxxxx assemblers and ASlink linker, used by the Intel 8080/8085 and STM8 ports:\c
.br
the ASxxxx Cross Assemblers \c
.URL "https://shop-pdp.net/ashtml/" "" ","
built from vendor/asxxxx; GPLv3 license
.LI
SDCC run-time libraries:\c
.br
The great majority of SDCC run-time libraries are licensed under the GPLv2+LE\c
.IND "GPLv2+LE"
 which allows linking of SDCC run-time libraries with proprietary (closed source) applications.\c
.br
A possible exception are pic device libraries and header files which are generated from Microchip header (.inc) and linker script (.lkr) files. Microchip requires that "The header files should state that they are only to be used with authentic Microchip devices" which makes them incompatible with the GPL, if Microchip has any copyright in them (which might depend on local copyright laws). Pic device libraries and header files are located at non-free/lib and non-free/include directories respectively. SDCC should be run with the \f[B]\-\&\-\f[R]use-non-free\f[B]\c
.IND "--use-non-free"
\f[R] command line option in order to include non-free header files and libraries.
.LI
sdbinutils utilities (sdar, sdranlib, sdnm, sdobjcopy):\c
.br
derived from GNU Binutils \c
.URL "http://www.gnu.org/software/binutils/" "" ";"
GPLv3 license
.LI
ucsim simulators:\c
.br
GPLv2 license
.LI
sdcdb debugger:\c
.br
GPLv2 license
.LI
gcc-test regression tests:\c
.br
derived from gcc-testsuite; no license explicitely specified, but since it is a part of GCC is probably GPLv3 licensed
.LI
packihx:\c
.br
public domain
.LI
makebin:\c
.br
zlib/libpng License
.LI
pic libraries in device/non-free:\c
.br
Microchip Technology Inc.\ claims to have copyrights on this, and their term are non-free. However, a more common opinion is that Microchip Technology Inc.\ is just claiming a copyright on uncopyrightable facts.
.LE
.LI
libraries:
.BL
.LI
dbuf library:\c
.br
zlib/libpng License
.LI
Boost C++ libraries:\c
.br
\c
.URL "http://www.boost.org/" "" ";"
Boost Software License 1.0 (BSL-1.0)
.LE
.LE
.P
Links to licenses:
.BL
.LI
GPLv2 license\c
.IND "GPLv2 license"
: \c
.URL "http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" ""
.LI
LGPLv2.1 license\c
.IND "LGPLv2.1 license"
: \c
.URL "http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html" ""
.LI
GPLv3 license\c
.IND "GPLv3 license"
: \c
.URL "http://www.gnu.org/licenses/gpl.html" ""
.LI
zlib/libpng License\c
.IND "zlib/libpng License"
: \c
.URL "http://www.opensource.org/licenses/Zlib" ""
.LI
Boost Software License 1.0 (BSL-1.0)\c
.IND "Boost Software License 1.0 (BSL-1.0)"
: \c
.URL "http://www.opensource.org/licenses/BSL-1.0" ""
.LE
.H 2 "\&Documentation"
.P
The source of this manual is sdcc/doc/sdccman.mm, written for groff\c
.IND "groff"
 with the mm macros, tbl for the tables and pic for the figures \c
.URL "https://www.gnu.org/software/groff/" "" "."
It is built as PDF, HTML and plain text; see section \c
.GETHN sec:Building-the-Documentation Rf80
.Rd Rf80
\*[Rf80].
.H 2 "\&Typographic conventions"
.IND "Typographic conventions"
.P
Throughout this manual, we will use the following convention. Commands you have to type in are printed in \f[HB]"sans serif"\f[HR].\f[R] Code samples are printed in \f[CR]typewriter font.\f[R] Interesting items and new terms are printed in \f[I]italic.\f[R]
.H 2 "\&Compatibility with previous versions"
.SETR sec:Compatibility-with-previous
.IND "Compatibility with previous versions"
.P
Newer versions have usually numerous bug fixes compared with the previous version. But we also sometimes introduce some incompatibilities with older versions. Not just for the fun of it, but to make the compiler more stable, efficient and standard compliant\c
.IND "Standard-compliance"
 (see section \c
.GETHN subsec:Standard-Compliance Rf1
.Rd Rf1
\*[Rf1] for Standard-Compliance). This is a list of such changes .
.BL
.LI
short is now equivalent to int (16 bits), it used to be equivalent to char (8 bits) which is not ANSI compliant. To maintain compatibility, old programs could be compiled using the \-\&\-short-is-8bits command line option (option removed after the 3.6.0 release).
.LI
the default directory for gcc-builds where include, library and documentation files are stored is now in /usr/local/share.
.LI
char type parameters to vararg\c
.IND "vararg, va_arg"
 functions are casted to int unless explicitly casted and neither of the \f[B]\-\&\-std-c90\c
.IND "--std-c90"
,\f[R] \f[B]\-\&\-std-c99\c
.IND "--std-c99"
, \-\&\-std-c11\c
.IND "--std-c11"
\f[R] or \f[B]\-\&\-std-c23\c
.IND "--std-c23"
\f[R] command line options is used, e.g.: \c
.br
\f[CR]\ \ char a=3;\c
.br
\ \ printf ("%d %c\[rs]n", a, (char)a);\f[R]\c
.br
 will push a as an int and as a char resp if none of the above command line options are not defined,\c
.br
 will push a as two ints if none of the above command line option is defined.
.LI
pointer type parameters to vararg\c
.IND "vararg, va_arg"
 functions are casted to generic pointers on Harvard architectures (e.g. mcs51, ds390) unless explicitly casted and neither of the \f[B]\-\&\-std-c90\c
.IND "--std-c90"
,\f[R] \f[B]\-\&\-std-c99\c
.IND "--std-c99"
, \-\&\-std-c11\c
.IND "--std-c11"
\f[R] or \f[B]\-\&\-std-c23\c
.IND "--std-c23"
\f[R] command line options is used.
.LI
option \-\&\-regextend has been removed.
.LI
option \-\&\-noregparms has been removed.
.LI
option \-\&\-stack-after-data has been removed.
.LI
__bit\c
.IND "__bit"
 and __sbit\c
.IND "__sbit"
 types now consistently behave like the C99 _Bool type with respect to type conversion\c
.IND "type conversion"
\c
.IND "type promotion"
\&. The most common incompatibility resulting from this change is related to bit toggling\c
.IND "Bit toggling"
 idioms, e.g.:\c
.br
\f[CR]\ \ __bit b;\c
.br
\ \ b = ~\c
.IND "~ Operator"
b; /* equivalent to b=1 instead of toggling b */\c
.br
\ \ b = !b; /* toggles b */\c
.br
\f[R]In previous versions, both forms would have toggled the bit.
.LI
in older versions, the preprocessor was always called with \f[B]\-\&\-std-c99\c
.IND "--std-c99"
\f[R] regardless of the \f[B]\-\&\-std-xxx\f[R] setting. This is no longer true, and can cause compilation failures on code built with \f[B]\-\&\-std-c90\c
.IND "--std-c90"
\f[R] but using c99 preprocessor features, such as one-line (//) comments
.LI
in versions older than 2.8.4 the pic16 *printf() and printf_tiny() library functions supported undocumented and not standard compliant 'b' binary format specifier ("%b", "%hb" and "%lb"). The 'b' specifier is now disabled by default. It can be enabled by defining BINARY_SPECIFIER macro in files device/lib/pic16/libc/stdio/vfprintf.c and device/lib/pic16/libc/stdio/printf_tiny.c and recompiling the library.
.LI
in versions older then 2.8.5 the unnamed bit-field structure members participated in initialization, which is not conforming with ISO/IEC 9899:1999 standard (see section Section 6.7.8 Initialization, clause 9)\c
.sp
Old behaviour, before version 2.8.5:\f[CR]\c
.br
\ \ struct {\c
.br
\ \ \ \ int a : 2;\c
.br
\ \ \ \ char\  : 2;\c
.br
\ \ \ \ int b : 2;\c
.br
\ \ } s = {1, 2, 3};\f[R]\c
.br
\f[CR]/* s.a = 1, s.b = 3 */\f[R]\c
.sp
New behaviour:\f[CR]\c
.br
\ \ struct {\c
.br
\ \ \ \ int a : 2;\c
.br
\ \ \ \ char\  : 2;\c
.br
\ \ \ \ int b : 2;\c
.br
\ \ } s = {1, 2};\f[R]\c
.br
\f[CR]/* s.a = 1, s.b = 2 */\f[R]
.LI
In 2.9.0 libraries included in SDCC packages, are in ar format. See section \c
.GETHN subsec:Using-sdar-to Rf2
.Rd Rf2
\*[Rf2].
.LI
In 3.0.0 targets for xa51 and avr are disabled by default.
.LI
In 3.0.0 sdldgb and sdldz80 don't support generation of Game Boy binary image format. The makebin utility can be used to convert Intel Hex format to Game Boy binary image format.
.LI
In 3.0.0 sdldgb and sdldz80 don't support generation of rrgb (Game Boy simulator) map file and no$gmb symbol file formats. The as2gbmap utility can be used to convert sdld map format to rrgb and no$gmb file formats.
.LI
In 3.1.0 asranlib utility was renamed to sdranlib.
.LI
In 3.1.0 pic14 target, structured access to SFR via \f[CR]<sfrname>_bits.<bitname>\f[R] is deprecated and replaced by \f[CR]<sfrname>bits.<bitname>\f[R]. It will be obsoleted (removed) in one of next SDCC releases. See section \c
.GETHN subsec:Naming-of-special Rf3
.Rd Rf3
\*[Rf3].
.LI
sdar archive managing utility and sdnm utilities were introduced in version 3.2.0. sdar, sdranlib and sdnm are derived from GNU Binutils package.
.LI
In 3.2.0 the sdcclib utility is deprecated. Sdar utility should be used to create SDCC object file archives. Sdcclib utility will become obsolete in one of next SDCC releases and will be removed from SDCC packages.
.LI
In 3.2.0 special SDCC keywords which are not preceded by a double underscore are obsoleted (removed). See section \c
.GETHN subsec:Standard-Compliance Rf4
.Rd Rf4
\*[Rf4] Standard-Compliance.
.LI
In 3.2.0 compiler macro definitions not starting with double underscore characters are deprecated if \f[CR]\-\-std\-cXX\f[R] command line option is defined. They have been obsoleted (removed) after the 3.4.0 release (except for the macro SDCC, which has been removed after the 3.6.0 release (and brought back for mcs51 for the 3.7.0 release)).
.LI
In 3.2.0 new compiler macros for processor definition were introduced for pic14 and pic16 targets: \-D__SDCC_PIC16XXXX and \-D__SDCC_PIC18FXXX respectively. The pic16 macro definition \-D__18fXXX is deprecated. It was obsoleted (removed) after the 3.4.0 release.
.LI
In 3.2.0 pragma config for pic16 target was introduced. See section \c
.GETHN subsec:PIC16_Pragmas Rf5
.Rd Rf5
\*[Rf5]
.LI
In 3.2.0 new inline assembler format \f[CR]__asm__ (\[dq]inline_assembler_code\[dq]);\f[R] as an addition to \f[CR]__asm ... __endasem;\f[R] format introduced. See section \c
.GETHN sec:Inline-Assembler-Code Rf6
.Rd Rf6
\*[Rf6]
.LI
sdobjcopy utility was introduced in version 3.3.0. It is derived from GNU Binutils package.
.LI
Before 3.4.0 release, intrinsic named address spaces were called \[lq]storage classes\[rq] in this manual.
.LI
In 3.6.0, the default for char changed from signed to unsigned.
.LI
In 3.7.0, the prototype for putchar() changed from void putchar(char) to int putchar(int).
.LI
In 3.7.0 mcs51 and ds390 got a full _Bool/bool type, separate from __bit.
.LI
In 3.7.0, the option \f[B]\-\&\-nojtbound\f[R] and the corresponding pragma have been deprecated.
.LI
In 3.7.0, the prototype for getchar() changed from char getchar(void) to int getchar(void).
.LI
In 3.8.6, the deprecated sdcclib was removed.
.LI
In 4.0.3, _itoa, _uitoa, _ltoa, _ultoa were renamed to __itoa, __uitoa, __ltoa, __ultoa.
.LI
In 4.1.1, typeof.h has been removed.
.LI
In 4.1.3, support for \f[B]\-\&\-oldralloc\f[R] has been removed for the z80-related backends.
.LI
In 4.1.10, the default calling convention switched from __sdccall(0) to __sdccall(1) for stm8 and gbz80.
.LI
In 4.1.10, support for\f[B] \-\&\-profile\f[R] has been removed for gbz80.
.LI
In 4.1.11, the minimum Z80N Core version for the z80n port has been raised from 1.0 to 2.0.
.LI
In 4.1.12, the default calling convention switched from __sdccall(0) to __sdccall(1) for z80, z180 and z80n.
.LI
In 4.1.12, support for \f[B]\-\&\-profile\f[R] has been removed for z80, z180, z80n.
.LI
In 4.1.13, support for \f[B]\-\&\-profile\f[R] has been removed.
.LI
In 4.1.14, the gbz80 port was renamed to sm83.
.LI
In 4.2.3, support for non-parenthesized arguments to __using and __interrupt was dropped.
.LI
In 4.2.3, support for non-parenthesized arguments to __at that are not constants was dropped.
.LI
In 4.2.4, the placement of __at in declarations was restricted.
.LI
In 4.2.6, bool is chosen as the underlying integer type for enumerations with just two values.
.LI
In 4.2.9, support for\f[B]\-\&\-pedantic-parse-number\f[R] and #pragma pedantic_parse_numer was dropped.
.LI
In 4.2.9, support for #pragma sdcc_hash was dropped, necessitating a wrapper macro for literal \[lq]#\[rq] characters in macro bodies.
.LI
In 4.2.9, support for arguments to \-MMD was dropped. The output file can be specified via \-MF instead.
.LI
In 4.2.10, _sdcc_external_startup was renamed to __sdcc_external_startup and support for it was added to further ports.
.LI
In 4.2.13, for the sm83 port, __sfr addresses need to be specified using the full 16-bit address.
.LI
In 4.2.14, byte order in output from the %p specifier of printf()-family functions was corrected for big-endian platforms (stm8, hc08, s08, mos6502) to match uintptr_t.
.LI
In 4.3.1, __builtin_rlc, __builtin_rrc and __builtin_swap were replaced by __builtin_rot.
.LI
In 4.3.6, support for \f[B]\-\&\-parms-in-bank1\f[R] was removed from the mcs51 port.
.LI
In 4.4.1, the address width in .rel files was increased from 24 bits to 32 bits for the z80 (and related) ports.
.LI
In 4.5.2, the C23 standard library bit and byte utilities (stdbit.h) more closely follow the final ISO C23 standard instead of the 2022 C2X draft.
.LI
In 4.5.3, signed, short, long on __bit or __sbit gives an error instead of being ignored silently.
.LI
In 4.5.6, bool is no longer used as an underlying type for enums without a fixed underlying type.
.LI
In 4.5.9, support for __builtin_rot was removed. The C2Y features from stdbit.h can be used instead.
.LI
In 4.5.10, the semantics of realloc(ptr, 0) changed from C90 to C99.
.LI
In 4.5.11, the ez80_z80 port has been replaced by the ez80 port, and the crt0 now needs to set up both sps and spl stack pointers, and interrupt handlers now need to save all 24 bits of registers BC, DE, HL, IY if they use them (SDCC will do this automatically for __interrupt, but hand-written interrupt handlers might need to be adapted).
.LI
In 4.5.11, for the r2k, r2ka, r3ka ports the internal interrupt table is generated by the compiler (instead of being part of the crt0).
.LI
In 4.5.11, for the tlcs90 port requires interrupt handlers need to save register BY if they use it (SDCC will do this automatically for __interrupt, but hand-written interrupt handlers might need to be adapted).
.LI
In 4.5.12, void parameters may no longer be named or qualified.
.LI
In 4.5.12, struct/union members other than anonymous struct/union or bit-fields must be named.
.LI
In 4.5.13, stray non-ASCII characters in source files are an error instead of being silently ignored.
.LI
In 4.5.15, the omission of integer promotions on explicitly cast variable arguments only happens for the mcs51, ds390, mos6502, mos65c02, pic14 and pic16 ports.
.LI
In 4.5.17, the names of mixed-sign support functions for multiplicative operators have been fixed.
.LI
In 4.5.18, plain int bit-fields are signed.
.LI
In 4.5.20, some non-matching return types that previously raised warnings raise errors.
.LI
In 4.5.23, \f[CR]_Generic\f[R] works as clarified by C23, more attention is payed to implicit \f[CR]char\f[R] signedness, string literals are only \f[CR]const\f[R] if requested with \f[CR]\-\-fconst\-str\f[R], and a read-only \f[CR]__code\f[R] address space only implies \f[CR]const\f[R] if requested with \f[CR]\-\-fconst\-code\f[R].
.LI
In 4.5.24, \f[CR]\-\-fconst\-str\f[R] has been renamed to \f[CR]\-\-fconst\-stringlit\f[R].
.LE
.H 2 "\&System Requirements"
.P
What do you need before you start installation of SDCC? A computer, and a desire to compute. The preferred method of installation is to compile SDCC from source using GNU GCC and make. For Windows some pre-compiled binary distributions are available for your convenience. You should have some experience with command line tools and compiler use.
.H 2 "\&Other Resources"
.P
The SDCC home page at \c
.URL "http://sdcc.sourceforge.net/" ""
 is a great place to find distribution sets. You can also find links to the user mailing lists that offer help or discuss SDCC with other SDCC users. Web links to other SDCC related sites can also be found here. This document can be found in the doc directory of the source package. The latest snapshot build version of this document in pdf format is available at \c
.URL "http://sdcc.sourceforge.net/doc/sdccman.pdf" "" "."
Some of the other tools (simulator and assembler) included with SDCC contain their own documentation and can be found in the source distribution. If you want the latest unreleased software, the complete source package is available directly from Subversion on \c
.URL "http://sourceforge.net/p/sdcc/code/8805/tree/trunk/sdcc/" "" "."
.H 1 "\&Installing SDCC"
.IND "Installation"
.P
For most users it is sufficient to skip to either section \c
.GETHN subsec:Building-SDCC-on-Linux Rf7
.Rd Rf7
\*[Rf7] (Unix) or section \c
.GETHN subsec:Windows-Install Rf8
.Rd Rf8
\*[Rf8] (Windows). More detailed instructions follow below.
.H 2 "\&Configure Options"
.IND "Options SDCC configuration"
.P
The install paths, search paths and other options are defined when running 'configure'. The defaults can be overridden by:
.VL 18n
.LI "\-\&\-prefix"
see table below
.LI "\-\&\-exec_prefix"
see table below
.LI "\-\&\-bindir"
see table below
.LI "\-\&\-datadir"
see table below
.LI "\-\&\-datarootdir"
see table below\c
.br
.LI "\ \ docdir"
environment variable, see table below
.LI "\ \ include_dir_suffix"
environment variable, see table below
.LI "\ \ non_free_include_dir_suffix"
environment variable, see table below
.LI "\ \ lib_dir_suffix"
environment variable, see table below
.LI "\ \ \ non_free_lib_dir_suffix"
environment variable, see table below
.LI "\ \ sdccconf_h_dir_separator"
environment variable, either / or \[rs]\[rs] makes sense here. This character will only be used in sdccconf.h; don't forget it's a C-header, therefore a double-backslash is needed there.\c
.br
.LI "\-\&\-disable-mcs51-port"
Excludes the Intel mcs51 port
.LI "\-\&\-disable-z80-port"
Excludes the z80 port
.LI "\-\&\-disable-z180-port"
Excludes the z180 port
.LI "\-\&\-disable-z80n-port"
Excludes the z80n port
.LI "\-\&\-disable-r2k-port"
Excludes the r2k port
.LI "\-\&\-disable-r2ka-port"
Excludes the r2ka port
.LI "\-\&\-disable-r3ka-port"
Excludes the r3ka port
.LI "\-\&\-disable-r4k-port"
Excludes the r4k port
.LI "\-\&\-disable-r5k-port"
Excludes the r5k port
.LI "\-\&\-disable-r6k-port"
Excludes the r6k port
.LI "\-\&\-disable-sm83-port"
Excludes the SM83 port
.LI "\-\&\-disable-tlcs90-port"
Excludes the TLCS-90 port
.LI "\-\&\-disable-ez80-port"
Excludes the eZ80 port
.LI "\-\&\-disable-r800-port"
Excludes the r800 port
.LI "\-\&\-disable-i8080-port"
Excludes the Intel 8080 port
.LI "\-\&\-disable-i8085-port"
Excludes the Intel 8085 port
.LI "\-\&\-disable-ds390-port"
Excludes the DS390 port
.LI "\-\&\-disable-ds400-port"
Excludes the DS400 port
.LI "\-\&\-disable-hc08-port"
Excludes the HC08 port
.LI "\-\&\-disable-s08-port"
Excludes the S08 port
.LI "\-\&\-disable-stm8-port"
Excludes the STM8 port
.LI "\-\&\-disable-pdk13-port"
Excludes the PDK13 port
.LI "\-\&\-disable-pdk14-port"
Excludes the PDK14 port
.LI "\-\&\-disable-pdk15-port"
Excludes the PDK15 port
.LI "\-\&\-disable-pic14-port"
Excludes the PIC14 port
.LI "\-\&\-disable-pic16-port"
Excludes the PIC16 port
.LI "\-\&\-disable-mos6502-port"
Excludes the MOS6502
.LI "\-\&\-disable-mos65c02-port"
Excludes the MOS65C02
.LI "\-\&\-disable-ucsim"
Disables configuring and building of ucsim
.LI "\-\&\-disable-device-lib"
Disables automatically building device libraries
.LI "\-\&\-disable-packihx"
Disables building packihx
.LI "\-\&\-enable-doc"
Build pdf, html and txt files of this manual from its groff source
.LI "\-\&\-enable-libgc"
Use the Bohem memory allocator. Lower runtime footprint.
.LI "\-\&\-without-ccache"
Do not use ccache even if available
.LE
.P
Furthermore the environment variables CC, CFLAGS, ... the tools and their arguments can be influenced. Please see `configure \-\&\-help' and the man/info pages of `configure' for details.\c
.sp
The names of the standard libraries STD_LIB, STD_INT_LIB, STD_LONG_LIB, STD_FP_LIB, STD_DS390_LIB, STD_XA51_LIB and the environment variables SDCC_DIR_NAME, SDCC_INCLUDE_NAME, SDCC_LIB_NAME are defined by `configure' too. At the moment it's not possible to change the default settings (it was simply never required).\c
.sp
These configure options are compiled into the binaries, and can only be changed by rerunning 'configure' and recompiling SDCC. The configure options are written in \f[I]italics\f[R] to distinguish them from run time environment variables (see section search paths).\c
.sp
The settings for \[lq]Win32 builds\[rq] are used by the SDCC team to build the official Win32 binaries. The SDCC team uses Mingw32 to build the official Windows binaries, because it's
.AL
.LI
open source,
.LI
a gcc compiler and last but not least
.LI
the binaries can be built by cross compiling on SDCC Distributed Compile Farm.
.LE
.P
See the examples, how to pass the Win32 settings to 'configure'. The other Win32 builds using VC or whatever don't use 'configure', but a header file sdcc_vc.h.in is the same as sdccconf.h built by 'configure' for Win32.\c
.sp
These defaults are:\c
.br
.P
\c
.TK
.TS
center tab(	);
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |.
_
Variable	default	Win32 builds
_
\f[I]PREFIX\f[R]	/usr/local	\[rs]sdcc
_
\f[I]EXEC_PREFIX\f[R]	\f[I]$PREFIX\f[R]	\f[I]$PREFIX\f[R]
_
\f[I]BINDIR\f[R]	\f[I]$EXEC_PREFIX\f[R]/bin	\f[I]$EXEC_PREFIX\f[R]\[rs]bin
_
\f[I]DATADIR\f[R]	\f[I]$DATAROOTDIR\f[R]	\f[I]$DATAROOTDIR\f[R]
_
\f[I]DATAROOTDIR\f[R]	\f[I]$PREFIX\f[R]/share	\f[I]$PREFIX\f[R]
_
\f[I]DOCDIR\f[R]	\f[I]$DATAROOTDIR\f[R]/sdcc/doc	\f[I]$DATAROOTDIR\f[R]\[rs]doc
_
\f[I]INCLUDE_DIR_SUFFIX\f[R]	sdcc/include	include
_
\f[I]NON_FREE_INCLUDE_DIR_SUFFIX\f[R]	sdcc/non-free/include	non-free/include
_
\f[I]LIB_DIR_SUFFIX\f[R]	sdcc/lib	lib
_
\f[I]NON_FREE_LIB_DIR_SUFFIX\f[R]	sdcc/non-free/lib	non-free/lib
_
.TE
.TKE
\c
.br
.P
\&'configure' also computes relative paths. This is needed for full relocatability of a binary package and to complete search paths (see section search paths below):\c
.br
.P
\c
.TK
.TS
center tab(	);
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |.
_
Variable (computed)	default	Win32 builds
_
\f[I]BIN2DATA_DIR\f[R]	../share	..
\f[I]PREFIX2BIN_DIR\f[R]	bin	bin
\f[I]PREFIX2DATA_DIR\f[R]	share/sdcc	
_
.TE
.TKE
\c
.br
.P
Examples:
.DS I
.ft CR
\f[CR]./configure
\&./configure \-\&\-prefix=\[dq]/usr/bin\[dq] \-\&\-datarootdir=\[dq]/usr/share\[dq]
\&./configure \-\&\-disable\-avr\-port \-\&\-disable\-xa51\-port
.ft
.DE
.P
To cross compile on linux for Mingw32 (see also 'sdcc/support/scripts/sdcc_mingw32'):
.DS I
.ft CR
\f[CR]./configure \[rs]
CC=\[dq]i586\-mingw32msvc\-gcc\[dq] CXX=\[dq]i586\-mingw32msvc\-g++\[dq] \[rs]
RANLIB=\[dq]i586\-mingw32msvc\-ranlib\[dq] \[rs]
STRIP=\[dq]i586\-mingw32msvc\-strip\[dq] \[rs]
\-\&\-prefix=\[dq]/sdcc\[dq] \[rs]
\-\&\-datarootdir=\[dq]/sdcc\[dq] \[rs]
docdir=\[dq]\[rs]${datarootdir}/doc\[dq] \[rs]
include_dir_suffix=\[dq]include\[dq] \[rs]
non_free_include_dir_suffix=\[dq]non\-free/include\[dq] \[rs]
lib_dir_suffix=\[dq]lib\[dq] \[rs]
non_free_lib_dir_suffix=\[dq]non\-free/lib\[dq] \[rs]
sdccconf_h_dir_separator=\[dq]\[rs]\[rs]\[rs]\[rs]\[dq] \[rs]
\-\&\-disable\-device\-lib \[rs]
\-\&\-host=i586\-mingw32msvc \[rs]
\-\&\-build=unknown\-unknown\-linux\-gnu
.ft
.DE
.P
To \[lq]cross\[rq]compile on Cygwin for Mingw32 (see also sdcc/support/scripts/sdcc_cygwin_mingw32):
.DS I
.ft CR
\f[CR]./configure \[rs]
\-\&\-prefix=\[dq]/sdcc\[dq] \[rs]
\-\&\-datarootdir=\[dq]/sdcc\[dq] \[rs]
docdir=\[dq]\[rs]${datarootdir}/doc\[dq] \[rs]
include_dir_suffix=\[dq]include\[dq] \[rs]
non_free_include_dir_suffix=\[dq]non\-free/include\[dq] \[rs]
lib_dir_suffix=\[dq]lib\[dq] \[rs]
non_free_lib_dir_suffix=\[dq]non\-free/lib\[dq] \[rs]
sdccconf_h_dir_separator=\[dq]\[rs]\[rs]\[rs]\[rs]\[dq] \[rs]
CC=\[dq]gcc \-mno\-cygwin\[dq] \[rs]
CXX=\[dq]g++ \-mno\-cygwin\[dq]
.ft
.DE
.H 2 "\&Install paths"
.SETR subsec:Install-paths
.IND "Install paths"
.P
\c
.TK
.TS
center tab(	);
| c | cw(4c) | cw(3.6c) | cw(3.6c) |
| c | cw(4c) | cw(3.6c) | cw(3.6c) |
| c | cw(4c) | cw(3.6c) | cw(3.6c) |
| c | cw(4c) | cw(3.6c) | cw(3.6c) |
| c | cw(4c) | cw(3.6c) | cw(3.6c) |
| c | cw(4c) | cw(3.6c) | cw(3.6c) |
| c | cw(4c) | cw(3.6c) | cw(3.6c) |.
_
\f[B]Description\f[R]	T{
\f[B]Path\f[R]
T}	T{
\f[B]Default\f[R]
T}	T{
\f[B]Win32 builds\f[R]
T}
_
Binary files*	T{
\f[I]$EXEC_PREFIX\f[R]
T}	T{
/usr/local/bin
T}	T{
\[rs]sdcc\[rs]bin
T}
_
Include files	T{
\f[I]$DATADIR/\f[R]\c
.br
\f[I]$INCLUDE_DIR_SUFFIX\f[R]
T}	T{
/usr/local/share/\c
.br
sdcc/include
T}	T{
\[rs]sdcc\[rs]include
T}
_
Non-free include files	T{
\f[I]$DATADIR/non-free/\f[R]\c
.br
\f[I]$INCLUDE_DIR_SUFFIX\f[R]
T}	T{
/usr/local/share/\c
.br
sdcc/non-free/include
T}	T{
\[rs]sdcc\[rs]non-free\[rs]include
T}
_
Library file**	T{
\f[I]$DATADIR/\f[R]\c
.br
\f[I]$LIB_DIR_SUFFIX\f[R]
T}	T{
/usr/local/share/\c
.br
sdcc/lib
T}	T{
\[rs]sdcc\[rs]lib
T}
_
Library file**	T{
\f[I]$DATADIR/non-free/\f[R]\c
.br
\f[I]$LIB_DIR_SUFFIX\f[R]
T}	T{
/usr/local/share/\c
.br
sdcc/non-free/lib
T}	T{
\[rs]sdcc\[rs]non-free\[rs]lib
T}
_
Documentation	T{
\f[I]$DOCDIR\f[R]
T}	T{
/usr/local/share/\c
.br
sdcc/doc
T}	T{
\[rs]sdcc\[rs]doc
T}
_
.TE
.TKE
.DS I
.ft CR
\f[CR]\s[-2]*compiler, preprocessor, assembler, and linker
**the \f[CI]model\f[CR] is auto\-appended by the compiler, e.g. small, large, z80, ds390 etc\s[0]
.ft
.DE
.P
The install paths can still be changed during `make install' with e.g.:
.DS I
.ft CR
\f[CR]make install prefix=$(HOME)/local/sdcc
.ft
.DE
.P
Of course this doesn't change the search paths compiled into the binaries.\c
.sp
Moreover the install path can be changed by defining DESTDIR\c
.IND "DESTDIR"
:
.DS I
.ft CR
\f[CR]make install DESTDIR=$(HOME)/sdcc.rpm/
.ft
.DE
.P
Please note that DESTDIR must have a trailing slash!
.H 2 "\&Search Paths"
.SETR subsec:Search-Paths
.IND "Search path"
.P
Some search paths or parts of them are determined by configure variables (in \f[I]italics\f[R], see section above). Further search paths are determined by environment variables during runtime. \c
.br
The paths searched when running the compiler are as follows (the first catch wins):\c
.sp
1. Binary files (preprocessor, assembler and linker)\c
.br
.P
\c
.TK
.TS
center tab(	);
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |.
_
Search path	default	Win32 builds
_
$SDCC_HOME/\f[I]$PPREFIX2BIN_DIR\f[R]	$SDCC_HOME/bin	$SDCC_HOME\[rs]bin
_
Path of argv[0] (if available)	Path of argv[0]	Path of argv[0]
_
$PATH	$PATH	$PATH
_
.TE
.TKE
 \c
.br
.P
2. Include files\c
.br
.P
\c
.TK
.TS
center tab(	);
| cw(0.5c) | cw(4.8c) | cw(4.8c) | c |
| cw(0.5c) | cw(4.8c) | cw(4.8c) | c |
| lw(0.5c) | cw(4.8c) | cw(4.8c) | c |
| lw(0.5c) | cw(4.8c) | lw(4.8c) | c |
| lw(0.5c) | cw(4.8c) | cw(4.8c) | c |
| lw(0.5c) | cw(4.8c) | lw(4.8c) | c |
| cw(0.5c) | cw(4.8c) | cw(4.8c) | c |
| cw(0.5c) | cw(4.8c) | cw(4.8c) | c |
| cw(0.5c) | cw(4.8c) | cw(4.8c) | c |.
_
T{
#
T}	T{
Search path
T}	T{
default
T}	Win32 builds
_
T{
1
T}	T{
\-\&\-I dir
T}	T{
\-\&\-I dir
T}	\-\&\-I dir
_
T{
2
T}	T{
$SDCC_INCLUDE
T}	T{
$SDCC_INCLUDE
T}	$SDCC_INCLUDE
_
T{
3
T}	T{
$SDCC_HOME/\c
.br
\f[I]$PREFIX2DATA_DIR/\f[R]\c
.br
\f[I]$INCLUDE_DIR_SUFFIX\f[R]
T}	T{
$SDCC_HOME/\c
.br
share/sdcc/include
T}	$SDCC_HOME\[rs]include
_
T{
4
T}	T{
path(argv[0])/\c
.br
\f[I]$BIN2DATADIR/\f[R]\c
.br
\f[I]$INCLUDE_DIR_SUFFIX\f[R]
T}	T{
path(argv[0])/../\c
.br
sdcc/include
T}	path(argv[0])\[rs]..\[rs]include
_
T{
5
T}	T{
\f[I]$DATADIR/\f[R]\c
.br
\f[I]$INCLUDE_DIR_SUFFIX\f[R]
T}	T{
/usr/local/share/\c
.br
sdcc/include
T}	(not on Win32)
_
T{
6
T}	T{
$SDCC_HOME/\c
.br
\f[I]$PREFIX2DATA_DIR/\f[R]\c
.br
\f[I]non-free/\f[R]\c
.br
\f[I]$INCLUDE_DIR_SUFFIX\f[R]
T}	T{
$SDCC_HOME/share/\c
.br
sdcc/non-free/include
T}	$SDCC_HOME\[rs]non-free\[rs]include
_
T{
7
T}	T{
path(argv[0])/\c
.br
\f[I]$BIN2DATADIR/\f[R]\c
.br
\f[I]non-free/\f[R]\c
.br
\f[I]$INCLUDE_DIR_SUFFIX\f[R]
T}	T{
path(argv[0])/../\c
.br
sdcc/non-free/include
T}	path(argv[0])\[rs]..\[rs]non-free\[rs]include
_
T{
8
T}	T{
\f[I]$DATADIR/\f[R]\c
.br
\f[I]non-free/\f[R]\c
.br
\f[I]$INCLUDE_DIR_SUFFIX\f[R]
T}	T{
/usr/local/share/\c
.br
sdcc/non-free/include
T}	(not on Win32)
_
.TE
.TKE
 \c
.br
.P
The option \-\&\-nostdinc disables all search paths except #1 and #2.\c
.sp
3. Library files\c
.br
.P
With the exception of \[lq]\-\&\-L dir\[rq] the \f[I]model\f[R] is auto-appended by the compiler (e.g. small, large, z80, ds390 etc.).\c
.br
.P
\c
.TK
.TS
center tab(	);
| lw(0.5c) | cw(4.5c) | lw(5c) | cw(4.5c) |
| lw(0.5c) | cw(4.5c) | cw(5c) | cw(4.5c) |
| cw(0.5c) | cw(4.5c) | lw(5c) | cw(4.5c) |
| cw(0.5c) | cw(4.5c) | cw(5c) | cw(4.5c) |
| lw(0.5c) | cw(4.5c) | lw(5c) | lw(4.5c) |
| lw(0.5c) | cw(4.5c) | lw(5c) | cw(4.5c) |
| cw(0.5c) | cw(4.5c) | cw(5c) | cw(4.5c) |
| cw(0.5c) | cw(4.5c) | cw(5c) | cw(4.5c) |
| cw(0.5c) | cw(4.5c) | cw(5c) | cw(4.5c) |
| cw(0.5c) | cw(4.5c) | cw(5c) | cw(4.5c) |.
_
T{
#
T}	T{
Search path
T}	T{
default
T}	T{
Win32 builds
T}
_
T{
1
T}	T{
\-\&\-L dir
T}	T{
\-\&\-L dir
T}	T{
\-\&\-L dir
T}
_
T{
2
T}	T{
$SDCC_LIB/\f[I]<model>\f[R]
T}	T{
$SDCC_LIB/\f[I]<model>\f[R]
T}	T{
$SDCC_LIB/\f[I]<model>\f[R]
T}
_
T{
3
T}	T{
$SDCC_LIB
T}	T{
$SDCC_LIB
T}	T{
$SDCC_LIB
T}
_
T{
4
T}	T{
$SDCC_HOME/\c
.br
\f[I]$PREFIX2DATA_DIR/\f[R]\c
.br
\f[I]$LIB_DIR_SUFFIX/\f[R]\c
.br
\f[I]<model>\f[R]
T}	T{
$SDCC_HOME/\c
.br
share/sdcc/lib/<\f[I]model>\f[R]
T}	T{
$SDCC_HOME\[rs]\c
.br
lib\[rs]\f[I]<model>\f[R]
T}
_
T{
5
T}	T{
path(argv[0])/\c
.br
\f[I]$BIN2DATADIR/\f[R]\c
.br
\f[I]$LIB_DIR_SUFFIX/\f[R]\c
.br
\f[I]<model>\f[R]
T}	T{
path(argv[0])/../sdcc/\c
.br
lib/\f[I]<model>\f[R]
T}	T{
path(argv[0])\[rs]\c
.br
\&..\[rs]lib\[rs]\c
.br
\f[I]<model>\f[R]
T}
_
T{
6
T}	T{
\f[I]$DATADIR/non-free/\f[R]\c
.br
\f[I]$LIB_DIR_SUFFIX/\f[R]\c
.br
\f[I]<model>\f[R]
T}	T{
/usr/local/share/sdcc/\c
.br
lib/\f[I]<model>\f[R]
T}	T{
(not on Win32)
T}
_
T{
7
T}	T{
$SDCC_HOME/\c
.br
\f[I]$PREFIX2DATA_DIR/\f[R]\c
.br
\f[I]non-free/\f[R]\c
.br
\f[I]$LIB_DIR_SUFFIX/\f[R]\c
.br
\f[I]<model>\f[R]
T}	T{
$SDCC_HOME/share/sdcc/\c
.br
non-free/lib/\f[I]<model>\f[R]
T}	T{
$SDCC_HOME\[rs]\c
.br
lib\[rs]non-free\f[I]\[rs]<model>\f[R]
T}
_
T{
8
T}	T{
path(argv[0])/\c
.br
\f[I]$BIN2DATADIR/\f[R]\c
.br
\f[I]non-free/\f[R]\c
.br
\f[I]$LIB_DIR_SUFFIX/\f[R]\c
.br
\f[I]<model>\f[R]
T}	T{
path(argv[0])/../sdcc/\c
.br
non-free/lib/\f[I]<model>\f[R]
T}	T{
path(argv[0])\[rs]..\[rs]\c
.br
lib\[rs]non-free\f[I]\[rs]<model>\f[R]
T}
_
T{
9
T}	T{
\f[I]$DATADIR/non-free/\f[R]\c
.br
\f[I]$LIB_DIR_SUFFIX/\f[R]\c
.br
\f[I]<model>\f[R]
T}	T{
/usr/local/share/sdcc/\c
.br
non-free/lib/\c
.br
\f[I]<model>\f[R]
T}	T{
(not on Win32)
T}
_
.TE
.TKE
\c
.br
.P
\ \c
.br
The option \-\&\-nostdlib disables all search paths except #1 and #2.
.H 2 "\&Building SDCC"
.IND "Building SDCC"
.P
SDCC can be built for various host platforms using the instructions provided below. Note that the PIC14 and PIC16 library folders in the source distribution contain Autotools-generated files. These are included for convenience and to avoid introducing Autotools as an additional dependency. They have to be regenerated in case of a version mismatch. Alternatively, the PIC backends can be disabled.
.H 3 "\&Building SDCC on Linux"
.SETR subsec:Building-SDCC-on-Linux
.AL
.LI
Download the source package either from the SDCC Subversion repository or from snapshot builds, it will be named something like sdcc\-src\-yyyymmdd-rrrr.tar.bz2 \c
.URL "http://sdcc.sourceforge.net/snap.php" "" "."
.LI
Bring up a command line terminal, such as xterm.
.LI
Unpack the file using a command like: \f[HB]"tar \-xvjf sdcc-src-yyyymmdd-rrrr.tar.bz2\[rq]\f[R], this will create a sub-directory called sdcc with all of the sources.
.LI
The assemblers and the linker are built from the ASxxxx sources in vendor/asxxxx, beside the sdcc directory. In a git checkout this is a submodule; if it is empty, type \f[HB]git submodule update \-\&\-init\f[R] at the top of the repository. configure stops with a message if the sources are missing.
.LI
Change directory into the main SDCC directory, for example type: \f[HB]"cd sdcc\f[HR]".\f[R]
.LI
Type \f[HB]"./configure\f[R]". This configures the package for compilation on your system. When the treedec library is available, it should be found and used automatically (improving the compilation time / code quality trade-off). As of SDCC 3.7.0, the current develop branch from https://github.com/freetdi/tdlib is a suitable version of treedec.
.LI
Type \f[HB]"make\f[R]". All of the source packages will compile, this can take a while.
.LI
Type \f[HB]"make install"\f[R] as root. This copies the binary executables, the include files, the libraries and the documentation to the install directories. Proceed with section \c
.GETHN sec:Testing-the-SDCC Rf9
.Rd Rf9
\*[Rf9].
.LE
.H 3 "\&Building SDCC on Mac OS X"
.P
Follow the instruction for Linux.\c
.sp
On Mac OS X 10.2.x it was reported, that the default gcc (version 3.1 20020420 (prerelease)) fails to compile SDCC. Fortunately there's also gcc 2.9.x installed, which works fine. This compiler can be selected by running 'configure' with:
.DS I
.ft CR
\f[CR]./configure CC=gcc2 CXX=g++2
.ft
.DE
.P
Universal (ppc and i386) binaries can be produced on Mac OS X 10.4.x with Xcode. Run 'configure' with:
.DS I
.ft CR
\f[CR]./configure \[rs]
\f[CR]LDFLAGS="\-Wl,\-syslibroot,/Developer/SDKs/MacOSX10.4u.sdk \-arch i386 \-arch ppc" \[rs]
\f[CR]CXXFLAGS = "\-O2 \-isysroot /Developer/SDKs/MacOSX10.4u.sdk \-arch i386 \-arch ppc" \[rs]
\f[CR]CFLAGS = "\-O2 \-isysroot /Developer/SDKs/MacOSX10.4u.sdk \-arch i386 \-arch ppc"
.ft
.DE
.H 3 "\&Cross compiling SDCC on Linux for Windows"
.P
With the MinGW gcc cross compiler SDCC can be cross-compiled for Win32. See section 'Configure Options'. SDCC requires boost, but the header-only parts should be sufficient: Get a current boost tarball from www.boost.org, unpack it, and choose suitable configure options so the headers are found by the C++ compiler.
.H 3 "\&Building SDCC using Cygwin and Mingw32"
.P
For building and installing a Cygwin executable follow the instructions for Linux.\c
.sp
On Cygwin a \[lq]native\[rq] Win32-binary can be built, which will not need the Cygwin-DLL. For the necessary 'configure' options see section 'configure options' or the script 'sdcc/support/scripts/sdcc_cygwin_mingw32'.\c
.sp
In order to install Cygwin on Windows download setup.exe from www.cygwin.com \c
.URL "http://www.cygwin.com/" "" "."
Run it, set the \[lq]default text file type\[rq] to \[lq]unix\[rq] and download/install at least the following packages. Some packages are selected by default, others will be automatically selected because of dependencies with the manually selected packages. Never deselect these packages!
.BL
.LI
flex
.LI
bison
.LI
gcc ; version 3.x is fine, no need to use the old 2.9x
.LI
binutils ; selected with gcc
.LI
make
.LI
libboost-dev
.LI
rxvt ; a nice console, which makes life much easier under windoze (see below)
.LI
man ; not really needed for building SDCC, but you'll miss it sooner or later
.LI
less ; not really needed for building SDCC, but you'll miss it sooner or later
.LI
svn ; only if you use Subversion access
.LE
.P
If you want to develop something you'll need:
.BL
.LI
python ; for the regression tests
.LI
gdb ; the gnu debugger, together with the nice GUI \[lq]insight\[rq]
.LI
openssh ; to access the CF or commit changes
.LI
autoconf and autoconf-devel ; if you want to fight with 'configure', don't use autoconf-stable!
.LE
.P
rxvt is a nice console with history. Replace in your cygwin.bat the line
.DS I
.ft CR
\f[CR]bash \-\&\-login \-i
.ft
.DE
.P
with (one line):
.DS I
.ft CR
\f[CR]rxvt \-sl 1000 \-fn "Lucida Console\-12" \-sr \-cr red
\f[CR]     \-bg black \-fg white \-geometry 100x65 \-e bash \-\&\-login
.ft
.DE
.P
Text selected with the mouse is automatically copied to the clipboard, pasting works with shift-insert.\c
.sp
The other good tip is to make sure you have no //c/\-style paths anywhere, use /cygdrive/c/ instead. Using // invokes a network lookup which is very slow. If you think \[lq]cygdrive\[rq] is too long, you can change it with e.g.
.DS I
.ft CR
\f[CR]mount \-s \-u \-c /mnt
.ft
.DE
.P
SDCC sources use the unix line ending LF. Life is much easier, if you store the source tree on a drive which is mounted in binary mode. And use an editor which can handle LF-only line endings. Make sure not to commit files with Windows line endings. The tabulator spacing\c
.IND "tabulator spacing (8 columns)"
 used in the project is 8. Although a tabulator spacing of 8 is a sensible choice for programmers (it's a power of 2 and allows to display 8/16 bit signed variables without loosing columns) the plan is to move towards using only spaces in the source.
.H 3 "\&Building SDCC Using Microsoft Visual C++ 2010 (MSVC)"
.P
TODO: This section is outdated. Current SDCC requires features noit present in MSVC++ 2010. MSVC++ 2019 or newer is required.
.P
Download the source package either from the SDCC Subversion repository or from the snapshot builds \c
.URL "http://sdcc.sourceforge.net/snap.php" "" ","
it will be named something like sdcc\-src\-yyyymmdd-rrrr.tar.bz2. SDCC is distributed with all the project, solution and other files you need to build it using Visual C++ 2010 (except for ucSim). The solution name is 'sdcc.sln'. Please note that as it is now, all the executables are created in a folder called sdcc\[rs]bin_vc. Once built you need to copy the executables from sdcc\[rs]bin_vc to sdcc\[rs]bin before running SDCC. \c
.sp
Apart from the SDCC sources you also need to have the BOOST libraries installed for MSVC. Get it here \c
.URL "http://www.boost.org/" ""
\c
.sp
In order to build SDCC with MSVC you need win32 executables of bison.exe, flex.exe, and gawk.exe. One good place to get them is here \c
.URL "http://unxutils.sourceforge.net" ""
\c
.sp
If UnxUtils didn't work well, \c
.IND "msys"
msys (\c
.URL "http://www.mingw.org/wiki/msys" "" ")"
or msys2\c
.IND "msys2"
(\c
.URL "https://msys2.github.io" "" ")"
can be an alternative.\c
.sp
Download the file UnxUtils\c
.IND "UnxUtils"
\&.zip. Now you have to install the utilities and setup MSVC so it can locate the required programs. Here there are two alternatives (choose one!):
.AL
.LI
The easy way:\c
.sp
a) Extract UnxUtils.zip to your C:\[rs] hard disk PRESERVING the original paths, otherwise bison won't work. (If you are using WinZip make certain that 'Use folder names' is selected)\c
.sp
b) Add 'C:\[rs]user\[rs]local\[rs]wbin' to VC++ Directories / Executable Directories.\c
.sp
(As a side effect, you get a bunch of Unix utilities that could be useful, such as diff and patch.)
.LI
A more compact way:\c
.sp
This one avoids extracting a bunch of files you may not use, but requires some extra work:\c
.sp
a) Create a directory were to put the tools needed, or use a directory already present. Say for example 'C:\[rs]util'.\c
.sp
b) Extract 'bison.exe', 'bison.hairy', 'bison.simple', 'flex.exe', and gawk.exe to such directory WITHOUT preserving the original paths. (If you are using WinZip make certain that 'Use folder names' is not selected)\c
.sp
c) Rename bison.exe to '_bison.exe'.\c
.sp
d) Create a batch file 'bison.bat' in 'C:\[rs]util\[rs]' and add these lines:\c
.br
\ \ set BISON_SIMPLE=C:\[rs]util\[rs]bison.simple \c
.br
\ \ set BISON_HAIRY=C:\[rs]util\[rs]bison.hairy\c
.br
\ \ _bison %1 %2 %3 %4 %5 %6 %7 %8 %9\c
.sp
Steps 'c' and 'd' are needed because bison requires by default that the files 'bison.simple' and 'bison.hairy' reside in some weird Unix directory, '/usr/local/share/' I think. So it is necessary to tell bison where those files are located if they are not in such directory. That is the function of the environment variables BISON_SIMPLE and BISON_HAIRY.\c
.sp
e) Add 'C:\[rs]util' to VC++ Directories / Executable Directories. Note that you can use any other path instead of 'C:\[rs]util', even the path where the Visual C++ tools are, probably: 'C:\[rs]Program Files\[rs]Microsoft Visual Studio\[rs]Common\[rs]Tools'. So you don't have to execute step 'e' :)
.LE
.P
That is it. Open 'sdcc.sln' in Visual Studio, click 'build all', when it finishes copy the executables from sdcc\[rs]bin_vc to sdcc\[rs]bin, and you can compile using SDCC.
.H 3 "\&Windows Install Using a ZIP Package"
.AL
.LI
Download the binary zip package from \c
.URL "http://sdcc.sf.net/snap.php" ""
 and unpack it using your favorite unpacking tool (gunzip, WinZip, etc). This should unpack to a group of sub-directories. An example directory structure after unpacking the mingw32 package is: C:\[rs]sdcc\[rs]bin for the executables, C:\[rs]sdcc\[rs]include and C:\[rs]sdcc\[rs]lib for the include and libraries.
.LI
Adjust your environment variable PATH to include the location of the bin directory or start sdcc using the full path.
.LE
.H 3 "\&Windows Install Using the Setup Program"
.SETR subsec:Windows-Install
.P
Download the setup program \f[I]sdcc-x.y.z-setup.exe\f[R] for an official release from\c
.br
\c
.URL "http://sourceforge.net/projects/sdcc/files/" ""
 or a setup program for one of the snapshots \f[I]sdcc-yyyymmdd-xxxx-setup.exe\f[R] from \c
.URL "http://sdcc.sourceforge.net/snap.php" ""
 and execute it. A Windows typical installer will guide you through the installation process.
.H 3 "\&VPATH feature"
.IND "VPATH"
.P
SDCC supports the VPATH feature provided by configure and make. It allows to separate the source and build trees. Here's an example:
.P
\f[CR]cd ~\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # cd $HOME\f[R]
.P
\f[CR]tar \-xjf sdcc\-src\-yyyymmdd\-rrrr.tar.bz2\ # extract source to directory sdcc\f[R]
.P
\f[CR]mkdir sdcc.build\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # put output in sdcc.build\f[R]
.P
\f[CR]cd sdcc.build\f[R]
.P
\f[CR]../sdcc/configure\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # configure is doing all the magic!\f[R]
.P
\f[CR]make\f[R]
.P
That's it! \f[B]configure\f[R] will create the directory tree will all the necessary Makefiles in ~/sdcc.build. It automagically computes the variables srcdir, top_srcdir and top_buildir for each directory. After running \f[B]make\f[R] the generated files will be in ~/sdcc.build, while the source files stay in ~/sdcc.\c
.br
This is not only usefull for building different binaries, e.g. when cross compiling. It also gives you a much better overview in the source tree when all the generated files are not scattered between the source files. And the best thing is: if you want to change a file you can leave the original file untouched in the source directory. Simply copy it to the build directory, edit it, enter `make clean', `rm Makefile.dep' and `make'. \f[B]make\f[R] will do the rest for you!
.H 2 "\&Building the Documentation"
.SETR sec:Building-the-Documentation
.P
Add \-\&\-enable-doc to the configure arguments to build the documentation together with all the other stuff. Another possibility is to change to the doc directory and to type \f[HB]make\f[R] there. Either way you will need groff\c
.IND "groff"
 (with its mm macros, tbl, pic and the PDF and HTML output devices) and mmroff, which comes with it; Ghostscript and pnmtopng (from netpbm) make the images for the HTML version. The result is sdccman.pdf (A4), sdccman.txt, and sdccman.html, a directory with one page per chapter.
.P
You're invited to make changes and additions to this manual. Its source is sdcc/doc/sdccman.mm, plain text in the groff mm macros: headings are \f[CR].H\f[R], lists \f[CR].BL\f[R], \f[CR].AL\f[R] or \f[CR].VL\f[R], tables tbl and figures pic. Each output is set in two passes, the first of which collects the cross-references and the index.
.H 2 "\&Reading the Documentation"
.IND "Documentation"
.P
This manual is available as PDF, as HTML and as plain text; the figures are in the PDF and HTML versions only.\c
.br
You'll find the PDF version\c
.IND "PDF version of this document"
 at \c
.URL "http://sdcc.sourceforge.net/doc/sdccman.pdf" "" "."
\c
.br
This documentation is in some aspects different from a commercial documentation:
.BL
.LI
It tries to document SDCC for several processor architectures in one document (commercially these probably would be separate documents/products). This document\c
.IND "Status of documentation"
 currently matches SDCC for mcs51 and DS390 best and does give too few information about f.e. Z80, PIC14, PIC16 and HC08.
.LI
There are many references pointing away from this documentation. Don't let this distract you. If there f.e. was a reference like \c
.URL "http://www.opencores.org" ""
 together with a statement \[lq]some processors which are targeted by SDCC can be implemented in a \f[I]f\f[R]ield \f[I]p\f[R]rogrammable \f[I]g\f[R]ate \f[I]a\f[R]rray\c
.IND "FPGA (field programmable gate array)"
\[rq] or \c
.URL "http://sourceforge.net/projects/fpgac/" ""
\c
.IND "FpgaC ((subset of) C to FPGA compiler)"
 \[lq]have you ever heard of an open source compiler that compiles a subset of C for an FPGA?\[rq] we expect you to have a quick look there and come back. If you read this you are on the right track.
.LI
Some sections attribute more space to problems, restrictions and warnings than to the solution.
.LI
The installation section and the section about the debugger is intimidating.
.LI
There are still lots of typos and there are more different writing styles than pictures.
.LE
.H 2 "\&Testing the SDCC Compiler"
.SETR sec:Testing-the-SDCC
.P
The first thing you should do after installing your SDCC compiler is to see if it runs. Type \f[HB]"sdcc \-\&\-version"\c
.IND "version"
\f[R] at the prompt, and the program should run and output its version like: \c
.br
\f[CR]SDCC : mcs51/z80/z180/sm83/tlcs90/ez80/z80n/r800/i8080/i8085/ds390/pic16/pic14/TININative/ds400/hc08/s08/stm8/pdk13/pdk14/pdk15/mos6502/mos65c02 4.6.2 #16710 (Linux)\f[R]
.P
If it doesn't run, or gives a message about not finding sdcc program, then you need to check over your installation. Make sure that the sdcc bin directory is in your executable search path defined by the PATH environment setting (see section \c
.GETHN subsec:Install-Trouble-shooting Rf10
.Rd Rf10
\*[Rf10]\ Install trouble-shooting for suggestions). Make sure that the sdcc program is in the bin folder, if not perhaps something did not install correctly.\c
.sp
SDCC is commonly installed as described in section \[lq]Install and search paths\[rq].\c
.sp
Make sure the compiler works on a very simple example. Type in the following test.c program using your favorite ASCII editor:
.DS I
.ft CR
\f[CR]char test;
\&
void main(void) {
\ \ \ \ test=0;
}
.ft
.DE
.P
Compile this using the following command: \f[HB]"sdcc \-c test.c".\f[R] If all goes well, the compiler will generate a test.asm and test.rel file. Congratulations, you've just compiled your first program with SDCC. We used the \-c option to tell SDCC not to link the generated code, just to keep things simple for this step.\c
.sp
The next step is to try it with the linker. Type in \f[HB]"sdcc test.c\f[R]". If all goes well the compiler will link with the libraries and produce a test.ihx output file. If this step fails (no test.ihx, and the linker generates warnings), then the problem is most likely that SDCC cannot find the /usr/local/share/sdcc/lib directory (see section \c
.GETHN subsec:Install-Trouble-shooting Rf11
.Rd Rf11
\*[Rf11]\ Install trouble-shooting for suggestions).\c
.sp
The final test is to ensure SDCC can use the standard header files and libraries. Edit test.c and change it to the following:
.DS I
.ft CR
\f[CR]#include <string.h>
\&
char str1[10];
\&
void main(void) {
\ \ strcpy(str1, "testing");
}
.ft
.DE
.P
Compile this by typing \f[HB]"sdcc test.c"\f[R]. This should generate a test.ihx output file, and it should give no warnings such as not finding the string.h file. If it cannot find the string.h file, then the problem is that SDCC cannot find the /usr/local/share/sdcc/include directory (see the section \c
.GETHN subsec:Install-Trouble-shooting Rf12
.Rd Rf12
\*[Rf12]\ Install trouble-shooting section for suggestions). Use option \f[B]\-\&\-print-search-dirs\f[R]\c
.IND "--print-search-dirs"
 to find exactly where SDCC is looking for the include and lib files.
.H 2 "\&Install Trouble-shooting"
.SETR subsec:Install-Trouble-shooting
.IND "Install trouble-shooting"
.H 3 "\&If SDCC does not build correctly"
.P
A thing to try is starting from scratch by unpacking the .tgz source package again in an empty directory. Configure it like:\c
.sp
\f[HB]./configure 2>&1 | tee configure.log\f[R]\c
.sp
and build it like:\c
.sp
\f[HB]make 2>&1 | tee make.log\f[R]\c
.sp
If anything goes wrong, you can review the log files to locate the problem. Or a relevant part of this can be attached to an email that could be helpful when requesting help from the mailing list.
.H 3 "\&What the \[lq]./configure\[rq] does"
.P
The \[lq]./configure\[rq] command is a script that analyzes your system and performs some configuration to ensure the source package compiles on your system. It will take a few minutes to run, and will compile a few tests to determine what compiler features are installed.
.H 3 "\&What the \[lq]make\[rq] does"
.P
This runs the GNU make tool, which automatically compiles all the source packages into the final installed binary executables.
.H 3 "\&What the \[lq]make install\[rq] command does."
.P
This will install the compiler, other executables libraries and include files into the appropriate directories. See sections \c
.GETHN subsec:Install-paths Rf13
.Rd Rf13
\*[Rf13],\ \c
.GETHN subsec:Search-Paths Rf14
.Rd Rf14
\*[Rf14]\ about install and search paths.\c
.br
On most systems you will need super-user privileges to do this.
.H 2 "\&Components of SDCC"
.P
SDCC is not just a compiler, but a collection of tools by various developers. These include linkers, assemblers, simulators and other components. Here is a summary of some of the components. Note that the included simulator and assembler have separate documentation which you can find in the source package in their respective directories. As SDCC grows to include support for other processors, other packages from various developers are included and may have their own sets of documentation.\c
.sp
You might want to look at the files which are installed in <installdir>. At the time of this writing, we find the following programs, among others, for gcc-builds:\c
.br
 \c
.br
In <installdir>/bin:
.BL
.LI
sdcc \- The compiler.
.LI
sdcpp \- The C preprocessor.
.LI
sdas8051 \- The assembler for 8051 type processors.
.LI
sdas390 \- The assembler for DS80C390 processor.
.LI
sdasz80\f[B],\f[R] sdasgb \- The Z80 and GameBoy Z80 assemblers.
.LI
sdas6808 \- The 6808 assembler.
.LI
as8085, asst8 \- The ASxxxx assemblers for the Intel 8080/8085 and the STM8.
.LI
aslink \- The ASxxxx linker, for the Intel 8080/8085 and the STM8.
.LI
sdld \-The linker for 8051 type processors.
.LI
sdldz80\f[B],\f[R] sdldgb \- The Z80 and GameBoy Z80 linkers.
.LI
sdld6808 \- The 6808 linker.
.LI
ucsim_51, s51 \- The ucSim 8051 simulator.
.LI
ucsim_m68hc08 \- The ucSim 6808 simulator.
.LI
ucsim_stm8 \- The ucSim STM8 simulator.
.LI
ucsim_i8085 \- The ucSim 8080/8085 simulator.
.LI
ucsim_z80 \- The ucSim Z80 simulator.
.LI
sdcdb \- The source debugger.
.LI
sdar, sdranlib, sdnm, sdobjcopy \- The sdcc archive managing and indexing utilites.
.LI
packihx \- A tool to pack (compress) Intel hex files.
.LI
makebin \- A tool to convert Intel Hex file to a binary and GameBoy binary image file format.
.LE
.P
In <installdir>/share/sdcc/include
.BL
.LI
the include files
.LE
.P
In <installdir>/share/sdcc/non-free/include
.BL
.LI
the non-free include files
.LE
.P
In <installdir>/share/sdcc/lib
.BL
.LI
the src and target subdirectories with the precompiled relocatables.
.LE
.P
In <installdir>/share/sdcc/non-free/lib
.BL
.LI
the src and target subdirectories with the non-free precompiled relocatables.
.LE
.P
In <installdir>/share/sdcc/doc
.BL
.LI
the documentation
.LE
.H 3 "\&sdcc \- The Compiler"
.P
This is the actual compiler, it in turn uses the C-preprocessor and invokes the assembler and linkage editor.
.H 3 "\&sdcpp \- The C-Preprocessor"
.IND "Preprocessor"
.P
The preprocessor\c
.IND "sdcpp (preprocessor)"
 is a modified version of the GNU cpp\c
.IND "cpp|see{sdcpp}"
 preprocessor \c
.URL "http://gcc.gnu.org/" "" "."
The C preprocessor is used to pull in #include sources, process #ifdef statements, #defines and so on.
.H 3 "\&sdas, sdld \- The Assemblers and Linkage Editors"
.P
This is a set of retargettable assemblers and linkage editors, which was developed by Alan Baldwin. John Hartman created the version for 8051, and I (Sandeep) have made some enhancements and bug fixes for it to work properly with SDCC.
.P
SDCC used an about 1998 branch of asxxxx version 2.0 which unfortunately is not compatible with the more advanced (f.e. macros, more targets) ASxxxx Cross Assemblers nowadays available from Alan Baldwin \c
.URL "https://shop-pdp.net/" "" "."
In 2009 Alan made his ASxxxx Cross Assemblers version 5.0 available under the GPL license (GPLv3 or later), so a reunion is now a work in progress. Thanks Alan!
.P
The Intel 8080/8085 and STM8 ports already use the ASxxxx Cross Assemblers themselves: as8085, asst8 and aslink, built from the sources in vendor/asxxxx. Their manual is vendor/asxxxx/asxdoc/asmlnk.txt. Options passed to them with \-Wa and \-Wl are those of ASxxxx; in particular aslink's \-b sets the base of a bank, and \-a the base of an area. aslink reads a library as a text file naming its object files, one per line, rather than an ar archive.
.H 3 "\&ucsim_51, ucsim_z80, ucsim_stm8 etc. \- The Simulators"
.P
ucsim_51 (or s51)\c
.IND "s51 (simulator)"
, ucsim_z80\c
.IND "sz80 (simulator)"
 ucsim_m68hc08\c
.IND "shc08 (simulator)"
 and ucsim_stm8 \c
.IND "sstm8 (simulator)"
, as well as similarly named programs provided with SDCC, are free open source simulators developed by Daniel Drotos. The simulators are built as part of the build process. For more information visit Daniel's web site at: \c
.URL "http://mazsola.iit.uni-miskolc.hu/~drdani/embedded/s51" "" "."
It currently supports the core mcs51, the Dallas DS80C390, the Phillips XA51 family, the Z80, 6808 the STM8 and various others.
.H 3 "\&sdcdb \- Source Level Debugger"
.P
SDCDB\c
.IND "SDCDB (debugger)"
 is the companion source level debugger. More about SDCDB in section \c
.GETHN cha:Debugging-with-SDCDB Rf15
.Rd Rf15
\*[Rf15]. The current version of the debugger uses Daniel's Simulator S51\c
.IND "s51 (simulator)"
, but can be easily changed to use other simulators.
.H 1 "\&Using SDCC"
.H 2 "\&Standard-Compliance"
.IND "Standard-compliance"
.SETR subsec:Standard-Compliance
.P
SDCC aims to be a conforming freestanding implementation of the C programming language. The latest publicly available version of the standard \f[I]ISO/IEC 9899 \- Programming languages \- C\f[R] should be available at: \c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/projects#9899" "" "."
.H 3 "\&ISO C90 and ANSI C89"
.P
Use \f[B]\f[CB]\-\-std\-c90\f[B]\c
.IND "--std-c90"
\f[R] to compile in this mode.
.P
.nr Hu 4
.HU "\&Deviations from standard compliance"
.BL
.LI
initialization of structure arrays must be fully braced.
.DS I
.ft CR
\f[CR]struct s { char x } a[] = {1, 2};\ \ \ \ \ /* invalid in SDCC */
struct s { char x } a[] = {{1}, {2}}; /* OK */
.ft
.DE
.LI
\f[CR]float\f[R]\c
.IND "Floating point support"
 is substituted for (\f[CR]long\f[R]) \f[CR]double\f[R]\c
.IND "double (not supported)"
 and a warning is emitted.
.LI
K&R style\c
.IND "K&R style"
 functions are syntactically supported, but with the semantics of ISO style functions.
.LI
ISO C90 semantics for realloc(ptr, 0) are unclear. SDCC follows ISO C99 semantics.
.LE
.nr Hu 4
.HU "\&Features missing in some ports"
.BL
.LI
pic14, pic16: structures\c
.IND "struct"
 and unions\c
.IND "union"
 cannot be passed as function parameters
.LI
hc08, s08, mos6502, pic14, pic16: they cannot be a return value\c
.IND "return value"
 from a function, e.g.:
.DS I
.ft CR
\f[CR]struct s { ... };
\f[CB]struct\f[CR] s foo1 (\f[CB]struct\f[CR] s parms) /* unsupported in these SDCC ports */
{
\ \ \ \ struct s rets;
\ \ \ \ ...
\ \ \ \ return rets; /* unsupported in these SDCC ports */
}
.ft
.DE
.LI
mcs51, ds390, hc08, s08, pdk13, pdk14, pdk15 and mos6502 ports: functions are not reentrant unless explicitly declared as such or \f[B]\f[CB]\-\-stack\-auto\f[B]\f[R] is specified.
.LE
.H 3 "\&ISO C94 (aka ISO C95)"
.P
Use \f[B]\f[CB]\-\-std\-c94\f[B]\c
.IND "--std-c94"
\f[R] or \f[B]\f[CB]\-\-std\-c95\f[B]\c
.IND "--std-c95"
\f[R] to compile in this mode.
.nr Hu 4
.HU "\&Implementation status"
.P
Except for the issues mentioned in the section above, this standard is supported.
.H 3 "\&ISO C99"
.P
Use \f[B]\f[CB]\-\-std\-c99\f[B]\c
.IND "--std-c99"
\f[R] to compile in this mode.
.nr Hu 4
.HU "\&Deviations from standard compliance"
.P
In addition to what is mentioned in the section above, the following features of this standard are not supported by SDCC:
.BL
.LI
Objects of variably-modified types.
.LI
\f[CR]ptrdiff_t\f[R] has 16 bits, while the standard requires at least 17 bits.
.LE
.nr Hu 4
.HU "\&Features missing in some ports"
.BL
.LI
pic14: there is no support for 64 bit integer types.
.LE
.H 3 "\&ISO C11 and ISO C17"
.P
Use \f[B]\f[CB]\-\-std\-c11\f[B]\c
.IND "--std-c11"
\f[R] to compile in this mode.
.nr Hu 4
.HU "\&Implementation status"
.P
Except for the issues mentioned in the section above, this standard is supported. Note: Variably-modified types became optional in this version.
.H 3 "\&ISO C23"
.P
Use \f[B]\f[CB]\-\-std\-c23\f[B]\c
.IND "--std-c23"
\f[R] to compile in this mode.
.nr Hu 4
.HU "\&Deviations from standard compliance"
.BL
.LI
initialization of structure arrays must be fully braced.
.DS I
.ft CR
\f[CR]struct s { char x } a[] = {1, 2};\ \ \ \ \ /* invalid in SDCC */
struct s { char x } a[] = {{1}, {2}}; /* OK */
.ft
.DE
.LI
\f[CR]float\f[R]\c
.IND "Floating point support"
 is substituted for (\f[CR]long\f[R]) \f[CR]double\f[R]\c
.IND "double (not supported)"
 and a warning is emitted.
.LI
Support for attributes is slightly incomplete.
.LI
Checked integer arithmetic is not supported for (\f[CR]unsigned\f[R]) \f[CR]long long\f[R].
.LI
#embed is not supported
.LE
.nr Hu 4
.HU "\&Features missing in some ports"
.BL
.LI
pic14, pic16: structures\c
.IND "struct"
 and unions\c
.IND "union"
 cannot be passed as function parameters
.LI
hc08, s08, mos6502, pic14, pic16: they cannot be a return value\c
.IND "return value"
 from a function, e.g.:
.DS I
.ft CR
\f[CR]struct s { ... };
\f[CB]struct\f[CR] s foo1 (\f[CB]struct\f[CR] s parms) /* unsupported in these SDCC ports */
{
\ \ \ \ struct s rets;
\ \ \ \ ...
\ \ \ \ return rets; /* unsupported in these SDCC ports */
}
.ft
.DE
.LI
mcs51, ds390, hc08, s08, pdk13, pdk14, pdk15 and mos6502 ports: functions are not reentrant unless explicitly declared as such or \f[B]\f[CB]\-\-stack\-auto\f[B]\f[R] is specified.
.LI
pic14: there is no support for 64 bit integer types.
.LI
pic14, pic16: \f[CR]_BitInt\f[R] is not supported.
.LE
.H 3 "\&ISO C2y preview"
.P
Use \f[B]\f[CB]\-\-std\-c2y\f[B]\c
.IND "--std-c2y"
\f[R] to compile in this mode.
.nr Hu 4
.HU "\&Implementation status"
.P
In anticipation of the upcoming version of the language standard, C2y, SDCC supports the following prospective features:
.BL
.LI
\c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3260.pdf" "N3260" ":"
\f[CR]_Generic\f[R] selection expression with a type operand
.LI
\c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3353.htm" "N3353" ":"
Obsolete Octal and Provide New, Proper Escape Sequences
.LI
\c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3356.htm" "N3356" ":"
\f[CR]if\f[R] Declarations
.LI
\c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3369.pdf" "N3369" ":"
The \f[CR]_Lengthof\f[R] Operator (Note: renamed to \f[CR]_Countof\f[R] following \c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3469.htm" "N3469" ")"
.LI
\c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3370.htm" "N3370" ":"
Case range expressions
.LI
\c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3398.pdf" "N3398" ":"
The \f[CR]containerof\f[R] Macro
.LI
\c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3485.htm" "N3485" ":"
Literal Suffixes for \f[CR]size_t\f[R] (as an extension)
.LI
\c
.URL "https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3804.txt" "N3804" ":"
The Elvis operator \f[CR]?:\f[R]
.LE
.H 3 "\&Embedded C"
.P
SDCC supports objects in named address spaces and to some degree pointers to such objects. The support for fixed-point math in SDCC is inconsistent with the standard. Other parts of the standard are not supported.
.H 3 "\&Implementation-defined behavior"
.H 4 "\&Translation"
.BL
.LI
Diagnostics are output to stderr, in the format <filename>:<line-number>: <warning|error> <diagnostic-number>: <diagnostic-description>
.LI
Nonempty sequences of white-space are retained in translation phase 3.
.LE
.H 4 "\&Environment"
.BL
.LI
When no custom crt0 is used (i.e. the port does not support a custom crt0, or the option \f[B]\c
.IND "--no-std-crt0"
\f[R] is not used), the name and type of the function called at program startup is \f[CR]void main(void)\f[R] or \f[CR]int main(void)\f[R]. Otherwise the name and type depends on the custom crt0.
.LI
See SDCC source (and your own code if you use a custom crt0 for a target that supports it) for any other information on the environment.
.LE
.H 4 "\&Identifiers"
.BL
.LI
See the compiler and assembler source for information on characters that may appear in identifiers and on the number of significant initial characters.
.LE
.H 4 "\&Characters"
.BL
.LI
There are 8 bits in a byte.
.LI
Values of members of the execution character set: TODO.
.LI
Values of members of the execution character set for escape sequences: TODO.
.LI
Value of char with something weird stored in it: TODO.
.LI
unsigned char has the same range, representation and behavior as \[lq]plain\[rq] char (unless \-\f[B]\&\f[R]\-fsigned-char\f[B]\c
.IND "--fsigned-char"
\f[R] is used).
.LI
See the SDCC source for further information on character sets.
.LE
.H 4 "\&Integers"
.BL
.LI
There are no extended integer types.
.LE
.H 4 "\&Floating point"
.BL
.LI
See the implementation (soft float library) for any information on floating point.
.LE
.H 4 "\&Arrays and Pointers"
.BL
.LI
For the result of converting between pointers and integers see the SDCC source code.
.LI
For the size of the result of subtracting two pointers to elements of the same array see the SDCC source code.
.LE
.H 4 "\&Hints"
.BL
.LI
The extend to which suggestions made by register are effective depends on the target.
.LI
SDCC will inline functions if and only if they are declared using inline and do not have variable arguments.
.LE
.H 4 "\&Structures, unions, enumerations and bit-fields"
.BL
.LI
A plain int bit-field is treated as a signed int bit-field.
.LI
There are no allowed bit-field types other than _Bool, int, signed int, unsigned int and the bit-precise integer types.
.LI
Atomic types are not permitted for bit-fields.
.LI
If a bit-fields does not fit into the same byte as the previous bit-fields, it starts on the next byte.
.LI
bit-fields are allocated in the same order as they appear in the source.
.LI
Non-bit-field members of structures are aligned on byte boundaries (i.e. there are no padding bytes).
.LI
structures do not need to have named members.
.LI
For enumerations, the compatible type is the first from the following list that fits the constants: unsigned char, signed char, unsigned int, signed int, unsigned long int, signed long int, unsigned long long int, signed long long int.
.LE
.H 4 "\&Qualifiers"
.BL
.LI
SDCC shall preserve all volatile reads and writes, but does not guarantee them to be atomic (except for atomic types and volatile sig_atomic_t).
.LI
Function types may not be qualified.
.LE
.H 4 "\&Preprocessing directives"
.BL
.LI
See the preprocessor source for information on preprocessing directives.
.LE
.H 4 "\&Library functions"
.BL
.LI
See the respective library headers for the library functions available.
.LI
See assert.h and library source for the format of the diagnostic printed by the assert macro.
.LI
There is no fegetexceptflag function.
.LI
There is no feraiseexcept function.
.LI
There is no setlocale function.
.LI
There is no FLT_EVAL_METHOD macro.
.LI
There is no DEC_EVAL_METHOD macro.
.LI
There are no non-required domain errors for mathematics functions.
.LI
See library source for the values returned by mathematical functions on domain error and pole error (and anything else on mathematical functions and floating type encodings).
.LI
calloc, malloc and realloc return a pointer to an allocated object when the requested size is zero.
.LI
See library headers for the null-pointer constant to which NULL expands.
.LI
See library headers and source for anything else about the library.
.LE
.H 4 "\&Architecture"
.BL
.LI
See the respective library headers for the values or expressions for macros specified in float.h, limits.h, stdint.h.
.LI
Multithreading is not supported.
.LI
The number of bytes in any object is the minimum allowed (except for some padding bits on bit-fields), byte order depends on the target.
.LI
No extended alignments are supported.
.LI
There are no valid alignments other than those returned by _Alignof.
.LI
sizeof always returns the smallest value allowed assuming an 8-bit char. _Alignof always returns 0.
.LE
.H 2 "\&Compiling"
.H 3 "\&Single Source File Projects"
.P
For single source file 8051 projects the process is very simple. Compile your programs with the following command \f[HB]"sdcc sourcefile.c".\f[R] This will compile, assemble and link your source file. Output files are as follows:
.BL
.LI
sourcefile.asm\c
.IND "<file>.asm"
 \- Assembler source\c
.IND "Assembler source"
 file created by the compiler
.LI
sourcefile.lst\c
.IND "<file>.lst"
 \- Assembler listing\c
.IND "Assembler listing"
 file created by the Assembler
.LI
sourcefile.rst\c
.IND "<file>.rst"
 \- Assembler listing\c
.IND "Assembler listing"
 file updated with linkedit information, created by linkage editor
.LI
sourcefile.sym\c
.IND "<file>.sym"
 \- symbol listing\c
.IND "Symbol listing"
 for the sourcefile, created by the assembler
.LI
sourcefile.rel\c
.IND "<file>.rel"
 \- Object file\c
.IND "Object file"
 created by the assembler, input to Linkage editor
.LI
sourcefile.map\c
.IND "<file>.map"
 \- The memory map\c
.IND "Memory map"
 for the load module, created by the Linker
.LI
sourcefile.mem\c
.IND "<file>.mem"
 \- A file with a summary of the memory usage
.LI
sourcefile.ihx\c
.IND "<file>.ihx"
 \- The load module in Intel hex format\c
.IND "Intel hex format"
 (you can select the Motorola S19 format\c
.IND "Motorola S19 format"
 with \-\&\-out-fmt-s19\c
.IND "--out-fmt-s19"
\&. If you need another format you might want to use \f[HI]objdump\f[R]\c
.IND "objdump (tool)"
 or \f[HI]srecord\f[R]\c
.IND "srecord (bin, hex, ... tool)"
 \- see also section \c
.GETHN subsec:Postprocessing-the-Intel Rf16
.Rd Rf16
\c
.GETPN subsec:Postprocessing-the-Intel Rf16p
\*[Rf16] on page \*[Rf16p]). Both formats are documented in the documentation of srecord\c
.IND "srecord (bin, hex, ... tool)"
.LI
sourcefile.adb\c
.IND "<file>.adb"
 \- An intermediate file containing debug information needed to create the .cdb file (with \-\&\-debug\c
.IND "--debug"
)
.LI
sourcefile.cdb\c
.IND "<file>.cdb"
 \- An optional file (with \-\&\-debug) containing debug information. The format is documented in cdbfileformat.pdf
.LI
sourcefile.omf\c
.IND "<file>.omf"
 \- An optional AOMF or AOMF51\c
.IND "AOMF, AOMF51"
 \c
.SETR OMF-file
file containing debug information (generated with option \-\&\-debug). The (Intel) \f[I]a\f[R]bsolute \f[I]o\f[R]bject \f[I]m\f[R]odule \f[I]f\f[R]ormat is a subformat of the OMF51 format and is commonly used by third party tools (debuggers\c
.IND "Debugger"
, simulators, emulators).
.LI
sourcefile.dump*\c
.IND "<file>.dump*"
 \- Dump file to debug the compiler it self (generated with option \-\&\-dumpall) (see section \c
.GETHN subsec:Intermediate-Dump-Options Rf17
.Rd Rf17
\*[Rf17]\  and section \c
.GETHN subsec:The-anatomy-of Rf18
.Rd Rf18
\*[Rf18]\ \[lq]Anatomy of the compiler\[rq]).
.LE
.H 3 "\&Postprocessing the Intel Hex file"
.IND "Intel hex format"
.SETR subsec:Postprocessing-the-Intel
.P
In most cases this won't be needed but the Intel Hex file\c
.IND "<file>.ihx"
 which is generated by SDCC might include lines of varying length and the addresses within the file are not guaranteed to be strictly ascending. If your toolchain or a bootloader does not like this you can use the tool \f[CR]packihx\f[R]\c
.IND "packihx (tool)"
 which is part of the SDCC distribution: \c
.sp
 \f[HB]packihx sourcefile.ihx >sourcefile.hex\f[R]\c
.sp
The separately available \f[I]srecord\f[R]\c
.IND "srecord (bin, hex, ... tool)"
 package additionally allows to set undefined locations to a predefined value, to insert checksums\c
.IND "checksum"
 of various flavours (crc, add, xor) and to perform other manipulations (convert, split, crop, offset, ...). \c
.sp
\f[HB]srec_cat\ \ sourcefile.ihx \-intel\ \ \-o sourcefile.hex \-intel\c
.sp
\f[R]An example for a more complex command line\*F\c
.FS
the command backfills\c
.IND "backfill unused memory"
 unused memory with 0x12 and the overall 16 bit sum of the complete 64 kByte block is zero. If the program counter on an mcs51 runs wild the backfill pattern 0x12 will be interpreted as an \f[CR]lcall\f[R] to address \f[CR]0x1212\f[R] (where an emergency routine could sit).
.FE
 could look like:\c
.sp
\f[HB]\s[-2]srec_cat\ sourcefile.ihx \-intel\ \ \-fill 0x12 0x0000 0xfffe\ \-little-endian-checksum-negative 0xfffe 0x02 0x02\ \ \-o sourcefile.hex \-intel\s[0]\c
.sp
\f[R]The srecord package is available at \c
.URL "http://sourceforge.net/projects/srecord/" "" "."
.H 3 "\&Projects with Multiple Source Files"
.P
SDCC can compile only ONE file at a time. Let us for example assume that you have a project containing the following files:\c
.sp
foo1.c (contains some functions)\c
.br
foo2.c (contains some more functions)\c
.br
foomain.c (contains more functions and the function main)\c
.br
\s[-2]\c
.br
\s[0]The first two files will need to be compiled separately with the commands:\c
.sp
\f[HB]sdcc\ \-c\ foo1.c\f[R]\s[-2]\c
.br
\f[HB]\s[0]sdcc\ \-c\ foo2.c\f[R]\c
.sp
Then compile the source file containing the \f[I]main()\f[R] function and link\c
.IND "Linker"
 the files together with the following command:\c
.sp
\f[HB]sdcc\ foomain.c\ foo1.rel\ foo2.rel\f[R]\c
.IND "<file>.rel"
\c
.sp
Note that in this case, \f[B]the source file being compiled is always linked in first\f[R], regardless of its position in the command line. This can be problematic when a custom crt0 is supplied as object file. As an alternative to the above, \f[I]foomain.c\f[R] can be compiled separately, and the resulting object file can then be linked with the other object files using a separate command:\f[HB]\c
.sp
sdcc\ \-c\ foomain.c\c
.br
sdcc\ custom_crt0.rel\ foomain.rel\ foo1.rel\ foo2.rel\c
.sp
\f[R]\f[B]The file containing the main() function must be the first file specified in the command line\f[R], since the linkage editor processes object files in the order they are presented to it. The linker is invoked from SDCC using a script file with extension .lnk\c
.IND "<file>.lnk"
\&. You can view this file to troubleshoot linking problems such as those arising from missing libraries.
.H 3 "\&Projects with Additional Libraries"
.IND "Libraries"
.P
Some reusable routines may be compiled into a library, see the documentation for the assembler and linkage editor (which are in <installdir>/share/sdcc/doc) for how to create a \f[I].lib\c
.IND "<file>.lib"
\f[R] library file. Section \c
.GETHN subsec:Using-sdar-to Rf19
.Rd Rf19
\*[Rf19] below contains a minimal example. Libraries created in this manner can be included in the command line. Make sure you include the \-L <library-path> option to tell the linker where to look for these files if they are not in the current directory. Here is an example, assuming you have the source file \f[I]foomain.c\f[R] and a library \f[I]foolib.lib\f[R] in the directory \f[I]mylib\f[R] (if that is not the same as your current project):\c
.sp
\f[HB]sdcc foomain.c foolib.lib \-L mylib\c
.sp
\f[R]Note here that \f[I]mylib\f[R] must be an absolute path name.\c
.sp
The most efficient way to use libraries is to keep separate modules in separate source files. The lib file now should name all the modules.rel\c
.IND "<file>.rel"
 files. For an example see the standard library file \f[I]libsdcc.lib\f[R] in the directory <installdir>/share/lib/small.
.H 3 "\&Using sdar to Create and Manage Libraries"
.IND "sdar"
.SETR subsec:Using-sdar-to
.P
Support for sdar format libraries was introduced in SDCC 2.9.0.\f[B]\c
.sp
\f[R]Both the GNU and BSD ar format variants are supported by sdld linkers.\f[B]\c
.sp
\f[R]To create a library containing sdas object files, you should use the following sequence:\f[B]\c
.br
\f[R]
.P
\f[HB]sdar \-rc <library name>.lib <list of .rel files>\f[R]
.H 2 "\&Command Line Options"
.IND "Command Line Options"
.SETR sec:Command-Line-Options
.H 3 "\&Language dialect Options"
.VL 18n
.LI "\f[B]\-\&\-std-<arg>\f[R]"
Determine the language standard. For enhanced compatibility with other compilers, \f[B]\-\&\-std\f[R] can also be used with a single dash (i.e. \f[B]\-std\f[R]) and with \f[B]=\f[R] or \f[B]\|\f[R] (whitespace) as delimiter. The language standard, specified via \f[B]<arg>\f[R], can be one of the following:
.VL 18n
.LI "\f[B]c90\f[R]"
\c
.IND "--std-c89"
 Follow the ISO/IEC 9899 First Edition standard (ANSI C89 / ISO C90). Alternative spellings: \f[B]c89\f[R], \f[B]iso9899:1990\f[R]
.LI "\f[B]c94\f[R]"
\c
.IND "--std-sdcc99"
 Follow the ISO/IEC 9899 First Edition standard as modified in amendment 1. Alternative spelling: \f[B]c95, iso9899:199409\f[R]
.LI "\f[B]c99\f[R]"
\c
.IND "--std-sdcc99"
 Follow the ISO/IEC 9899 Second Edition standard (ISO C99). Alternative spelling: \f[B]iso9899:1999\f[R]
.LI "\f[B]c11\f[R]"
\c
.IND "--std-sdcc11"
 Follow the ISO/IEC 9899 Third Edition standard (ISO C11). Alternative spelling: \f[B]iso9899:2011\f[R]
.LI "\f[B]c17\f[R]"
\c
.IND "--std-sdcc17"
 Follow the ISO/IEC 9899 Fourth Edition standard (ISO C17). Alternative spellings: \f[B]iso9899:2017\f[R], \f[B]c18\f[R], \f[B]iso9899:2018\f[R]
.LI "\f[B]c23\f[R]"
\c
.IND "--std-sdcc23"
 Follow the ISO/IEC 9899 Fifth Edition standard (ISO C23). Alternative spelling: \f[B]c2x\f[R]
.LI "\f[B]c2y\f[R]"
\c
.IND "--std-sdcc2y"
 Enable features anticipated for the Sixth Edition standard (currently abbreviated ISO C2y).
.LI "\f[B]sdcc90\f[R]"
\c
.IND "--std-sdcc89"
 Generally follow ANSI C89 / ISO C90, but allow some SDCC behaviour that conflicts with the standard. Alternative spelling: \f[B]sdcc89\f[R]
.LI "\f[B]sdcc99\f[R]"
\c
.IND "--std-sdcc99"
 Generally follow ISO C99, but allow some SDCC behaviour that conflicts with the standard.
.LI "\f[B]sdcc11\f[R]"
\c
.IND "--std-sdcc11"
 Generally follow ISO C11, but allow some SDCC behaviour that conflicts with the standard (default).
.LI "\f[B]sdcc17\f[R]"
\c
.IND "--std-sdcc17"
 Generally follow ISO C17, but allow some SDCC behaviour that conflicts with the standard. Alternative spelling: \f[B]sdcc18\f[R]
.LI "\f[B]sdcc23\f[R]"
\c
.IND "--std-sdcc23"
 Generally follow ISO C23, but allow some SDCC behaviour that conflicts with the standard. Alternative spelling: \f[B]sdcc2x\f[R]
.LI "\f[B]sdcc2y\f[R]"
\c
.IND "--std-sdcc2y"
 Generally follow ISO C2y, but allow some SDCC behaviour that conflicts with the standard.
.LE
.LI "\f[B]\-\&\-fdollars-in-identifiers\f[R]"
\c
.IND "--fdollars-in-identifiers"
Permit '$' as an identifier character.
.LI "\f[B]\-\&\-fsigned-char\f[R]"
\c
.IND "--fsigned-char"
By default char is \f[CR]unsigned\f[R]. To set the signedness for characters to signed, use the option \-\f[B]\&\f[R]\-fsigned-char. If this option is not set and no signedness keyword (unsigned/signed) is given, a char will be unsigned. All other types are unaffected.
.LI "\f[B]\-\&\-const-stringlit\f[R]"
\c
.IND "--const-stringlit"
Make string literals const.
.LE
.H 3 "\&Processor Selection Options"
.IND "Options processor selection"
.IND "Processor selection options"
.VL 18n
.LI "\f[B]\-mmcs51\f[R]"
\c
.IND "-mmcs51"
Generate code for the Intel MCS51\c
.IND "MCS51"
 family of processors. This is the default processor target.
.LI "\f[B]\-mds390\f[R]"
\c
.IND "-mds390"
Generate code for the Dallas DS80C390\c
.IND "DS80C390"
 processor.
.LI "\f[B]\-mds400\f[R]"
\c
.IND "-mds400"
Generate code for the Dallas DS80C400\c
.IND "DS80C400"
 processor.
.LI "\f[B]\-mhc08\f[R]"
\c
.IND "-mhc08"
Generate code for the Freescale/Motorola HC08 (aka 68HC08) \c
.IND "HC08"
 family of processors.
.LI "\f[B]\-ms08\f[R]"
\c
.IND "-ms08"
Generate code for the Freescale/Motorola S08 (aka 68HCS08, HCS08, CS08) \c
.IND "S08"
 family of processors.
.LI "\f[B]\-mz80\f[R]"
\c
.IND "-mz80"
Generate code for the Zilog Z80\c
.IND "Z80"
 family of processors.
.LI "\f[B]\-mz80n\f[R]"
\c
.IND "-mz80n"
Generate code for the Z80N\c
.IND "Z80N"
 processor.
.LI "\f[B]\-mz180\f[R]"
\c
.IND "-mz180"
Generate code for the Zilog Z180\c
.IND "Z180"
 family of processors.
.LI "\f[B]\-mi8080\f[R]"
\c
.IND "-mi8080"
Generate code for the Intel 8080\c
.IND "8080"
 processor.
.LI "\f[B]\-mi8085\f[R]"
\c
.IND "-mi8085"
Generate code for the Intel 8085\c
.IND "8085"
 processor. See \c
.GETHN sec:Intel-8080-8085 Rf20
.Rd Rf20
\*[Rf20].
.LI "\f[B]\-mr2k\f[R]"
\c
.IND "-mr2k"
Generate code for the Rabbit 2000 processor.
.LI "\f[B]\-mr2ka\f[R]"
\c
.IND "-mr2ka"
Generate code for the Rabbit 2000A / Rabbit 3000 family of processors.
.LI "\f[B]\-mr3ka\f[R]"
\c
.IND "-mr3ka"
Generate code for the Rabbit 3000A processor.
.LI "\f[B]\-mr4k\f[R]"
\c
.IND "-mr3ka"
Generate code for the Rabbit 4000 processor.
.LI "\f[B]\-mr5k\f[R]"
\c
.IND "-mr3ka"
Generate code for the Rabbit 5000 processor.
.LI "\f[B]\-mr6k\f[R]"
\c
.IND "-mr3ka"
Generate code for the Rabbit 6000 processor.
.LI "\f[B]\-msm83\f[R]"
\c
.IND "-msm83"
Generate code for the Sharp SM83\c
.IND "sm83 (GameBoy Z80)"
 processor.
.LI "\f[B]\-mtlcs90\f[R]"
\c
.IND "-mtlcs90"
Generate code for the Toshiba TLCS-90 processor.
.LI "\f[B]\-mez80\f[R]"
\c
.IND "-mez80"
Generate code for the Zilog eZ80 processor.
.LI "\f[B]\-mr800\f[R]"
\c
.IND "-mr800"
Generate code for the ASCII R800 processor.
.LI "\f[B]\-mstm8\f[R]"
\c
.IND "-mstm8"
Generate code for the STMicroelectronics STM8 family of processors.
.LI "\f[B]\-mpdk13\f[R]"
\c
.IND "-mpdk13"
Generate code for Padauk processors with 13 bit wide program memory.
.LI "\f[B]\-mpdk14\f[R]"
\c
.IND "-mpdk14"
Generate code for Padauk processors with 14 bit wide program memory.
.LI "\f[B]\-mpdk15\f[R]"
\c
.IND "-mpdk15"
Generate code for Padauk processors with 15 bit wide program memory.
.LI "\f[B]\-mpic14\f[R]"
\c
.IND "-mpic14"
Generate code for the Microchip PIC 14\c
.IND "PIC14"
\-bit processors (p16f84 and variants. In development, not complete).
.LE
.P
.VL 18n
.LI "\f[B]\-mpic16\f[R]"
\c
.IND "-mpic16"
Generate code for the Microchip PIC 16\c
.IND "PIC16"
\-bit processors (p18f452 and variants. In development, not complete).
.LI "\f[B]\-mmos6502\f[R]"
\c
.IND "-mmos6502"
Generate code for the original MOS Technology NMOS 6502 processor and compatible derivatives including the 6510 and 8502.
.LI "\f[B]\-mmos65c02\f[R]"
\c
.IND "-mmos65c02"
Generate code for the CMOS Rockwell/WDC 65C02.
.LE
.P
SDCC inspects the program name it was called with so the processor family can also be selected by renaming the sdcc binary (to f.e. z80-sdcc) or by calling SDCC from a suitable link. Option \-m has higher priority than setting from program name.
.H 3 "\&Preprocessor Options"
.IND "Options preprocessor"
.IND "Preprocessor" "Options"
.IND "sdcpp (preprocessor)"
.P
SDCC uses \f[I]sdcpp\f[R], an adapted version of the GNU Compiler Collection\c
.IND "gcc (GNU Compiler Collection)"
 preprocessor \f[I]cpp\f[R]\c
.IND "cpp|see{sdcpp}"
 (\f[I]gcc\f[R] \c
.URL "http://gcc.gnu.org/" "" ")."
If you need more dedicated options than those listed below please refer to the GCC\ CPP\ Manual at \c
.URL "http://www.gnu.org/software/gcc/onlinedocs/" "" "."
.VL 18n
.LI "\f[B]\-I<path>\f[R]"
\c
.IND "-I<path>"
The additional location where the preprocessor will look for <..h> or \[lq]..h\[rq] files.
.LI "\f[B]\-D<macro[=value]>\f[R]"
\c
.IND "-D<macro[=value]>"
Command line definition of macros. Passed to the preprocessor.
.LI "\f[B]\-M\f[R]"
\c
.IND "-M"
Tell the preprocessor to output a rule suitable for make describing the dependencies of each object file. For each source file, the preprocessor outputs one make-rule whose target is the object file name for that source file and whose dependencies are all the files `#include'd in it. This rule may be a single line or may be continued with `\[rs]'\-newline if it is long. The list of rules is printed on standard output instead of the preprocessed C program. `-M' implies `-E\c
.IND "-E"
'.
.LI "\f[B]\-C\f[R]"
\c
.IND "-C"
Tell the preprocessor not to discard comments. Used with the `-E' option.
.LI "\f[B]\-MM\f[R]"
\c
.IND "-MM"
Like `-M' but the output mentions only the user header files included with `#include \[lq]file"'. System header files included with `#include <file>' are omitted.
.LI "\f[B]\-Aquestion(answer)\f[R]"
\c
.IND "-Aquestion(answer)"
Assert the answer answer for question, in case it is tested with a preprocessor conditional such as `#if #question(answer)'. `-A-' disables the standard assertions that normally describe the target machine.
.LI "\f[B]\-Umacro\f[R]"
\c
.IND "-Umacro"
Undefine macro macro. `-U' options are evaluated after all `-D' options, but before any `-include' and `-imacros' options.
.LI "\f[B]\-dM\f[R]"
\c
.IND "-dM"
Tell the preprocessor to output only a list of the macro definitions that are in effect at the end of preprocessing. Used with the `-E' option.
.LI "\f[B]\-dD\f[R]"
\c
.IND "-dD"
Tell the preprocessor to pass all macro definitions into the output, in their proper sequence in the rest of the output.
.LI "\f[B]\-dN\f[R]"
\c
.IND "-dN"
Like `-dD' except that the macro arguments and contents are omitted. Only `#define name' is included in the output.
.LI "\f[B]\-Wp\ preprocessorOption[,preprocessorOption]\f[R]..."
\c
.IND "-Wp preprocessorOption[,preprocessorOption]"
Pass the preprocessorOption to the preprocessor \f[CR]sdcpp\f[R]\c
.IND "sdcpp (preprocessor)"
\&.
.LE
.H 3 "\&Optimization Options"
.IND "Options optimization"
.IND "Optimization options"
.VL 18n
.LI "\-\&\-\f[B]no\f[R]purity"
\c
.IND "--purity"
Disable optimization based on functions being pure.
.LI "\f[B]\-\&\-nogcse\f[R]"
\c
.IND "--nogcse"
Will not do global common subexpression elimination, this option may be used when the compiler creates undesirably large stack/data spaces to store compiler temporaries (\f[I]s\f[R]pill \f[I]loc\f[R]ations, sloc\c
.IND "sloc (spill location)"
). A warning message will be generated when this happens and the compiler will indicate the number of extra bytes it allocated. It is recommended that this option NOT be used, #pragma\ nogcse\c
.IND "#pragma nogcse"
 can be used to turn off global subexpression elimination\c
.IND "Subexpression elimination"
 for a given function only.
.LI "\-\&\-\f[B]nolospre\f[R]"
\c
.IND "--nolospre"
Disable lospre. lospre is an advanced redundancy elimination technique, essentially an improved variant of global subexpression elimination.
.LI "\f[B]\-\&\-noinvariant\f[R]"
\c
.IND "--noinvariant"
Will not do loop invariant optimizations, this may be turned off for reasons explained for the previous option. For more details of loop optimizations performed see Loop Invariants in section \c
.GETHN subsec:Loop-Optimizations Rf21
.Rd Rf21
\*[Rf21]. It is recommended that this option NOT be used, #pragma\ noinvariant\c
.IND "#pragma noinvariant"
 can be used to turn off invariant optimizations for a given function only.
.LI "\f[B]\-\&\-noinduction\f[R]"
\c
.IND "--noinduction"
Will not do loop induction optimizations, see section strength reduction for more details. It is recommended that this option is NOT used, #pragma\ noinduction\c
.IND "#pragma noinduction"
 can be used to turn off induction optimizations for a given function only.
.LI "\f[B]\-\&\-noloopreverse\f[R]"
\c
.IND "--noloopreverse"
Will not do loop reversal \c
.IND "Loop reversing"
optimization.
.LI "\-\&\-\f[B]nolabelopt\f[R]"
\c
.IND "--nolabelopt"
Will not optimize labels (makes the dumpfiles more readable).
.LI "\f[B]\-\&\-no-xinit-opt\f[R]"
\c
.IND "--no-xinit-opt"
Will not memcpy initialized data from code space into xdata space. This saves a few bytes in code space if you don't have initialized data\c
.IND "Variable initialization"
\&.
.LI "\f[B]\-\&\-nooverlay\f[R]"
\c
.IND "--nooverlay"
 The compiler will not overlay parameters and local variables of any function, see section Parameters and local variables for more details.
.LI "\f[B]\-\&\-no-peep\f[R]"
\c
.IND "--no-peep"
Disable peep-hole optimization with built-in rules.
.LI "\f[B]\-\&\-peep-file\f[R]\ <filename>"
\c
.IND "--peep-file"
This option can be used to use additional rules to be used by the peep hole optimizer. See section \c
.GETHN subsec:Peephole-Optimizer Rf22
.Rd Rf22
\*[Rf22]\ Peep Hole optimizations for details on how to write these rules.
.LI "\f[B]\-\&\-peep-asm\f[R]"
\c
.IND "--peep-asm"
Pass the inline assembler code through the peep hole optimizer. This can cause unexpected changes to inline assembler code, please go through the peephole optimizer\c
.IND "Peephole optimizer"
 rules defined in the source file tree '<target>/peeph.def' before using this option.
.LI "\f[B]\-\&\-peep-return\f[R]"
\c
.IND "--peep-return"
Let the peep hole optimizer do return optimizations. This is the default without \f[B]\-\&\-\f[R]debug\f[B]\c
.IND "--debug"
\f[R].
.LI "\f[B]\-\&\-no-peep-return\f[R]"
\c
.IND "--no-peep-return"
Do not let the peep hole optimizer do return optimizations. This is the default with \f[B]\-\&\-\f[R]debug\f[B]\c
.IND "--debug"
\f[R].
.LI "\f[B]\-\&\-opt-code-speed\f[R]"
\c
.IND "--opt-code-speed"
The compiler will optimize code generation towards fast code, possibly at the expense of code size.
.LI "\f[B]\-\&\-opt-code-size\f[R]"
\c
.IND "--opt-code-size"
The compiler will optimize code generation towards compact code, possibly at the expense of code speed.
.LI "\-\&\-\f[B]fomit-frame-pointer\f[R]"
\c
.IND "--fomit-frame-pointer"
Frame pointer will be omitted when the function uses no local variables. On the z80-related ports this option will result in the frame pointer always being omitted.
.LI "\-\&\-\f[B]max-allocs-per-node\f[R]"
\c
.IND "--max-allocs-per-node"
Setting this to a high value will result in increased compilation time (and increased memory use during compilation) and more optimized code being generated. Setting it to lower values speeds up compilation, but does not optimize as much. The default value is 3000. This option currently does not affect the mcs51, ds390, pic14 and pic16 ports.
.LI "\-\&\-\f[B]allow-unsafe-read\f[R]"
\c
.IND "--allow-unsafe-read"
Allow optimizations to generate unsafe reads. This will enable additional optimizations, but can result in spurious reads from undefined memory addresses, which can be harmful if the target system uses certain ways of doing memory-mapped I/O.
.LI "\-\&\-\f[B]nostdlibcall\f[R]"
\c
.IND "--nostdlibcall"
Disable the optimization of calls to the standard library.
.LI "\f[B]\-\&\-nosidechannels\f[R]"
\c
.IND "--nosidechannels"
Disable optimizations that are likely to introduce side-channels, which could leak information about the data being processed (in particular timing and energy-use side-channels). While SDCC can try to avoid introducing side-channels, the option cannot remove side-channels introduced by the programmer. Machine-independent code transformations affected by this option include:
.LE
.BL
.LI
The optimization of divisions of signed operands by powers of two into shifts is disabled.
.LI
When a switch statement has more than two cases, jump tables are preferred over match-and-jump sequences.
.LE
.P
Also see the documentation for the individual ports for port-specific details on side-channels.
.H 3 "\&Other Options"
.IND "Options other"
.VL 18n
.LI "\f[B]\-v\ \-\&\-version\f[R]"
\c
.IND "--version"
\c
.IND "-v"
displays the sdcc version.
.LI "\f[B]\-c\ \-\&\-compile-only\f[R]"
\c
.IND "--compile-only"
\c
.IND "-c"
will compile and assemble the source, but will not call the linkage editor.
.LI "\f[B]\-\f[R]\&\f[B]\-c1mode\f[R]"
\c
.IND "--c1mode"
reads the preprocessed source from standard input and compiles it. The file name for the assembler output must be specified using the \-o option.
.LI "\f[B]\-E\f[R]"
\c
.IND "-E"
Run only the C preprocessor\c
.IND "Preprocessor"
\&. Preprocess all the C source files specified and output the results to standard output.
.LI "\f[B]\-\&\-syntax-only\f[R]"
\c
.IND "--syntax-only"
Parse and verify syntax only, no output files are produced.
.LI "\f[B]\-o\ <path/file>\f[R]"
\c
.IND "-o <path/file>"
The output path where everything will be placed or the file name used for all generated output files. If the parameter is a path, it must have a trailing slash (or backslash for the Windows binaries) to be recognized as a path. Note for Windows users: if the path contains spaces, it should be surrounded by quotes. The trailing backslash should be doubled in order to prevent escaping the final quote, for example: \f[I]\-o \[lq]F:\[rs]Projects\[rs]test3\[rs]output 1\[rs]\[rs]\[rq]\f[R] or put after the final quote, for example: \f[I]\-o \[lq]F:\[rs]Projects\[rs]test3\[rs]output 1\[rq]\[rs]\f[R]. The path using slashes for directory delimiters can be used too, for example: \f[I]\-o \[lq]F:/Projects/test3/output 1/\[rq]\f[R].
.LI "\f[B]\-x\ <type>\f[R]"
\c
.IND "-x <type>"
The specified type overrides the file type that SDCC detected based on the file name extension. The currently supported options are \[lq]c\[rq], \[lq]c-header\[rq] and \[lq]none\[rq]. The option \[lq]none\[rq] restores the default behavior.
.LI "\f[B]\-\&\-stack-auto\f[R]"
\c
.IND "--stack-auto"
All functions in the source file will be compiled as \f[I]reentrant\f[R]\c
.IND "reentrant"
, i.e. the parameters and local variables will be allocated on the stack\c
.IND "stack"
\&. See section \c
.GETHN sec:Parameters-and-Local-Variables Rf23
.Rd Rf23
\*[Rf23] Parameters and Local Variables for more details. If this option is used all source files in the project should be compiled with this option. It automatically implies \-\f[B]\&\f[R]\-int-long-reent and \-\f[B]\&\f[R]\-float-reent.
.LI "\f[B]\-\&\-callee-saves\f[R]"
\c
.IND "--callee-saves"
\c
.SETR opt:--callee-saves-function1-.function2--.function3-...
function1[,function2][,function3].... The compiler by default uses a caller saves convention for register saving across function calls, however this can cause unnecessary register pushing and popping when calling small functions from larger functions. This option can be used to switch the register saving convention for the function names specified. The compiler will not save registers when calling these functions, no extra code will be generated at the entry and exit (function prologue\f[B]\c
.IND "function prologue"
\f[R] and epilogue\f[B]\c
.IND "function epilogue"
\f[R]) for these functions to save and restore the registers used by these functions, this can SUBSTANTIALLY reduce code and improve run time performance of the generated code. In the future the compiler (with inter procedural analysis) will be able to determine the appropriate scheme to use for each function call. DO NOT use this option for built-in functions such as _mulint..., if this option is used for a library function the appropriate library function needs to be recompiled with the same option. If the project consists of multiple source files then all the source file should be compiled with the same \-\&\-callee-saves option string. Also see #pragma\ callee_saves \c
.IND "#pragma callee_saves"
 \c
.GETPN ite:callee_saves-function1-.function2-.function3...---- Rf24
on page \*[Rf24].
.LI "\f[B]\-\&\-all-callee-saves\f[R]"
\c
.IND "--all-callee-saves"
Function of \-\&\-callee-saves will be applied to all functions by default.
.LI "\f[B]\-\&\-debug\f[R]"
\c
.IND "--debug"
When this option is used the compiler will generate debug information. By default, the debug information collected in a file with .cdb extension can be used with the SDCDB. For more information see documentation for SDCDB. For the mcs51 port, the linker also writes a file with a .omf extension, the debug information in AOMF51\c
.IND "AOMF, AOMF51"
 format which is commonly used by third party tools. When \-\&\-out-fmt-elf is used, the debug information is in DWARF format instead.
.LI "\f[B]\-S\f[R]"
\c
.IND "-S"
Stop after the stage of compilation proper; do not assemble. The output is an assembler code file for the input file specified.
.LI "\f[B]\-\&\-int-long-reent\f[R]"
\c
.IND "--int-long-reent"
Integer (16 bit) and long (32 bit) libraries have been compiled as reentrant. Note by default these libraries are compiled as non-reentrant. See section Installation for more details.
.LI "\f[B]\-\&\-cyclomatic\f[R]"
\c
.IND "--cyclomatic"
This option will cause the compiler to generate an information message for each function in the source file. The message contains some \f[I]important\f[R] information about the function. The number of edges and nodes the compiler detected in the control flow graph of the function, and most importantly the \f[I]cyclomatic complexity\c
.IND "Cyclomatic complexity"
\f[R] see section on Cyclomatic Complexity for more details.
.LI "\f[B]\-\&\-float-reent\f[R]"
\c
.IND "--float-reent"
Floating point library is compiled as reentrant\c
.IND "reentrant"
\&. See section Installation for more details.
.LI "\f[B]\-\&\-nostdinc\f[R]"
\c
.IND "--nostdinc"
This will prevent the compiler from passing on the default include path to the preprocessor.
.LI "\f[B]\-\&\-nostdlib\f[R]"
\c
.IND "--nostdlib"
This will prevent the compiler from passing on the default library\c
.IND "Libraries"
 path to the linker.
.LI "\f[B]\-\&\-norestartseqatomics\f[R]"
\c
.IND "--norestartseqatomics"
Omit restartable sequence support routines for atomics; can reduce code size, but disables support for atomic that use these support routines; trying to use such atomics will then result in a diagnostic.
.LI "\f[B]\-\&\-verbose\f[R]"
\c
.IND "--verbose"
Shows the various actions the compiler is performing.
.LI "\f[B]\-V\f[R]"
\c
.IND "-V"
Shows the actual commands the compiler is executing.
.LI "\f[B]\-\&\-no-c-code-in-asm\f[R]"
\c
.IND "--no-c-code-in-asm"
Hides your ugly and inefficient c-code from the asm file, so you can always blame the compiler :)
.LI "\f[B]\-\&\-no-peep-comments\f[R]"
\c
.IND "--no-peep-comments"
Don't include peep-hole comments in the generated asm files even if \-\f[B]\&\f[R]\-fverbose-asm option is specified.
.LI "\f[B]\-\&\-i-code-in-asm\f[R]"
\c
.IND "--i-code-in-asm"
Include i-codes in the asm file. Sounds like noise but is helpful for debugging the compiler itself.
.LI "\f[B]\-\&\-less-pedantic\f[R]"
\c
.IND "pedantic"
\c
.IND "--less-pedantic"
\c
.SETR opt:--less-pedantic
Disable some of the more pedantic warnings\c
.IND "Warnings"
\&. For more details, see the less_pedantic pragma \c
.GETPN ite:less_pedantic Rf25
on page \*[Rf25].
.LI "\f[B]\-\&\-disable-warning\ <nnnn>\f[R]"
\c
.IND "--disable-warning"
Disable specific warning with number <nnnn>.
.LI "\f[B]\-\&\-Werror\f[R]"
\c
.IND "--Werror"
Treat all warnings as errors.
.LI "\f[B]\-\&\-print-search-dirs\f[R]"
\c
.IND "--print-search-dirs"
Display the directories in the compiler's search path
.LI "\f[B]\-\&\-vc\f[R]"
\c
.IND "--vc"
Display errors and warnings using MSVC style, so you can use SDCC with the visual studio IDE\c
.IND "IDE"
\&. With SDCC both offering a GCC-like (the default) and a MSVC-like\c
.IND "MSVC output style"
 output style, integration into most programming editors should be straightforward.
.LI "\f[B]\-\&\-use-stdout\f[R]"
\c
.IND "--use-stdout"
Send errors and warnings to stdout instead of stderr.
.LI "\f[B]\-Wa\ asmOption[,asmOption]\f[R]..."
\c
.IND "-Wa asmOption[,asmOption]"
Pass the asmOption to the assembler\c
.IND "Options assembler"
\c
.IND "Assembler options"
\&. See file sdcc/sdas/doc/asmlnk.txt for assembler options.cd
.LI "\f[B]\-\&\-codeseg\f[R]\ <Name>"
\c
.IND "--codeseg <Value>"
\c
.SETR lyx:-codeseg
The name to be used for the code\c
.IND "code"
 segment, default CSEG. This is useful if you need to tell the compiler to put the code in a special segment so you can later on tell the linker to put this segment in a special place in memory. Can be used for instance when using bank switching to put the code in a bank.
.LI "\f[B]\-\&\-constseg\f[R]\ <Name>"
\c
.IND "--constseg <Value>"
The name to be used for the const\c
.IND "const"
 segment, default CONST. This is useful if you need to tell the compiler to put the const data in a special segment so you can later on tell the linker to put this segment in a special place in memory. Can be used for instance when using bank switching to put the const data in a bank.
.LI "\f[B]\-\&\-more-pedantic\f[R]"
\c
.IND "--more-pedantic"
\c
.IND "pedantic"
Actually this is \f[BI]not\f[R] a SDCC compiler option but if you want \f[I]more\f[R] warnings you can use a separate tool dedicated to syntax checking like splint\c
.SETR opt:more-pedantic-SPLINT
\c
.IND "lint (syntax checking tool)"
 \c
.URL "http://www.splint.org" "" "."
To make your source files parseable by splint you will have to include \f[HR]lint.h\f[R]\c
.IND "splint (syntax checking tool)"
 in your source file and add brackets around extended keywords (like \f[HR]\[lq]__at\ \f[HB](\f[HR]0xab\f[HB])\f[HR]\[rq]\f[R] and \f[HR]\[lq]__interrupt\ (2)\[rq]\f[R]). \c
.br
Splint has an excellent on line manual at \c
.URL "http://www.splint.org/manual/" ""
 and it's capabilities go beyond pure syntax checking. You'll need to tell splint the location of SDCC's include files so a typical command line could look like this: \c
.br
\f[HR]splint\ \-I\ /usr/local/share/sdcc/include/mcs51/\ \ myprogram.c\f[R]
.LI "\f[B]\-\&\-use-non-free\f[R]"
\c
.IND "--use-non-free"
\c
.SETR opt:--use-non-free
Search / include non-free licensed libraries and header files, located under the non-free directory \- see section \c
.GETHN subsec:Search-Paths Rf26
.Rd Rf26
\*[Rf26]
.LE
.H 3 "\&Linker Options"
.IND "Options linker"
.IND "Linker options"
.VL 18n
.LI "\f[B]\-\f[R]\&\f[B]\-lib-path\f[R]\ <absolute"
\c
.IND "--lib-path <path>"
path to additional libraries> This option is passed to the linkage editor's additional libraries\c
.IND "Libraries"
 search path. The path name must be absolute. Additional library files may be specified in the command line. See section Compiling programs for more details.
.LI "\f[B]\-L\ \f[R]\ <absolute"
\c
.IND "-L <path>"
path to additional libraries> Same as above.
.LI "\f[B]\-\&\-xram-loc\f[R]\ <Value>"
\c
.IND "--xram-loc <Value>"
The start location of the external ram\c
.IND "__xdata (mcs51, ds390 named address space)"
, default value is 0. The value entered can be in Hexadecimal or Decimal format, e.g.: \-\&\-xram-loc 0x8000 or \-\&\-xram-loc 32768.
.LI "\f[B]\-\&\-code-loc\f[R]\ <Value>"
\c
.IND "--code-loc <Value>"
The start location of the code\c
.IND "code"
 segment, default value 0. Note when this option is used the interrupt vector table\c
.IND "interrupt vector table"
 is also relocated to the given address. The value entered can be in Hexadecimal or Decimal format, e.g.: \-\&\-code-loc 0x8000 or \-\&\-code-loc 32768.
.LI "\f[B]\-\&\-stack-loc\f[R]\ <Value>"
\c
.IND "--stack-loc <Value>"
The value entered can be in Hexadecimal or Decimal format, e.g. \-\&\-stack-loc 0x20 or \-\&\-stack-loc 32.
.P
For stm8, by default the stack is placed at the device-specific reset value. By using this option, the stack can be placed anywhere in the lower 16-bits of the stm8 memory space. This is particularly useful for working around the stack roll-over antifeature present in some stm8 devices.
.LI "\f[B]\-\&\-xstack-loc\f[R]\ <Value>"
\c
.IND "--xstack-loc <Value>"
By default the external stack\c
.IND "xstack"
 is placed after the __pdata\c
.IND "__pdata (mcs51, ds390 named address space)"
 segment. Using this option the xstack can be placed anywhere in the external memory space of the 8051. The value entered can be in Hexadecimal or Decimal format, e.g. \-\&\-xstack-loc 0x8000 or \-\&\-xstack-loc 32768. The provided value should not overlap any other memory areas such as the pdata or xdata segment and with enough space for the current application.
.LI "\f[B]\-\&\-data-loc\f[R]\ <Value>"
\c
.IND "--data-loc <Value>"
The start location of the internal ram data\c
.IND "__data (mcs51, ds390 named address space)"
 segment. The value entered can be in Hexadecimal or Decimal format, eg. \-\&\-data-loc 0x20 or \-\&\-data-loc 32. (By default, the start location of the internal ram data segment  is set as low as possible in memory, taking into account the used register banks and the bit segment at address 0x20. For example if register banks 0 and 1 are used without bit variables, the data segment will be set, if \-\&\-data-loc is not used, to location 0x10.)
.LI "\f[B]\-\&\-idata-loc\f[R]\ <Value>"
\c
.IND "--idata-loc <Value>"
The start location of the indirectly addressable internal ram\c
.IND "__idata (mcs51, ds390 named address space)"
 of the 8051, default value is 0x80. The value entered can be in Hexadecimal or Decimal format, eg. \-\&\-idata-loc 0x88 or \-\&\-idata-loc 136.
.LI "\f[B]\-\&\-bit-loc\f[R]\ <Value>"
The start location of the bit\c
.IND "bit"
 addressable internal ram of the 8051. This is \f[I]not\f[R] implemented yet. Instead an option can be passed directly to the linker: \-Wl\ \-bBSEG=<Value>.
.LI "\f[B]\-\&\-out-fmt-ihx\f[R]"
\c
.IND "--out-fmt-ihx"
The linker output (final object code) is in Intel Hex format.\c
.IND "Intel hex format"
 This is the default option. The format itself is documented in the documentation of srecord\c
.IND "srecord (bin, hex, ... tool)"
\&.
.LI "\f[B]\-\&\-out-fmt-s19\f[R]"
\c
.IND "--out-fmt-s19"
The linker output (final object code) is in Motorola S19 format\c
.IND "Motorola S19 format"
\&. The format itself is documented in the documentation of srecord.
.LI "\f[B]\-\&\-out-fmt-elf\f[R]"
\c
.IND "--out-fmt-s19"
\c
.IND "HC08" "Options" "--out-fmt-elf"
The linker output (final object code) is in ELF format\c
.IND "ELF format"
\&. (Currently only supported for the HC08\c
.IND "HC08"
, S08 and STM8 processors). When used with \-\&\-debug, the debug info is in DWARF format instead of CDB.
.LI "\f[B]\-Wl\ linkOption[,linkOption]\f[R]..."
\c
.IND "-Wl linkOption[,linkOption]"
\c
.SETR lyx:-Wl-option
Pass the linkOption to the linker. If a bootloader is used an option like \[lq]\-Wl\ \-bCSEG=0x1000\[rq] would be typical to set the start of the code segment. Either use the double quotes around this option or use no space (e.g. \-Wl-bCSEG=0x1000). See also #pragma constseg and #pragma codeseg in section\c
.GETHN sec:Pragmas Rf27
.Rd Rf27
\*[Rf27]. File sdcc/sdas/doc/asmlnk.txt has more on linker options.
.LE
.H 3 "\&MCS51 Options"
.IND "Options MCS51"
.IND "MCS51 options"
.VL 18n
.LI "\f[B]\-\&\-model-small\f[R]"
\c
.IND "--model-small"
Generate code for Small model programs, see section Memory Models for more details. This is the default model.
.LI "\f[B]\-\&\-model-medium\f[R]"
\c
.IND "--model-medium"
Generate code for Medium model programs, see section Memory Models for more details. If this option is used all source files in the project have to be compiled with this option. It must also be used when invoking the linker.
.LI "\f[B]\-\&\-model-large\f[R]"
\c
.IND "--model-large"
Generate code for Large model programs, see section Memory Models for more details. If this option is used all source files in the project have to be compiled with this option. It must also be used when invoking the linker.
.LI "\f[B]\-\&\-model-huge\f[R]"
\c
.IND "--model-huge"
Generate code for Huge model programs, see section Memory Models for more details. If this option is used all source files in the project have to be compiled with this option. It must also be used when invoking the linker.
.LI "\f[B]\-\&\-xstack\f[R]"
\c
.IND "--xstack"
Uses a pseudo stack in the __pdata\c
.IND "__pdata (mcs51, ds390 named address space)"
 area (usually the first 256 bytes in the external ram) for allocating variables and passing parameters. See section \c
.GETHN subsec:External-Stack Rf28
.Rd Rf28
\*[Rf28]\  External Stack for more details.
.LI "\f[B]\-\&\-iram-size\f[R]\ <Value>"
\c
.IND "--iram-size <Value>"
Causes the linker to check if the internal ram usage is within limits of the given value.
.LI "\f[B]\-\&\-xram-size\f[R]\ <Value>"
\c
.IND "--xram-size <Value>"
Causes the linker to check if the external ram usage is within limits of the given value.
.LI "\f[B]\-\&\-code-size\f[R]\ <Value>"
\c
.IND "--code-size <Value>"
Causes the linker to check if the code memory usage is within limits of the given value.
.LI "\f[B]\-\&\-stack-size\f[R]\ <Value>"
\c
.IND "--stack-size <Value>"
Causes the linker to check if there is at minimum <Value> bytes for stack.
.LI "\f[B]\-\&\-acall-ajmp\f[R]\ "
\c
.IND "--acall-ajmp"
Replaces the three byte instructions lcall/ljmp with the two byte instructions acall/ajmp. Only use this option if your code is in the same 2k block of memory. You may need to use this option for some 8051 derivatives which lack the lcall/ljmp instructions.
.LI "\f[B]\-\&\-no-ret-without-call\f[R]\ "
\c
.IND "--no-ret-without-call"
Causes the code generator to insert an extra lcall or acall instruction whenever it needs to use a ret instruction in a context other than a function returning. This option is needed when using the Infineon\c
.IND "Infineon"
 XC800 series microcontrollers to keep its Memory Extension Stack balanced.
.LE
.H 3 "\&DS390 / DS400 Options"
.IND "Options DS390"
.IND "DS390"
.VL 18n
.LI "\f[B]\-\&\-model-flat24\f[R]"
\c
.IND "DS390" "Options" "--model-flat24"
Generate 24-bit flat mode code. This is the one and only that the ds390 code generator supports right now and is default when using \f[I]\-mds390\f[R]. See section Memory Models for more details.
.LI "\f[B]\-\&\-protect-sp-update\f[R]"
\c
.IND "DS390" "Options" "--protect-sp-update"
disable interrupts during ESP:SP updates.
.LI "\f[B]\-\&\-stack-10bit\f[R]"
\c
.IND "DS390" "Options" "--stack-10bit"
Generate code for the 10 bit stack mode of the Dallas DS80C390 part. This is the one and only that the ds390 code generator supports right now and is default when using \f[I]\-mds390\f[R]. In this mode, the stack is located in the lower 1K of the internal RAM, which is mapped to 0x400000. Note that the support is incomplete, since it still uses a single byte as the stack pointer. This means that only the lower 256 bytes of the potential 1K stack space will actually be used. However, this does allow you to reclaim the precious 256 bytes of low RAM for use for the DATA and IDATA segments. The compiler will not generate any code to put the processor into 10 bit stack mode. It is important to ensure that the processor is in this mode before calling any re-entrant functions compiled with this option. In principle, this should work with the \f[I]\-\&\-stack-auto\c
.IND "--stack-auto"
\f[R] option, but that has not been tested. It is incompatible with the \f[I]\-\&\-xstack\c
.IND "--xstack"
\f[R] option. It also only makes sense if the processor is in 24 bit contiguous addressing mode (see the \f[I]\-\&\-model-flat24 option\f[R]).\f[B]\f[R]
.LI "\f[B]\-\&\-stack-probe\f[R]"
\c
.IND "DS390" "Options" "--stack-probe"
insert call to function __stack_probe at each function prologue.
.LI "\f[B]\-\&\-tini-libid\f[R]"
\c
.IND "DS390" "Options" "--tini-libid"
<nnnn> LibraryID used in \-mTININative.
.LI "\f[B]\-\&\-use-accelerator\f[R]"
\c
.IND "DS390" "Options" "--use-accelerator"
generate code for DS390 Arithmetic Accelerator.
.LE
.H 3 "\&Options common to all z80-related ports (z80, z80n, z180, r2k, r3ka, r4k, r5k, r6k, sm83, tlcs90, ez80, r800)"
.VL 18n
.LI "\f[B]\-\&\-no-std-crt0\f[R]"
\c
.IND "Z80" "Options" "--no-std-crt0"
When linking, skip the standard crt0.rel object file. You must provide your own crt0.rel for your system when linking.
.LI "\f[B]\-\&\-callee-saves-bc\f[R]"
\c
.IND "Z80" "Options" "--callee-saves-bc"
Force a called function to always save BC.
.LI "\f[B]\-\&\-codeseg\f[R]\ <Value>"
\c
.IND "Z80" "Options" "--codeseg <Value>"
Use <Value> for the code segment name.
.LI "\f[B]\-\&\-constseg\f[R]\ <Value>"
\c
.IND "Z80" "Options" "--constseg <Value>"
Use <Value> for the const segment name.
.LE
.H 3 "\&Z80 Options (apply to z80, z80n, z180, r2k, r3ka, tlcs90, ez80)"
.IND "Options Z80"
.IND "Z80"
.VL 18n
.LI "\f[B]\-\&\-portmode=\f[R]<Value>"
\c
.IND "Z80" "Options" "--portmode=<Value>"
Determinate PORT I/O mode (<Value> is z80 or z180).
.LI "\f[B]\-\&\-asm=\f[R]<Value>"
\c
.IND "Z80" "Options" "--asm=<Value>"
Define assembler name (<Value> is rgbds, sdasz80, isas or z80asm).
.LI "\f[B]\-\&\-reserve-regs-iy\f[R]"
\c
.IND "Z80" "Options" "--reserve-regs-iy"
This option tells the compiler that it is not allowed to use register pair iy. The option can be useful for systems where iy is reserved for the OS. This option is incompatible with \-\&\-fomit-frame-pointer.
.LI "\f[B]\-\&\-fno-omit-frame-pointer\f[R]"
\c
.IND "Z80" "Options" "--fno-omit-frame-pointer"
Never omit the frame pointer.
.LE
.H 3 "\&SM83 Options"
.IND "Options GBZ80"
.IND "SM83"
.VL 18n
.LI "\f[B]\-bo\f[R]\ <Num>"
\c
.IND "GBZ80" "Options" "-bo <Num>"
Use code bank <Num>.
.LI "\f[B]\-ba\f[R]\ <Num>"
\c
.IND "GBZ80" "Options" "-ba <Num>"
Use data bank <Num>.
.LE
.H 3 "\&STM8 Options"
.IND "Options STM8"
.IND "STM8 options"
.VL 18n
.LI "\f[B]\-\&\-model-medium\f[R]"
\c
.IND "--model-medium"
Generate code for Medium model programs, see section Memory Models for more details. This is the default model.
.LI "\f[B]\-\&\-model-large\f[R]"
\c
.IND "--model-large"
Generate code for Large model programs, see section Memory Models for more details. If this option is used all source files in the project have to be compiled with this option. It must also be used when invoking the linker.
.LE
.H 3 "\&MOS6502 Options (apply to mos6502, mos65c02)"
.IND "Options MOS6502"
.IND "MOS6502 options"
.VL 18n
.LI "\f[B]\-\&\-model-small\f[R]"
\c
.IND "--model-small"
Generate code for small model programs, see section Memory Models for more details.
.LI "\f[B]\-\&\-model-large\f[R]"
\c
.IND "--model-large"
Generate code for large model programs, see section Memory Models for more details. This is the default memory model.
.LI "\f[B]\-\&\-no-zp-spill\f[R]"
\c
.IND "--no-zp-spill"
Force the compiler to spill registers to 16-bit addressable memory (xdata) instead of Page Zero. When running out of Page Zero space, this option will allow to free many Page Zero locations at the expense of slightly larger and slower code
.LE
.H 3 "\&Intermediate Dump Options"
.SETR subsec:Intermediate-Dump-Options
.IND "Options intermediate dump"
.IND "Intermediate dump options"
.P
The following options are provided for the purpose of retargetting and debugging the compiler. They provide a means to dump the intermediate code (iCode\c
.IND "iCode"
) generated by the compiler in human readable form at various stages of the compilation process. More on iCodes see chapter \c
.GETHN subsec:The-anatomy-of Rf29
.Rd Rf29
\*[Rf29] \[rq]The anatomy of the compiler\[rq].
.VL 18n
.LI "\f[B]\-\&\-dum-ast\f[R]"
\c
.IND "--dump-ast"
This option will cause the compiler to dump the abstract syntax tree to the econsole.
.LI "\f[B]\-\&\-dump-i-code\f[R]"
\c
.IND "--dump-i-code"
Will dump iCodes at various stages into files named \f[I]<source filename>.dump<stage>\f[R].
.LI "\f[B]\-\&\-dump-graphs\f[R]"
\c
.IND "--dump-graphs"
Will dump internal representations as graphviz .dot files. Depending on other options, this can include the control-flow graph at lospre, insertion of bank selection instructions or register allocation and the conflict graph and tree-decomposition at register allocation.
.LI "\f[B]\-\&\-fverbose-asm\f[R]"
\c
.IND "--no-gen-comments"
Include code generator and peep-hole comments in the generated asm files.
.LE
.H 3 "\&Redirecting output on Windows Shells"
.P
By default SDCC writes its error messages to \[lq]standard error\[rq]. To force all messages to \[lq]standard output\[rq] use \f[B]\-\f[I]\&\f[B]\-\f[R]use-stdout\c
.IND "--use-stdout"
\&. Additionally, if you happen to have visual studio installed in your Windows machine, you can use it to compile your sources using a custom build and the SDCC \-\f[I]\&\f[R]\-vc\c
.IND "--vc"
 option. Something like this should work:\c
.sp
\f[B]c:\[rs]sdcc\[rs]bin\[rs]sdcc.exe \-\f[I]\&\f[B]\-vc \-\f[I]\&\f[B]\-model-large \-c $(InputPath)\f[R]
.H 2 "\&Environment variables"
.IND "Environment variables"
.P
SDCC recognizes the following environment variables:
.VL 18n
.LI "\f[B]SDCC_LEAVE_SIGNALS\f[R]"
\c
.IND "SDCC" "Environment variables" "SDCC_LEAVE_SIGNALS"
SDCC installs a signal handler\c
.IND "signal handler"
 to be able to delete temporary files after an user break (^C) or an exception. If this environment variable is set, SDCC won't install the signal handler in order to be able to debug SDCC.
.LI "\f[B]TMP,\ TEMP,\ TMPDIR\f[R]"
\c
.IND "SDCC" "Environment variables" "TMP, TEMP, TMPDIR"
Path, where temporary files will be created. The order of the variables is the search order. In a standard *nix environment these variables are not set, and there's no need to set them. On Windows it's recommended to set one of them.
.LI "\f[B]SDCC_HOME\f[R]"
\c
.IND "SDCC" "Environment variables" "SDCC_HOME"
Path, see section \c
.GETHN subsec:Install-paths Rf30
.Rd Rf30
\*[Rf30]\ \[lq] Install Paths\[rq].
.LI "\f[B]SDCC_INCLUDE\f[R]"
\c
.IND "SDCC" "Environment variables" "SDCC_INCLUDE"
Path, see section \c
.GETHN subsec:Search-Paths Rf31
.Rd Rf31
\*[Rf31]\ \[lq]Search Paths\[rq].
.LI "\f[B]SDCC_LIB\f[R]"
\c
.IND "SDCC" "Environment variables" "SDCC_LIB"
Path, see section \c
.GETHN subsec:Search-Paths Rf32
.Rd Rf32
\*[Rf32]\ \[lq]Search Paths\[rq].
.LE
.P
There are some more environment variables recognized by SDCC, but these are mainly used for debugging purposes. They can change or disappear very quickly, and won't be documented\*F\c
.FS
if you are curious search in SDCC's sources for \f[CR]\[dq]getenv\[dq]\f[R]
.FE
\c
.IND "SDCC" "Environment variables" "undocumented"
\&.
.H 2 "\&SDCC Language Extensions"
.P
SDCC supports some language extensions useful for embedded systems. These include named address spaces (see also section 5.1 of the Embedded C standard). SDCC supports both intrinsic named address spaces (which ones are supported depends on the target architecture) and non-intrinsic named address spaces (defined by the user using the keyword __addressmod, they are particularly useful with custom bank-switching hardware). Unlike the Embedded C standard, SDCC allows local variables to have an intrinsic named address space even when not explicitly declared as static or extern. Depending on the target architecture, support can be limited to objects in such address spaces and exclude pointer-based access to those.
.H 3 "\&MCS51/DS390 intrinsic named address spaces"
.P
SDCC supports the following MCS51-specific intrinsic address spaces:
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# The MCS51 intrinsic address spaces.
# Coordinates are those of the original drawing (96 units to the inch).
scale = 96
"\f[R]\s[12]__idata\s0\f[]" ljust at (109.61,-40.55)
"\f[R]\s[12]generic\s0\f[]" ljust at (109.61,-14.10)
"\f[R]\s[12]__data\s0\f[]" ljust at (109.61,-93.47)
"\f[R]\s[12]__xdata\s0\f[]" ljust at (204.09,-40.55)
"\f[R]\s[12]__pdata\s0\f[]" ljust at (204.09,-93.47)
"\f[R]\s[12]__code\s0\f[]" ljust at (298.58,-40.55)
box wid 86.93 ht 139.84 with .nw at (98.27,-26.46)
box wid 294.80 ht 170.08 with .nw at (90.71,-3.78)
box wid 86.93 ht 139.84 with .nw at (192.76,-26.46)
box wid 90.71 ht 139.84 with .nw at (287.24,-26.46)
box wid 79.37 ht 83.15 with .nw at (102.05,-79.37)
box wid 79.37 ht 83.15 with .nw at (196.54,-79.37)
"\f[R]\s[12]128B\s0\f[]" ljust at (109.61,-112.37)
"\f[R]\s[12]__sfr\s0\f[]" ljust at (11.34,-93.47)
box wid 79.37 ht 83.15 with .nw at (3.78,-79.37)
"\f[R]\s[12]128B\s0\f[]" ljust at (11.34,-112.37)
"\f[R]\s[12]256B\s0\f[]" ljust at (109.05,-59.21)
"\f[R]\s[12]256B\s0\f[]" ljust at (204.48,-112.13)
"\f[R]\s[12]64KB\s0\f[]" ljust at (203.42,-59.21)
"\f[R]\s[12]64KB\s0\f[]" ljust at (298.58,-59.45)
.PE
.DE
.\}
.H 4 "\&__data / __near"
.IND "__data (mcs51, ds390 named address space)"
.IND "__near (named address space)"
.P
This is the \f[B]default\f[R] (generic) address space for the Small Memory model. Variables in this address space will be allocated in the directly addressable portion of the internal RAM of a 8051, e.g.:
.DS I
.ft CR
\f[CR]__data unsigned char test_data;
.ft
.DE
.P
Writing 0x01 to this variable generates the assembly code:
.DS I
.ft CR
\f[CR]75*00 01\ \ \ mov\ \ _test_data,#0x01
.ft
.DE
.H 4 "\&__xdata / __far"
.IND "__xdata (mcs51, ds390 named address space)"
.IND "__far (named address space)"
.P
Variables in this address space will be placed in the external RAM. This is the \f[B]default\f[R] (generic) address space for the Large Memory model, e.g.:
.DS I
.ft CR
\f[CR]__xdata unsigned char test_xdata;
.ft
.DE
.P
Writing 0x01 to this variable generates the assembly code:
.DS I
.ft CR
\f[CR]90s00r00\ \ \ mov\ \ dptr,#_test_xdata
74\ 01\ \ \ \ \ \ mov\ \ a,#0x01
F0\ \ \ \ \ \ \ \ \ movx\ @dptr,a
.ft
.DE
.H 4 "\&__idata"
.IND "__idata (mcs51, ds390 named address space)"
.P
Variables in this address space will be allocated into the indirectly addressable portion of the internal ram of a 8051, e.g.:
.DS I
.ft CR
\f[CR]__idata unsigned char test_idata;
.ft
.DE
.P
Writing 0x01 to this variable generates the assembly code:
.DS I
.ft CR
\f[CR]78r00\ \ \ \ \ \ \ mov\ \ r0,#_test_idata
76\ 01\ \ \ \ \ \ \ mov\ \ @r0,#0x01
.ft
.DE
.P
Please note, the first 128 byte of idata physically access the same RAM as the data memory. The original 8051 had 128 byte idata memory, nowadays most devices have 256 byte idata memory. The stack\c
.IND "stack"
 is located in idata memory (unless \f[CR]\-\-xstack\f[R] is specified).
.H 4 "\&__pdata"
.IND "__pdata (mcs51, ds390 named address space)"
.P
Paged xdata access is just as straightforward as using the other addressing modes of a 8051. It is typically located at the start of xdata and has a maximum size of 256 bytes. The following example writes 0x01 to the pdata variable. Please note, pdata access physically accesses xdata memory. The high byte of the address is determined by port P2 \c
.IND "P2 (mcs51 sfr)"
(or in case of some 8051 variants by a separate Special Function Register, see section \c
.GETHN subsec:MCS51-variants Rf33
.Rd Rf33
\*[Rf33]). This is the \f[B]default\f[R] (generic) address space for the Medium Memory model, e.g.:
.DS I
.ft CR
\f[CR]__pdata unsigned char test_pdata;
.ft
.DE
.P
Writing 0x01 to this variable generates the assembly code:
.DS I
.ft CR
\f[CR]78r00\ \ \ \ \ \ mov r0,#_test_pdata
74 01\ \ \ \ \ \ mov a,#0x01
F2\ \ \ \ \ \ \ \ \ movx @r0,a
.ft
.DE
.P
If the \-\&\-xstack\c
.IND "--xstack"
 option is used the pdata memory area is followed by the xstack memory area and the sum of their sizes is limited to 256 bytes.
.H 4 "\&__code"
.IND "__code"
.P
\&'Variables' in this address space will be placed in the code memory:
.DS I
.ft CR
\f[CR]__code unsigned char test_code;
.ft
.DE
.P
Read access to this variable generates the assembly code:
.DS I
.ft CR
\f[CR]90s00r6F\ \ \ mov dptr,#_test_code
E4\ \ \ \ \ \ \ \ \ clr a
93\ \ \ \ \ \ \ \ \ movc a,@a+dptr
.ft
.DE
.P
\f[CR]char\f[R] indexed arrays of characters in code memory can be accessed efficiently:
.DS I
.ft CR
\f[CR]__code char test_array[] = {'c','h','e','a','p'};
.ft
.DE
.P
Read access to this array using an 8-bit unsigned index generates the assembly code:
.DS I
.ft CR
\f[CR]E5*00\ \ \ \ \ \ mov a,_index
\f[CR]90s00r41\ \ \ mov dptr,#_test_array
\f[CR]93\ \ \ \ \ \ \ \ \ movc a,@a+dptr
.ft
.DE
.H 4 "\&__bit"
.IND "__bit"
.P
This is a data-type and an address space. When a variable is declared as a bit, it is allocated into the bit addressable memory of 8051, e.g.:
.DS I
.ft CR
\f[CR]__bit test_bit;
.ft
.DE
.P
Writing 1 to this variable generates the assembly code:
.DS I
.ft CR
\f[CR]D2*00\ \ \ \ \ \ \ setb\ _test_bit
.ft
.DE
.P
The bit addressable memory consists of 128 bits which are located from 0x20 to 0x2f in data memory.\c
.br
Apart from this 8051 specific intrinsic named address space most architectures support ANSI-C bit-fields\c
.IND "bit-fields"
\*F\c
.FS
Not really meant as examples, but nevertheless showing what bit-fields are about: device/include/mc68hc908qy.h and support/regression/tests/bitfields.c
.FE
\&. In accordance with ISO/IEC 9899 bits and bitfields without an explicit signed modifier are implemented as unsigned.
.H 4 "\&__sfr / __sfr16 / __sfr32 / __sbit"
.IND "__sfr"
.IND "__sfr16"
.IND "__sfr32"
.IND "sbit"
.P
Like the __bit keyword, \f[I]__sfr / __sfr16 / __sfr32 / __sbit\f[R] signify both a data-type and named address space, they are used to describe the \f[I]s\f[R]pecial \f[I]f\f[R]unction \f[I]r\f[R]egisters and special \f[I]__bit\f[R] variables of a 8051, eg:
.DS I
.ft CR
\f[CR]__sfr __at\c
.IND "__at"
 (0x80) P0;\  /* special function register P0 at location 0x80 */
\&
/* 16 bit special function register combination for timer 0
\ \  with the high byte at location 0x8C and the low byte at location 0x8A */
__sfr16 __at (0x8C8A) TMR0;
\&
__sbit __at\c
.IND "__at"
 (0xd7) CY;\  /* CY (Carry Flag\c
.IND "Flags"
\c
.IND "Carry flag"
) */
.ft
.DE
.P
Special function registers which are located on an address dividable by 8 are bit-addressable, an \f[I]__sbit\f[R] addresses a specific bit within these sfr.\c
.br
16 Bit and 32 bit special function register combinations which require a certain access order are better not declared using \f[I]__sfr16\f[R] or \f[I]__sfr32.\f[R] Although SDCC usually accesses them Least Significant Byte (LSB) first, this is not guaranteed.\c
.br
.P
Please note, if you use a header file which was written for another compiler then the __sfr / __sfr16 / __sfr32 / __sbit intrinsic named address spaces will most likely be \f[I]not\f[R] compatible. Specifically the syntax \f[CR]\ sfr P0 = 0x80;\ \f[R] is compiled \f[I]without warning\f[R] by SDCC to an assignment of 0x80 to a variable called P0\f[CR].\f[R] \f[B]Nevertheless with the file \f[CB]compiler.h\c
.IND "compiler.h (include file)"
\f[B] it is possible to write header files\c
.IND "Header files"
\c
.IND "Include files"
 which can be shared among different compilers (see section \c
.GETHN sec:Porting-code-to-other-compilers Rf34
.Rd Rf34
\*[Rf34]). \f[R]
.H 4 "\&Pointers to MCS51/DS390 intrinsic named address spaces"
.IND "Pointer"
.P
SDCC allows (via language extensions) pointers to explicitly point to any of the named address spaces\c
.IND "Memory model"
 of the 8051. In addition to the explicit pointers, the compiler uses (by default) generic pointers which can be used to point to any of the memory spaces.\c
.sp
Pointer declaration examples:
.DS I
.ft CR
\f[CR]/* pointer physically in internal ram pointing to object in external ram */
__xdata unsigned char * __data p;
\&
/* pointer physically in external ram pointing to object in internal ram */
__data unsigned char * __xdata p;
\&
/* pointer physically in code rom pointing to data in xdata space */
__xdata unsigned char * __code p;
\&
/* pointer physically in code space pointing to data in code space */
__code unsigned char * __code p;
\&
/* generic pointer physically located in xdata space */
unsigned char * __xdata p;
\&
/* generic pointer physically located in default memory space */
unsigned char * p;
\&
/* the following is a function pointer\c
.IND "function pointer"
 physically located in data space */
char (* __data fp)(void);
.ft
.DE
.P
Well you get the idea.\c
.sp
All unqualified pointers are treated as 3-byte (4-byte for the ds390) \f[I]generic\f[R] pointers.\s[-1]\c
.sp
\s[0]The highest order byte of the \f[I]generic\f[R] pointers contains the data space information. Assembler support routines are called whenever data is stored or retrieved using \f[I]generic\f[R] pointers. These are useful for developing reusable library\c
.IND "Libraries"
 routines. Explicitly specifying the pointer\c
.IND "Pointer"
 type will generate the most efficient code.
.H 4 "\&Notes on MCS51 memory layout"
.IND "MCS51 memory"
.P
The 8051 family of microcontrollers have a minimum of 128 bytes of internal RAM memory \f[I]__data\f[R]\c
.IND "__data (mcs51, ds390 named address space)"
 which is structured as follows:\c
.sp
\- Bytes 00-1F \- 32 bytes to hold up to 4 banks of the registers R0 to R7,\c
.br
\- Bytes 20-2F \- 16 bytes to hold 128 bit\c
.IND "bit"
 variables and,\c
.br
\- Bytes 30-7F \- 80 bytes for general purpose use.\c
.br
.P
Additionally some members of the MCS-51 family may have up to 128 bytes of additional, indirectly addressable, internal RAM memory (\f[I]__idata\f[R]\c
.IND "__idata (mcs51, ds390 named address space)"
). Furthermore, some chips may have some built in external memory (\f[I]__xdata\f[R]\c
.IND "__xdata (mcs51, ds390 named address space)"
) which should not be confused with the internal, directly addressable RAM memory (\f[I]__data\f[R]\c
.IND "__data (mcs51, ds390 named address space)"
). Sometimes this built in \f[I]__xdata\f[R] memory has to be activated before using it (you can probably find this information on the datasheet of the microcontroller your are using, see also section \c
.GETHN subsec:MCS51-Startup-Code Rf35
.Rd Rf35
\*[Rf35]\ Startup-Code).
.P
Normally SDCC will only use the first bank\c
.IND "register bank (mcs51, ds390)"
 of registers (register bank 0), but it is possible to specify that other banks of registers (keyword \f[I]__using\f[R] \f[I]\c
.IND "__using (mcs51, ds390 register bank)"
\f[R]) should be used for example in interrupt\c
.IND "interrupt"
\c
.IND "__interrupt"
 routines. By default, the compiler will place the stack after the last byte of allocated memory for variables. For example, if the first 2 banks of registers are used, and only four bytes are used for \f[I]__data\f[R] variables, it will position the base of the internal stack at address 20 (0x14). This implies that as the stack\c
.IND "stack"
 grows, it will use up the remaining register banks, and the 16 bytes used by the 128 bit variables, and 80 bytes for general purpose use. If any bit variables are used, the \f[I]__data\f[R] variables will be placed in unused register banks and after the byte holding the last __bit variable. For example, if register banks 0 and 1 are used, and there are 9 bit variables (two bytes used), \f[I]__data\f[R] variables will be placed starting from address 0x10 to 0x20 and continue at address 0x22. You can also use \-\&\-data-loc\c
.IND "--data-loc <Value>"
 to specify the start address of the \f[I]__data\f[R] and \-\&\-iram-size\c
.IND "--iram-size <Value>"
 to specify the size of the total internal RAM (\f[I]__idata\f[R]). \c
.br
.P
By default the 8051 linker will place the stack after the last byte of __(i)data variables. Option \-\&\-stack-loc\c
.IND "--stack-loc <Value>"
 allows you to specify the start of the stack, i.e. you could start it after any data in the general purpose area. If your microcontroller has additional indirectly addressable internal RAM (\f[I]idata\f[R]) you can place the stack on it. You may also need to use \-\&\-xdata-loc\c
.IND "--xdata-loc<Value>"
 to set the start address of the external RAM (\f[I]xdata\f[R]) and \-\&\-xram-size\c
.IND "--xram-size <Value>"
 to specify its size. Same goes for the code memory, using \-\&\-code-loc\c
.IND "--code-loc <Value>"
 and \-\&\-code-size\c
.IND "--code-size <Value>"
\&. If in doubt, don't specify any options and see if the resulting memory layout is appropriate, then you can adjust it.
.P
The linker generates two files with memory allocation information. The first, with extension .map\c
.IND "<file>.map"
 shows all the variables and segments. The second with extension .mem\c
.IND "<file>.mem"
 shows the final memory layout. The linker will complain either if memory segments overlap, there is not enough memory, or there is not enough space for stack. If you get any linking warnings and/or errors related to stack or segments allocation, take a look at either the .map or .mem files to find out what the problem is. The .mem file may even suggest a solution to the problem.
.H 3 "\&Z80/Z180/eZ80 and 8080/8085 intrinsic named address spaces"
.H 4 "\&__sfr (in/out to 8-bit addresses)"
.IND "__sfr"
.P
The Z80\c
.IND "Z80"
 family has separate address spaces for memory and \f[I]i\f[R]nput/\f[I]o\f[R]utput memory. I/O memory\c
.IND "I/O memory (Z80, Z180)"
\c
.IND "Z80" "I/O memory"
\c
.IND "Z180" "I/O memory"
 is accessed with special instructions, e.g.:
.DS I
.ft CR
\f[CR]__sfr __at(0x78) IoPort;\ \ /* define a var in I/O space at 78h called IoPort */
.ft
.DE
.P
Writing 0x01 to this variable generates the assembly code:
.DS I
.ft CR
\f[CR]3E 01\ \ \ \ \ \ ld a,#0x01
D3 78\ \ \ \ \ \ out (_IoPort),a
.ft
.DE
.P
The 8-bit __sfr form is also supported on the Intel 8080 and 8085, which have the same 8-bit port I/O, accessed with the documented IN and OUT instructions.
.H 4 "\&__banked __sfr (in/out to 16-bit addresses)"
.IND "__sfr"
.P
The keyword \f[I]__banked\f[R] is used to support 16 bit addresses in I/O memory e.g.:
.DS I
.ft CR
\f[CR]__sfr __banked __at\c
.IND "__at"
(0x123) IoPort;
.ft
.DE
.P
Writing 0x01 to this variable generates the assembly code:
.DS I
.ft CR
\f[CR]01 23 01\ \ \ ld bc,#_IoPort
3E 01\ \ \ \ \ \ ld a,#0x01
ED 79\ \ \ \ \ \ out (c),a
.ft
.DE
.P
__banked (16-bit I/O) is available only on the Z80, Z180 and eZ80. The Intel 8080 and 8085 have an 8-bit I/O space only, so __banked __sfr is not supported on those targets.
.H 4 "\&__far (eZ80 only)"
.IND "_far"
.P
The ez80 port supports a 1 MB __far address space that contains the generic address space. Support for __far is still very incomplete and should be considered experimental.
.H 4 "\&__sfr (in0/out0 to 8 bit addresses on Z180/HD64180)"
.IND "__sfr"
.IND "Z180"
.IND "HD64180 (see Z180)"
.P
The compiler option \-\&\-portmode\c
.IND "Z180" "Options" "--portmode"
=180 (80) and a compiler #pragma\ portmode\c
.IND "Z180" "Pragmas" "#pragma portmode"
 z180 (z80) is used to turn on (off) the Z180/HD64180 port addressing instructions \f[CR]in0/out0\f[R] instead of \f[CR]in/out\f[R]. If you include the file z180.h this will be set automatically.
.H 4 "\&__far (eZ80 only)"
.IND "_far"
.P
The ez80 port supports a 24 MB __far address space that contains the generic address space. This support is still very incomplete and should be considered experimental.
.H 3 "\&SM83 intrinsic named address spaces"
.H 4 "\&__sfr"
.IND "__sfr"
.P
The keyword \f[I]__sfr\f[R] is an alternative way to access memory locations 0xff00 to 0xffff, which are typically used for memory-mapped I/O e.g.:
.DS I
.ft CR
\f[CR]__sfr __at\c
.IND "__at"
(0xff01) IoPort;
.ft
.DE
.H 3 "\&Rabbit intrinsic named address spaces"
.H 4 "\&__sfr"
.IND "__sfr"
.P
The Rabbit ports support a 64 KB __sfr address space corresponding to the \[lq]internal i/o\[rq]space of the Rabbits.
.H 4 "\&__far"
.IND "_far"
.P
The Rabbit ports supports a 1 MB __far address space that contains the generic address space. Due to limitations of the Rabbit ldp instructions, variables declared as __far can be neither volatile nor atomic.
.H 3 "\&TLCS-90 intrinsic named address spaces"
.P
SDCC supports the following TLCS-90-specific intrinsic address spaces:
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# The TLCS-90 address spaces.
# Coordinates are those of the original drawing (96 units to the inch).
scale = 96
"\f[R]\s[12]__far\s0\f[]" ljust at (15.12,-17.88)
"\f[R]\s[12]generic\s0\f[]" ljust at (15.12,-70.79)
box wid 86.93 ht 139.84 with .nw at (3.78,-3.78)
box wid 79.37 ht 83.15 with .nw at (7.56,-56.69)
"\f[R]\s[12]64KB\s0\f[]" ljust at (15.12,-89.69)
"\f[R]\s[12]1MB\s0\f[]" ljust at (14.45,-36.53)
.PE
.DE
.\}
.P
Support for __far is still very incomplete and should be considered experimental.
.H 3 "\&HC08/S08 intrinsic named address spaces"
.H 4 "\&__data"
.IND "__data (hc08 named address space)"
.P
Variables in the address space __data resides in the first 256 bytes of memory (the direct page). The HC08\c
.IND "HC08"
 is most efficient at accessing variables (especially pointers) stored here.
.H 4 "\&__xdata"
.IND "__xdata (hc08 named address space)"
.P
Variables in the address space__xdata can reside anywhere in memory. This is the default (generic address space).
.H 3 "\&PDK14/PDK15 intrinsic named address spaces"
.H 4 "\&__sfr"
.IND "__sfr"
.P
The Padauk family has separate address spaces for memory and \f[I]i\f[R]nput/\f[I]o\f[R]utput memory. I/O memory is accessed with special instructions, e.g.:
.DS I
.ft CR
\f[CR]__sfr __at(0x18) gpcc;\ \ /* define a var in I/O space at 18h called gpcc */
.ft
.DE
.H 4 "\&__sfr16"
.IND "__sfr16"
.P
The Padauk family has a 16-bit timer accessed with special instructions.
.H 3 "\&MOS6502 intrinsic named address spaces"
.H 4 "\&__zp/__data /__near"
.IND "__data (mos6502 named address space)"
.P
Variables in the address space __zp reside in the first 256 bytes of memory (the Page Zero). The MOS6502\c
.IND "MOS6502"
 is most efficient at accessing variables stored here. Pointers can only be dereferenced directly if they reside in Page Zero. This is the default for the small memory model.
.H 4 "\&__xdata /__far"
.IND "__xdata (mos6502 named address space)"
.P
Variables in the address space __xdata can reside anywhere in the 64K memory space. This is the default (for the large memory model).
.H 3 "\&Non-intrinsic named address spaces"
.IND "Non-intrinsic named address spaces"
.P
SDCC supports user-defined non-intrinsic named address spaces. So far SDCC only supports them for bank-switching. You need to have a function that switches to the desired memory bank and declare a corresponding named address space:
.DS I
.ft CR
\f[CR]void setb0(void); // The function that sets the currently active memory bank to b0
void setb1(void); // The function that sets the currently active memory bank to b1
__addressmod\c
.IND "__addressmod"
 setb0 spaceb0; // Declare a named address space called spaceb0 that uses setb0()
__addressmod setb1 spaceb1; // Declare a named address space called spaceb1 that uses setb1()
spaceb0 int x; // An int in address space spaceb0
spaceb1 int *y; // A pointer to an int in address space spaceb1
spaceb0 int *spaceb1 z; // A pointer in address space spaceb1 that points to an int in address space spaceb0
.ft
.DE
.P
Non-intrinsic named address spaces for data in ROM are declared using the const keyword:
.DS I
.ft CR
\f[CR]void setb0(void); // The function that sets the currently active memory bank to b0
void setb1(void); // The function that sets the currently active memory bank to b1
__addressmod\c
.IND "__addressmod"
 setb0 const spaceb0; // Declare a named address space called spaceb0 that uses setb0() and resides in ROM
__addressmod setb1 spaceb1; // Declare a named address space called spaceb1 that uses setb1() and resides in RAM
const spaceb0 int x = 42; // An int in address space spaceb0
spaceb1 int *y; // A pointer to an int in address space spaceb1
const spaceb0 int *spaceb1 z; // A pointer in address space spaceb1 that points to a constant int in address space spaceb0
.ft
.DE
.P
Variables in non-intrinsic named address spaces will be placed in areas of the same name (this can be used for the placement of named address spaces in memory by the linker).
.P
SDCC will automatically insert calls to the corresponding function before accessing the variable. SDCC inserts the minimum possible number calls to the bank selection functions. See Philipp Klaus Krause, \[lq]Optimal Placement of Bank Selection Instructions in Polynomial Time\[rq] for details on how this works.
.H 3 "\&Absolute Addressing"
.IND "Absolute addressing"
.P
Data items can be assigned an absolute address with the \f[I]__at\c
.IND "__at"
 <address>\f[R] keyword (the address needs to be either a parenthesized constant expression or a constant), which can also be used in addition to a named address space, e.g.:
.DS I
.ft CR
\f[CR]__xdata unsigned int __at (0x7ffe) chksum;
.ft
.DE
.P
In the above example the variable chksum will be located at 0x7ffe and 0x7fff of the external ram. The compiler does \f[I]not\f[R] reserve any space for variables declared in this way\ \f[B]!\f[R] (they are implemented with an equate in the assembler). Thus it is left to the programmer to make sure there are no overlaps with other variables that are declared without the absolute address. The assembler listing file (.lst\c
.IND "<file>.lst"
) and the linker output files (.rst\c
.IND "<file>.rst"
) and (.map\c
.IND "<file>.map"
) are good places to look for such overlaps.
.P
If however you provide an initializer\c
.IND "Variable initialization"
 actual memory allocation will take place and overlaps will be detected by the linker. E.g.:
.DS I
.ft CR
\f[CR]__code char __at (0x7ff0) Id[5] = \[dq]SDCC\[dq];
.ft
.DE
.P
In the above example the variable Id will be located from 0x7ff0 to 0x7ff4 in code memory.
.P
In case of memory mapped I/O devices the keyword \f[I]volatile\f[R] has to be used to tell the compiler that accesses might not be removed:
.DS I
.ft CR
\f[CR]volatile\c
.IND "volatile"
 __xdata\c
.IND "__xdata (mcs51, ds390 named address space)"
 unsigned char __at\c
.IND "__at"
 (0x8000) PORTA_8255;
.ft
.DE
.P
For some architectures (mcs51) array accesses are more efficient if an (xdata/far) array\f[CR]\s[-2]\c
.IND "Aligned array"
\f[R]\s[0] starts at a block (256 byte) boundary\c
.IND "block boundary"
 (section \c
.GETHN subsec:A-Step-by-Assembler-Introduction Rf36
.Rd Rf36
\*[Rf36] has an example).\c
.br
Absolute addresses can be specified for variables in all named address spaces, e.g.:
.DS I
.ft CR
\f[CR]__bit\c
.IND "__bit"
 __at\c
.IND "__at"
 (0x02) bvar;
.ft
.DE
.P
The above example will allocate the variable at offset 0x02 in the bit-addressable space. There is no real advantage to assigning absolute addresses to variables in this manner, unless you want strict control over all the variables allocated. One possible use would be to write hardware portable code. For example, if you have a routine that uses one or more of the microcontroller I/O pins, and such pins are different for two different hardwares, you can declare the I/O pins in your routine using:
.DS I
.ft CR
\f[CR]extern volatile\c
.IND "volatile"
 __bit MOSI;\ \ \ \ /* master out, slave in */
extern volatile __bit MISO;\ \ \ \ /* master in, slave out */
extern volatile __bit MCLK;\ \ \ \ /* master clock */
\&
/* Input and Output of a byte on a 3\-wire serial bus.
\ \ \ If needed adapt polarity of clock, polarity of data and bit order
\ */
unsigned char spi_io(unsigned char out_byte)
{
\ \ \ \ unsigned char i=8;
\ \ \ \ do {
\ \ \ \ \ \ \ \ MOSI = out_byte & 0x80;
\ \ \ \ \ \ \ \ out_byte <<= 1;
\ \ \ \ \ \ \ \ MCLK = 1;
\ \ \ \ \ \ \ \ /* __asm nop __endasm; */\ \ \ \ \ \ \ \ /* for slow peripherals */
\ \ \ \ \ \ \ \ if(MISO)
\ \ \ \ \ \ \ \ \ \ \ \ out_byte += 1;
\ \ \ \ \ \ \ \ MCLK = 0;
\ \ \ \ } while(\-\-i);
\ \ \ \ return out_byte;
}
.ft
.DE
.P
Then, someplace in the code for the first hardware you would use
.DS I
.ft CR
\f[CR]__bit __at\c
.IND "__at"
 (0x80) MOSI;\ \ \ \ /* I/O port 0, bit 0 */
__bit __at (0x81) MISO;\ \ \ \ /* I/O port 0, bit 1 */
__bit __at (0x82) MCLK;\ \ \ \ /* I/O port 0, bit 2 */
.ft
.DE
.P
Similarly, for the second hardware you would use
.DS I
.ft CR
\f[CR]__bit __at (0x83) MOSI;\ \ \ \ /* I/O port 0, bit 3 */
__bit __at (0x91) MISO;\ \ \ \ /* I/O port 1, bit 1 */
__bit\c
.IND "__bit"
 __at (0x92) MCLK;\ \ \ \ /* I/O port 1, bit 2 */
.ft
.DE
.P
and you can use the same hardware dependent routine without changes, as for example in a library. This is somehow similar to sbit, but only one absolute address has to be specified in the whole project.
.H 3 "\&__sdcc_external_startup"
.IND "__sdcc_external_startup"
.P
When a function \f[CR]unsigned char __sdcc_external_startup(void)\f[R] is present, it is executed before both the initialization of static and global variables, as well as \f[CR]main\f[R]. This allows to implement functionality that needs to be done early. For example: disabling a hardware watchdog that would otherwise bite during the time it takes to initialize global variables; setup or calibration of system/peripheral clocks; or, a memory check that needs to be done before any memory (other than the return address for \f[CR]__sdcc_external_startup\f[R] itself) is in use.
.P
If this routine returns a non-zero value, the static and global variable initialization will be skipped and the function \f[CR]main\f[R] will be invoked. Otherwise static and global variables will be initialized before the function \f[CR]main\f[R] is invoked.
.P
For mos6502, z80, z80n, z180, r2k, r2ka, r3ka, r4k, r5k, r6k, sm83, tlcs90, ez80, r800, when using a custom crt0, support depends on the custom crt0.
.H 3 "\&Preserved register specification"
.P
SDCC allows to specify preserved registers in function declarations, to enable further optimizations on calls to functions implemented in assembler. Example for the Z80 architecture specifying that a function will preserve register pairs bc and iy:
.DS I
.ft CR
\f[CR]void f(void) __preserves_regs(b, c, iyl, iyh);
.ft
.DE
.H 3 "\&Binary constants"
.IND "Binary constants"
.P
SDCC supports the use of C23 binary constants, such as 0b01100010 when the compiler is invoked using \f[CR]\-\-std\-sdccxx\f[R], even when the corresponding \f[CR]\-\-std\-cxx\f[R], does not. Note: \f[CR]xx\f[R] is a placeholder for the desired version of the C standard.
.H 3 "\&Returning void"
.P
SDCC allows functions to return expressions of type void. This feature is only enabled when the compiler is invoked using \f[CR]\-\-std\-sdccxx\f[R]. Note: \f[CR]xx\f[R] is a placeholder for the desired version of the C standard.
.H 3 "\&Omitting promotion on arguments of vararg function (mcs51, ds390, mos6502, mos65c02, pic14 and pic16 only)"
.P
Arguments to vararg functions are not promoted when explicitly cast. This feature is only enabled when the compiler is invoked using \f[CR]\-\-std\-sdccxx\f[R]. This breaks compability with the C standards, so linking code compiled with \f[CR]\-\-std\-sdccxx\f[R] with code compiled using \f[CR]\-\-std\-cxx\f[R] can result in failing programs when arguments to vararg functions are explicitly cast. Note: \f[CR]xx\f[R] is a placeholder for the desired version of the C standard.
.H 3 "\&Parameter forward declarations"
.P
SDCC (when using \f[CR]\-\-std\-sdccxx\f[R]) supports parameter forward declarations for s single parameter of integer type. The supported functionality is thus a subset of the GCC extension:
.DS I
.ft CR
\f[CR]void f(size_t n; char a[static n], size_t n);
.ft
.DE
.H 3 "\&_Optional"
.P
SDCC supports the \f[I]_Optional\c
.IND "_Optional"
\f[R] qualifier.
.H 2 "\&Parameters and Local Variables"
.IND "Parameters"
.IND "function parameter"
.IND "local variables"
.SETR sec:Parameters-and-Local-Variables
.P
Automatic (local) variables and parameters to functions are placed on the stack for most targets. For MCS51/DS390/HC08/S08/MOS6502/PDK13/PDK14/PDK15 they can either be placed on the stack or in data-space. The default action of the compiler is to place these variables in the internal RAM (for small model) or external RAM (for medium or large model). This in fact makes them similar to \f[I]static\c
.IND "static"
\f[R] so by default functions are non-reentrant\c
.IND "reentrant"
\&. \c
.sp
They can be placed on the stack\c
.IND "stack"
 by using the \f[I]\-\&\-stack-auto\c
.IND "--stack-auto"
\f[R] option, by using \f[I]#pragma\ stackauto\f[R]\c
.IND "#pragma stackauto"
 or by using the \f[I]__reentrant\c
.IND "reentrant"
\f[R] keyword in the function declaration, e.g.:
.DS I
.ft CR
\f[CR]unsigned char foo(char i) __reentrant
{
\ \ \ \ ...
}
.ft
.DE
.P
Since stack space on 8051 and MOS6502 is limited, and accessing the stack is slow for the Padauk, the \f[I]__reentrant\f[R] keyword or the \f[I]\-\&\-stack-auto\f[R] option should be used sparingly. Note that the \f[I]__reentrant\f[R] keyword just means that the parameters & local variables will be allocated to the stack, it \f[I]does not\f[R] mean that the function is register bank\c
.IND "register bank (mcs51, ds390)"
 independent.\c
.sp
Local variables\c
.IND "local variables"
 can be assigned intrinsic named address spaces and absolute\c
.IND "Absolute addressing"
 addresses, e.g.:
.DS I
.ft CR
\f[CR]unsigned char foo(__xdata int parm)
{
\ \ \ \ __xdata unsigned char i;
\ \ \ \ __bit bvar;
\ \ \ \ __data unsigned char __at\c
.IND "at"
 (0x31) j;
\ \ \ \ ...
}
.ft
.DE
.P
In the above example the parameter\c
.IND "function parameter"
 \f[I]parm\f[R] and the variable \f[I]i\f[R] will be allocated in the external ram, \f[I]bvar\f[R] in bit addressable space and \f[I]j\f[R] in internal ram. When compiled with \f[I]\-\&\-stack-auto\f[R] or when a function is declared as \f[I]reentrant\f[R] this should only be done for static variables.
.P
It is however allowed to use bit parameters in reentrant functions and also non-static local bit variables are supported. Efficient use is limited to 8 semi-bitregisters in bit space. They are pushed and popped to stack\c
.IND "stack"
 as a single byte just like the normal registers.
.H 2 "\&Overlaying"
.SETR subsec:Overlaying
.IND "Overlaying"
.P
For non-reentrant\c
.IND "reentrant"
 functions SDCC will try to reduce internal ram space usage by overlaying parameters and local variables of a function (if possible). Parameters and local variables\c
.IND "local variables"
 of a function will be allocated to an overlayable segment if the function has \f[I]no other function calls and the function is non-reentrant and the memory model\c
.IND "Memory model"
 is small.\f[R] If an explicit intrinsic named address space\c
.IND "intrinsic named address space"
 is specified for a local variable, it will NOT be overlaid.
.P
Note that the compiler (not the linkage editor) makes the decision for overlaying the data items. Functions that are called from an interrupt service routine\f[B]!\f[R] should be preceded by a #pragma\ nooverlay\c
.IND "#pragma nooverlay"
 if they are not reentrant.
.P
Also note that the compiler does not do any processing of inline assembler code, so the compiler might incorrectly assign local variables and parameters of a function into the overlay segment if the inline assembler code calls other c-functions that might use the overlay. In that case the #pragma\ nooverlay should be used.
.P
Parameters and local variables of functions that contain 16 or 32 bit multiplication\c
.IND "Multiplication"
 or division\c
.IND "Division"
 will NOT be overlaid since these are implemented using external functions, e.g.:
.DS I
.ft CR
\f[CR]#pragma save
#pragma nooverlay
void set_error(unsigned char errcd)
{
\ \ \ \ P3 = errcd;
}
#pragma restore
\&
void some_isr () __interrupt\c
.IND "interrupt"
 (2)
{
\ \ \ \ ...
\ \ \ \ set_error(10);
\ \ \ \ ...
}
.ft
.DE
.P
In the above example the parameter \f[I]errcd\f[R] for the function \f[I]set_error\f[R] would be assigned to the overlayable segment if the #pragma\ nooverlay was not present, this could cause unpredictable runtime behaviour when called from an interrupt service routine. The #pragma\ nooverlay ensures that the parameters and local variables for the function are NOT overlaid.
.H 2 "\&Interrupt Service Routines"
.SETR subsec:Interrupt-Service-Routines
.H 3 "\&General Information"
.P
SDCC allows \f[I]i\f[R]nterrupt \f[I]s\f[R]ervice \f[I]r\f[R]outines to be coded in C, with some extended keywords.
.DS I
.ft CR
\f[CR]void timer_isr (void) __interrupt (1) __using (1)
{
\ \ \ \ ...
}
.ft
.DE
.P
The optional number following the \f[I]__interrupt\c
.IND "interrupt"
\c
.IND "__interrupt"
\f[R] keyword is the interrupt number this routine will service. When present, the compiler will insert a call to this routine in the interrupt vector table\c
.IND "interrupt vector table"
 for the interrupt number specified. If you have multiple source files in your project, interrupt service routines can be present in any of them, but a prototype of the isr MUST be present or included in the file that contains the function \f[I]main\f[R]. The optional (8051 specific) keyword \f[I]__using\c
.IND "__using (mcs51, ds390 register bank)"
\f[R] can be used to tell the compiler to use the specified register bank when generating code for this function.\c
.br
Interrupt service routines open the door for some very interesting bugs:
.H 4 "\&Common interrupt pitfall: variable not declared \f[I]volatile"
.SETR subsec:Common-interrupt-pitfall-volatile
.P
If an interrupt service routine changes variables which are accessed by other functions these variables have to be declared \f[I]volatile\f[R]\c
.IND "volatile"
\&. See \c
.URL "http://en.wikipedia.org/wiki/Volatile_variable" "" "."
.H 4 "\&Common interrupt pitfall: \f[I]non-atomic access"
.SETR subsec:Common-interrupt-pitfall-non-atomic
.P
If the access to these variables is not \f[I]atomic\c
.IND "atomic"
\f[R] (i.e. the processor needs more than one instruction for the access and could be interrupted while accessing the variable) the interrupt must be disabled during the access to avoid inconsistent data. \c
.br
Access to 16 or 32 bit variables is obviously not atomic on 8 bit CPUs and should be protected by disabling interrupts. You're not automatically on the safe side if you use 8 bit variables though. We need an example here: f.e. on the 8051 the harmless looking \[rq]\f[CR]flags\ |=\ 0x80;\f[R]\[lq] is not atomic if \f[CR]flags\f[R] resides in xdata. Setting \[rq]\f[CR]flags\ |=\ 0x40;\f[R]\[lq] from within an interrupt routine might get lost if the interrupt occurs at the wrong time. \[lq]\f[CR]counter\ +=\ 8;\f[R]\[rq] is not atomic on the 8051 even if \f[CR]counter\f[R] is located in data memory.\c
.br
Bugs like these are hard to reproduce and can cause a lot of trouble.
.H 4 "\&Common interrupt pitfall: \f[I]stack overflow"
.SETR subsec:Common-interrupt-pitfall-stack-overflow
.P
The return address and the registers used in the interrupt service routine are saved on the stack\c
.IND "stack"
 so there must be sufficient stack space. If there isn't variables or registers (or even the return address itself) will be corrupted. This \f[I]stack overflow\f[R]\c
.IND "stack overflow"
 is most likely to happen if the interrupt occurs during the \[lq]deepest\[rq] subroutine when the stack is already in use for f.e. many return addresses.
.H 4 "\&Common interrupt pitfall: \f[I]use of non-reentrant functions"
.SETR subsec:Common-interrupt-pitfall-non-reentrant
.P
A special note here, integer multiplicative operators and floating-point\c
.IND "Floating point support"
 operations might be implemented using external support routines, depending on the target architecture. If an interrupt service routine needs to do any of these operations on a target where functions are non-reentrant by default, then the support routines (as mentioned in a following section) will have to be recompiled using the \f[I]\-\&\-stack-auto\c
.IND "--stack-auto"
\f[R] option and the source file will need to be compiled using the \f[I]\-\&\-int-long-reent\f[R]\c
.IND "--int-long-reent"
 compiler option. \c
.br
Note, the type promotion\c
.IND "type promotion"
 required by ANSI C can cause 16 bit routines to be used\ \f[B]!\f[R] without the programmer being aware of it. See f.e. the cast \f[CB](unsigned char)(tail\-1)\f[R] \f[B]within the if clause in section \c
.GETHN subsec:A-Step-by-Assembler-Introduction Rf37
.Rd Rf37
\*[Rf37].\f[R]
.P
Calling other functions from an interrupt service routine on a target where functions are non-reentrant by default is not recommended, avoid it if possible. Note that when some function is called from an interrupt service routine it should be preceded by a #pragma\ nooverlay\c
.IND "#pragma nooverlay"
 if it is not reentrant. Furthermore non-reentrant functions should not be called from the main program while the interrupt service routine might be active. They also must not be called from low priority interrupt service routines while a high priority interrupt service routine might be active. You could use semaphores or make the function \f[I]critical\f[R] if all parameters are passed in registers.\c
.br
 Also see section \c
.GETHN subsec:Overlaying Rf38
.Rd Rf38
\*[Rf38]\ about Overlaying and section \c
.GETHN subsec:Functions-using-private-banks Rf39
.Rd Rf39
\*[Rf39]\ about Functions using private register banks.
.H 3 "\&MCS51/DS390 Interrupt Service Routines"
.P
Interrupt\c
.IND "interrupt"
 numbers and the corresponding address & descriptions for the Standard 8051/8052 are listed below. SDCC will automatically adjust the \c
.IND "interrupt vector table"
 to the maximum interrupt number specified.\c
.br
.P
\c
.TK
.TS
center tab(	);
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |.
_
Interrupt #	Description	Vector Address
_
0	External 0	0x0003
_
1	Timer 0	0x000b
_
2	External 1	0x0013
_
3	Timer 1	0x001b
_
4	Serial	0x0023
_
5	Timer 2 (8052)	0x002b
_
\&...		...
_
n		0x0003 + 8*n
_
.TE
.TKE
\c
.br
.P
If the interrupt service routine is defined without \f[I]__using\c
.IND "using (mcs51, ds390 register bank)"
\c
.IND "__using (mcs51, ds390 register bank)"
\f[R] a register bank or with register bank 0 (\f[I]__using\f[R] (0)), the compiler will save the registers used by itself on the stack upon entry and restore them at exit, however if such an interrupt service routine calls another function then the entire register bank will be saved on the stack. This scheme may be advantageous for small interrupt service routines which have low register usage.
.P
If the interrupt service routine is defined to be using a specific register bank then only \f[I]a, b, dptr\f[R] & psw are saved and restored, if such an interrupt service routine calls another function (using another register bank) then the entire register bank of the called function will be saved on the stack\c
.IND "stack"
\&. This scheme is recommended for larger interrupt service routines.
.H 3 "\&HC08 Interrupt Service Routines"
.IND "HC08"
.P
Since the number of interrupts\c
.IND "HC08" "interrupt"
 available is chip specific and the interrupt vector table always ends at the last byte of memory, the interrupt numbers corresponds to the interrupt vectors in reverse order of address. For example, interrupt 1 will use the interrupt vector at 0xfffc, interrupt 2 will use the interrupt vector at 0xfffa, and so on. However, interrupt 0 (the reset vector at 0xfffe) is not redefinable in this way; instead see section \c
.GETHN subsec:MCS51-Startup-Code Rf40
.Rd Rf40
\*[Rf40] for details on customizing startup.
.H 3 "\&Z80, Z180 and eZ80 Interrupt Service Routines"
.P
The Z80\c
.IND "Z80"
 uses several different methods for determining the correct interrupt\c
.IND "Z80" "interrupt"
 vector depending on the hardware implementation. Therefore, SDCC does not attempt to generate an interrupt vector table.
.P
By default, SDCC generates code for a maskable interrupt, which uses a RETI instruction to return from the interrupt. To write an interrupt handler for the non-maskable interrupt, which needs a RETN instruction instead, leave out the interrupt number:
.DS I
.ft CR
\f[CR]void nmi_isr (void) __critical __interrupt
{
\ \ \ \ ...
}
.ft
.DE
.P
Since interrupts on the Z80 and Z180 are level-triggered (except for the NMI), interruptible interrupt handlers should only be used where hardware acknowledge is available.
.P
\c
.TK
.TS
tab(	);
| l | l | lw(1.74i) |
| l | l | lw(1.74i) |
| c | c | lw(1.74i) |
| c | c | cw(1.74i) |.
_
Type	Syntax	T{
Behaviour
T}
_
Interruptible interrupt handler	void f(void) __interrupt	T{
Interrupt handler can be interrupted by further interrupts
T}
_
Non-interruptible interrupt handler	void f(void) __critical __interrupt(0)	T{
Interrupt handler can be interrupted by NMI only
T}
_
NMI handler	void f(void) __critical __interrupt	T{
Interrupt handler can be interrupted by NMI only
T}
_
.TE
.TKE
.H 3 "\&Rabbit 2000, 3000, 3000A, 4000, 5000, and 6000 Interrupt Service Routines"
.P
SDCC generates an internal interrupt vector table, but does not attempt to generate an external interrupt vector table.
.P
\c
.TK
.TS
tab(	);
| l | l | lw(1.74i) |
| l | l | lw(1.74i) |
| c | c | lw(1.74i) |.
_
Type	Syntax	T{
Behaviour
T}
_
Interruptible interrupt handler	void f(void) __interrupt	T{
Interrupt handler can be interrupted by further interrupts of same priority
T}
_
Non-interruptible interrupt handler	void f(void) __critical __interrupt(0)	T{
Interrupt handler can be interrupted by interrupts of higher priority only. amd will be added to internal interrupt table as first entry.
T}
_
.TE
.TKE
.H 3 "\&SM83 and TLCS-90 Interrupt Service Routines"
.P
SDCC does not attempt to generate an interrupt vector table.
.P
\c
.TK
.TS
tab(	);
| l | l | lw(1.74i) |
| l | l | lw(1.74i) |
| c | c | lw(1.74i) |.
_
Type	Syntax	T{
Behaviour
T}
_
Interruptible interrupt handler	void f(void) __interrupt	T{
Interrupt handler can be interrupted by further interrupts
T}
_
Non-interruptible interrupt handler	void f(void) __critical __interrupt(0)	T{
Interrupt handler cannot be interrupted by further interrupts
T}
_
.TE
.TKE
.H 3 "\&Intel 8080 and 8085 Interrupt Service Routines"
.P
On the Intel 8080 and 8085, an interrupt service routine written with __interrupt re-enables interrupts with EI and returns with RET. SDCC does not generate an interrupt vector table; the handler must be reached through the target's own vectors (for example the 8085 RST and TRAP vectors). See section \c
.GETHN sec:Intel-8080-8085 Rf90
.Rd Rf90
\*[Rf90].
.H 3 "\&STM8 Interrupt Service Routines"
.P
The STM8 interrupt table contains 31 entries: Reset (used by SDCC for program startup), trap and user interrupts 0 to 29. Where the keyword \f[I]__interrupt\c
.IND "interrupt"
\f[R] is used for normal user interrupts, the \f[I]__trap\f[R] keyword is used for the trap handler:
.DS I
.ft CR
\f[CR]void handler (void) __trap
{
\ \ \ \ ...
}
.ft
.DE
.H 2 "\&Enabling and Disabling Interrupts"
.H 3 "\&Critical Functions and Critical Statements"
.P
A special keyword may be associated with a block or a function declaring it as \f[I]__critical\f[R]. SDCC will generate code to disable all interrupts\c
.IND "interrupt"
 upon entry to a critical function and restore the interrupt enable to the previous state before returning (for architectures where there is no efficient way to do so (sm83, tlcs90, stm8, i8080, i8085), interrupts will be unconditionally enabled instead). Nesting critical functions will need one additional byte on the stack\c
.IND "stack"
 for each call.
.DS I
.ft CR
\f[CR]int foo () __critical\c
.IND "critical"
\c
.IND "__critical"
\&
{
\ \ \ \ ...
\ \ \ \ ...
}
.ft
.DE
.P
The critical attribute maybe used with other attributes like \f[I]reentrant.\f[R]\c
.br
The keyword \f[I]__critical\f[R] may also be used to disable interrupts more locally:
.DS I
.ft CR
\f[CR]__critical{ i++; }
.ft
.DE
.P
More than one statement could have been included in the block.
.H 3 "\&Enabling and Disabling Interrupts directly"
.P
Interrupts\c
.IND "interrupt"
 can also be disabled and enabled directly (8051):
.DS I
.ft CR
\f[CR]EA = 0;\ \ \ \ \ \ \ \ \ \ \ \ or:\ \ \ \ \ \ \ \ \ \ \ EA_SAVE = EA;
\f[CR]...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ EA = 0;
\f[CR]EA = 1;\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ...
\f[CR]\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ EA = EA_SAVE;
.ft
.DE
.P
On other architectures which have separate opcodes for enabling and disabling interrupts you might want to make use of defines with inline assembly\c
.IND "Assembler routines"
 (HC08\c
.IND "HC08" "interrupt"
):
.DS I
.ft CR
\f[CR]#define CLI __asm\c
.IND "__asm"
\ \ cli\ \ __endasm\c
.IND "__endasm"
;
\f[CR]#define SEI __asm\ \ sei\ \ __endasm;
\f[CR]or for SDCC version 3.2.0 or newer:
\f[CR]#define CLI __asm__ (\[dq]cli\[dq]);
\f[CR]#define SEI __asm__ (\[dq]sei\[dq]);
.ft
.DE
.P
Note: it is sometimes sufficient to disable only a specific interrupt source like f.e. a timer or serial interrupt by manipulating an \f[I]interrupt mask\c
.IND "interrupt mask"
\f[R] register.
.P
Usually the time during which interrupts are disabled should be kept as short as possible. This minimizes both \f[I]interrupt latency\f[R]\c
.IND "interrupt latency"
 (the time between the occurrence of the interrupt and the execution of the first code in the interrupt routine) and \f[I]interrupt jitter\f[R]\c
.IND "interrupt jitter"
 (the difference between the shortest and the longest interrupt latency). These really are something different, f.e. a serial interrupt has to be served before its buffer overruns so it cares for the maximum interrupt latency, whereas it does not care about jitter. On a loudspeaker driven via a digital to analog converter which is fed by an interrupt a latency of a few milliseconds might be tolerable, whereas a much smaller jitter will be very audible.
.P
You can re-enable interrupts within an interrupt routine and on some architectures you can make use of two (or more) levels of \f[I]interrupt priorities\f[R]\c
.IND "interrupt priority"
\&. On some architectures which don't support interrupt priorities these can be implemented by manipulating the interrupt mask and re-enabling interrupts within the interrupt routine. Check there is sufficient space on the stack\c
.IND "stack"
 and don't add complexity unless you have to.
.H 3 "\&Semaphore locking (mcs51/ds390)"
.IND "semaphore"
.P
Some architectures (mcs51/ds390) have an atomic\c
.IND "atomic"
 bit test and clear instruction. These type of instructions are typically used in preemptive multitasking systems, where a routine f.e. claims the use of a data structure ('acquires a lock\c
.IND "lock"
 on it'), makes some modifications and then releases the lock when the data structure is consistent again. The instruction may also be used if interrupt and non-interrupt code have to compete for a resource. With the atomic bit test and clear instruction interrupts\c
.IND "interrupt"
 don't have to be disabled for the locking operation.
.P
SDCC generates this instruction if the source follows this pattern:
.DS I
.ft CR
\f[CR]volatile\c
.IND "volatile"
 bit resource_is_free;
\&
if (resource_is_free)
\ \ {
\ \ \ \ resource_is_free=0;
\ \ \ \ ...
\ \ \ \ resource_is_free=1;
\ \ }
.ft
.DE
.P
Note, mcs51 and ds390 support only an atomic\c
.IND "atomic"
 bit test and \f[I]clear\f[R] instruction (as opposed to atomic bit test and \f[I]set).\f[R]
.H 2 "\&Functions using private register banks (mcs51/ds390)"
.SETR subsec:Functions-using-private-banks
.P
Some architectures have support for quickly changing register sets. SDCC supports this feature with the \f[I]__using\c
.IND "using (mcs51, ds390 register bank)"
\c
.IND "__using (mcs51, ds390 register bank)"
\f[R] attribute (which tells the compiler to use a register bank\c
.IND "register bank (mcs51, ds390)"
 other than the default bank zero). It should only be applied to \f[I]interrupt\c
.IND "interrupt"
\f[R] functions (see footnote below). This will in most circumstances make the generated ISR code more efficient since it will not have to save registers on the stack.
.P
The \f[I]__using\f[R] attribute will have no effect on the generated code for a \f[I]non-interrupt\f[R] function (but may occasionally be useful anyway\*F\c
.FS
possible exception: if a function is called ONLY from 'interrupt' functions using a particular bank, it can be declared with the same 'using' attribute as the calling 'interrupt' functions. For instance, if you have several ISRs using bank one, and all of them call memcpy(), it might make sense to create a specialized version of memcpy() 'using 1', since this would prevent the ISR from having to save bank zero to the stack on entry and switch to bank zero before calling the function
.FE
).\c
.br
\f[I](pending: Note, nowadays the\f[R] __using \f[I]attribute has an effect on\f[R] \f[I]the generated code for a\f[R] non-interrupt \f[I]function\f[R].\f[I])\f[R]
.P
An \f[I]interrupt\f[R] function using a non-zero bank will assume that it can trash that register bank, and will not save it. Since high-priority interrupts\c
.IND "interrupts"
\c
.IND "interrupt priority"
 can interrupt low-priority ones on the 8051 and friends, this means that if a high-priority ISR \f[I]using\f[R] a particular bank occurs while processing a low-priority ISR \f[I]using\f[R] the same bank, terrible and bad things can happen. To prevent this, no single register bank should be \f[I]used\f[R] by both a high priority and a low priority ISR. This is probably most easily done by having all high priority ISRs use one bank and all low priority ISRs use another. If you have an ISR which can change priority at runtime, you're on your own: I suggest using the default bank zero and taking the small performance hit.
.P
It is most efficient if your ISR calls no other functions. If your ISR must call other functions, it is most efficient if those functions use the same bank as the ISR (see note 1 below); the next best is if the called functions use bank zero. It is very inefficient to call a function using a different, non-zero bank from an ISR.
.H 2 "\&Inline Assembler Code"
.SETR sec:Inline-Assembler-Code
.IND "Assembler routines"
.H 3 "\&Inline Assembler Code Formats"
.P
SDCC supports two formats for inline assembler code definition:
.H 4 "\&Old __asm ... __endasm; Format"
.P
Most of inline assembler code examples in this manual use the old inline assembler code format, but the new format could be used equivalently.
.P
Example:
.DS I
.ft CR
\f[CR]__asm
\ \ \ \ ; This is a comment
\ \ \ \ label:
\ \ \ \ \ \ \ \ nop
__endasm;
.ft
.DE
.P
Note: As of SDCC 4.2.9, assembler comments occurring in this type of inline assembler block are affected by macro expansion.
.H 4 "\&New __asm__ (\[lq]inline_assembler_code\[rq]) Format"
.P
The __asm__ inline assembler code format was introduced in SDCC version 3.2.0. Its main advantage is that it is compatible with all standard compliant C preprocessors.
.P
Example:
.DS I
.ft CR
\f[CR]__asm__ (\[dq]; This is a comment\[rs]nlabel:\[rs]n\[rs]tnop\[dq]);
.ft
.DE
.P
Or for better readability:
.DS I
.ft CR
\f[CR]__asm__ (
\f[CR]\[dq]; This is a comment\[rs]n\[dq]
\f[CR]\[dq]label:\[rs]n\[dq]
\f[CR]\[dq]\ \ \ \ nop\[dq]
\f[CR]);
.ft
.DE
.H 3 "\&A Step by Step Introduction"
.SETR subsec:A-Step-by-Assembler-Introduction
.P
Starting from a small snippet of c-code this example shows for the MCS51 how to use inline assembly, access variables, a function parameter and an array in xdata memory. The example uses an MCS51 here but is easily adapted for other architectures. This is a buffer routine which should be optimized:
.DS I
.ft CR
\f[CR]\s[-2]unsigned char __far\c
.IND "__far (named address space)"
 __at\c
.IND "__at"
(0x7f00) buf[0x100];\c
.IND "Aligned array"
\&
unsigned char head, tail;\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /* if interrupts\c
.IND "interrupt"
 are involved see
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ section \c
.GETHN subsec:Common-interrupt-pitfall-volatile Rf41
.Rd Rf41
\*[Rf41] about \f[CB]volatile\f[CR] */
\&
void to_buffer( unsigned char c )
{
\ \ \ \ if( head != (unsigned char)(tail\-1) )\ /* cast \f[CB]needed\f[CR] to avoid promotion\c
.IND "promotion to signed int"
\c
.IND "type promotion"
 to integer */\ \f[B]!\f[R]
\ \ \ \ \ \ \ \ buf[ head++ ] = c;\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /* access to a 256 byte aligned array */
} \s[0]
.ft
.DE
.P
If the code snippet (assume it is saved in buffer.c) is compiled with SDCC then a corresponding buffer.asm file is generated. We define a new function \f[CR]to_buffer_asm()\f[R] in file buffer.c in which we cut and paste the generated code, removing unwanted comments and some ':'. Then add \[lq]\f[B]__asm\f[R]\[rq] and \[lq]\f[B]__endasm;\f[R]\[rq]\*F\c
.FS
Note, that the single underscore form (_asm and _endasm) are not C99 compatible, and for C99 compatibility, the double-underscore form (__asm and __endasm) has to be used. The latter is also used in the library functions.
.FE
 to the beginning and the end of the function body:
.DS I
.ft CR
\f[CR]\s[-2]/* With a cut and paste from the .asm file, we have something to start with.
\ \ \ The function is not yet OK! (registers aren't saved) */
void to_buffer_asm( unsigned char c )
{
\ \ \ \ __asm\c
.IND "__asm"
\&
\ \ \ \ mov\ \ r2,dpl
;buffer.c if( head != (unsigned char)(tail\-1) ) \ /* cast \f[CB]needed\f[CR] to avoid promotion\c
.IND "promotion to signed int"
\c
.IND "type promotion"
 to integer */
\ \ \ \ mov\ \ a,_tail
\ \ \ \ dec\ \ a
\ \ \ \ mov\ \ r3,a
\ \ \ \ mov\ \ a,_head
\ \ \ \ cjne a,ar3,00106$
\ \ \ \ ret
00106$:
;buffer.c buf[ head++ ] = c; /* access to a 256 byte aligned array */\c
.IND "Aligned array"
\&
\ \ \ \ mov\ \ r3,_head
\ \ \ \ inc\ \ _head
\ \ \ \ mov\ \ dpl,r3
\ \ \ \ mov\ \ dph,#(_buf >> 8)
\ \ \ \ mov\ \ a,r2
\ \ \ \ movx @dptr,a
00103$:
\ \ \ \ ret
\ \ \ \ __endasm\c
.IND "__endasm"
;
} \s[0]
.ft
.DE
.P
The new file buffer.c should compile with only one warning about the unreferenced function argument 'c'. Now we hand-optimize the assembly code and insert an #define USE_ASSEMBLY (1) and finally have:
.DS I
.ft CR
\f[CR]\s[-2]unsigned char __far __at(0x7f00) buf[0x100];
unsigned char head, tail;
#define USE_ASSEMBLY (1)
\&
#if !USE_ASSEMBLY
\&
void to_buffer( unsigned char c )
{
\ \ \ \ if( head != (unsigned char)(tail\-1) )
\ \ \ \ \ \ \ \ buf[ head++ ] = c;
}
\&
#else
\&
void to_buffer( unsigned char c )
{
\ \ \ \ c; // to avoid warning: unreferenced function argument
\ \ \ \ __asm\c
.IND "__asm"
\&
\ \ \ \ \ \ \ \ ; save used registers here.
\ \ \ \ \ \ \ \ ; If we were still using r2,r3 we would have to push them here.
; if( head != (unsigned char)(tail\-1) )
\ \ \ \ \ \ \ \ mov\  a,_tail
\ \ \ \ \ \ \ \ dec\  a
\ \ \ \ \ \ \ \ xrl\  a,_head
\ \ \ \ \ \ \ \ ; we could do an ANL a,#0x0f here to use a smaller buffer (see below)
\ \ \ \ \ \ \ \ jz\ \  t_b_end$
\ \ \ \ \ \ \ \ ;
; buf[ head++ ] = c;
\ \ \ \ \ \ \ \ mov\  a,dpl \ \ \ \ \ \ \ ; dpl holds lower byte of function argument
\ \ \ \ \ \ \ \ mov\  dpl,_head \ \ \ ; buf is 0x100 byte aligned so head can be used directly
\ \ \ \ \ \ \ \ mov\  dph,#(_buf>>8)
\ \ \ \ \ \ \ \ movx @dptr,a
\ \ \ \ \ \ \ \ inc \ _head
\ \ \ \ \ \ \ \ ; we could do an ANL _head,#0x0f here to use a smaller buffer (see above)
t_b_end$:
\ \ \ \ \ \ \ \ ; restore used registers here
\ \ \ \ __endasm\c
.IND "__endasm"
;
}
#endif\s[0]
.ft
.DE
.P
The inline assembler code can contain any valid code understood by the assembler, this includes any assembler directives and comment lines. The assembler does not like some characters like ':' or ''' in comments. You'll find an 100+ pages assembler manual in sdcc/sdas/doc/asmlnk.txt\c
.IND "sdas (sdasgb, sdas6808, sdas8051, sdasz80)"
\c
.IND "Assembler documentation"
 or online at \c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/sdas/doc/asmlnk.txt" "" "."
.P
The compiler does not do any validation of the code within the \f[CR]__asm\c
.IND "__asm"
 ... __endasm\s[-2]\c
.IND "__endasm"
\s[0];\f[R] keyword pair. Specifically it will not know which registers are used and thus register pushing/popping\c
.IND "push/pop"
 has to be done manually.
.P
It is required that each assembly instruction be placed on a separate line. This is also recommended for labels (as the example shows). This is especially important to note when the inline assembler is placed in a C preprocessor macro as the preprocessor will normally put all replacing code on a single line. Only when the macro has each assembly instruction on a single line that ends with a line continuation character will it be placed as separate lines in the resulting .asm file.
.DS I
.ft CR
\f[CR]\s[-2]#define\ DELAY\ \ \ \[rs]
\ \ \ \ __asm\ \ \ \ \ \ \ \[rs]
\ \ \ \ \ \ \ \ nop\ \ \ \ \ \[rs]
\ \ \ \ \ \ \ \ nop\ \ \ \ \ \[rs]
\ \ \ \ __endasm\s[0]
.ft
.DE
.P
When the \-\&\-\f[I]peep-asm\c
.IND "--peep-asm"
\f[R] command line option is used, the inline assembler code will be passed through the peephole optimizer\c
.IND "Peephole optimizer"
\&. There are only a few (if any) cases where this option makes sense, it might cause some unexpected changes in the inline assembler code. Please go through the peephole optimizer rules defined in file \f[I]peeph.def\f[R] before using this option.
.H 3 "\&Naked Functions"
.SETR subsec:Naked-Functions
.IND "Naked functions"
.P
A special keyword may be associated with a function declaring it as \f[I]__naked\c
.IND "_naked"
\c
.IND "__naked"
\&.\f[R] The \f[I]_naked\f[R] function modifier attribute prevents the compiler from generating prologue\c
.IND "function prologue"
 and epilogue\c
.IND "function epilogue"
 code for that function. This means that the user is entirely responsible for such things as saving any registers that may need to be preserved, selecting the proper register bank, generating the \f[I]return\f[R] instruction at the end, etc. Practically, this means that the contents of the function must be written in inline assembler. This is particularly useful for interrupt functions, which can have a large (and often unnecessary) prologue/epilogue. For example, compare the code generated by these two functions:
.DS I
.ft CR
\f[CR]volatile\c
.IND "volatile"
 __data unsigned char counter;
\&
void simpleInterrupt(void) __interrupt\c
.IND "interrupt"
\c
.IND "__interrupt"
 (1)
{
\ \ \ \ counter++;
}
\&
void nakedInterrupt(void) __interrupt (2) __naked
{
\ \ \ \ __asm\c
.IND "__asm"
\&
\ \ \ \ \ \ inc\ \ \ \ \ _counter ; does not change flags, no need to save psw
\ \ \ \ \ \ reti\ \ \ \ ; MUST explicitly include ret or reti in _naked function.
\ \ \ \ __endasm\c
.IND "__endasm"
;
}
.ft
.DE
.P
For an 8051 target, the generated simpleInterrupt looks like:
.DS I
.ft CR
\f[CR]Note, this is an \f[CI]outdated\f[CR] example, recent versions of SDCC generate
the \f[CI]same\f[CR] code for simpleInterrupt() and nakedInterrupt()!
\&
_simpleInterrupt:
\ \ \ \ push\ \ \ \ acc
\ \ \ \ push\ \ \ \ b
\ \ \ \ push\ \ \ \ dpl
\ \ \ \ push\ \ \ \ dph
\ \ \ \ push\ \ \ \ psw
\ \ \ \ mov\ \ \ \ \ psw,#0x00
\ \ \ \ inc\ \ \ \ \ _counter
\ \ \ \ pop\ \ \ \ \ psw
\ \ \ \ pop\ \ \ \ \ dph
\ \ \ \ pop\ \ \ \ \ dpl
\ \ \ \ pop\ \ \ \ \ b
\ \ \ \ pop\ \ \ \ \ acc
\ \ \ \ reti
.ft
.DE
.P
whereas nakedInterrupt looks like:
.DS I
.ft CR
\f[CR]_nakedInterrupt:
\ \ \ \ inc\ \ \ \ _counter ; does not change flags, no need to save psw
\ \ \ \ reti\ \ \ \ \ \ \ \ \ \ \ \ ; MUST explicitly include ret or reti in _naked function
.ft
.DE
.P
The related directive #pragma exclude\c
.IND "#pragma exclude"
 allows a more fine grained control over pushing & popping\c
.IND "push/pop"
 the registers.
.P
While there is nothing preventing you from writing C code inside a \f[CR]_naked\f[R] function, there are many ways to shoot yourself in the foot doing this, and it is recommended that you stick to inline assembler.
.H 3 "\&Use of Labels within Inline Assembler"
.P
SDCC allows the use of in-line assembler with a few restrictions regarding labels. All labels defined within inline assembler code have to be of the form \f[I]nnnnn$\f[R] where nnnnn is a number less than 100 (which implies a limit of utmost 100 inline assembler labels \f[I]per function\f[R]).\*F\c
.FS
This is a slightly more stringent rule than absolutely necessary, but stays always on the safe side. Labels in the form of nnnnn$ are local labels in the assembler, locality of which is confined within two labels of the standard form. The compiler uses the same form for labels within a function (but starting from nnnnn=00100); and places always a standard label at the beginning of a function, thus limiting the locality of labels within the scope of the function. So, if the inline assembler part would be embedded into C-code, an improperly placed non-local label in the assembler would break up the reference space for labels created by the compiler for the C-code, leading to an assembling error.
The numeric part of local labels does not need to have 5 digits (although this is the form of labels output by the compiler), any valid integer will do. Please refer to the assemblers documentation for further details.
.FE
.DS I
.ft CR
\f[CR]__asm\c
.IND "__asm"
\&
\ \ \ \ mov\ \ \ \ \ b,#10
00001$:
\ \ \ \ djnz\ \ \ \ b,00001$
__endasm\c
.IND "__endasm"
 ;
.ft
.DE
.P
Inline assembler code cannot reference any C-labels, however it can reference labels\c
.IND "Labels"
 defined by the inline assembler, e.g.:
.DS I
.ft CR
\f[CR]foo() {
\ \ \ \ /* some c code */
\ \ \ \ __asm
\ \ \ \ \ \ ; some assembler code
\ \ \ \ \ \ ljmp 0003$
\ \ \ \ __endasm;
\ \ \ \ /* some more c code */
clabel:\ \ /* inline assembler cannot reference this label */ \*F\c
.FS
Here, the C-label \f[CR]clabel\f[R] is translated by the compiler into a local label, so the locality of labels within the function is not broken.
.FE
\&
\ \ \ \ __asm
\ \ \ \ 0003$: ;label (can be referenced by inline assembler only)
\ \ \ \ __endasm\c
.IND "__endasm"
 ;
\ \ \ \ /* some more c code */
}
.ft
.DE
.P
In other words inline assembly code can access labels defined in inline assembly within the scope of the function. The same goes the other way, i.e. labels defines in inline assembly can not be accessed by C statements.
.H 2 "\&Support routines for integer multiplicative operators"
.P
Depending on the target architecture, some integer multiplicative operators might be implemented by support routines. These support routines exist in portable C versions to facilitate porting to other MCUs, although depending on the target, assembler routines might be used instead. The following files contain some of the described routines, all of them can be found in <installdir>/share/sdcc/lib.\c
.br
.P
\c
.TK
.TS
center tab(	);
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |.
_
\f[B]Function\f[R]	\f[B]Description\f[R]
_
_mulint.c	16 bit multiplication
_
_divsint.c	signed 16 bit division (calls _divuint)
_
_divuint.c	unsigned 16 bit division
_
_modsint.c	signed 16 bit modulus (calls _moduint)
_
_moduint.c	unsigned 16 bit modulus
_
_mullong.c	32 bit multiplication
_
_divslong.c	signed 32 division (calls _divulong)
_
_divulong.c	unsigned 32 division
_
_modslong.c	signed 32 bit modulus (calls _modulong)
_
_modulong.c	unsigned 32 bit modulus
_
.TE
.TKE
\c
.br
.P
In the mcs51, ds390, hc08, s08, pdk13, pdk14, pdk15, pic14 and pic16 backends they are by default compiled as \f[I]non-reentrant\f[R]\c
.IND "reentrant"
; when targeting on of these architectures, interrupt\c
.IND "interrupt"
 service routines should not do any of the above operations. If this is unavoidable then the above routines will need to be compiled with the \f[I]\-\&\-stack-auto\c
.IND "--stack-auto"
\f[R] option, after which the source program will have to be compiled with \f[I]\-\&\-int-long-reent\c
.IND "--int-long-reent"
\f[R] option. Notice that you don't have to call these routines directly. The compiler will use them automatically every time an integer operation is required.
.H 2 "\&Floating Point Support"
.IND "Floating point support"
.P
SDCC supports (single precision 4 bytes) floating point numbers; the format is somewhat similar to IEEE, but it is not IEEE; in particular, denormalized floating \-point numbers are not supported. The floating point support routines are derived from gcc's floatlib.c and consist of the following routines:\c
.br
.P
\c
.TK
.TS
center tab(	);
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |.
_
Function	Description
_
_fsadd.c	add floating point numbers
_
_fssub.c	subtract floating point numbers
_
_fsdiv.c	divide floating point numbers
_
_fsmul.c	multiply floating point numbers
_
_fs2uchar.c	convert floating point to unsigned char
_
_fs2schar.c	convert floating point to signed char
_
_fs2uint.c	convert floating point to unsigned int
_
_fs2sint.c	convert floating point to signed int
_
_fs2ulong.c	convert floating point to unsigned long
_
_fs2slong.c	convert floating point to signed long
_
_uchar2fs.c	convert unsigned char to floating point
_
_schar2fs.c	convert signed char to floating point
_
_uint2fs.c	convert unsigned int to floating point
_
_sint2fs.c	convert signed int to floating point
_
_ulong2fs.c	convert unsigned long to floating point
_
_slong2fs.c	convert signed long to floating point
_
_ulonglong2fs.c	convert unsigned long long to floating point
_
_slonglong2fs.c	convert singed long long to floating point
_
.TE
.TKE
\s[-2]\c
.br
\s[0]
.H 2 "\&Library Routines"
.IND "Libraries"
.P
\f[I]<pending: this is messy and incomplete \- a little more information is at \f[R]\c
.URL "http://sdcc.sourceforge.net/wiki/index.php/List_of_the_SDCC_library" ""
>
.H 3 "\&Compiler support routines (_gptrget, _mulint etc.)"
.H 3 "\&Stdclib functions (puts, printf, strcat etc.)"
.H 4 "\&<stdio.h>"
.H 5 "\&getchar(), putchar()"
.P
\c
.IND "<stdio.h>"
As usual on embedded systems you have to provide your own \f[CR]getchar()\c
.IND "getchar()"
\f[R] and \f[CR]putchar()\c
.IND "putchar()"
\c
.IND "printf()" "putchar()"
\f[R] routines. SDCC does not know whether the system connects to a serial line with or without handshake, LCD, keyboard or other device. And whether a \f[CR]lf\f[R] to \f[CR]crlf\f[R] conversion within \f[CR]putchar()\f[R] is intended. You'll find examples for serial routines f.e. in sdcc/device/lib. For the mcs51 this minimalistic polling \f[CR]putchar()\f[R] routine might be a start:
.DS I
.ft CR
\f[CR]int putchar (int c) {
\ \ \ \ while (!TI)\ \ \  /* assumes UART is initialized */
\ \ \ \ \ \ \ \ ;
\ \ \ \ TI = 0;
\ \ \ \ SBUF = c;
\f[CR]\ \ \ \ return c;
\f[CR]}
.ft
.DE
.H 5 "\&printf()"
.P
The default \f[CR]printf()\c
.IND "printf()"
\f[R] implementation in \f[CR]printf_large.c\f[R] does not support float\c
.IND "Floating point support"
 (except on ds390), only <NO FLOAT>\c
.IND "<NO FLOAT>"
\c
.IND "printf()" "floating point support"
 will be printed instead of the value. To enable floating point output, recompile it with the option \f[I]\-\&DUSE_FLOATS=1\c
.IND "USE_FLOATS"
\f[R] on the command line. Use \f[I]\-\&\-model-large\c
.IND "--model-large"
\f[R] for the mcs51 port, since this uses a lot of memory. To enable float support for the pic16 targets, see \c
.GETHN subsec:pic16Libraries Rf42
.Rd Rf42
\*[Rf42].
.P
If you're short on code memory you might want to use \f[CR]printf_small()\c
.IND "printf()" "printf_small()"
\f[R] \f[I]instead\f[R] of \f[CR]printf().\f[R] For the mcs51 there additionally are assembly versions \f[CR]printf_tiny()\c
.IND "printf()" "printf_tiny() (mcs51)"
\f[R] (subset of printf using less than 270 bytes) and \f[CR]printf_fast()\c
.IND "printf()" "printf_fast() (mcs51)"
\f[R] and \f[CR]printf_fast_f()\c
.IND "printf()" "printf_fast_f() (mcs51)"
\f[R] (floating-point aware version of printf_fast) which should fit the requirements of many embedded systems (printf_fast() can be customized by unsetting #defines to \f[I]not\f[R] support long variables and field widths). Be sure to use only one of these printf options within a project.\c
.br
.P
Feature matrix of different \f[I]printf\f[R] options on mcs51.
.P
\c
.TK
.TS
tab(	);
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |
| cw(0.64i) | c | cw(0.55i) | cw(0.46i) | c | cw(0.55i) | c |.
_
T{
\f[B]\s[+2]mcs51\f[R]\s[0]
T}	T{
printf\c
.IND "printf()"
T}	T{
printf \s[-2]USE_FLOATS=1\s[0]
T}	T{
printf_small
T}	printf_fast	T{
printf_fast_f
T}	printf_tiny
_
T{
filename
T}	\s[-2]printf_large.c\s[0]	T{
\s[-2]printf_large.c\s[0]
T}	T{
\s[-2]printfl.c\s[0]
T}	\s[-2]printf_fast.c\s[0]	T{
\s[-2]printf_fast_f.c\s[0]
T}	\s[-2]printf_tiny.c\s[0]
_
T{
\[lq]Hello World\[rq] size
.br
small / large
T}	1.7k / 2.4k	T{
4.3k / 5.6k
T}	T{
1.2k / 1.8k
T}	1.3k / 1.3k	T{
1.9k / 1.9k
T}	0.44k / 0.44k
_
T{
code size
.br
small / large
T}	1.4k / 2.0k	T{
2.8k / 3.7k
T}	T{
0.45k / 0.47k (+ _ltoa)
T}	1.2k / 1.2k	T{
1.6k / 1.6k
T}	0.26k / 0.26k
_
T{
formats
T}	cdi\f[I]o\f[R]psux	T{
cdfi\f[I]o\f[R]psux
T}	T{
cd\f[I]o\f[R]sx
T}	cdsux	T{
cdfsux
T}	cdsux
_
T{
long (32 bit) support
T}	x	T{
x
T}	T{
x
T}	x	T{
x
T}	\-
_
T{
byte arguments on stack
T}	b	T{
b
T}	T{
\-
T}	\-	T{
\-
T}	\-
_
T{
float format\c
.IND "Floating point support"
T}	\-	T{
%f
T}	T{
\-
T}	\-	T{
%f\u\s-2a\s+2\d
T}	\-
_
T{
float formats %e %g
T}	\-	T{
\-
T}	T{
\-
T}	\-	T{
\-
T}	\-
_
T{
field width
T}	x	T{
x
T}	T{
\-
T}	x	T{
x
T}	\-
T{
string speed\u\s-2b\s+2\d,
.br
small / large
T}	1.52 / 2.59 ms	T{
1.53 / 2.62 ms
T}	T{
0.92 / 0.93 ms
T}	0.45 / 0.45 ms	T{
0.46 / 0.46 ms
T}	0.45 / 0.45 ms
T{
int speed\u\s-2c\s+2\d,
.br
small / large
T}	3.01 / 3.61 ms	T{
3.01 / 3.61 ms
T}	T{
3.51 / 18.13 ms
T}	0.22 / 0.22 ms	T{
0.23 / 0.23 ms
T}	0.25 / 0.25 ms\u\s-2d\s+2\d
T{
long speed\u\s-2e\s+2\d,
.br
small / large
T}	5.37 / 6.31 ms	T{
5.37 / 6.31 ms
T}	T{
8.71 / 40.65 ms
T}	0.40 / 0.40 ms	T{
0.40 / 0.40 ms
T}	\-
T{
float speed\u\s-2f\s+2\d,
.br
small / large
T}	\-	T{
7.49 / 22.47 ms
T}	T{
\-
T}	\-	T{
1.04 / 1.04 ms
T}	\-
_
.TE
.TKE
.FS a
Range limited to +/\- 4294967040, precision limited to 8 digits past decimal
.FE
.FS b
Execution time of printf("%s%c%s%c%c%c", "Hello", ' ', "World", '!', '\[rs]r', '\[rs]n'); standard 8051 @ 22.1184 MHz, empty putchar()
.FE
.FS c
Execution time of printf("%d", \-12345); standard 8051 @ 22.1184 MHz, empty putchar()
.FE
.FS d
printf_tiny integer speed is data dependent, worst case is 0.33 ms
.FE
.FS e
Execution time of printf("%ld", \-123456789); standard 8051 @ 22.1184 MHz, empty putchar()
.FE
.FS f
Execution time of printf("%.3f", \-12345.678); standard 8051 @ 22.1184 MHz, empty putchar()
.FE
.H 4 "\&<malloc.h>"
.IND "malloc.h"
.P
As of SDCC 2.6.2 you no longer need to call an initialization routine before using dynamic memory allocation\c
.IND "dynamic memory allocation (malloc)"
 and a default heap\c
.IND "heap (malloc)"
 space of 1024 bytes is provided for malloc to allocate memory from. If you need a different heap size you need to recompile _heap.c with the required size defined in HEAP_SIZE. It is recommended to make a copy of this file into your project directory and compile it there with:
.DS I
.ft CR
\f[CR]sdcc \-c _heap.c \-D HEAP_SIZE=2048
.ft
.DE
.P
And then link it with:
.DS I
.ft CR
\f[CR]sdcc main.rel _heap.rel
.ft
.DE
.H 3 "\&Math functions (sinf, powf, sqrtf etc.)"
.H 4 "\&<math.h>"
.P
See definitions in file <math.h>.
.H 3 "\&Other libraries"
.P
Libraries\c
.IND "Libraries"
 included in SDCC should have a license at least as liberal as the GPLv2+LE\c
.IND "GPLv2+LE"
\&. Exception are pic device libraries and header files which are derived from Microchip header (.inc) and linker script (.lkr) files. Microchip requires that "The header files should state that they are only to be used with authentic Microchip devices" which makes them incompatible with GPL.
.P
If you have ported some library or want to share experience about some code which f.e. falls into any of these categories Busses (I\u\s-22\s+2\dC, CAN, Ethernet, Profibus, Modbus, USB, SPI, JTAG ...), Media (IDE, Memory cards, eeprom, flash...), En-/Decryption, Remote debugging, Realtime kernel, Keyboard, LCD, RTC, FPGA, PID then the sdcc-user mailing list \c
.URL "http://sourceforge.net/p/sdcc/mailman/sdcc-user/" ""
 would certainly like to hear about it.
.P
Programmers coding for embedded systems are not especially famous for being enthusiastic, so don't expect a big hurray but as the mailing list is searchable these references are very valuable. Let's help to create a climate where information is shared.
.H 2 "\&Memory Models"
.H 3 "\&MCS51 Memory Models"
.IND "Memory model"
.IND "MCS51 memory model"
.H 4 "\&Small, Medium, Large and Huge"
.P
SDCC allows four memory models for MCS51 code, \f[I]small, medium, large\f[R] and \f[I]huge\f[R]. Modules compiled with different memory models should \f[I]never\f[R] be combined together or the results would be unpredictable. The library routines supplied with the compiler are compiled for all models (however, the libraries for \-\&\-stack-auto are compiled for the small and large models only). The compiled library modules are contained in separate directories as small, medium, large and huge so that you can link to the appropriate set.
.P
When the medium, large or huge model is used all variables declared without specifying an intrinsic named address space will be allocated into the external ram, this includes all parameters and local variables (for non-reentrant\c
.IND "reentrant"
 functions). Medium model uses pdata and large and huge models use xdata. When the small model is used variables without an explicitly specified intrinsic named address space are allocated in the internal ram.
.P
The huge model compiles all functions as \f[I]banked\f[R] (see section \c
.GETHN subsec:Bankswitching Rf43
.Rd Rf43
\*[Rf43]) and is otherwise equal to large for now. All other models compile the functions without bankswitching by default.
.P
Judicious usage of the processor specific intrinsic named address spaces\c
.IND "intrinsic named address space"
 and the 'reentrant' function type will yield much more efficient code, than using the large model. Several optimizations are disabled when the program is compiled using the large model, it is therefore recommended that the small model be used unless absolutely required.
.H 4 "\&External Stack"
.SETR subsec:External-Stack
.IND "stack"
.IND "External stack (mcs51)"
.P
The external stack (\-\&\-xstack option\c
.IND "--xstack"
) is located in pdata\c
.IND "__pdata (mcs51, ds390 named address space)"
 memory (usually at the start of the external ram segment) and uses all unused space in pdata (max. 256 bytes). When \-\&\-xstack option is used to compile the program, the parameters and local variables\c
.IND "local variables"
 of all reentrant functions are allocated in this area. This option is provided for programs with large stack space requirements. When used with the \-\&\-stack-auto\c
.IND "--stack-auto"
 option, all parameters and local variables are allocated on the external stack (note: support libraries will need to be recompiled with the same options. There is a predefined target in the library makefile).
.P
The compiler outputs the higher order address byte of the external ram segment into port P2\c
.IND "P2 (mcs51 sfr)"
 (see also section \c
.GETHN subsec:MCS51-variants Rf44
.Rd Rf44
\*[Rf44]), therefore when using the External Stack option, this port \f[I]may not\f[R] be used by the application program.
.H 3 "\&DS390 Memory Model"
.IND "Memory model"
.IND "DS390 memory model"
.P
The only model supported is Flat 24\c
.IND "Flat 24 (DS390 memory model)"
\&. This generates code for the 24 bit contiguous addressing mode of the Dallas DS80C390 part. In this mode, up to four meg of external RAM or code space can be directly addressed. See the data sheets at www.dalsemi.com for further information on this part.\c
.sp
Note that the compiler does not generate any code to place the processor into 24 bit mode (although \f[I]tinibios\f[R] in the ds390 libraries will do that for you). If you don't use \f[I]tinibios\f[R]\c
.IND "Tinibios (DS390)"
, the boot loader or similar code must ensure that the processor is in 24 bit contiguous addressing mode before calling the SDCC startup code.\c
.sp
Like the \f[I]\-\&\-model-large\f[R] option, variables will by default be placed into the XDATA segment.\c
.sp
Segments may be placed anywhere in the 4 meg address space using the usual \-\&\-*-loc options. Note that if any segments are located above 64K, the \-r flag must be passed to the linker to generate the proper segment relocations, and the Intel HEX output format must be used. The \-r flag can be passed to the linker by using the option \f[I]\-Wl-r\f[R] on the SDCC command line. However, currently the linker can not handle code segments > 64k.
.H 3 "\&STM8 Memory Models"
.IND "Memory model"
.IND "STM8 memory models"
.P
SDCC implements two memory models for the STM8: \f[I]medium\f[R] (default) and \f[I]large\f[R]. Modules compiled with different memory models should \f[I]never\f[R] be combined together. The library routines supplied with the compiler are compiled for all models.
.P
In the medium model the address space is 16 bits for both objects and functions, allowing for a memory space of 64 KB. Since the STM8 typically has Flash starting at 0x8000, this means that only up to 32 KB of Flash can be used (most STM8 devices don't have more than 32 KB of Flash).
.P
In the large memory model, the address space is 16 bits for objects and 24 bits for functions. Since the STM8 typically has flash starting at 0x8000, this means that up to 32 KB of flash can be used for constant data, while the whole Flash can be used for functions. Code generated for the large model is slightly bigger and slower and needs slightly more stack space than code generated for the medium model.
.H 3 "\&MOS6502 Memory Models"
.IND "Memory model"
.IND "MOS6502 memory models"
.P
SDCC implements two memory models for the MOS6502: \f[I]small\f[R] and \f[I]large\f[R] (default). Modules compiled with different memory models should \f[I]never\f[R] be combined together. The library routines supplied with the compiler are compiled for all models.
.P
In the small model all data objects are placed by default in Page Zero. This is normally only useful in embedded systems.
.P
In the large memory model, data is placed by default in 16-bit addressable memory. Critical data can still be placed in Page Zero using the __ZP or __near storage modifier. Code generated for the large model is slightly bigger and slower than code generated for the small model.
.H 2 "\&Pragmas"
.SETR sec:Pragmas
.IND "Pragmas"
.P
Pragmas are used to turn on and/or off certain compiler options. Some of them are closely related to corresponding command-line options (see section \c
.GETHN sec:Command-Line-Options Rf45
.Rd Rf45
\c
.GETPN sec:Command-Line-Options Rf45p
\*[Rf45] on page \*[Rf45p]).\c
.br
Pragmas should be placed before and/or after a function, placing pragmas inside a function body could have unpredictable results.\c
.sp
SDCC supports the following #pragma directives:
.BL
.LI
\f[B]save\f[R]\c
.IND "#pragma save"
 \- this will save most current options to the save/restore stack. See #pragma\ restore.
.LI
\f[B]restore\f[R]\c
.IND "#pragma restore"
 \- will restore saved options from the last save. saves & restores can be nested. SDCC uses a save/restore stack: save pushes current options to the stack, restore pulls current options from the stack. See #pragma\ save.\c
.br
.LI
\f[B]callee_saves\f[R]\c
.IND "#pragma callee_saves"
\c
.IND "function prologue"
 function1[,function2[,function3...]] \c
.SETR ite:callee_saves-function1-.function2-.function3...----
\- The compiler by default uses a caller saves convention for register saving across function calls, however this can cause unnecessary register pushing and popping\c
.IND "push/pop"
 when calling small functions from larger functions. This option can be used to switch off the register saving convention for the function names specified. The compiler will not save registers when calling these functions, extra code need to be manually inserted at the entry and exit for these functions to save and restore the registers used by these functions, this can SUBSTANTIALLY reduce code and improve run time performance of the generated code. In the future the compiler (with inter procedural analysis) may be able to determine the appropriate scheme to use for each function call. If \-\&\-callee-saves command line option is used (see page \c
.GETPN opt:--callee-saves-function1-.function2--.function3-... Rf46
on page \*[Rf46]), the function names specified in #pragma\ callee_saves\c
.IND "#pragma callee_saves"
 is appended to the list of functions specified in the command line.
.LI
\f[B]exclude\f[R]\c
.IND "#pragma exclude"
 none | {acc[,b[,dpl[,dph[,bits]]]]} \- The exclude pragma disables the generation of pairs of push/pop\c
.IND "push/pop"
 instructions in \f[I]I\f[R]nterrupt\c
.IND "interrupt"
 \f[I]S\f[R]ervice \f[I]R\f[R]outines. The directive should be placed immediately before the ISR function definition and it affects ALL ISR functions following it. To enable the normal register saving for ISR functions use #pragma\ exclude\ none\c
.IND "#pragma exclude"
\&. See also the related keyword \f[I]__naked\f[R]\c
.IND "_naked"
\c
.IND "__naked"
\&.
.LI
\f[B]less_pedantic\f[R]\c
.IND "pedantic"
\c
.IND "#pragma less_pedantic"
\c
.SETR ite:less_pedantic
 \- the compiler will not warn you anymore for obvious mistakes, you're on your own now ;-(. See also the command line option \-\&\-less-pedantic \c
.GETPN opt:--less-pedantic Rf47
on page \*[Rf47]. \c
.br
More specifically, the following warnings will be disabled: \f[I]comparison is always [true/false] due to limited range of data type\f[R] (94); \f[I]overflow in implicit constant conversion\f[R] (158); [the (in)famous] \f[I]conditional flow changed by optimizer: so said EVELYN the modified DOG\f[R] (110); \f[I]function '[function name]' must return value\f[R] (59). \c
.br
Furthermore, warnings of less importance (of PEDANTIC and INFO warning level) are disabled, too, namely: \f[I]constant value '[]', out of range\f[R] (81); \f[I][left/right] shifting more than size of object changed to zero\f[R] (116); \f[I]unreachable code\f[R] (126); \f[I]integer overflow in expression\f[R] (165); \f[I]unmatched #pragma save and #pragma restore\f[R] (170); \f[I]comparison of 'signed char' with 'unsigned char' requires promotion to int\f[R] (185); \f[I]ISO C90 does not support flexible array members\f[R] (187); \f[I]extended stack by [number] bytes for compiler temp(s) :in function '[function\ name]':\ []\f[R] (114); \f[I]function '[function name]', # edges [number] , # nodes [number] , cyclomatic complexity [number]\f[R] (121).
.LI
\f[B]disable_warning\f[R] <nnnn>\c
.IND "#pragma disable_warning"
 \- the compiler will not warn you anymore about warning number <nnnn>.
.LI
\f[B]nogcse\f[R]\c
.IND "#pragma nogcse"
 \- will stop global common subexpression elimination.
.LI
\f[B]noinduction\f[R]\c
.IND "#pragma noinduction"
 \- will stop loop induction optimizations.
.LI
\f[B]noinvariant\f[R]\c
.IND "#pragma noinvariant"
 \- will not do loop invariant optimizations. For more details see Loop Invariants in section \c
.GETHN subsec:Loop-Optimizations Rf48
.Rd Rf48
\*[Rf48].
.LI
\f[B]noiv\f[R]\c
.IND "#pragma noiv"
 \- Do not generate interrupt\c
.IND "interrupt"
 vector table\c
.IND "interrupt vector table"
 entries for all ISR functions defined after the pragma. This is useful in cases where the interrupt vector table must be defined manually, or when there is a secondary, manually defined interrupt vector table (e.g. for the autovector feature of the Cypress EZ-USB FX2). More elegantly this can be achieved by omitting the optional interrupt number after the \f[I]__interrupt\f[R] keyword, see section \c
.GETHN subsec:Interrupt-Service-Routines Rf49
.Rd Rf49
\*[Rf49]\ about interrupts.
.LI
\f[B]noloopreverse\f[R]\c
.IND "#pragma noloopreverse"
 \- Will not do loop reversal optimization
.LI
\f[B]nooverlay\f[R]\c
.IND "#pragma nooverlay"
 \- the compiler will not overlay the parameters and local variables of a function.
.LI
\f[B]nosidechannels\f[R]\c
.IND "#pragma nosidechannels"
 \- the compiler will avoid introducing side channels that could leak information on the processed data (e.g. timing or energy side-channels).
.LI
\f[B]max_allocs_per_node\f[R] <value>\c
.IND "#pragma max_allocs_per_node"
\- Use this value as limit for some optimizations. See option \-\&\-max-allocs-per-node.
.LI
\f[B]stackauto\f[R]\c
.IND "#pragma stackauto"
\- See option \-\&\-stack-auto\c
.IND "--stack-auto"
 and section \c
.GETHN sec:Parameters-and-Local-Variables Rf50
.Rd Rf50
\*[Rf50] Parameters and Local Variables.
.LI
\f[B]opt_code_speed\f[R] \c
.IND "#pragma opt_code_speed"
\- The compiler will optimize code generation towards fast code, possibly at the expense of code size.
.LI
\f[B]opt_code_size\f[R] \c
.IND "#pragma opt_code_size"
\- The compiler will optimize code generation towards compact code, possibly at the expense of code speed.
.LI
\f[B]opt_code_balanced\f[R] \c
.IND "#pragma opt_code_balanced"
\- The compiler will attempt to generate code that is both compact and fast, as long as meeting one goal is not a detriment to the other (this is the default).
.LI
\f[B]std_sdcc89\f[R] \c
.IND "#pragma std_sdcc89"
\- Generally follow the C89 standard, but allow SDCC features that conflict with the standard.
.LI
\f[B]std_c89\f[R] \c
.IND "#pragma std_c89"
\- Follow the C89 standard and disable SDCC features that conflict with the standard.
.LI
\f[B]std_sdcc99\f[R] \c
.IND "#pragma std_sdcc99"
\- Generally follow the C99 standard, but allow SDCC features that conflict with the standard.
.LI
\f[B]std_c99\f[R] \c
.IND "#pragma std_c99"
\- Follow the C99 standard and disable SDCC features that conflict with the standard.
.LI
\f[B]std_c11\f[R] \c
.IND "#pragma std_c11"
\- Follow the C11 standard and disable SDCC features that conflict with the standard.
.LI
\f[B]std_sdcc11\f[R] \c
.IND "#pragma std_sdcc11"
\- Generally follow the C11 standard, but allow SDCC features that conflict with the standard.
.LI
\f[B]std_c23\f[R]\c
.IND "#pragma std_c23"
\- Follow the C23 standard and disable SDCC features that conflict with the standard (for backwards compatibility, \f[B]std_c2x\f[R] still exists as an alias).
.LI
\f[B]std_sdcc23\f[R] \c
.IND "#pragma std_sdcc23"
\- Generally follow the C23 standard, but allow SDCC features that conflict with the standard.
.LI
\f[B]std_c2\f[R]y\c
.IND "#pragma std_c2y"
\- Follow the C2y standard and disable SDCC features that conflict with the standard.
.LI
\f[B]std_sdcc2y\f[R] \c
.IND "#pragma std_sdcc2y"
\- Generally follow the C2y standard, but allow SDCC features that conflict with the standard.
.LI
\f[B]codeseg\f[R] <name>\c
.IND "#pragma codeseg"
\- Use this name (max. 8 characters) for the code segment. See option \-\&\-codeseg.
.LI
\f[B]constseg\f[R] <name>\c
.IND "#pragma constseg"
\- Use this name (max. 8 characters) for the const segment. See option \-\&\-constseg.
.LE
.P
The preprocessor\c
.IND "Preprocessor"
 SDCPP\c
.IND "sdcpp (preprocessor)"
 supports the following #pragma directives:
.BL
.LI
\f[B]preproc_asm\f[R]\c
.IND "#pragma preproc_asm"
 (+ | \-) \- switch the __asm __endasm block preprocessing on / off. Default is on. Below is an example on how to use this pragma.
.LE
.DS I
.ft CR
\f[CR]#pragma preproc_asm \-
/* this is a c code nop */
#define NOP ;
\&
void foo (void)
{
\ \ \ ...
\ \ \ while (\-\-i)
\ \ \ \ \ \ NOP
\ \ \ ...
\ \ \ __asm
\ \ \ ; this is an assembler nop instruction
\ \ \ ; it is not preprocessed to ';' since the asm preprocessing is disabled
\ \ \ NOP
\ \ \ __endasm;
\ \ \ ...
}
\&
\f[CR]The pragma preproc_asm should not be used to define multilines of assembly code (even if it supports it), since this behavior is only a side effect of sdcpp __asm __endasm implementation in combination with pragma preproc_asm and is not in conformance with the C standard. This behavior might be changed in the future sdcpp versions. To define multilines of assembly code you have to include each assembly line into it's own __asm __endasm block. Below is an example for multiline assembly defines.
\f[CR]#define Nop __asm \[rs]
nop \[rs]
__endasm
\&
#define ThreeNops Nop; \[rs]
Nop; \[rs]
Nop
\&
void foo (void)
{
\ \ \ ...
\ \ \ ThreeNops;
\ \ \ ...
}
\&
.ft
.DE
.BL
.LI
\f[B]sdcc_hash\f[R]\c
.IND "#pragma sdcc_hash"
 (+ | \-) \- \f[I]Until SDCC 4.2.8:\f[R] Allow "naked" hash in macro definition, for example:\c
.br
\f[CR]#define DIR_LO(x) #(x & 0xff)\f[R]\c
.br
Default is off. Below is an example on how to use this pragma.
.LE
.DS I
.ft CR
\f[CR]#pragma preproc_asm +
#pragma sdcc_hash +
\&
#define ROMCALL(x) \[rs]
\ \ \ mov R6_B3, #(x & 0xff) \[rs]
\ \ \ mov R7_B3, #((x >> 8) & 0xff) \[rs]
\ \ \ lcall __romcall
\&
\&...
__asm
ROMCALL(72)
__endasm;
\&...
\&
.ft
.DE
.P
Some of the pragmas are intended to be used to turn-on or off certain optimizations which might cause the compiler to generate extra stack and/or data space to store compiler generated temporary variables. This usually happens in large functions. Pragma directives should be used as shown in the following example, they are used to control options and optimizations for a given function.
.DS I
.ft CR
\f[CR]#pragma save \ \ \ \ \ \ \ /* save the current settings */
#pragma nogcse \ \ \ \ \ /* turnoff global subexpression elimination */
#pragma noinduction /* turn off induction optimizations */
int foo ()
{
\  \  ...
\  \  /* large code */
\  \  ...
}
#pragma restore /* turn the optimizations back on */
.ft
.DE
.P
The compiler will generate a warning message when extra space is allocated. It is strongly recommended that the save and restore pragmas be used when changing options for a function.
.H 2 "\&Defines Created by the Compiler"
.P
Besides defines from the C standards, the compiler creates the following #defines\c
.IND "#defines"
\c
.IND "Defines created by the compiler"
:\c
.br
.P
\c
.TK
.TS
tab(	);
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |
| cw(3i) | cw(3i) |.
_
T{
\f[B]#define\f[R]
T}	T{
\f[B]Description\f[R]
T}
_
T{
__SDCC\c
.IND "SDCC" "Defines" "__SDCC (version macro)"
\c
.IND "version macro"
T}	T{
Always defined. Version number string (e.g. SDCC_3_2_0 for sdcc 3.2.0).
T}
_
T{
SDCC
T}	T{
OBSOLETE. WILL BE REMOVED IN THE FUTURE. CURRENTLY Only defined for the mcs51 backend (and only if \-\&\-std-cXX is not used). This macro has been available since SDCC 2.5.6 and is the version number as an int (ex. 256). PLEASE USE OTHER VERSION MACROS INSTEAD!
T}
_
T{
__SDCC_mcs51\c
.IND "SDCC" "Defines" "__SDCC_mcs51"
 or __SDCC_ds390\c
.IND "SDCC" "Defines" "__SDCC_ds390"
 or __SDCC_z80\c
.IND "SDCC" "Defines" "__SDCC_z80"
, etc.
T}	T{
depending on the model used (e.g.: \-mds390). Older versions used SDCC_mcs51, etc instead.
T}
_
T{
__SDCC_STACK_AUTO\c
.IND "SDCC" "Defines" "SDCC_STACK_AUTO"
T}	T{
when \f[I]\-\&\-stack-auto\f[R] option is used
T}
_
T{
__SDCC_MODEL_SMALL\c
.IND "SDCC" "Defines" "SDCC_MODEL_SMALL"
T}	T{
when \f[I]\-\&\-model-small\f[R] is used
T}
_
T{
__SDCC_MODEL_MEDIUM\c
.IND "SDCC" "Defines" "SDCC_MODEL_MEDIUM"
T}	T{
when \f[I]\-\&\-model-medium\f[R] is used
T}
_
T{
__SDCC_MODEL_LARGE\c
.IND "SDCC" "Defines" "SDCC_MODEL_LARGE"
T}	T{
when \f[I]\-\&\-model-large\f[R] is used
T}
_
T{
__SDCC_MODEL_HUGE\c
.IND "SDCC" "Defines" "SDCC_MODEL_LARGE"
T}	T{
when \f[I]\-\&\-model-huge\f[R] is used
T}
_
T{
__SDCC_USE_XSTACK\c
.IND "SDCC" "Defines" "SDCC_USE_XSTACK"
T}	T{
when \f[I]\-\&\-xstack\f[R] option is used
T}
_
T{
__SDCC_STACK_TENBIT\c
.IND "SDCC" "Defines" "SDCC_STACK_TENBIT (ds390)"
T}	T{
when \f[I]\-mds390\f[R] is used
T}
_
T{
__SDCC_MODEL_FLAT24\c
.IND "SDCC" "Defines" "SDCC_MODEL_FLAT24 (ds390)"
T}	T{
when \f[I]\-mds390\f[R] is used
T}
_
T{
__SDCC_VERSION_MAJOR
T}	T{
Always defined. SDCC major version number. E.g. 3 for SDCC 3.5.0
T}
_
T{
__SDCC_VERSION_MINOR
T}	T{
Always defined. SDCC minor version number. E.g. 5 for SDCC 3.5.0
T}
_
T{
__SDCC_VERSION_PATCH
T}	T{
Always defined. SDCC patchlevel version number. E.g. 0 for SDCC 3.5.0
T}
_
T{
__SDCC_REVISION\c
.IND "SDCC" "Defines" "SDCC_REVISION (svn revision number)"
T}	T{
Always defined. SDCC svn revision number. Older versions of sdcc used SDCC_REVISION instead.
T}
_
T{
SDCC_PARMS_IN_BANK1\c
.IND "SDCC" "Defines" "SDCC_PARMS_IN_BANK1"
T}	T{
when \f[I]\-\&\-parms-in-bank1\f[R] is used
T}
_
T{
__SDCC_ALL_CALLEE_SAVES\c
.IND "SDCC" "Defines" "SDCC_ALL_CALLEE_SAVES"
T}	T{
when \f[I]\-\&\-all-callee-saves\f[R] is used
T}
_
T{
__SDCC_FLOAT_REENT\c
.IND "SDCC" "Defines" "SDCC_FLOAT_REENT"
T}	T{
when \f[I]\-\&\-float-reent\f[R] is used
T}
_
T{
__SDCC_INT_LONG_REENT\c
.IND "SDCC" "Defines" "SDCC_INT_LONG_REENT"
T}	T{
when \f[I]\-\&\-int-long-reent\f[R] is used
T}
_
T{
__SDCC_OPTIMIZE_SPEED\c
.IND "SDCC" "Defines" "SDCC_OPTIMIZE_SPEED"
T}	T{
when \f[I]\-\&\-opt-code-speed\f[R] is used
T}
_
T{
__SDCC_OPTIMIZE_SIZE\c
.IND "SDCC" "Defines" "SDCC_OPTIMIZE_SIZE"
T}	T{
when \f[I]\-\&\-opt-code-size\f[R] is used
T}
_
T{
__SDCCCALL\c
.IND "SDCC" "Defines" "SDCCCALL"
T}	T{
Default ABI version for calling convention
T}
_
.TE
.TKE
.H 1 "\&Notes on supported Processors"
.H 2 "\&MCS51 variants"
.SETR subsec:MCS51-variants
.IND "MCS51 variants"
.P
MCS51 processors are available from many vendors and come in many different flavours. While they might differ considerably in respect to Special Function Registers the core MCS51 is usually not modified or is kept compatible.
.H 3 "\&pdata access by SFR"
.P
With the upcome of devices with internal xdata and flash memory devices using port P2\c
.IND "P2 (mcs51 sfr)"
 as dedicated I/O port is becoming more popular. Switching the high byte for __pdata\c
.IND "__pdata (mcs51, ds390 named address space)"
 access which was formerly done by port P2 is then achieved by a Special Function Register\c
.IND "sfr"
\&. In well-established MCS51 tradition the address of this \f[I]sfr\f[R] is where the chip designers decided to put it. Needless to say that they didn't agree on a common name either. So that the startup code can correctly initialize xdata variables, you should define an sfr with the name _XPAGE\f[CR]\c
.IND "_XPAGE (mcs51)"
\f[R] at the appropriate location if the default, port P2, is not used for this. Some examples are:
.DS I
.ft CR
\f[CR]__sfr __at (0x85) _XPAGE; /* Ramtron VRS51 family a.k.a. MPAGE */
\f[CR]__sfr __at (0x92) _XPAGE; /* Cypress EZ\-USB family, Texas Instruments (Chipcon) a.k.a. MPAGE */
\f[CR]__sfr __at (0x91) _XPAGE; /* Infineon (Siemens) C500 family a.k.a. XPAGE */
\f[CR]__sfr __at (0xaf) _XPAGE; /* some Silicon Labs (Cygnal) chips a.k.a. EMI0CN */
\f[CR]__sfr __at (0xaa) _XPAGE; /* some Silicon Labs (Cygnal) chips a.k.a. EMI0CN */
.ft
.DE
.P
There are also devices without anything resembling _XPAGE, but luckily they usually have dual data-pointers. For these devices a different method can be used to correctly initialize xdata variables. A default implementation is already in crtxinit.asm but it needs to be assembled manually with DUAL_DPTR set to 1.
.P
For more exotic implementations further customizations may be needed. See section \c
.GETHN subsec:MCS51-Startup-Code Rf51
.Rd Rf51
\*[Rf51] for other possibilities.
.H 3 "\&Other Features available by SFR"
.P
Some MCS51 variants offer features like Dual DPTR\c
.IND "DPTR"
, multiple DPTR, decrementing DPTR, 16x16 Multiply. These are currently not used for the MCS51 port. If you absolutely need them you can fall back to inline assembly or submit a patch to SDCC.
.H 3 "\&Bankswitching"
.SETR subsec:Bankswitching
.P
Bankswitching\c
.IND "Bankswitching"
 (a.k.a. code banking\c
.IND "code banking"
) is a technique to increase the code space above the 64k limit of the 8051.
.H 4 "\&Hardware"
.P
\c
.TK
.TS
tab(	);
c | c | c | c |
c | c | c s
c s s s.
_
8000-FFFF	bank1	bank2	bank3
_
0000-7FFF	common	
_
SiLabs C8051F120 example
.TE
.TKE
\c
.sp
Usually the hardware uses some sfr (an output port or an internal sfr) to select a bank and put it in the banked area of the memory map. The selected bank usually becomes active immediately upon assignment to this sfr and when running inside a bank it will switch out this code it is currently running. Therefor you cannot jump or call directly from one bank to another and need to use a so-called trampoline in the common area. For SDCC an example trampoline is in crtbank.asm and you may need to change it to your 8051 derivative or schematic. The presented code is written for the C8051F120.\c
.sp
When calling a banked function SDCC will put the LSB of the functions address in register R0, the MSB in R1 and the bank in R2 and then call this trampoline \f[I]__sdcc_banked_call\f[R]. The current selected bank is saved on the stack, the new bank is selected and an indirect jump is made. When the banked function returns it jumps to \f[I]__sdcc_banked_ret\f[R] which restores the previous bank and returns to the caller.
.H 4 "\&Software"
.P
When writing banked software using SDCC you need to use some special keywords and options. You also need to take over a bit of work from the linker.\c
.sp
To create a function that can be called from another bank it requires the keyword \f[I]__banked\f[R]\c
.IND "banked"
\&. The caller must see this in the prototype of the callee and the callee needs it for a proper return. Called functions within the same bank as the caller do not need the \f[I]__banked\f[R] keyword nor do functions in the common area. Beware: SDCC does not know or check if functions are in the same bank. This is your responsibility!\c
.sp
Normally all functions you write end up in the segment CSEG. If you want a function explicitly to reside in the common area put it in segment HOME. This applies for instance to interrupt service routines as they should not be banked.
.P
Functions that need to be in a switched bank must be put in a named segment. The name can be mostly anything up to eight characters (e.g. BANK1). To do this you either use \-\&\-codeseg BANK1 (See \c
.GETHN opt:-codeseg Rf52
.Rd Rf52
\*[Rf52]) on the command line when compiling or #pragma codeseg BANK1 (See \c
.GETHN sec:Pragmas Rf53
.Rd Rf53
\*[Rf53]) at the top of the C source file. The segment name always applies to the whole source file and generated object so functions for different banks need to be defined in different source files.\c
.sp
When linking your objects you need to tell the linker where to put your segments. To do this you use the following command line option to SDCC: \-Wl-b BANK1=0x18000 (See \c
.GETHN opt:-Wl-option Rf54
.Rd Rf54
\*[Rf54]). This sets the virtual start address of this segment. It sets the banknumber to 0x01 and maps the bank to 0x8000 and up. The linker will not check for overflows, again this is your responsibility.
.H 3 "\&MCS51/DS390 Startup Code"
.SETR subsec:MCS51-Startup-Code
.P
The compiler triggers the linker to link certain initialization modules from the runtime library\c
.IND "Runtime library"
 called crt<something>. Only the necessary ones are linked, for instance crtxstack.asm (GSINIT1, GSINIT5) is not linked unless the \-\f[B]\&\f[R]\-xstack option is used. These modules are highly entangled by the use of special segments/areas, but a common layout is shown below:
.DS I
.ft CR
\f[CR]\f[CB]\s[-2](main.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area HOME (CODE)
__interrupt_vect:
\ \ \ \ \ \ \ \ ljmp __sdcc_gsinit_startup\s[0]
\f[CR]\f[CB]\s[-2](crtstart.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSINIT0 (CODE)
__sdcc_gsinit_startup::
\ \ \ \ \ \ \ \ mov sp,#__start__stack \- 1\s[0]
\f[CR]\f[CB]\s[-2](crtxstack.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSINIT1 (CODE)
__sdcc_init_xstack::
; Need to initialize in GSINIT1 in case the user's __sdcc_external_startup uses the xstack.
\ \ \ \ \ \ \ \ mov __XPAGE,#(__start__xstack >> 8)
\ \ \ \ \ \ \ \ mov _spx,#__start__xstack\s[0]
\f[CR]\f[CB]\s[-2](crtstart.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSINIT2 (CODE)
\ \ \ \ \ \ \ \ lcall ___sdcc_external_startup
\ \ \ \ \ \ \ \ mov a,dpl
\ \ \ \ \ \ \ \ jz __sdcc_init_data
\ \ \ \ \ \ \ \ ljmp __sdcc_program_startup
__sdcc_init_data:\s[0]
\f[CR]\f[CB]\s[-2](crtxinit.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSINIT3 (CODE)
__mcs51_genXINIT::
\ \ \ \ \ \ \ \ mov r1,#l_XINIT
\ \ \ \ \ \ \ \ mov a,r1
\ \ \ \ \ \ \ \ orl a,#(l_XINIT >> 8)
\ \ \ \ \ \ \ \ jz 00003$
\ \ \ \ \ \ \ \ mov r2,#((l_XINIT+255) >> 8)
\ \ \ \ \ \ \ \ mov dptr,#s_XINIT
\ \ \ \ \ \ \ \ mov r0,#s_XISEG
\ \ \ \ \ \ \ \ mov __XPAGE,#(s_XISEG >> 8)
00001$:\ clr a
\ \ \ \ \ \ \ \ movc a,@a+dptr
\ \ \ \ \ \ \ \ movx @r0,a
\ \ \ \ \ \ \ \ inc dptr
\ \ \ \ \ \ \ \ inc r0
\ \ \ \ \ \ \ \ cjne r0,#0,00002$
\ \ \ \ \ \ \ \ inc __XPAGE
00002$:\ djnz r1,00001$
\ \ \ \ \ \ \ \ djnz r2,00001$
\ \ \ \ \ \ \ \ mov __XPAGE,#0xFF
00003$:\s[0]
\f[CR]\f[CB]\s[-2](crtclear.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSINIT4 (CODE)
__mcs51_genRAMCLEAR::
\ \ \ \ \ \ \ \ clr a
\ \ \ \ \ \ \ \ mov r0,#(l_IRAM\-1)
00004$:\ mov @r0,a
\ \ \ \ \ \ \ \ djnz r0,00004$
; _mcs51_genRAMCLEAR() end\s[0]
\f[CR]\f[CB]\s[-2](crtxclear.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSINIT4 (CODE)
__mcs51_genXRAMCLEAR::
\ \ \ \ \ \ \ \ mov r0,#l_PSEG
\ \ \ \ \ \ \ \ mov a,r0
\ \ \ \ \ \ \ \ orl a,#(l_PSEG >> 8)
\ \ \ \ \ \ \ \ jz 00006$
\ \ \ \ \ \ \ \ mov r1,#s_PSEG
\ \ \ \ \ \ \ \ mov __XPAGE,#(s_PSEG >> 8)
\ \ \ \ \ \ \ \ clr a
00005$:\ movx @r1,a
\ \ \ \ \ \ \ \ inc r1
\ \ \ \ \ \ \ \ djnz r0,00005$
00006$:
\ \ \ \ \ \ \ \ mov r0,#l_XSEG
\ \ \ \ \ \ \ \ mov a,r0
\ \ \ \ \ \ \ \ orl a,#(l_XSEG >> 8)
\ \ \ \ \ \ \ \ jz 00008$
\ \ \ \ \ \ \ \ mov r1,#((l_XSEG + 255) >> 8)
\ \ \ \ \ \ \ \ mov dptr,#s_XSEG
\ \ \ \ \ \ \ \ clr a
00007$:\ movx @dptr,a
\ \ \ \ \ \ \ \ inc dptr
\ \ \ \ \ \ \ \ djnz r0,00007$
\ \ \ \ \ \ \ \ djnz r1,00007$
00008$:\s[0]
\f[CR]\f[CB]\s[-2](crtxstack.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSINIT5 (CODE)
; Need to initialize in GSINIT5 because __mcs51_genXINIT modifies __XPAGE
; and __mcs51_genRAMCLEAR modifies _spx.
\ \ \ \ \ \ \ \ mov __XPAGE,#(__start__xstack >> 8)
\ \ \ \ \ \ \ \ mov _spx,#__start__xstack\s[0]
\f[CR]\f[CB]\s[-2](application modules)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSINIT (CODE)\s[0]
\f[CR]\f[CB]\s[-2](main.asm)\f[CR]\s[0]
\f[CR]\ \s[-2]\ \ \ \ \ \ \ .area GSFINAL (CODE)
\ \ \ \ \ \ \ \ ljmp __sdcc_program_startup
;\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
; Home
;\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
\ \ \ \ \ \ \ \ .area HOME (CODE)
\ \ \ \ \ \ \ \ .area CSEG (CODE)
__sdcc_program_startup:
\ \ \ \ \ \ \ \ lcall _main
; return from main will lock up
\ \ \ \ \ \ \ \ sjmp .\s[0]
.ft
.DE
.P
On some mcs51 variants __xdata\c
.IND "__xdata (mcs51, ds390 named address space"
 memory has to be explicitly enabled before it can be accessed or if the watchdog\c
.IND "watchdog"
 needs to be disabled, this is the place to do it. The startup code clears all internal data memory, 256 bytes by default, but from 0 to n-1 if \f[I]\-\&\-iram-size\c
.IND "--iram-size <Value>"
 <n>\f[R] is used. (recommended for Chipcon CC1010).
.P
See also the compiler option \f[I]\-\&\-no-xinit\f[R]\-\f[I]opt\f[R]\c
.IND "--no-xinit-opt"
 and section \c
.GETHN subsec:MCS51-variants Rf55
.Rd Rf55
\*[Rf55] about MCS51-variants.\c
.br
.P
While these initialization modules are meant as generic startup code there might be the need for customization. Let's assume the return value of \f[I]__sdcc_external_startup()\f[R] in \f[I]crtstart.asm\f[R] should not be checked (or \f[I]__sdcc_external_startup()\f[R] should not be called at all). The recommended way would be to copy \f[I]crtstart.asm\f[R] (f.e. from \c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/device/lib/mcs51/crtstart.asm" "" ")"
into the source directory, adapt it there, then assemble it with \f[I]sdas8051 \-plosgff\*F\c
.FS
\[lq]\-plosgff\[rq] are the assembler options used in \c
.URL "http://sdcc.svn.sourceforge.net/viewvc/sdcc/trunk/sdcc/device/lib/mcs51/Makefile.in?view=markup " ""
.FE
 crtstart.asm\f[R] and when linking your project explicitly specify \f[I]crtstart.rel\f[R]. As a bonus a listing of the relocated object file \f[I]crtstart.rst\f[R] is generated.
.H 3 "\&Interfacing with Assembler Code"
.IND "Assembler routines"
.H 4 "\&Global Registers used for Parameter Passing"
.IND "Parameter passing"
.P
The compiler always uses the global registers \f[I]DPL, DPH\c
.IND "DPTR, DPH, DPL"
\c
.IND "DPTR"
, B\c
.IND "B (mcs51, ds390 register)"
\f[R] and \f[I]ACC\c
.IND "ACC (mcs51, ds390 register)"
\f[R] to pass the first (non-bit, non-struct) parameter to a function, and also to pass the return value \c
.IND "return value"
of function; according to the following scheme: one byte return value in \f[I]DPL\f[R], two byte value in \f[I]DPL\f[R] (LSB) and \f[I]DPH\f[R] (MSB). three byte values (generic pointers) in \f[I]DPH\f[R], \f[I]DPL\f[R] and \f[I]B\f[R], and four byte values in \f[I]DPH\f[R], \f[I]DPL\f[R], \f[I]B\f[R] and \f[I]ACC\f[R]. Generic pointers\c
.IND "generic pointer"
 contain type of accessed memory in \f[I]B\f[R]: \f[B]0x00\f[R] \[en] xdata/far, \f[B]0x40\f[R] \[en] idata/near \[en] , \f[B]0x60\f[R] \[en] pdata, \f[B]0x80\f[R] \[en] code.
.P
Further such parameters (and all struct parameters, as well as the bit parameters from the 9th onwards) are either allocated on the stack (for reentrant routines or if \-\&\-stack-auto is used) or in data/xdata memory (depending on the memory model).
.P
The first 8 bit parameters are passed in a virtual register called 'bits' in bit-addressable space for reentrant functions or allocated directly in bit memory otherwise.
.P
Functions (with two or more parameters or bit parameters) that are called through function pointers\c
.IND "function pointers"
 must therefor be reentrant so the compiler knows how to pass the parameters.
.H 4 "\&Register usage"
.P
Unless the called function is declared as \f[CR]_naked\f[R]\c
.IND "naked"
, or the \-\&\-callee-saves\c
.IND "--callee-saves"
/\-\&\-all-callee-saves command line option or the corresponding callee_saves pragma are used, the caller will save the registers (\f[I]R0-R7\f[R]) around the call, so the called function can destroy they content freely.
.P
If the called function is not declared as \f[CR]_naked\f[R], the caller will swap register banks around the call, if caller and callee use different register banks (having them defined by the \f[CR]__using\f[R] modifier).
.P
The called function can also use \f[I]DPL\f[R], \f[I]DPH\f[R], \f[I]B\f[R] and \f[I]ACC\f[R] observing that they are used for parameter/return value passing.
.H 4 "\&Assembler Routine (non-reentrant)"
.P
In the following example\c
.IND "reentrant"
\c
.IND "Assembler routines (non-reentrant)"
 the function c_func calls an assembler routine asm_func, which takes two parameters\c
.IND "function parameter"
\&.
.DS I
.ft CR
\f[CR]extern int asm_func(unsigned char, unsigned char);
\&
int c_func (unsigned char i, unsigned char j)
{
\ \ \ \ return asm_func(i,j);
}
\&
int main()
{
\ \ \ \ return c_func(10,9);
}
.ft
.DE
.P
The corresponding assembler function is:
.DS I
.ft CR
\f[CR]\ \ \ \ \ \ \ \ .globl _asm_func_PARM_2
\ \ \ \ \ \ \ \ .globl _asm_func
\ \ \ \ \ \ \ \ .area OSEG
_asm_func_PARM_2:
\ \ \ \ \ \ \ \ .ds    1
\ \ \ \ \ \ \ \ .area CSEG
_asm_func:
\ \ \ \ \ \ \ \ mov\ \ \ \ a,dpl
\ \ \ \ \ \ \ \ add\ \ \ \ a,_asm_func_PARM_2
\ \ \ \ \ \ \ \ mov\ \ \ \ dpl,a
\ \ \ \ \ \ \ \ mov\ \ \ \ dph\c
.IND "DPTR, DPH, DPL"
,#0x00
\ \ \ \ \ \ \ \ ret
.ft
.DE
.P
The parameter naming convention is _<function_name>_PARM_<n>, where n is the parameter number starting from 1, and counting from the left. The first parameter is passed in \f[I]DPH\f[R], \f[I]DPL\f[R], \f[I]B\f[R] and \f[I]ACC\f[R] according to the description above. The variable name for the second parameter will be _<function_name>_PARM_2.\c
.sp
Assemble the assembler routine with the following command:\c
.sp
\f[HB]sdas8051 \-losg asmfunc.asm\c
.sp
\f[R]Then compile and link the assembler routine to the C source file with the following command:\c
.sp
\f[HB]sdcc cfunc.c asmfunc.rel\f[R]
.H 4 "\&Assembler Routine (reentrant)"
.P
In this case\c
.IND "reentrant"
\c
.IND "Assembler routines (reentrant)"
 the second parameter\c
.IND "function parameter"
 onwards will be passed on the stack, the parameters are pushed from right to left i.e. before the call the second leftmost parameter will be on the top of the stack (the leftmost parameter is passed in registers). Here is an example:
.DS I
.ft CR
\f[CR]extern int asm_func(unsigned char, unsigned char, unsigned char) reentrant;
\&
int c_func (unsigned char i, unsigned char j, unsigned char k) reentrant
{
\ \ \ \ return asm_func(i,j,k);
}
\&
int main()
{
\ \ \ \ return c_func(10,9,8);
}
.ft
.DE
.P
The corresponding (unoptimized) assembler routine is:
.DS I
.ft CR
\f[CR].globl _asm_func
_asm_func:
\ \ \ \ push\ _bp
\ \ \ \ mov\ \ _bp,sp\ \ \ \ \ \ ;stack contains: _bp, return address, second parameter, third parameter
\ \ \ \ mov\ \ r2,dpl
\ \ \ \ mov\ \ a,_bp
\ \ \ \ add\ \ a,#0xfd\ \ \ \ \ ;calculate pointer to the second parameter
\ \ \ \ mov\ \ r0,a
\ \ \ \ mov\ \ a,_bp
\ \ \ \ add\ \ a,#0xfc\ \ \ \ \ ;calculate pointer to the rightmost parameter
\ \ \ \ mov\ \ r1,a
\ \ \ \ mov\ \ a,@r0
\ \ \ \ add\ \ a,@r1
\ \ \ \ add\ \ a,r2\ \ \ \ \ \ \ \ ;calculate the result (= sum of all three parameters)
\ \ \ \ mov\ \ dpl,a\ \ \ \ \ \ \ ;return value goes into dptr (cast into int)
\ \ \ \ mov\ \ dph,#0x00
\ \ \ \ mov\ \ sp,_bp
\ \ \ \ pop\ \ _bp
\ \ \ \ ret
.ft
.DE
.P
The compiling and linking procedure remains the same, however note the extra entry & exit linkage required for the assembler code, _bp is the stack frame pointer and is used to compute the offset into the stack for parameters and local variables.
.H 3 "\&Side channels"
.P
The command line option and pragma to avoid the introduction of side channels are supported in the backend. However, some side channels remain even when using it; these include:
.BL
.LI
Division, modulo and multiplication operations can leak operand data.
.LI
Shift operations can leak right operand data.
.LI
Equality comparisons can leak operand data.
.LI
Reads and writes via pointers can leak which intrinsic named address spaces the pointers point into.
.LI
Floating-point operations (except unary minus) can leak operand data.
.LE
.H 2 "\&DS400 port"
.P
The DS80C400\c
.IND "DS80C400"
\c
.IND "DS400"
 microcontroller has a rich set of peripherals. In its built-in ROM library it includes functions to access some of the features, among them is a TCP stack with IP4 and IP6 support. Library headers (currently in beta status) and other files are provided at \s[-2]\c
.URL "ftp://ftp.dalsemi.com/pub/tini/ds80c400/c_libraries/sdcc/index.html" "" "."
\s[0]
.H 2 "\&The Z80, Z80N, Z180, Rabbit 2000, Rabbit 2000A, Rabbit 3000A, Rabbit 4000, Rabbit 5000, Rabbit 6000, SM83 (GameBoy), TLCS-90, eZ80, and R800 ports"
.P
SDCC can target the Z80\c
.IND "Z80"
, Z80N, Z180, eZ80, Rabbit 2000, Rabbit 2000A, Rabbit 3000A and LR35902, the Sharp SM83 (used .e.g in the Nintendo GameBoy) sm83\c
.IND "sm83 (GameBoy Z80)"
\&.
.P
When a frame pointer is used, it resides in IX. Register A, B, C, D, E, H, L and IY are used as a temporary registers for holding variables.
.P
When enabling optimizations using \f[CR]\-\-opt\-code\f[R] size and a sufficiently high value for \f[CR]\-\-max\-allocs\-per\-node\f[R] SDCC typically generates much better code for these architectures than many other compilers. A comparison of compilers for these architecture can be found at \c
.URL "http://sdcc.sourceforge.net/wiki/index.php/Z80_code_size" "" "."
.H 3 "\&Startup Code"
.P
On the Z80\c
.IND "Z80"
 the startup code is inserted by linking with crt0.rel which is generated from sdcc/device/lib/z80/crt0.s. If you need a different startup code you can use the compiler option \f[I]\-\f[B]\&\f[I]\-no-std-crt0\f[R]\c
.IND "--no-std-crt0"
 and provide your own crt0.rel. When using a custom crt0.rel it needs to be listed first when linking.
.H 3 "\&Rabbit ports"
.P
SDCC has six Rabbit-supporting ports: r2k for the Rabbit 2000, r2ka for the Rabbit 2000A, 2000B, 2000C and 3000, r3ka for the Rabbit 3000A, r4k for the Rabbit 4000, r5k for the Rabbit 5000, and r6k for the Rabbit 6000. Some Rabbits support two different memory types (Rabbit 4000 and later), two different memory access modes (Rabbit 5000 and later), four different instruction set modes (Rabbit 4000 and later). All SDCC ports assume 8-bit memories, 8-bit memory access mode. The code generated by the r2k, r2ka, r3ka ports uses 00/default instruction set mode (the code generated is also compatible with 10 and 01 instruction set mode, but not 11/enhanced instruction set mode). The code generated by the r4k, r5k, r6k ports uses 10 instruction set mode, and is not compatible with other instruction set modes.
.H 4 "\&Port choice"
.P
\c
.TK
.TS
tab(	);
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |.
_
Port vs. Device	R2K	R2KA	R2KB	R2KC	R3K	R3KA	R4K	R5K	R6K
_
r2k	Y	y	y	y	y	y	y	N	N
_
r2ka	n	Y	Y	Y	Y	y	y	N	N
_
r3ka	N	N	N	N	N	Y	y	N	N
_
r4k	N	N	N	N	N	N	Y	N	N
_
r5k	N	N	N	N	N	N	y	Y	y
_
r6k	N	N	N	N	N	N	N	N	Y
_
.TE
.TKE
.P
Legend:
.P
Y \- The code this port generates is the best for this CPU.
.P
y \- The code this port generates will work on this CPU.
.P
N \- The code this port generates will not work on this CPU.
.P
n \- The code this port generates will typically not work on this CPU.
.P
There are multiple wait state bugs present in some of the the Rabbits. The difference between the r2k and r2ka port is additional wait state bug workarounds only. If all memory used has zero wait states, code from the r2ka backend can be safely run on the original Rabbit 2000.
.P
The r2k and r2ka port assume that the whole stack has the same number of wait states (code from the r2k and r2ka ports can fail is the stack spans memories with a different amount of wait states).
.P
The Rabbit 2000 has some wait state bugs that SDCC does not work around. These bugs result in the number of wait states used being one less than configured for some instructions. The workaround has to be supplied by the user, by configuring all memories that do use wait states to use on additional wait state.
.P
For all Rabbit ports, SDCC assumes that all data memory is at least as fast (i.e. does not need more wait states) as all code memory. Code where this is not the case (e.g. code in fast Flash writing into slow battery-backed SRAM) will have to be written in assembler by hand.
.H 4 "\&Rabbit hardware bugs"
.P
\c
.TK
.TS
tab(	);
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| l | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |
| c | c | c | c | c | c | c | c | c | c |.
_
Bug	R2K	R2KA	R2KB	R2KC	R3K	R3KA	R4K	R5K	R6K
_
ioi / ioe prefix bug	x								
_
ddcb / fdcb wait state bug	U								
_
conditional jump wait state bug	U								
_
ldir / lddr wait state bug	U								
_
mul wait state bug	w								
_
ldir / lddr split bug		S							
_
new ldir / lddr wait state bug	w	w	w	w	w				
_
16-bit mode alignment bug								x	
_
ioi / ioe bit bug								x	x
_
ret cc bug								x	x
_
rmw wait state bug	W	W	W	W	W	W	W	W	
_
16-bit vs. 8-bit wait state bug							W		
_
dma vs stack prot. bug							X		
_
16-bit dma vs. ldir / lddr / etc. bug							X		
_
cplx bug									x
_
dma match bug									X
_
ex jkhl, bcde alt reg bug									x
_
ldbyte bug									x
_
puma bug									x
_
.TE
.TKE
.P
Legend:
.P
x s w u \- bug present, worked around by SDCC.
.P
X S W U \- bug present, not worked around by SDCC.
.P
w W u U \- wait state bug, only relevant when the Rabbit is configured to have wait states for some memory.
.P
s S \- instruction / data split bug, only relevant when instruction / data split is enabled, which is currently not supported by SDCC.
.P
u U \- bug can be worked around by the user by configuring memory that needs wait states to use one additional wait state.
.P
The 16-bit mode alignment bug only affects 16-bit mode, which is not currently supported by SDCC.
.P
The rmw wait state bug is only relevant when executing fast code writing to slow memory, such as code in fast RAM writing to slow battery-backed SRAM.
.P
The 16-bit vs. 8-bit wait state bug is only relevant when the target system uses both 16-bit and 8-bit memories for code, and the 8-bit memory requires wait states.
.P
The 16-bit dma vs. ldir / lddr / etc. bug is only relevant when using DMA and the target system uses 16-bit memory for code. Since SDCC uses the block move instructions like ldir, lddr, etc. without applying a workaround, this means that code execution and DMA may then not happen at the same time. A possible user workaround is to not use DMA when using 16-bit memory for code. Among all Rabbit 4000-based RCM and BL modules, only the RCM4000 and the RCM4010 use 16-bit memories.
.P
The dma match bug is only relevant when a DMA termination mask register is set to a nonzero value.
.H 4 "\&Rabbit interrupt handlers"
.P
External interrupts need to be handled via a custom crt0. For internal interrupts, there is compiler support that creates the internal interrupt table from the declared interrupt handlers in the file containing the main function.
.DS I
.ft CR
\f[CR]void handler(void) __interrupt(0) __critical
\f[CR]{
\f[CR].\[rs]|.\[rs]|. // A hardware interrupt handler that runs at the priority of the interrupt (i.e. it can only be interrupted by interrupts of higher priority)
\f[CR].\[rs]|.\[rs]|. // Automatically inserted as internal interrupt 0 (periodic interrupt) in internal interrupt vector table if declared in the file containing the main function.
\f[CR]}
\f[CR]void handler(void) __interrupt(2)
\f[CR]{
\f[CR].\[rs]|.\[rs]|. // A software interrupt handler (interrupt number 2 is rst 0x10)
\f[CR].\[rs]|.\[rs]|. // Automatically inserted as internal interrupt 2 (rst 0x10) in internal interrupt vector table if declared in the file containing the main function.
\f[CR]}
\f[CR]void handler(void) __interrupt
\f[CR]{
\f[CR].\[rs]|.\[rs]|. // A hardware interrupt handler suitable for use as handler for an external interrupt
\f[CR].\[rs]|.\[rs]|. // Can be used jumped to in a custom crt0 containing the external interrupt vector table
\f[CR]}
.ft
.DE
.P
The internal interrupts 2 to 7 are software interrupts (for the rst and syscall instructions). Hardware interrupt handlers written in C either run at the priority of the interrupt (with __critical) or at the priority of the code executing before the interrupt (without __critical). More complex prioritites (changing priority while the handler is executing) require interrupt handlers written in assembler.
.H 4 "\&Rabbit memory map and memory models"
.P
Most Rabbit instructions operate on a 64K logical address space. The Rabbits support a 1M (up to Rabbit 3000A) or 512K to 16M (from Rabbit 4000, configured via MECR register, default is 1M) physical address space, which the logical address space is mapped into via a memory management unit (MMU).
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# Rabbit memory map:  the 64K logical space in the 1M physical.
# Coordinates are those of the original drawing (96 units to the inch).
scale = 96
box wid 94.10 ht 150.79 with .nw at (94.87,-151.89)
box wid 94.24 ht 377.35 with .nw at (284.06,-38.69)
"\f[R]\s[16]Root\s0\f[]"  at (135.96,-284.50)
"\f[R]\s[16]Data\s0\f[]"  at (135.96,-246.94)
"\f[R]\s[16]Stack\s0\f[]"  at (138.03,-208.91)
"\f[R]\s[16]XPC\s0\f[]"  at (136.42,-171.58)
line  from (94.85,-264.91) to (189.33,-264.91)
line  from (94.85,-227.12) to (189.33,-227.12)
line  from (94.85,-189.32) to (189.33,-189.32)
"\f[R]\s[16]64K\s0\f[]"  at (140.44,-138.12)
"\f[R]\s[16]0x0\s0\f[]"  at (75.97,-296.28)
"\f[R]\s[16]0x0\s0\f[]"  at (397.23,-417.23)
"\f[R]\s[16]0xe000\s0\f[]"  at (60.86,-190.46)
"\f[R]\s[16]0x10000\s0\f[]"  at (53.30,-152.66)
"\f[R]\s[16]data_loc\s0\f[]"  at (49.52,-224.47)
"\f[R]\s[16]0x80000\s0\f[]"  at (419.91,-228.25)
"\f[R]\s[16]0x100000\s0\f[]"  at (423.69,-39.27)
line  from (378.34,-378.27) to (283.85,-378.27)
line  from (189.36,-264.89) to (283.85,-378.27)
line  from (189.36,-302.68) to (283.85,-416.07)
line  from (378.34,-227.09) to (283.85,-227.09)
line  from (188.97,-227.29) to (283.85,-227.09)
line  from (189.33,-189.32) to (283.85,-189.30)
line  from (378.34,-189.30) to (283.85,-189.30)
"\f[R]\s[16]0x80000+0xe000-data_loc\s0\f[]"  at (503.06,-190.46)
line dotted  from (189.33,-264.91) to (283.85,-359.38)
line dotted  from (189.36,-227.09) to (283.85,-321.58)
line dotted  from (189.36,-189.30) to (283.85,-283.78)
line dotted  from (189.36,-151.50) to (283.85,-245.99)
line dotted  from (188.97,-227.29) to (283.85,-113.71)
line dotted  from (189.33,-264.91) to (283.85,-151.50)
"\f[R]\s[16]1M\s0\f[]"  at (333.20,-24.73)
"\f[R]\s[16]RAM\s0\f[]"  at (408.19,-133.44)
"\f[R]\s[16]Flash\s0\f[]"  at (408.19,-318.64)
.PE
.DE
.\}
.P
SDCC assumes a 1M physical address space, and that memory for the program and constant data (typically flash) is located from 0x0 in the physical address space, up to at most 0x7ffff. It assumes that memory for non-constant data (typically RAM) is mapped from 0x80000. This is the typical hardware configuration for Rabbit-based systems, including the Rabbit Control Modules (RCM).
.P
The logical address space is divided into four segments, which the MMU maps into physical address space. SDCC uses the Rabbit \[lq]Root\[rq] segment for the SDCC code, gsinit, etc segments (startup code, const data not in __far, program code in small memory model). It uses the \[lq]Stack\[rq] segment for the SDCC data segment, stack and heap (non-const data no in __far). The SDCC xdata segment (non-const data in __far) is placed in physical memory above 0x80000 (exact location can be given by \f[I]\-\f[B]\&\f[I]\-\f[R]xram-loc\c
.IND "--xram-loc"
), the SDCC xconst segment (const data in __far) is placed in physical memory above 0x0 (directly after code, gsinit, etc). The Rabbit \[lq]Data\[rq] segment is not used directly by SDCC. Its intended use is for user-defined named address spaces. The Rabbit \[lq]XPC\[rq] segment is used for the SDCC xcode segment (program code in medium memory model).
.P
The size of the Rabbit \[lq]Root\[rq], \[lq]Data\[rq] and \[lq]Stack\[rq] segments can be adjusted according to user needs by setting up the SEGSIZE register in __sdcc_external_startup and the \f[I]\-\f[B]\&\f[I]\-\f[R]data-loc\c
.IND "--data-loc"
 command line option (the value for the option shall be 0xS000, where S matches the upper nibble of the SEGSIZE register).
.P
Pointers to objects that are not __far-qualified objects are represented by their logical address as 16-bit value. Pointers to objects that are __far-qualified are represented by their physical address as 24-bit value.
.P
The default crt0 that ships with SDCC uses a 32KB \[lq]Root\[rq] segment followed by a 8KB \[lq]Data\[rq] segment, a 16KB \[lq]Stack\[rq] segment and the 8KB \[lq]XPC\[rq] segment.
.H 3 "\&Z80, Z180, Z80N and R800 calling conventions"
.P
The current default is the SDCC calling convention, version 1. Using the command-line option \-\&\-sdcccall 0, the default can be changed to version 0. There are four other calling conventions supported, which can be specified using the keywords __smallc, __z88dk_fastcall, __z88dk_callee and __dynamicc. They are primarily intended for compatibility with libraries written for other compilers. For __z88dk_fastcall, there may be only one parameter of at most 32 bits, which is passed the same way as the return value of __sdcccall(0). For __z88dk_callee, the stack is not adjusted for stack parameters the parameters after the call (thus the callee has to do this instead). __z88dk_callee can be combined with __smallc, __sdcccall(0) or __sdcccall(1).
.H 4 "\&Z80 SDCC calling convention, version 1"
.P
This calling convention can be chosen per function via __sdcccall(1). 8-bit return values are passed in a, 16-bit values in de, 24-bit values in lde, 32-bit values in hlde. Larger return values (as well as struct and union independent of their size) are passed in memory in a location specified by the caller through a hidden pointer argument.
.P
For functions that have variable arguments: All parameters are passed on the stack. The stack is not adjusted for the parameters by the callee (thus the caller has to do this instead).
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# Z80 calling convention:  where the first and second parameters go, by size in bits.
# Coordinates are those of the original drawing (25.4 units to the inch).
scale = 25.4
"8" ljust at (27.53,0.04)
"8" ljust at (6.75,-3.69)
"16" ljust at (5.85,-8.65)
"16" ljust at (27.06,-7.24)
"32" ljust at (5.75,-13.78)
"\f[CR]a\f[]" ljust at (15.97,-2.01)
"\f[CR]de\f[]" ljust at (35.95,-9.91)
"\f[CR]hlde\f[]" ljust at (13.12,-18.00)
"\f[CR]hl\f[]" ljust at (15.18,-10.01)
"\f[CR]l\f[]" ljust at (36.92,-1.96)
"Stack" ljust at (33.85,-18.01)
line -> from (22.00,-10.00) to (33.00,-10.00)
"Stack" ljust at (54.85,-9.92)
line -> from (43.00,-10.00) to (54.00,-10.00)
line -> from (22.00,-2.00) to (33.00,-9.00)
line -> from (22.00,-11.00) to (33.00,-18.00)
line -> from (22.00,-3.00) to (33.00,-17.00)
line -> from (43.00,-3.00) to (54.00,-9.00)
line -> from (43.00,-17.00) to (54.00,-11.00)
line -> from (22.00,-19.00) to (33.00,-19.00)
line -> from (1.00,-11.00) to (12.00,-17.00)
line -> from (1.00,-10.00) to (12.00,-10.00)
line -> from (1.00,-9.00) to (12.00,-2.00)
line -> from (22.00,-1.00) to (33.00,-1.00)
.PE
.DE
.\}
.P
For Functions that do not have variable arguments: the first parameter is passed in a if it has 8 bits. If it has 16 bits it is passed in hl. If it has 32 bits, it is passed in hlde. If the first parameter is in a, and the second has 8 bits, it is passed in l; if the first is passed in a or hl, and the second has 16 bits, it is passed in de; all other parameters are passed on the stack, right-to-left. Independent of their size, struct / union parameters and all following parameters are always passed on the stack.
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# Who cleans up the stack after a call:  a decision diagram.
scale = 1
define decision { [
	B: box invis wid 2.0 ht 0.8 $1
	line from B.n to B.e then to B.s then to B.w then to B.n
	N: B.n; E: B.e; S: B.s; W: B.w
	SW: 0.5 between B.w and B.s; SE: 0.5 between B.e and B.s
	NW: 0.5 between B.w and B.n
] }
define outcome { [ ellipse wid 1.3 ht 0.5 $1 ] }
D1: decision("\f[CR]__z88dk_callee?\f[]") at (2.6, 0)
D2: decision("Has varargs?") at (1.2, -1.0)
D3: decision("return type has" "at most 16 bits?") at (2.6, -1.9)
D4: decision("Both first arg. and" "return type are float?") at (2.6, -3.1)
E1: outcome("Caller cleans" "up stack") at (0.6, -4.2)
E2: outcome("Callee cleans" "up stack") at (4.4, -4.2)
arrow from D1.SW to D2.N; "No " rjust at last arrow.c
arrow from D2.SE to D3.NW; " No" ljust at last arrow.c + (0, 0.05)
arrow from D3.S to D4.N; "No " rjust at last arrow.c
arrow from D4.SW to E1.ne; "No" above at last arrow.c + (0, 0.05)
arrow from D4.SE to E2.nw; "Yes" above at last arrow.c + (0, 0.05)
spline -> from D2.SW to (0.6, -2.0) then to E1.n; "Yes " rjust at (0.65, -1.9)
spline -> from D3.SE to (4.0, -3.0) then to E2.n + (-0.15, 0); " Yes" ljust at (3.75, -2.6)
spline -> from D1.SE to (4.5, -1.2) then to E2.n + (0.1, 0); " Yes" ljust at (4.2, -0.9)
.PE
.DE
.\}
.P
If __z88dk_callee is not used, after the call, the stack parameters are cleaned up by the caller, with the following exceptions: functions that do not have variable arguments and return void or a type of at most 16 bits, or have both a first parameter of type float and a return value of type float.
.H 4 "\&Z80 SDCC calling convention, version 0"
.P
This calling convention can be chosen per function via __sdcccall(0). All parameters are passed on the stack, right-to-left. 8-bit return values are passed in l, 16-bit values in hl, 24-bit values in ehl, 32-bit values in dehl. Except for the SM83, where 8-bit values are passed in e, 16-bit values in de, 32-bit values in hlde. Larger return values (as well as struct and union independent of their size) are passed in a memory in a location specified by the caller through a hidden pointer argument. Unless __z88dk_callee is used, all stack parameters are cleaned up by the caller.
.H 3 "\&Rabbit 2000, Rabbit 2000A, Rabbit 3000A, Rabbit 4000, Rabbit 5000, Rabbit 6000, eZ80 and TLCS-90 calling conventions"
.P
The current default is the Rabbit calling convention described here, version 1. Using the command-line option \-\&\-sdcccall 8, the default can be changed to version 0 of the Z80 calling convention, described above. There are four other calling conventions supported, which can be specified using the keywords __smallc, __z88dk_fastcall, __z88dk_callee and __dynamicc. They are primarily intended for compatibility with libraries written for other compilers. For __z88dk_fastcall, there may be only one parameter of at most 32 bits, which is passed the same way as the return value. For __z88dk_callee, the stack is not adjusted for stack parameters the parameters after the call (thus the callee has to do this instead). __z88dk_callee can be combined with __smallc, __sdcccall(0) or __sdcccall(1).
.H 4 "\&Rabbit SDCC calling convention, version 1"
.P
This calling convention can be chosen per function via __sdcccall(1). 8-bit return values are passed in a, 16-bit values in hl, 24-bit values in lde, 32-bit values in hlde. Larger return values (as well as struct and union independent of their size) are passed in memory in a location specified by the caller through a hidden pointer argument.
.P
For functions that have variable arguments: All parameters are passed on the stack. The stack is not adjusted for the parameters by the callee (thus the caller has to do this instead).
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# Rabbit calling convention:  where the first and second parameters go, by size in bits.
# Coordinates are those of the original drawing (25.4 units to the inch).
scale = 25.4
"8" ljust at (28.07,-8.80)
"8" ljust at (28.08,-23.34)
"8" ljust at (6.75,-11.69)
"16" ljust at (5.69,-21.62)
"16" ljust at (27.08,-3.86)
"32" ljust at (5.87,-16.74)
"\f[CR]a\f[]" ljust at (15.97,-10.01)
"\f[CR]a\f[]" ljust at (36.87,-25.95)
"\f[CR]hl\f[]" ljust at (36.32,-1.96)
"\f[CR]hlde\f[]" ljust at (12.87,-17.88)
"\f[CR]hl\f[]" ljust at (14.89,-26.01)
"\f[CR]l\f[]" ljust at (36.92,-9.96)
"Stack" ljust at (33.85,-17.92)
line -> from (22.00,-18.00) to (33.00,-18.00)
"Stack" ljust at (54.85,-17.92)
line -> from (43.00,-18.00) to (54.00,-18.00)
line -> from (22.00,-11.00) to (33.00,-17.00)
line -> from (22.00,-9.00) to (33.00,-3.00)
line -> from (43.00,-11.00) to (54.00,-17.00)
line -> from (43.00,-3.00) to (54.00,-16.00)
line -> from (22.00,-25.00) to (33.00,-19.00)
line -> from (43.00,-25.00) to (54.00,-19.00)
line -> from (22.00,-26.00) to (33.00,-26.00)
line -> from (22.00,-19.00) to (33.00,-25.00)
line -> from (1.00,-19.00) to (12.00,-25.00)
line -> from (1.00,-18.00) to (12.00,-18.00)
line -> from (1.00,-17.00) to (12.00,-10.00)
line -> from (22.00,-10.00) to (33.00,-10.00)
.PE
.DE
.\}
.P
For Functions that do not have variable arguments: the first parameter is passed in a if it has 8 bits. If it has 16 bits it is passed in hl. If it has 32 bits, it is passed in hlde. If the first parameter is in a, and the second has 8 bits, it is passed in l; if the first is in hl or hlde, and the second has 8 bits, it is passed in a; if the first is in a, and the second has 16 bits, it is passed in hl; all other parameters are passed on the stack, right-to-left. Independent of their size, struct / union parameters and all following parameters are always passed on the stack.
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# Who cleans up the stack after a call:  a decision diagram.
scale = 1
define decision { [
	B: box invis wid 2.0 ht 0.8 $1
	line from B.n to B.e then to B.s then to B.w then to B.n
	N: B.n; E: B.e; S: B.s; W: B.w
	SW: 0.5 between B.w and B.s; SE: 0.5 between B.e and B.s
	NW: 0.5 between B.w and B.n
] }
define outcome { [ ellipse wid 1.3 ht 0.5 $1 ] }
D1: decision("\f[CR]__z88dk_callee?\f[]") at (2.6, 0)
D2: decision("Has varargs?") at (1.2, -1.0)
D3: decision("return type has" "at most 16 bits?") at (2.6, -1.9)
D4: decision("Both first arg. and" "return type are float?") at (2.6, -3.1)
E1: outcome("Caller cleans" "up stack") at (0.6, -4.2)
E2: outcome("Callee cleans" "up stack") at (4.4, -4.2)
arrow from D1.SW to D2.N; "No " rjust at last arrow.c
arrow from D2.SE to D3.NW; " No" ljust at last arrow.c + (0, 0.05)
arrow from D3.S to D4.N; "No " rjust at last arrow.c
arrow from D4.SW to E1.ne; "No" above at last arrow.c + (0, 0.05)
arrow from D4.SE to E2.nw; "Yes" above at last arrow.c + (0, 0.05)
spline -> from D2.SW to (0.6, -2.0) then to E1.n; "Yes " rjust at (0.65, -1.9)
spline -> from D3.SE to (4.0, -3.0) then to E2.n + (-0.15, 0); " Yes" ljust at (3.75, -2.6)
spline -> from D1.SE to (4.5, -1.2) then to E2.n + (0.1, 0); " Yes" ljust at (4.2, -0.9)
.PE
.DE
.\}
.P
If __z88dk_callee is not used, after the call, the stack parameters are cleaned up by the caller, with the following exceptions: functions that do not have variable arguments and return void or a type of at most 16 bits, or have both a first parameter of type float and a return value of type float.
.H 3 "\&SM83 calling conventions"
.P
The current default is the SDCC calling convention, version 1. Using the command-line option \-\&\-sdcccall 0, the default can be changed to version 0. There is another calling conventions supported, which can be specified using the keyword __dynamicc.
.H 4 "\&SM83 SDCC calling convention, version 1"
.P
This calling convention can be chosen per function via __sdcccall(1).
.P
8-bit return values are passed in a, 16-bit values in bc, 32-bit values in debc. Larger return values (as well as struct and union independent of their size) are passed in memory in a location specified by the caller through a hidden pointer argument.
.P
For functions that have variable arguments: All parameters are passed on the stack. The stack is not adjusted for the parameters by the callee (thus the caller has to do this instead).
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# SM83 calling convention:  where the first and second parameters go, by size in bits.
# Coordinates are those of the original drawing (25.4 units to the inch).
scale = 25.4
"8" ljust at (28.07,-8.80)
"8" ljust at (28.16,-24.68)
"8" ljust at (6.75,-11.69)
"16" ljust at (5.69,-21.62)
"16" ljust at (27.08,-3.86)
"16" ljust at (27.15,-29.85)
"32" ljust at (5.87,-16.74)
"\f[CR]a\f[]" ljust at (15.97,-10.01)
"\f[CR]a\f[]" ljust at (36.87,-25.95)
"\f[CR]de\f[]" ljust at (36.32,-1.96)
"\f[CR]debc\f[]" ljust at (12.87,-17.88)
"\f[CR]de\f[]" ljust at (14.89,-26.01)
"\f[CR]bc\f[]" ljust at (35.91,-33.97)
"\f[CR]e\f[]" ljust at (36.92,-9.96)
"Stack" ljust at (33.85,-17.92)
line -> from (22.00,-18.00) to (33.00,-18.00)
"Stack" ljust at (54.85,-17.92)
line -> from (43.00,-18.00) to (54.00,-18.00)
line -> from (22.00,-11.00) to (33.00,-17.00)
line -> from (22.00,-9.00) to (33.00,-3.00)
line -> from (43.00,-11.00) to (54.00,-17.00)
line -> from (43.00,-3.00) to (54.00,-16.00)
line -> from (22.00,-25.00) to (33.00,-19.00)
line -> from (43.00,-25.00) to (54.00,-19.00)
line -> from (43.00,-33.00) to (54.00,-20.00)
line -> from (22.00,-26.00) to (33.00,-26.00)
line -> from (22.00,-27.00) to (33.00,-33.00)
line -> from (1.00,-19.00) to (12.00,-25.00)
line -> from (1.00,-18.00) to (12.00,-18.00)
line -> from (1.00,-17.00) to (12.00,-10.00)
line -> from (22.00,-10.00) to (33.00,-10.00)
.PE
.DE
.\}
.P
For Functions that do not have variable arguments: the first parameter is passed in a if it has 8 bits. If it has 16 bits it is passed in de. If it has 32 bits, it is passed in debc. If the first parameter is in a, and the second has 8 bits, it is passed in e; if the first is in bc or debc, and the second has 8 bits, it is passed in a; if the first is passed in a, and the second has 16 bits, it is passed in bc; if the first is passed in de, and the second has 16 bits, it is passed in bc; all other parameters are passed on the stack, right-to-left. Independent of their size, struct / union parameters and all following parameters are always passed on the stack. The stack is adjusted by the callee (thus explicitly specifying __z88dk_callee does not make a difference), unless the functionhas variable arguments.
.H 4 "\&SM83 SDCC calling convention, version 0"
.P
This calling convention can be chosen per function via __sdcccall(0). 8-bit return values are passed in e, 16-bit values in de, 32-bit values in hlde. Larger return values (as well as struct and union independent of their size) are passed in memory in a location specified by the caller through a hidden pointer argument. All parameters are passed on the stack. The stack is not adjusted for the parameters by the callee (thus the caller has to do this instead), unless __z88dk_callee is specified. __sdcccall(0) can be combined with __z88dk_callee.
.H 3 "\&Small-C calling convention"
.P
Functions declared as __smallc are called using the Small-C calling convention (passing arguments on-stack left-to-right, 1 byte arguments are passed as 2 bytes, with the value in the lower byte). 8-bit return values are passed in a, 16-bit values in de, 32-bit values in hlde. Larger return values (as well as struct and union independent of their size) are passed in memory in a location specified by the caller through a hidden pointer argument. This way assembler routines originally written for Small-C or code generated by Small-C can be called from SDCC. Currently, variable arguments are not yet supported by SDCC (neither on the caller nor on the callee side).
.H 3 "\&Dynamic C calling convention"
.P
Functions declared __dynamicc are called using the Dynamic C calling convention. This way assembler routines originally written for Dynamic C or code generated by Dynamic C can be called from SDCC. Currently variable arguments are not yet supported (neither on the caller nor on the callee side).
.P
All arguments are passed on the stack. The first parameter is also passed in hl if it has 8 bits (sign-extended, but callees in Dynamic C don't rely on that) or 16 bits, in bcde if it has arithmetic type and 32 bits. struct and union, and pointers to __far, are passed on the stack only. Arguments of other types are not supported by the convention. Currently, variable arguments are not yet supported by SDCC (neither on the caller nor on the callee side).
.P
8-bit (sign-extended, but callers in Dynamic C don't rely on that) and 16-bit return values are passed in hl, 32-bit return values are passed in bcde (arithmetic types) or px (pointers to __far). struct and union, independent of their size, are returned via the stack. Return values of other types are not supported by the convention, nor is returning struct/union from functions with variable arguments.
.P
After the call, all stack parameters and the space for struct/union return values are cleaned up by the caller. All registers are to be saved/restored by the caller as needed.
.P
Pointers to __far are a feature introduced in Dynamic C 10, which supports Rabbit 4000/5000/6000 only; no Dynamic C version targeting Z180 or Rabbit 2000/3000 supports them.
.P
Support for the Dynamic C calling convention is slightly incomplete in SDCC vs. Dynamic C 10: pointers to __far are not supported as return values. Also, 8-bit parameters are not sign-extended by the caller (i.e. the upper byte, which is not used by Dynamic C callees, has an unspecified value). When passing or returning struct/union or pointers to those to/from a function actually written for Dynamic C, be aware these should only have members of types supported by both SDCC and Dynamic C, and for which both SDCC and Dynamic C use the same layout. This restricts the members to the following types: char, signed char, unsigned char, (signed) int, unsigned int, (signed) long, unsigned long, float, pointers (excluding pointers to __far), struct/union types to which this restriction applies recursively.
.H 3 "\&Complex instructions"
.P
The Z80 and some derivatives support complex instructions, such as ldir, cpir, ... . SDCC uses these instructions for some functions in the standard library, and sometimes directly generates code for such functions. ldir and ldi are also used by code generation. Thus, e.g. copying one array into another is more efficient when using memcpy() than by using a a user-written loop assigning the elements (but not more efficient than assigning a struct containing such an array).
.P
Depending on the target, code generation options and the parameters to the call, SDCC emits ldir or ldi for memcpy(), ldir or lsidr for memset(), ldi or ldir for strcpy(), ldi for strncpy(). Other library functions use the complex instructions as well, but for those, function calls are generated.
.H 3 "\&Unsafe reads"
.P
Usually, Z80-based systems (except for the SM83 and TLCS-90) have separate I/O and memory spaces, and any normal memory location can be read without side-effects. For such systems, the option \-\&\-allow-unsafe-reads can be used to enable some extra optimizations that rely on this.
.H 3 "\&Z80 banked calls"
.P
Banked calls are supported via __banked. Banked calls are done via a trampoline (__sdcc_bcall if \-\-legacy-banking is specified, __sdcc_bcall_abc for z88dk_fastcall, __sdcc_bcall_ehl for other calls). Default trampolines are provided in the library. The default trampolines calls user supplied helper functions set_bank and get_bank that set the current bank to the value in register a, or return the current bank in register a.
.P
For banked functions, the calling convention is slightly different: the stack is always cleared up by the caller. Unless __z88dk_fastcall is used, all parameters are passed on the stack.
.H 3 "\&Side channels"
.P
The command line option and pragma to avoid the introduction of side channels are supported in the backend. However, some side channels remain even when using it; these include:
.BL
.LI
Division, modulo, and multiplication operations can leak operand data.
.LI
Shift operations can leak right operand data.
.LI
Comparisons can leak operand data in the sm83 backend.
.LI
Floating-point operations (except unary minus) can leak operand data.
.LE
.H 2 "\&The Intel 8080 and 8085 ports"
.SETR sec:Intel-8080-8085
.IND "8080"
.IND "8085"
.P
SDCC targets the Intel 8080 with \-mi8080\c
.IND "-mi8080"
 and the Intel 8085 with \-mi8085\c
.IND "-mi8085"
\&. The two ports share one back-end, and without \-\&\-allow-undocumented-instructions they generate the same code. They differ in the instructions the assembler accepts, which matters for inline assembler (RIM and SIM are 8085 instructions), and in the library they link: lib/i8080, lib/i8085, or lib/i8085-undoc when the undocumented instructions are allowed. The ports are tested on the ucsim_i8085 simulator\c
.IND "ucsim_i8085 (simulator)"
\&.
.P
The compiler writes Intel mnemonics (MOV, MVI, LXI, DAD and so on) for the ASxxxx assembler as8085, with # before an immediate operand, and inline or hand-written assembler uses the same syntax. Each module begins with a .8080, .8085 or .8085x directive, which selects the instruction set as8085 accepts, and an .abi line naming the target and the calling convention, which aslink compares across modules so that incompatible modules are not linked together.
.P
There is no index register, so a function's locals and parameters are addressed relative to SP (LXI H,#n then DAD SP) and there is no frame pointer.
.H 3 "\&Options"
.VL 18n
.LI "\f[B]\-\&\-allow-undocumented-instructions\f[R]"
\c
.IND "--allow-undocumented-instructions"
Use the undocumented 8085 instructions where they make the code smaller or faster (see below). Ignored for \-mi8080.
.LI "\f[B]\-\&\-sdcccall\f[R]\ <Value>"
\c
.IND "--sdcccall <Value>"
The default calling convention: 1 (the default) or 0. See below.
.LI "\f[B]\-\&\-callee-saves-bc\f[R]"
\c
.IND "--callee-saves-bc"
Every function saves and restores BC if it uses it, so a caller can keep a value in BC across a call.
.LI "\f[B]\-\&\-no-std-crt0\f[R]"
\c
.IND "--no-std-crt0"
Do not link the standard crt0.rel; see section \c
.GETHN subsec:Intel-8080-8085-Startup Rf89
.Rd Rf89
\*[Rf89].
.LI "\f[B]\-\&\-codeseg\f[R]\ <Name>, \f[B]\-\&\-constseg\f[R]\ <Name>, \f[B]\-\&\-dataseg\f[R]\ <Name>"
The names of the code, constant and data areas.
.LI "\f[B]\-\&\-emit-externs\f[R]"
\c
.IND "--emit-externs"
Declare every external symbol in the generated assembler source.
.LI "\f[B]\-\&\-asm=asxxxx\f[R]"
The assembler syntax; ASxxxx is the only one.
.LE
.P
\-\&\-code-loc\c
.IND "--code-loc <Value>"
 and \-\&\-data-loc\c
.IND "--data-loc <Value>"
 set the start of the code and data areas; the defaults are 0x0200 and 0x8000.
.H 3 "\&Undocumented 8085 instructions"
.P
By default only documented instructions are emitted. With \-\&\-allow-undocumented-instructions\c
.IND "--allow-undocumented-instructions"
, the \-mi8085 port also uses seven of the 8085's undocumented instructions:
.BL
.LI
DSUB \- 16-bit subtract, HL = HL \- BC.
.LI
ARHL \- arithmetic (signed) shift right of HL by one.
.LI
RDEL \- rotate DE left through carry, used in wide left shifts.
.LI
LDHI \- DE = HL + an 8-bit immediate, combined with LHLX for 16-bit struct and array member loads.
.LI
LDSI \- DE = SP + an 8-bit immediate.
.LI
LHLX / SHLX \- load or store HL through a pointer in DE.
.LE
.P
In inline assembler, as8085 then also accepts the other three, RSTV and the jumps on the undocumented K flag, JX5 and JNX5; without the option it refuses all ten. The V (overflow) and K/X5 flags are modelled by the ucsim simulator. The \-mi8080 port never emits undocumented instructions.
.H 3 "\&Calling conventions"
.P
The default is the SDCC calling convention, version 1. With \-\&\-sdcccall 0 the default is version 0, and either can be chosen for one function with __sdcccall(0) or __sdcccall(1). __smallc, __z88dk_fastcall and __z88dk_callee are supported as well; __dynamicc is refused with an error. For __z88dk_fastcall there may be only one parameter, of at most 32 bits, which is passed in L, HL or DEHL, and the return value is passed as for version 0.
.H 4 "\&SDCC calling convention, version 1"
.P
For functions that have variable arguments, all parameters are passed on the stack. Otherwise the first parameter is passed in A if it has 8 bits, in HL if it has 16 bits and in HLDE if it has 32 bits; if the first is in A and the second has 8 bits, the second is passed in L. All other parameters are passed on the stack, right-to-left. Independent of their size, struct / union parameters and all following parameters are always passed on the stack.
.P
8-bit return values are passed in A, 16-bit values in DE, 24-bit values in LDE and 32-bit values in HLDE. Larger return values, and struct and union independent of their size, are passed in memory at a location given by the caller through a hidden pointer argument.
.P
Unless __z88dk_callee is used, the stack parameters are cleaned up by the caller, with the following exceptions: functions that do not have variable arguments and return void or a type of at most 16 bits, or have both a first parameter of type float and a return value of type float, clean up their own.
.H 4 "\&SDCC calling convention, version 0"
.P
All parameters are passed on the stack, right-to-left. 8-bit return values are passed in L, 16-bit values in HL, 24-bit values in EHL and 32-bit values in DEHL; larger return values, and struct and union, as for version 1. Unless __z88dk_callee is used, the stack parameters are cleaned up by the caller.
.H 3 "\&Startup Code"
.SETR subsec:Intel-8080-8085-Startup
.P
The startup code is crt0.rel, made from sdcc/device/lib/i8080/crt0.s or sdcc/device/lib/i8085/crt0.s and linked first. At the reset vector, address 0, it jumps to 0x100, where it sets SP to the top of memory, clears the uninitialised data, copies the initial values of initialised data from code memory, runs each module's static initialisation and calls main. If main returns, interrupts are disabled and the processor halts.
.P
The interrupt vectors are not set up: to use interrupts, copy crt0.s, add a jump to each handler at its vector (for example 0x3C for RST 7.5, or 0x24 for TRAP), assemble it with \f[HB]as8085 \-plosgff crt0.s\f[R] and link it with \-\&\-no-std-crt0\c
.IND "--no-std-crt0"
, listing your crt0.rel first.
.H 3 "\&Interrupt Service Routines"
.P
A function declared __interrupt saves the registers it uses and returns with RET. Interrupts are re-enabled with EI as the function starts, so a higher priority interrupt can interrupt it; a __critical __interrupt function runs with interrupts disabled and executes EI just before its RET. The interrupt number is not used, since SDCC does not generate the vector table. A __critical function or block that is not an interrupt handler disables interrupts with DI and enables them with EI when it ends, whether or not they were enabled before.
.H 2 "\&The HC08 and S08 ports"
.P
The port to the Freescale/Motorola HC08\c
.IND "HC08"
 and S08 does not yet generate code as compact as that generated by some non-free compilers. A comparison of compilers for these architecture can be found at \c
.URL "http://sdcc.sourceforge.net/wiki/index.php/Hc08_code_size" "" "."
.H 3 "\&Startup Code"
.P
The HC08\c
.IND "HC08"
 startup code follows the same scheme as the MCS51 startup code.
.H 3 "\&Side channels"
.P
The command line option and pragma to avoid the introduction of side channels are supported in the backend. However, some side channels remain even when using it; these include:
.BL
.LI
Division, modulo and multiplication operations can leak operand data.
.LI
Shift operations can leak right operand data.
.LI
Floating-point operations (except unary minus) can leak operand data.
.LE
.H 2 "\&The STM8 port"
.H 3 "\&Startup Code"
.SETR subsec:STM8-Startup-Code
.P
The STM8\c
.IND "STM8"
 startup code is crt0.rel, made from sdcc/device/lib/stm8/crt0.s (and stm8-large/crt0.s for \-\&\-model-large). The compiler writes the interrupt vector table into the module holding main, with the reset vector pointing at the crt0's __sdcc_gs_init_startup. The crt0 calls __sdcc_external_startup() and, unless that returns non-zero, clears the uninitialised data and copies the initial values of initialised data from flash; then each module's static initialisation runs and main is called. The startup code runs first whatever the order the modules are linked in.
.P
SP is left at the device's reset value. With \-\&\-stack-loc\c
.IND "--stack-loc <Value>"
, the reset vector points instead at a short piece of code after the vector table that loads SP and jumps to __sdcc_gs_init_startup. To use different startup code, compile with \-\&\-no-std-crt0\c
.IND "--no-std-crt0"
 and link your own crt0.rel, which must define __sdcc_gs_init_startup.
.H 3 "\&Calling conventions"
.P
By default, the SDCC calling convention, version 1 is used. Using the option \-\&\-sdcccall 0, the default can be changed to version 0.
.P
Arguments are passed on the stack right-to-left. Return values are in a (8 bit), x (16 bit), xyl (24 bit), xy (32 bit) or use a hidden extra pointer parameter pointing to the location (anything wider than 32 bit, and all struct / union).
.H 4 "\&SDCC calling convention, version 1"
.P
\c
.ie n \{\
.DS CB
[Figure:  see the PDF or HTML version of this manual.]
.DE
.\}
.el \{\
.DS CB
.PS
# STM8 calling convention:  where the first and second parameters go, by size in bits.
# Coordinates are those of the original drawing (25.4 units to the inch).
scale = 25.4
"8" ljust at (27.96,-16.69)
"8" ljust at (6.97,-3.46)
"16" ljust at (26.57,-0.46)
"16" ljust at (5.92,-13.50)
"\f[CR]a\f[]" ljust at (15.97,-2.01)
"\f[CR]a\f[]" ljust at (36.97,-17.95)
"\f[CR]x\f[]" ljust at (15.83,-17.95)
"\f[CR]x\f[]" ljust at (36.92,-1.96)
"Stack" ljust at (12.97,-9.89)
"Stack" ljust at (33.85,-9.92)
line -> from (22.00,-10.00) to (33.00,-10.00)
"Stack" ljust at (54.85,-9.92)
line -> from (43.00,-10.00) to (54.00,-10.00)
line -> from (22.00,-3.00) to (33.00,-9.00)
line -> from (43.00,-3.00) to (54.00,-9.00)
line -> from (22.00,-17.00) to (33.00,-11.00)
line -> from (43.00,-17.00) to (54.00,-11.00)
line -> from (22.00,-18.00) to (33.00,-18.00)
line -> from (1.00,-11.00) to (12.00,-17.00)
line -> from (1.00,-10.00) to (12.00,-10.00)
line -> from (1.00,-9.00) to (12.00,-2.00)
line -> from (22.00,-2.00) to (33.00,-2.00)
.PE
.DE
.\}
.P
For functions that have variable arguments, all parameters are passed on the stack. For other functions, if the first parameter has 8 or 16 bits, it is passed in a or x. If the first parameter is passed in a, and the second has 16 bits, the second is passed in x. If the first parameter is passed in x, and the second has 8 bits, the second is passed in a. All other parameters are passed on the stack. Independent of their size, struct / union parameters and all following parameters are always passed on the stack. If __z88dk_callee is specified, the stack is always adjusted by the callee. Otherwise, for the large memory model, the stack is always adjusted by the caller. For the medium memory model the stack is adjusted by the caller, with the following exceptions: functions that do not have variable arguments and return void or a type of at most 16 bits, or have both a first parameter of type float and a return value of type float.
.H 4 "\&SDCC calling convention, version 0"
.P
This calling convention can be chosen per function via __sdcccall(0) (e.g. for compatibility with functions written in assembler for use with older versions of SDCC). All parameters are passed on the stack. The stack is not adjusted for the parameters by the callee (thus the caller has to do this instead), unless __z88dk_callee is specified.
.H 4 "\&Raisonance calling convention"
.P
For compatibility with the Raisonance STM8 compiler, the __raisonance calling convention is supported. If the first parameter is 8 or 16 bits, it is passed in a or x. If the first parameter is 8 bits, and the second 16 bits, the second is passed in x. If the first parameter is 16 bits, and the second is 8 bits, the second is passed in a. All other parameters are passed on the stack. If the return value is 8 bits, it is passed in a. If it is 16 bits, it is passed in x. Raisonance passes larger return values in pseudoregisters, which is not supported by SDCC.
.H 4 "\&IAR calling convention"
.P
For compatibility with the IAR STM8 compiler, the __iar calling convention is supported. The first 8-bit parameter is passed in a, the first 16-bit parameter in x, the second 16-bit parameter in y. Further parameters of up to 32 bits are passed in pseudoregisters, which is not supported by SDCC. All other parameters are passed on the stack. If the return value is 8 bits, it is passed in a. If it is 16 bits, it is passed in x. IAR passes larger return values in pseudoregisters, which is not supported by SDCC.
.H 4 "\&Cosmic calling convention"
.P
For compatibility with the Cosmic STM8 compiler, the __cosmic calling convention is supported. If the first parameter is 8 or 16 bits, it is passed in a or x. If the return value is 8 bits, it is passed in a. If it is 16 bits, it is passed in x. Cosmic passes larger return values in pseudoregisters, which is not supported by SDCC. Even for the medium memory model, __cosmic functions use a 24-bit return address in their stack frame, and are called using callf.
.H 3 "\&Side channels"
.P
The command line option and pragma to avoid the introduction of side channels are supported in the backend. However, some side channels remain even when using it; these include:
.BL
.LI
Division and modulo operations can leak operand data
.LI
Shift operations can leak right operand data
.LI
Floating-point operations (except unary minus) can leak operand data
.LE
.H 2 "\&The f8 port"
.H 3 "\&Calling convention"
.P
If the the function does not have variable arguments, and the first argument is not a struct or union and has 8 or 16 bits, it is passed in xl (8 bits) or y (16 bits). All other arguments are passed on the stack right-to-left. Return values are in xl (8 bit), x (16 bit), xxl (24 bit), yx (32 bit) or use a hidden extra pointer parameter pointing to the location (anything wider than 32 bit, and all struct / union). The stack is not adjusted for the parameters by the callee (thus the caller has to do this instead).
.H 3 "\&Side channels"
.P
The command line option and pragma to avoid the introduction of side channels are supported in the backend. However, some side channels remain even when using it; these include:
.BL
.LI
Division and modulo operations can leak operand data.
.LI
Shift operations can leak right operand data.
.LI
Floating-point operations (except unary minus) can leak operand data.
.LE
.H 2 "\&The MOS6502 and WDC65C02 ports"
.P
The mos6502\c
.IND "MOS6502"
 port can target the original MOS Technology NMOS 6502 , and the CMOS Rockwell/WDC 65C02 with enhanched instruction set.
.H 3 "\&Startup Code"
.P
On the MOS6502\c
.IND "MOS6502"
 the startup code is inserted by linking with crt0.rel which is generated from sdcc/device/lib/mos6502/crt0.s. If you need a different startup code you can use the compiler option \f[I]\-\f[B]\&\f[I]\-no-std-crt0\f[R]\c
.IND "--no-std-crt0"
 and provide your own crt0.rel. When using a custom crt0.rel it needs to be listed first when linking.
.H 3 "\&Hooking up interrupts"
.P
ISR can be written in C using SDCC. However, to hook interrupts is necessary to customize crt0.asm and have the interrupt vectors point to the C functions.
.H 3 "\&Reentrancy"
.P
Due to the very limited stack space, the MOS6502 port by default generates non-reentrant code. Re-entrant functions should be declared using the __reentrant keyword. Alternatively the entire program can be compiled using \-\&\-stack-auto. On the MOS6502 re-entrant code is, in general, much less efficient.
.H 3 "\&Code and Data placement"
.P
The compiler can pass segment location to the linker. On the MOS6502 the following switches are supported:
.P
\-\&\-code-loc: start address of the code segment
.P
\-\&\-data-loc: start address of the zero page
.P
\-\&\-xram-loc: start address of the data segment
.H 2 "\&The PDK13, PDK14, PDK15 ports"
.H 3 "\&Side channels"
.P
The command line option and pragma to avoid the introduction of side channels are supported in the backend. However, some side channels remain even when using it; these include:
.BL
.LI
Division, modulo and multiplication operations can leak operand data.
.LI
Shift operations can leak right operand data.
.LI
Reads from signed bit-fields can leak the sign bit.
.LI
Signed casts can leak the sign of the operand.
.LI
Comparisons can leak operand data.
.LI
Floating-point operations (except unary minus) can leak operand data.
.LE
.H 2 "\&The PIC14 port"
.IND "PIC14"
.P
The PIC14 port adds support for Microchip\c
.IND "Microchip"
\[tm] PIC\c
.IND "PIC14"
\[tm] MCUs with 14 bit wide instructions. This port is not yet mature and still lacks many features. However, it can work for simple code.
.P
Currently supported devices include:
.P
\c
.sp
.P
10F320, 10F322, 10LF320, 10LF322
.P
12F609, 12F615, 12F617, 12F629, 12F635, 12F675, 12F683
.P
12F752
.P
12HV752
.P
16C62, 16C63A, 16C65B
.P
16C71, 16C72, 16C73B, 16C74B
.P
16C432, 16C433
.P
16C554, 16C557, 16C558
.P
16C620, 16C620A, 16C621, 16C621A, 16C622, 16C622A
.P
16C710, 16C711, 16C715, 16C717, 16C745, 16C765, 16C770, 16C771, 16C773, 16C774, 16C781, 16C782
.P
16C925, 16C926
.P
16CR73, 16CR74, 16CR76, 16CR77
.P
16CR620A
.P
16F72 ,16F73, 16F74, 16F76, 16F77
.P
16F84, 16F84A, 16F87, 16F88
.P
16F610, 16F616, 16F627, 16F627A, 16F628, 16F628A, 16F630, 16F631, 16F636, 16F639, 16F648A
.P
16F676, 16F677, 16F684, 16F685, 16F687, 16F688, 16F689, 16F690
.P
16F707, 16F716, 16F720, 16F721, 16F722, 16F722A, 16F723, 16F723A, 16F724, 16F726, 16F727
.P
16F737, 16F747, 16F753, 16F767, 16F777, 16F785
.P
16F818, 16F819, 16F870, 16F871, 16F872, 16F873, 16F873A, 16F874, 16F874A, 16F876, 16F876A
.P
16F877, 16F877A, 16F882, 16F883, 16F884, 16F886, 16F887
.P
16F913, 16F914, 16F916, 16F917, 16F946
.P
16LF74, 16LF76, 16LF77
.P
16LF84, 16LF84A, 16LF87, 16LF88
.P
16LF627, 16LF627A, 16LF628, 16LF628A, 16LF648A
.P
16LF707, 16LF720, 16LF721, 16LF722, 16LF722A, 16LF723, 16LF723A, 16LF724, 16LF726, 16LF727
.P
16LF747, 16LF767, 16LF777
.P
16LF818, 16LF819, 16LF870, 16LF871, 16LF872, 16LF873, 16LF873A, 16LF874, 16LF874A
.P
16LF876, 16LF876A, 16LF877, 16LF877A
.P
16HV610, 16HV616, 16HV753, 16HV785
.P
\c
.sp
.P
Supported devices with enhanced cores:
.P
\c
.sp
.P
12F1501, 12F1571, 12F1572, 12F1612, 12F1822, 12F1840
.P
12LF1501, 12LF1552, 12LF1571, 12LF1572, 12LF1612, 12LF1822, 12LF1840, 12LF1840T39A, 12LF1840T48A
.P
16F1454, 16F1455, 16F1458, 16F1459
.P
16F1503, 16F1507, 16F1508, 16F1509, 16F1512, 16F1513, 16F1516, 16F1517, 16F1518, 16F1519
.P
16F1526, 16F1527, 16F1574, 16F1575, 16F1578, 16F1579
.P
16F1613, 16F1614, 16F1615, 16F1618, 16F1619
.P
16F1703, 16F1704, 16F1705, 16F1707, 16F1708, 16F1709, 16F1713, 16F1716, 16F1717, 16F1718, 16F1719
.P
16F1764, 16F1765, 16F1768, 16F1769, 16F1773, 16F1776, 16F1777, 16F1778, 16F1779
.P
16F1782, 16F1783, 16F1784, 16F1786, 16F1787, 16F1788, 16F1789
.P
16F1823, 16F1824, 16F1825, 16F1826, 16F1827, 16F1828, 16F1829, 16F1829LIN, 16F1847
.P
16F1933, 16F1934, 16F1936, 16F1937, 16F1938, 16F1939, 16F1946, 16F1947
.P
16F18313, 16F18323, 16F18324, 16F18325, 16F18344, 16F18345,
.P
16F18855, 16F18875
.P
16LF1454, 16LF1455, 16LF1458, 16LF1459
.P
16LF1503, 16LF1507, 16LF1508, 16LF1509, 16LF1512, 16LF1513, 16LF1516, 16LF1517, 16LF1518, 16LF1519,
.P
16LF1526, 16LF1527
.P
16LF1554, 16LF1559, 16LF1566, 16LF1567, 16LF1574, 16LF1575, 16LF1578, 16LF1579
.P
16LF1613, 16LF1614, 16LF1615, 16LF1618, 16LF1619
.P
16LF1703, 16LF1704, 16LF1705, 16LF1707, 16LF1708, 16LF1709, 16LF1713, 16LF1716, 16LF1717, 16LF1718, 16LF1719
.P
16LF1764, 16LF1765, 16LF1768, 16LF1769, 16LF1773, 16LF1776, 16LF1777, 16LF1778, 16LF1779
.P
16LF1782, 16LF1783, 16LF1784, 16LF1786, 16LF1787, 16LF1788, 16LF1789,
.P
16LF1823, 16LF1824, 16LF1824T39A
.P
16LF1825, 16LF1826, 16LF1827, 16LF1828, 16LF1829, 16LF1847
.P
16LF1902, 16LF1903, 16LF1904, 16LF1906, 16LF1907
.P
16LF1933, 16LF1934, 16LF1936, 16LF1937, 16LF1938, 16LF1939, 16LF1946, 16LF1947
.P
16LF18313, 16LF18323, 16LF18324, 16LF18325, 16LF18344, 16LF18345
.P
16LF18855, 16LF18875
.P
\c
.sp
.P
An up-to-date list of currently supported devices can be obtained via \f[CR]sdcc \-mpic14 \-phelp foo.c\f[R] (foo.c must exist...).
.H 3 "\&PIC Code Pages and Memory Banks"
.IND "code page (pic14)"
.IND "Memory bank (pic14)"
.P
The linker organizes allocation for the code page and RAM banks. It does not have intimate knowledge of the code flow. It will put all the code section of a single .asm file into a single code page. In order to make use of multiple code pages, separate asm files must be used. The compiler assigns all \f[I]static\f[R] functions of a single .c file into the same code page.\c
.sp
To get the best results, follow these guidelines:
.AL
.LI
Make local functions static, as non static functions require code page selection overhead.\c
.br
Due to the way SDCC handles functions, place called functions prior to calling functions in the file wherever possible: Otherwise SDCC will insert unnecessary pagesel directives around the call, believing that the called function is externally defined.
.LI
For devices that have multiple code pages it is more efficient to use the same number of files as pages: Use up to 4 separate .c files for the 16F877, but only 2 files for the 16F874. This way the linker can put the code for each file into different code pages and there will be less page selection overhead.
.LI
And as for any 8 bit micro (especially for PIC14 as they have a very simple instruction set), use `unsigned char' wherever possible instead of `int'.
.LE
.H 3 "\&Adding New Devices to the Port"
.P
Adding support for a new 14\|bit PIC MCU requires the following steps:
.AL
.LI
Create a new device description.\c
.br
Each device is described in two files: pic16f*.h and pic16f*.c. These files primarily define SFRs, structs to access their bits, and symbolic configuration options. Both files can be generated from gputils' .inc files using the perl script \f[CR]support/scripts/inc2h.pl\f[R]. This file also contains further instructions on how to proceed.
.LI
Copy the .h file into SDCC's include path and either add the .c file to your project or copy it to \f[CR]device/lib/pic/libdev\f[R]. Afterwards, rebuild and install the libraries.
.LI
Edit pic14devices.txt in SDCC's include path (\f[CR]device/include/pic/\f[R] in the source tree or \f[CR]/usr/local/share/sdcc/include/pic\f[R] after installation).\c
.br
You need to add a device specification here to make the memory layout (code banks, RAM, aliased memory regions, ...) known to the compiler. Probably you can copy and modify an existing entry. The file format is documented at the top of the file.
.LE
.H 3 "\&Interrupt Code"
.P
For the interrupt function, use the keyword \f[I]__interrupt\f[R]\c
.IND "PIC14" "interrupt"
 with level number of 0 (PIC14 only has 1 interrupt so this number is only there to avoid a syntax error \- it ought to be fixed). E.g.:
.DS I
.ft CR
\f[CR]void Intr(void) __interrupt (0)
{
\ \ T0IF = 0; /* Clear timer interrupt */
}
.ft
.DE
.H 3 "\&Configuration Bits"
.P
Configuration bits (also known as fuses) can be configured using `\f[CR]__code\f[R]' and `\f[CR]__at\f[R]' modifiers. Possible options should be ANDed and can be found in your processor header file. Example for PIC16F88:
.DS I
.ft CR
\f[CR]#include <pic16f88.h> //Contains config addresses and options
#include <stdint.h> //Needed for uint16_t
\&
static __code uint16_t __at (_CONFIG1) configword1 = _INTRC_IO &
  _CP_ALL & _WDT_OFF & [...];
static __code uint16_t __at (_CONFIG2) configword2 = [...];
.ft
.DE
.P
Although data type is ignored if the address (\f[CR]__at()\f[R]) refers to a config word location, using a type large enough for the configuration word (\f[CR]uint16_t\f[R] in this case) is recommended to prevent changes in the compiler (implicit, early range check and enforcement) from breaking the definition.\c
.sp
If your processor header file doesn't contain config addresses you can declare it manually or use a literal address:
.DS I
.ft CR
\f[CR]static __code uint16_t __at (0x2007) configword1 = _INTRC_IO &
  _CP_ALL & _WDT_OFF & [...];
.ft
.DE
.H 3 "\&Linking and Assembling"
.P
For assembling you can use either GPUTILS'\c
.IND "gputils (pic tools)"
 gpasm.exe or MPLAB's mpasmwin.exe. GPUTILS are available from \c
.URL "http://sourceforge.net/projects/gputils" "" "."
For linking you can use either GPUTILS' gplink or MPLAB's mplink.exe. If you use MPLAB and an interrupt function then the linker script file vectors section will need to be enlarged to link with mplink.\c
.sp
Pic device specific header and c source files are automatically generated from MPLAB include files, which are published by Microchip with a special requirement that they are only to be used with authentic Microchip devices. This reqirement prevents to publish generated header and c source files under the GPL compatible license, so they are located in non-free directory (see section \c
.GETHN subsec:Search-Paths Rf56
.Rd Rf56
\*[Rf56]). In order to include them in include and library search paths, the \f[B]\-\&\-use-non-free\c
.IND "--use-non-free"
\f[R] command line option should be defined.\c
.sp
NOTE: the compiled code, which use non-free pic device specific libraries, is not GPL compatible!\c
.sp
Here is a \f[CR]Makefile\f[R] using GPUTILS:
.DS I
.ft CR
\f[CR].c.o:
\ \ \ \ \ \ \ \ sdcc \-V \-\-use\-non\-free \-mpic14 \-p16f877 \-c $<
\&
$(PRJ).hex: $(OBJS)
\ \ \ \ \ \ \ \ gplink \-m \-s $(PRJ).lkr \-o $(PRJ).hex $(OBJS) libsdcc.lib
.ft
.DE
.P
Here is a \f[CR]Makefile\f[R] using MPLAB:
.DS I
.ft CR
\f[CR].c.o:
\ \ \ \ \ \ \ \ sdcc \-S \-V \-\-use\-non\-free \-mpic14 \-p16f877 $<
\ \ \ \ \ \ \ \ mpasmwin /q /o $*.asm
\&
$(PRJ).hex: $(OBJS)
\ \ \ \ \ \ \ \ mplink /v $(PRJ).lkr /m $(PRJ).map /o $(PRJ).hex $(OBJS) libsdcc.lib
.ft
.DE
.P
Please note that indentations within a \f[CR]Makefile\f[R] have to be done with a tabulator character.
.H 3 "\&Command-Line Options"
.P
Besides the switches common to all SDCC backends, the PIC14 port accepts the following options (for an updated list see sdcc \-\&\-help):
.VL 18n
.LI "\f[B]\-\&\-debug-xtra\f[]"
\c
.IND "PIC14" "Options" "--debug-extra"
emit debug info in assembly output
.LI "\f[B]\-\&\-no-pcode-opt\f[]"
\c
.IND "PIC14" "Options" "--no-pcode-opt"
disable (slightly faulty) optimization on pCode
.LI "\f[B]\-\&\-stack-loc\f[]"
\c
.IND "PIC14" "Options" "--stack-loc"
sets the lowest address of the argument passing stack (defaults to a suitably large shared databank to reduce BANKSEL overhead)
.LI "\f[B]\-\&\-stack-size\f[]"
\c
.IND "PIC14" "Options" "--stack-size"
sets the size if the argument passing stack (default: 16, minimum: 4)
.LI "\f[B]\-\&\-use-non-free\f[]"
\c
.IND "PIC14" "Options" "--use-non-free"
make non-free device headers and libraries available in the compiler's search paths (implicit \-I and \-L options)
.LI "\f[B]\-\&\-no-extended-instructions\f[]"
forbid use of the extended instruction set (e.g., ADDFSR)
.LE
.H 3 "\&Environment Variables"
.P
The PIC14 port recognizes the following environment variables:
.VL 18n
.LI "\f[B]SDCC_PIC14_SPLIT_LOCALS\f[]"
\c
.IND "PIC14" "Environment variables" "SDCC_PIC14_SPLIT_LOCALS"
\c
.IND "SDCC" "Environment variables" "SDCC_PIC14_SPLIT_LOCALS"
If set and not empty, sdcc will allocate each temporary register (the ones called r0xNNNN) in a section of its own. By default (if this variable is unset), sdcc tries to cluster registers in sections in order to reduce the BANKSEL overhead when accessing them.
.LE
.H 3 "\&The Library"
.P
The PIC14 library currently only contains support routines required by the compiler to implement multiplication, division, and floating point support. No libc-like replacement is available at the moment, though many of the common sdcc library sources (in \f[CR]device/lib\f[R]) should also compile with the PIC14 port.
.H 4 "\&Enhanced cores"
.P
SDCC/PIC14 has experimental support for devices with the enhanced 14-bit cores (such as pic12f1822). Due to differences in required code, the libraries provided with SDCC (\f[CR]libm.lib\f[R] and \f[CR]libsdcc.lib\f[R]) are now provided in two variants: \f[CR]libm.lib\f[R] and \f[CR]libsdcc.lib\f[R] are compiled for the regular, non-enhanced devices. \f[CR]libme.lib\f[R] and \f[CR]libsdcce.lib\f[R] (note the trailing '\f[CR]e\f[R]') are compiled for enhanced devices. When linking manually, make sure to select the proper variant!
.P
When SDCC is used to invoke the linker, SDCC will automatically select the \f[CR]libsdcc.lib\f[R]\-variant suitable for the target device. However, no such magic has been conjured up for \f[CR]libm.lib\f[R]!
.H 4 "\&Accessing bits of special function registers"
.P
Individual bits within SFRs can be accessed either using \f[CR]<sfrname>bits.<bitname>\f[R] or using a shorthand \f[CR]<bitname>\f[R], which is defined in the respective device header for all \f[CR]<bitname>\f[R]s. In order to avoid polluting the global namespace with the names of all the bits, you can \f[CR]#define NO_BIT_DEFINES\f[R] before inclusion of the device header file.
.H 4 "\&Naming of special function registers"
.SETR subsec:Naming-of-special
.P
If \f[CR]NO_BIT_DEFINES\f[R] is used, individual bits of the SFRs can be accessed as \f[CR]<sfrname>bits.<bitname>\f[R]. With the 3.1.0 release, the previously used \f[CR]<sfrname>_bits.<bitname>\f[R] (note the underscore) is deprecated. This was done to align the naming conventions with the PIC16 port and competing compiler vendors. To avoid polluting the global namespace with the legacy names, you can prevent their definition using \f[CR]#define NO_LEGACY_NAMES\f[R] prior to the inclusion of the device header.
.P
You \f[CB]must\f[R] also \f[CR]#define NO_BIT_DEFINES\f[R] in order to access SFRs as \f[CR]<sfrname>bits.<bitname>\f[R], otherwise \f[CR]<bitname>\f[R] will expand to \f[CR]<sfrname>bits.<bitname>\f[R], yielding the undefined expression \f[CR]<sfrname>bits.<sfrname>bits.<bitname>\f[R].
.H 4 "\&error: missing definition for symbol ``__gptrget1''"
.P
The PIC14 port uses library routines to provide more complex operations like multiplication, division/modulus and (generic) pointer dereferencing. In order to add these routines to your project, you must link with PIC14's \f[CR]libsdcc.lib\f[R]. For single source file projects this is done automatically, more complex projects must add \f[CR]libsdcc.lib\f[R] to the linker's arguments. Make sure you also add an include path for the library (using the \-I switch to the linker)!
.H 4 "\&Processor mismatch in file ``XXX''."
.P
This warning can usually be ignored due to the very good compatibility amongst 14\|bit PIC\c
.IND "PIC14"
 devices.
.P
You might also consider recompiling the library for your specific device by changing the ARCH=p16f877 (default target) entry in \f[CR]device/lib/pic/Makefile.in\f[R] and \f[CR]device/lib/pic/Makefile\f[R] to reflect your device. This might even improve performance for smaller devices as unnecessary BANKSELs might be removed.
.H 3 "\&Known Bugs"
.H 4 "\&Function arguments"
.P
Functions with variable argument lists (like printf) are not yet supported. Similarly, taking the address of the first argument passed into a function does not work: It is currently passed in WREG and has no address...
.H 4 "\&Regression tests fail"
.P
Though the small subset of regression tests in src/regression passes, SDCC regression test suite does not, indicating that there are still major bugs in the port. However, many smaller projects have successfully used SDCC in the past...
.H 2 "\&The PIC16 port"
.IND "PIC16"
.P
The PIC16 port adds support for Microchip\c
.IND "Microchip"
\[tm] PIC\c
.IND "PIC"
\[tm] MCUs with 16 bit wide instructions. This port is not yet mature and still lacks many features. However, it can work for simple code. Currently this family of microcontrollers contains the PIC18Fxxx and PIC18Fxxxx; devices supported by the port include:
.P
\c
.sp
.P
18F13K22 18F13K50
.P
18F14K22 18F14K50
.P
18F23K20 18F23K22
.P
18F24J10 18F24J11 18F24J50 18F24K20 18F24K22 18F24K50
.P
18F25J10 18F25J11 18F25J50 18F25K20 18F25K22 18F25K50 18F25K80
.P
18F26J11 18F26J13 18F26J50 18F26J53 18F26K20 18F26K22 18F26K80
.P
18F27J13 18F27J53
.P
18F43K20 18F43K22
.P
18F44J10 18F44J11 18F44J50 18F44K20 18F44K22
.P
18F45J10 18F45J11 18F45J50 18F45K20 18F45K22 18F45K50 18F45K80
.P
18F46J11 18F46J13 18F46J50 18F46J53 18F46K20 18F46K22 18F46K80
.P
18F47J13 18F47J53
.P
18F63J11 18F63J90
.P
18F64J11 18F64J90
.P
18F65J10 18F65J11 18F65J15 18F65J50 18F65J90 18F65J94 18F65K22 18F65K80 18F65K90
.P
18F66J10 18F66J11 18F66J15 18F66J16 18F66J50 18F66J55 18F66J60 18F66J65
.P
18F66J90 18F66J93 18F66J94 18F66J99 18F66K22 18F66K80 18F66K90
.P
18F67J10 18F67J11 18F67J50 18F67J60 18F67J90 18F67J93 18F67J94 18F67K22 18F67K90
.P
18F83J11 18F83J90
.P
18F84J11 18F84J90
.P
18F85J10 18F85J11 18F85J15 18F85J50 18F85J90 18F85J94 18F85K22 18F85K90
.P
18F86J10 18F86J11 18F86J15 18F86J16 18F86J50 18F86J55 18F86J60 18F86J65
.P
18F86J72 18F86J90 18F86J93 18F86J94 18F86J99 18F86K22 18F86K90
.P
18F87J10 18F87J11 18F87J50 18F87J60 18F87J72 18F87J90 18F87J93 18F87J94 18F87K22 18F87K90
.P
18F95J94 18F96J60 18F96J65 18F96J94 18F96J99
.P
18F97J60 18F97J94
.P
18F242 18F248 18F252 18F258
.P
18F442 18F448 18F452 18F458
.P
18F1220 18F1230
.P
18F1320 18F1330
.P
18F2220 18F2221
.P
18F2320 18F2321 18F2331
.P
18F2410 18F2420 18F2423 18F2431 18F2439 18F2450 18F2455 18F2458 18F2480
.P
18F2510 18F2515 18F2520 18F2523 18F2525 18F2539 18F2550 18F2553 18F2580 18F2585
.P
18F2610 18F2620 18F2680 18F2682 18F2685
.P
18F4220 18F4221
.P
18F4320 18F4321 18F4331
.P
18F4410 18F4420 18F4423 18F4431 18F4439 18F4450 18F4455 18F4458 18F4480
.P
18F4510 18F4515 18F4520 18F4523 18F4525 18F4539 18F4550 18F4553 18F4580 18F4585
.P
18F4610 18F4620 18F4680 18F4682 18F4685
.P
18F6310 18F6390 18F6393
.P
18F6410 18F6490 18F6493
.P
18F6520 18F6525 18F6527 18F6585
.P
18F6620 18F6621 18F6622 18F6627 18F6628 18F6680
.P
18F6720 18F6722 18F6723
.P
18F8310 18F8390 18F8393
.P
18F8410 18F8490 18F8493
.P
18F8520 18F8525 18F8527 18F8585
.P
18F8620 18F8621 18F8622 18F8627 18F8628 18F8680
.P
18F8720 18F8722 18F8723
.P
18LF13K22 18LF13K50
.P
18LF14K22 18LF14K50
.P
18LF23K22 18LF24J10 18LF24J11 18LF24J50 18LF24K22 18LF24K50
.P
18LF25J10 18LF25J11 18LF25J50 18LF25K22 18LF25K50 18LF25K80
.P
18LF26J11 18LF26J13 18LF26J50 18LF26J53 18LF26K22 18LF26K80
.P
18LF27J13 18LF27J53
.P
18LF43K22
.P
18LF44J10 18LF44J11 18LF44J50 18LF44K22
.P
18LF45J10 18LF45J11 18LF45J50 18LF45K22 18LF45K50 18LF45K80
.P
18LF46J11 18LF46J13 18LF46J50 18LF46J53 18LF46K22 18LF46K80
.P
18LF47J13 18LF47J53
.P
18LF65K80
.P
18LF66K80
.P
18LF242 18LF248 18LF252 18LF258
.P
18LF442 18LF448 18LF452 18LF458
.P
18LF1220 18LF1230
.P
18LF1320 18LF1330
.P
18LF2220 18LF2221
.P
18LF2320 18LF2321 18LF2331
.P
18LF2410 18LF2420 18LF2423 18LF2431 18LF2439 18LF2450 18LF2455 18LF2458 18LF2480
.P
18LF2510 18LF2515 18LF2520 18LF2523 18LF2525 18LF2539 18LF2550 18LF2553 18LF2580 18LF2585
.P
18LF2610 18LF2620 18LF2680 18LF2682 18LF2685
.P
18LF4220 18LF4221
.P
18LF4320 18LF4321 18LF4331
.P
18LF4410 18LF4420 18LF4423 18LF4431 18LF4439 18LF4450 18LF4455 18LF4458 18LF4480
.P
18LF4510 18LF4515 18LF4520 18LF4523 18LF4525 18LF4539 18LF4550 18LF4553 18LF4580 18LF4585
.P
18LF4610 18LF4620 18LF4680 18LF4682 18LF4685
.P
18LF6310 18LF6390 18LF6393
.P
18LF6410 18LF6490 18LF6493
.P
18LF6520 18LF6525 18LF6527 18LF6585
.P
18LF6620 18LF6621 18LF6622 18LF6627 18LF6628 18LF6680
.P
18LF6720 18LF6722 18LF6723
.P
18LF8310 18LF8390 18LF8393
.P
18LF8410 18LF8490 18LF8493
.P
18LF8520 18LF8525 18LF8527 18LF8585
.P
18LF8620 18LF8621 18LF8622 18LF8627 18LF8628 18LF8680
.P
18LF8720 18LF8722 18LF8723
.P
\c
.sp
.P
An up-to-date list of supported devices is also available via '\f[CR]sdcc \-mpic16 \-plist\f[R]'.
.H 3 "\&Global Options"
.P
PIC16 port supports the standard command line arguments as supposed, with the exception of certain cases that will be mentioned in the following list:
.VL 18n
.LI "\f[B]\-\&\-callee-saves\f[]"
\c
.IND "PIC16" "Options" "--callee-saves"
See \-\&\-all-callee-saves
.LI "\f[B]\-\&\-use-non-free\f[]"
\c
.IND "PIC16" "Options" "--use-non-free"
Make non-free device headers and libraries available in the compiler's search paths (implicit \-I and \-L options).
.LE
.H 3 "\&Port Specific Options"
.IND "Options PIC16"
.P
The port specific options appear after the global options in the sdcc \-\&\-help output.
.H 4 "\&Code Generation Options"
.P
These options influence the generated assembler code.
.VL 18n
.LI "\f[B]\-\&\-pstack-model=[model]\f[]"
Used in conjunction with the command above. Defines the stack model to be used, valid stack models are:
.VL 18n
.LI "\f[I]small\f[R]"
Selects small stack model. 8 bit stack and frame pointers. Supports 256 bytes stack size.
.LI "\f[I]large\f[R]"
Selects large stack model. 16 bit stack and frame pointers. Supports 65536 bytes stack size.
.LE
.LI "\f[B]\-\&\-pno-banksel\f[]"
Do not generate BANKSEL assembler directives.
.LI "\f[B]\-\&\-extended\f[]"
Enable extended instruction set/literal offset addressing mode. Use with care!
.LE
.H 4 "\&Optimization Options"
.VL 18n
.LI "\f[B]\-\&\-obanksel=n\f[]"
Set optimization level for inserting BANKSELs.\c
.br
.VL 18n
.LI "0"
no optimization
.LI "1"
checks previous used register and if it is the same then does not emit BANKSEL, accounts only for labels.
.LI "2"
tries to check the location of (even different) symbols and removes BANKSELs if they are in the same bank. \c
.br
\f[I]Important: There might be problems if the linker script has data sections across bank borders!\f[R]
.LE
.LI "\f[B]\-\&\-denable-peeps\f[]"
Force the usage of peepholes. Use with care.
.LI "\f[B]\-\&\-no-optimize-goto\f[]"
Do not use (conditional) BRA instead of GOTO.
.LI "\f[B]\-\&\-optimize-cmp\f[]"
Try to optimize some compares.
.LI "\f[B]\-\&\-optimize-df\f[]"
Analyze the dataflow of the generated code and improve it.
.LE
.H 4 "\&Assembling Options"
.VL 18n
.LI "\f[B]\-\&\-asm=\f[]"
Sets the full path and name of an external assembler to call.
.LI "\f[B]\-\&\-mplab-comp\f[]"
MPLAB\c
.IND "PIC16" "MPLAB"
 compatibility option. Currently only suppresses special gpasm directives.
.LE
.H 4 "\&Linking Options"
.VL 18n
.LI "\f[B]\-\&\-link=\f[]"
Sets the full path and name of an external linker to call.
.LI "\f[B]\-\&\-preplace-udata-with=[kword]\f[]"
Replaces the default udata keyword for allocating unitialized data variables with [kword]. Valid keywords are: "udata_acs", "udata_shr", "udata_ovr".
.LI "\f[B]\-\&\-ivt-loc=n\f[]"
Place the interrupt vector table at address \f[I]n\f[R]. Useful for bootloaders.
.LI "\f[B]\-\&\-nodefaultlibs\f[]"
Do not link default libraries when linking.
.LI "\f[B]\-\&\-use-crt=\f[]"
Use a custom run-time module instead of the default (crt0i).
.LI "\f[B]\-\&\-no-crt\f[]"
Don't link the default run-time modules
.LE
.H 4 "\&Debugging Options"
.P
Debugging options enable extra debugging information in the output files.
.VL 18n
.LI "\f[B]\-\&\-debug-xtra\f[]"
Similar to \-\&\-debug\c
.IND "--debug"
, but dumps more information.
.LI "\f[B]\-\&\-debug-ralloc\f[]"
Force register allocator to dump <source>.d file with debugging information. <source> is the name of the file being compiled.
.LI "\f[B]\-\&\-pcode-verbose\f[]"
Enable pcode debugging information in translation.
.LI "\f[B]\-\&\-calltree\f[]"
Dump call tree in .calltree file.
.LI "\f[B]\-\&\-gstack\f[]"
Trace push/pops for stack pointer overflow.
.LE
.H 3 "\&Environment Variables"
.P
There is a number of environmental variables that can be used when running SDCC to enable certain optimizations or force a specific program behaviour. these variables are primarily for debugging purposes so they can be enabled/disabled at will.
.P
Currently there is only two such variables available:
.VL 18n
.LI "\f[B]OPTIMIZE_BITFIELD_POINTER_GET\f[]"
\c
.IND "PIC16" "Environment variables" "OPTIMIZE_BITFIELD_POINTER_GET"
\c
.IND "SDCC" "Environment variables" "OPTIMIZE_BITFIELD_POINTER_GET (PIC16)"
When this variable exists, reading of structure bit-fields is optimized by directly loading FSR0 with the address of the bit-field structure. Normally SDCC will cast the bit-field structure to a bit-field pointer and then load FSR0. This step saves data ram and code space for functions that make heavy use of bit-fields. (i.e., 80 bytes of code space are saved when compiling malloc.c with this option).
.LI "\f[B]NO_REG_OPT\f[]"
\c
.IND "PIC16" "Environment variables" "NO_REG_OPT"
\c
.IND "SDCC" "Environment variables" "NO_REG_OPT"
Do not perform pCode registers optimization. This should be used for debugging purposes. If bugs in the pcode optimizer are found, users can benefit from temporarily disabling the optimizer until the bug is fixed.
.LE
.H 3 "\&Preprocessor Macros"
.IND "Preprocessor" "PIC16 Macros"
.P
PIC16\c
.IND "PIC16"
 port defines the following preprocessor macros while translating a source.
.P
\c
.TK
.TS
center tab(	);
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |.
_
Macro	Description
_
T{
__SDCC_pic16\c
.IND "SDCC" "Defines" "__SDCC_pic16"
T}	Port identification
_
T{
pic18fxxxx\c
.IND "PIC16" "Defines" "pic18fxxxx"
T}	MCU Identification. \f[I]xxxx\f[R] is the microcontrol identification number, i.e. 452, 6620, etc
_
T{
_\&_18Fxxxx\c
.IND "PIC16" "Defines" "__pic18fxxxx"
T}	MCU Identification (same as above)
_
T{
STACK_MODEL_nnn\c
.IND "PIC16" "Defines" "STACK_MODEL_nnn"
T}	nnn = SMALL or LARGE respectively according to the stack model used
_
.TE
.TKE
.P
In addition the following macros are defined when calling assembler:
.P
\c
.TK
.TS
center tab(	);
| c | c |
| c | c |
| c | c |
| c | c |.
_
Macro	Description
_
__18Fxxxx	MCU Identification. \f[I]xxxx\f[R] is the microcontrol identification number, i.e. 452, 6620, etc
_
__SDCC_MODEL_nnn	nnn = SMALL or LARGE respectively according to the memory model used for SDCC
_
STACK_MODEL_nnn	nnn = SMALL or LARGE respectively according to the stack model used
_
.TE
.TKE
.H 3 "\&Directories"
.P
PIC16\c
.IND "PIC16"
 port uses the following directories for searching header files and libraries.\c
.br
.P
\c
.TK
.TS
center tab(	);
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |.
_
Directory	Description	Target	Command prefix
_
PREFIX/sdcc/include/pic16	PIC16 specific headers	Compiler	\-I
_
PREFIX/sdcc/lib/pic16	PIC16 specific libraries	Linker	\-L
_
.TE
.TKE
.P
If the \f[B]\-\&\-use-non-free\c
.IND "--use-non-free"
\f[R] command line option is specified, non-free directories are searched:\c
.br
.P
\c
.TK
.TS
center tab(	);
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |.
_
Directory	Description	Target	Command prefix
_
PREFIX/sdcc/non-free/include/pic16	PIC16 specific non-free headers	Compiler	\-I
_
PREFIX/sdcc/non-free/lib/pic16	PIC16 specific non-free libraries	Linker	\-L
_
.TE
.TKE
.H 3 "\&Pragmas"
.SETR subsec:PIC16_Pragmas
.P
The PIC16\c
.IND "PIC16"
 port currently supports the following pragmas:
.VL 18n
.LI "\f[B]stack\f[]"
This forces the code generator to initialize the stack & frame pointers at a specific address. This is an ad hoc solution for cases where no STACK directive is available in the linker script or gplink is not instructed to create a stack section.\c
.br
The stack pragma should be used only once in a project. Multiple pragmas may result in indeterminate behaviour of the program.\*F\c
.FS
The old format (ie. #pragma stack 0x5ff) is deprecated and will cause the stack pointer to cross page boundaries (or even exceed the available data RAM) and crash the program. Make sure that stack does not cross page boundaries when using the SMALL stack model.
.FE
\c
.br
The format is as follows:
.LE
.DS I
.ft CR
\f[CR]#pragma stack bottom_address [stack_size]
\&
.ft
.DE
.P
\f[I]bottom_address\f[R] is the lower bound of the stack section. The stack pointer initially will point at address (bottom_address+stack_size-1).
.DS I
.ft CR
\f[CR]Example:
\f[CR]
\f[CR]/* initializes stack of 100 bytes at RAM address 0x200 */
\f[CR]#pragma stack 0x200 100
.ft
.DE
.P
If the stack_size field is omitted then a stack is created with the default size of 64. This size might be enough for most programs, but its not enough for operations with deep function nesting or excessive stack usage.
.VL 18n
.LI "\f[B]code\f[]"
Force a function to a static FLASH address.
.LE
.DS I
.ft CR
\f[CR]Example:
\f[CR]
\f[CR]/* place function test_func at 0x4000 */
\f[CR]#pragma code test_func 0x4000
\f[CR]
.ft
.DE
.VL 18n
.LI "\f[B]library\f[]"
instructs the linker to use a library module.\c
.br
Usage:
.LE
.DS I
.ft CR
\f[CR]#pragma library module_name
.ft
.DE
.P
\f[I]module_name\f[R] can be any library or object file (including its path). Note that there are four reserved keywords which have special meaning. These are:
.P
\c
.TK
.TS
center tab(	);
| c | cw(1.16i) | c |
| c | cw(1.16i) | c |
| c | cw(1.16i) | c |
| c | cw(1.16i) | c |
| c | cw(1.16i) | c |
| c | cw(1.16i) | c |.
_
Keyword	T{
Description
T}	Module to link
_
\f[B]ignore\f[R]	T{
ignore all library pragmas
T}	\f[I](none)\f[R]
_
\f[B]c\f[R]	T{
link the C library
T}	\f[I]libc18f\f[R].lib
_
\f[B]math\f[R]	T{
link the Math libarary
T}	\f[I]libm18f\f[R].lib
_
\f[B]io\f[R]	T{
link the I/O library
T}	\f[I]libio18f*\f[R].lib
_
\f[B]debug\f[R]	T{
link the debug library
T}	\f[I]libdebug\f[R].lib
_
.TE
.TKE
\c
.br
* is the device number, i.e. 452 for PIC18F452 MCU.
.P
This feature allows for linking with specific libraries without having to explicit name them in the command line. Note that the ignore keyword will reject all modules specified by the library pragma.
.VL 18n
.LI "\f[B]udata\f[]"
The pragma udata instructs the compiler to emit code so that linker will place a variable at a specific memory bank.
.LE
.DS I
.ft CR
\f[CR]Example:
\f[CR]
\f[CR]/* places variable foo at bank2 */
\f[CR]#pragma udata bank2 foo
\f[CR]char foo;
.ft
.DE
.P
In order for this pragma to work extra SECTION directives should be added in the .lkr script. In the following example a sample .lkr file is shown:
.DS I
.ft CR
\f[CR]
\f[CR]// Sample linker script for the PIC18F452 processor
\f[CR]LIBPATH .
\f[CR]CODEPAGE   NAME=vectors    START=0x0            END=0x29           PROTECTED
\f[CR]CODEPAGE   NAME=page       START=0x2A           END=0x7FFF
\f[CR]CODEPAGE   NAME=idlocs     START=0x200000       END=0x200007       PROTECTED
\f[CR]CODEPAGE   NAME=config     START=0x300000       END=0x30000D       PROTECTED
\f[CR]CODEPAGE   NAME=devid      START=0x3FFFFE       END=0x3FFFFF       PROTECTED
\f[CR]CODEPAGE   NAME=eedata     START=0xF00000       END=0xF000FF       PROTECTED
\f[CR]ACCESSBANK NAME=accessram  START=0x0            END=0x7F
\f[CR]
\f[CR]DATABANK   NAME=gpr0       START=0x80           END=0xFF
\f[CR]DATABANK   NAME=gpr1       START=0x100          END=0x1FF
\f[CR]DATABANK   NAME=gpr2       START=0x200          END=0x2FF
\f[CR]DATABANK   NAME=gpr3       START=0x300          END=0x3FF
\f[CR]DATABANK   NAME=gpr4       START=0x400          END=0x4FF
\f[CR]DATABANK   NAME=gpr5       START=0x500          END=0x5FF
\f[CR]ACCESSBANK NAME=accesssfr  START=0xF80          END=0xFFF          PROTECTED
\f[CR]
\f[CR]SECTION    NAME=CONFIG     ROM=config
\f[CR]
\f[CR]SECTION    NAME=bank0      RAM=gpr0       # these SECTION directives
\f[CR]SECTION    NAME=bank1      RAM=gpr1       # should be added to link
\f[CR]SECTION    NAME=bank2      RAM=gpr2       # section name 'bank?' with
\f[CR]SECTION    NAME=bank3      RAM=gpr3       # a specific DATABANK name
\f[CR]SECTION    NAME=bank4      RAM=gpr4
\f[CR]SECTION    NAME=bank5      RAM=gpr5
.ft
.DE
.P
The linker will recognise the section name set in the pragma statement and will position the variable at the memory bank set with the RAM field at the SECTION line in the linker script file.
.VL 18n
.LI "\f[B]config\f[]"
The pragma config instructs the compiler to emit config directive.\c
.br
The format is as follows:
.LE
.DS I
.ft CR
\f[CR]#pragma config setting=value [, setting=value]
\f[CR]
.ft
.DE
.P
Multiple settings may be defined on a single line, separated by commas. Settings for a single configuration byte may also be defined on separate lines.
.DS I
.ft CR
\f[CR]Example:
\f[CR]
\f[CR]#pragma config CP0=OFF,OSCS=ON,OSC=LP,BOR=ON,BORV=25,WDT=ON,WDTPS=128,CCP2MUX=ON
\f[CR]#pragma config STVR=ON
.ft
.DE
.H 3 "\&Header Files and Libraries"
.SETR subsec:PIC16_Header-Files-and-Libraries
.P
Pic device specific header and c source files are automatically generated from MPLAB include files, which are published by Microchip with a special requirement that they are only to be used with authentic Microchip devices. This requirement prevents to publish generated header and c source files under the GPL compatible license, so they are located in the non-free directory (see section \c
.GETHN subsec:Search-Paths Rf57
.Rd Rf57
\*[Rf57]). In order to include them in include and library search paths, the \f[B]\-\&\-use-non-free\c
.IND "--use-non-free"
\f[R] command line option should be defined.\c
.sp
NOTE: the compiled code, which use non-free pic device specific libraries, is not GPL compatible!
.H 3 "\&Header Files"
.SETR subsec:PIC16_Header-Files
.P
There is one main header file\c
.IND "PIC16" "Header files"
 that can be included to the source files using the pic16\c
.IND "PIC16"
 port. That file is the \f[B]pic18fregs.h\f[R]. This header file contains the definitions for the processor special registers, so it is necessary if the source accesses them. It can be included by adding the following line in the beginning of the file:
.DS I
.ft CR
\f[CR]#include <pic18fregs.h>
.ft
.DE
.P
The specific microcontroller is selected within the pic18fregs.h automatically, so the same source can be used with a variety of devices.
.H 3 "\&Libraries"
.SETR subsec:pic16Libraries
.P
The libraries\c
.IND "PIC16" "Libraries"
 that PIC16\c
.IND "PIC16"
 port depends on are the microcontroller device libraries which contain the symbol definitions for the microcontroller special function registers. These libraries have the format pic18fxxxx.lib, where \f[I]xxxx\f[R] is the microcontroller identification number. The specific library is selected automatically by the compiler at link stage according to the selected device.
.P
Libraries are created with gplib which is part of the gputils package \c
.URL "http://sourceforge.net/projects/gputils" "" "."
.nr Hu 4
.HU "\&Building the libraries"
.P
Before using SDCC/pic16 there are some libraries that need to be compiled. This process is done automatically if gputils are found at SDCC's compile time. Should you require to rebuild the pic16 libraries manually (e.g. in order to enable output of float values\c
.IND "printf()" "PIC16 Floating point support"
 via \f[CR]printf()\f[R], see below), these are the steps required to do so under Linux or Mac OS X (cygwin might work as well, but is untested):
.DS I
.ft CR
\f[CR]cd device/lib/pic16
\f[CR]./configure.gnu
\f[CR]cd ..
\f[CR]make model\-pic16
\f[CR]su \-c 'make install'     # install the libraries, you need the root password
\f[CR]cd ../..
.ft
.DE
.P
If you need to install the headers too, do:
.DS I
.ft CR
\f[CR]cd device/include
\f[CR]su \-c 'make install'     # install the headers, you need the root password
.ft
.DE
.nr Hu 4
.HU "\&Output of float values via printf()"
.P
The library is normally built without support for displaying float values, only <NO FLOAT>\c
.IND "<NO FLOAT>"
\c
.IND "printf()" "PIC16 floating point support"
 will appear instead of the value. To change this, rebuild the library as stated above, but call \f[CR]./configure.gnu \-\-enable\-floats \f[R]instead of just \f[CR]./configure.gnu\f[R]. Also make sure that at least \f[CR]libc/stdio/vfprintf.c\f[R] is actually recompiled, e.g. by \f[CR]touch\f[R]ing it after the \f[CR]configure\f[R] run or deleting its \f[CR].o\f[R] file.
.P
The more common approach of compiling \f[CR]vfprintf.c\f[R] manually with \f[CR]\-DUSE_FLOATS=1\f[R] should also work, but is untested.
.H 3 "\&Adding New Devices to the Port"
.P
Adding support for a new 16\|bit PIC MCU requires the following steps:
.AL
.LI
Create picDEVICE.c and picDEVICE.h from pDEVICE.inc using\c
.br
\f[CR]perl /path/to/sdcc/support/scripts/inc2h\-pic16.pl \[rs]\c
.br
/path/to/gputils/header/pDEVICE.inc\f[R]
.LI
\f[CR]mv picDEVICE.h /path/to/sdcc/device/non\-free/include/pic16\f[R]
.LI
\f[CR]mv picDEVICE.c /path/to/sdcc/device/non\-free/lib/pic16/libdev\f[R]
.LI
Either
.AL
.LI
add the new device to \f[CR]/path/to/sdcc/device/lib/pic16/libio/*.ignore\f[R] to suppress building any of the I/O libraries for the new device\*F\c
.FS
In fact, the \f[CR].ignore\f[R] files are only used when auto-generating \f[CR]Makefile.am\f[R] using the \f[CR].../libio/mkmk.sh\f[R] script.
.FE
, or
.LI
add the device (family) to \f[CR]/path/to/sdcc/support/scripts/pic18fam\-h\-gen.pl\f[R] to assign I/O styles, run the \f[CR]pic18fam\-h\-gen.pl\f[R] script to generate \f[CR]pic18fam.h.gen\f[R], replace your existing \f[CR]pic18fam.h\f[R] with the generated file, and (if required) implement new I/O styles in \f[CR]/path/to/sdcc/device/include/pic16/{adc,i2c,usart}.h\f[R] and \f[CR]/path/to/sdcc/device/lib/pic16/libio/*/*.\f[R]
.LE
.LI
Edit \f[CR]/path/to/sdcc/device/include/pic16/pic18fregs.h\f[R]\c
.br
The file format is self-explanatory, just add\c
.br
\f[CR]#elif defined(picDEVICE)\c
.br
#\ \ include <picDEVICE.h>\f[R]\c
.br
at the right place (keep the file sorted, please).
.LI
Edit \f[CR]/path/to/sdcc/device/include/pic16devices.txt\c
.br
\f[R]Copy and modify an existing entry or create a new one and insert it at the correct place (keep the file sorted, please).
.LI
\f[CR]( cd /path/to/sdcc/device/non\-free/lib/pic16 && sh update.sh )\f[R]
.LI
Recompile the pic16 libraries as described in \c
.GETHN subsec:pic16Libraries Rf58
.Rd Rf58
\*[Rf58] or just configure and build sdcc again from scratch (recommended).
.LE
.H 3 "\&Memory Models"
.P
The following memory models are supported by the PIC16 port:
.BL
.LI
small model
.LI
large model
.LE
.P
Memory model affects the default size of pointers within the source. The sizes are shown in the next table:
.P
\c
.TK
.TS
center tab(	);
| c | c | c |
| c | c | c |
| c | c | c |.
_
Pointer sizes according to memory model	small model	large model
_
code pointers	16-bits	24-bits
_
data pointers	16-bits	16-bits
_
.TE
.TKE
.P
It is advisable that all sources within a project are compiled with the same memory model. If one wants to override the default memory model, this can be done by declaring a pointer as \f[B]far\f[R] or \f[B]near\f[R]. Far selects large memory model's pointers, while near selects small memory model's pointers.
.P
The standard device libraries (see \c
.GETHN subsec:PIC16_Header-Files Rf59
.Rd Rf59
\*[Rf59]) contain no reference to pointers, so they can be used with both memory models.
.H 3 "\&Stack"
.P
The stack\c
.IND "PIC16" "stack"
 implementation for the PIC16 port uses two indirect registers, FSR1 and FSR2.
.VL 18n
.LI "\f[B]FSR1\f[]"
is assigned as stack pointer
.LI "\f[B]FSR2\f[]"
is assigned as frame pointer
.LE
.P
The following stack models are supported by the PIC16 port
.BL
.LI
small model
.LI
large model
.LE
.P
Small model means that only the FSRxL byte is used to access stack and frame, while \f[I]large\f[R] uses both FSRxL and FSRxH registers. The following table shows the stack/frame pointers sizes according to stack model and the maximum space they can address:
.P
\c
.TK
.TS
center tab(	);
| c | c | c |
| c | c | c |
| c | c | c |.
_
Stack & Frame pointer sizes according to stack model	small	large
_
Stack pointer FSR1	8-bits	16-bits
_
Frame pointer FSR2	8-bits	16-bits
_
.TE
.TKE
.P
Large stack model is currently not working properly throughout the code generator. So its use is not advised. Also there are some other points that need special care:
.AL
.LI
Do not create stack sections with size more than one physical bank (that is 256 bytes)
.LI
Stack sections should no cross physical bank limits (i.e. #pragma stack 0x50 0x100)
.LE
.P
These limitations are caused by the fact that only FSRxL is modified when using SMALL stack model, so no more than 256 bytes of stack can be used. This problem will disappear after LARGE model is fully implemented.
.H 3 "\&Functions"
.P
In addition to the standard SDCC function keywords, PIC16\c
.IND "PIC16"
 port makes available two more:
.VL 18n
.LI "\f[B]__wparam\f[]"
\c
.IND "PIC16" "wparam"
Use the WREG to pass one byte of the first function argument. This improves speed but you may not use this for functions with arguments that are called via function pointers, otherwise the first byte of the first parameter will get lost. Usage:
.LE
.DS I
.ft CR
\f[CR]void func_wparam(int a) __wparam
\f[CR]{
\f[CR]    /* WREG hold the lower part of a */
\f[CR]    /* the high part of a is stored in FSR2+2 (or +3 for large stack model) */
\f[CR]...
\f[CR]}
.ft
.DE
.VL 18n
.LI "\f[B]__shadowregs\f[]"
\c
.IND "PIC16" "shadowregs"
When entering/exiting an ISR, it is possible to take advantage of the PIC18F hardware shadow registers which hold the values of WREG, STATUS and BSR registers. This can be done by adding the keyword \f[I]__shadowregs\f[R] before the \f[I]__interrupt\f[R] keyword in the function's header.
.LE
.DS I
.ft CR
\f[CR]void isr_shadow(void) __shadowregs __interrupt (1)
\f[CR]{
\f[CR]...
\f[CR]}
.ft
.DE
.P
\f[I]__shadowregs\f[R] instructs the code generator not to store/restore WREG, STATUS, BSR when entering/exiting the ISR.
.H 3 "\&Function return values"
.P
Return values from functions are placed to the appropriate registers following a modified Microchip policy optimized for SDCC. The following table shows these registers:
.P
\c
.TK
.TS
center tab(	);
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |
| c | c |.
_
size	destination register
_
8 bits	WREG
_
16 bits	PRODL:WREG
_
24 bits	PRODH:PRODL:WREG
_
32 bits	FSR0L:PRODH:PRODL:WREG
_
>32 bits	on stack, FSR0 points to the beginning
_
.TE
.TKE
.H 3 "\&Interrupts"
.P
An interrupt\c
.IND "PIC16" "interrupt"
 service routine (ISR) is declared using the \f[I]__interrupt\f[R] keyword.
.DS I
.ft CR
\f[CR]void isr(void) __interrupt \f[CI](n)\f[CR]
\f[CR]{
\f[CR]...
\f[CR]}
.ft
.DE
.P
\f[I]n\f[R] is the interrupt number, which for PIC18F devices can be:
.P
\c
.TK
.TS
center tab(	);
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |.
_
\f[I]n\f[R]	Interrupt Vector	Interrupt Vector Address
_
0	RESET vector	0x000000
_
1	HIGH priority interrupts	0x000008
_
2	LOW priority interrupts	0x000018
_
.TE
.TKE
.P
When generating assembly code for ISR the code generator places a goto instruction at the \f[I]Interrupt Vector Address\f[R] which points at the generated ISR. This single GOTO instruction is part of an automatically generated \f[I]interrupt entry point\f[R] function. The actual ISR code is placed as normally would in the code space. Upon interrupt request, the GOTO instruction is executed which jumps to the ISR code. When declaring interrupt functions as _naked this GOTO instruction is \f[B]not\f[R] generated. The whole interrupt functions is therefore placed at the Interrupt Vector Address of the specific interrupt. This is not a problem for the LOW priority interrupts, but it is a problem for the RESET and the HIGH priority interrupts because code may be written at the next interrupt's vector address and cause indeterminate program behaviour if that interrupt is raised.\*F\c
.FS
This is not a problem when
this is a HIGH interrupt ISR and LOW interrupts are \f[I]disabled\f[R] or not used.
when the ISR is small enough not to reach the next interrupt's vector address.
.FE
.P
\f[I]n\f[R] may be omitted. This way a function is generated similar to an ISR, but it is not assigned to any interrupt.
.P
When entering an interrupt, currently the PIC16\c
.IND "PIC16"
 port automatically saves the following registers:
.BL
.LI
WREG
.LI
STATUS
.LI
BSR
.LI
PROD (PRODL and PRODH)
.LI
FSR0 (FSR0L and FSR0H)
.LE
.P
These registers are restored upon return from the interrupt routine.\*F\c
.FS
NOTE that when the _naked attribute is specified for an interrupt routine, then NO registers are stored or restored.
.FE
.H 3 "\&Generic Pointers"
.P
Generic pointers are implemented in PIC16 port as 3-byte (24-bit) types. There are 3 types of generic pointers currently implemented data, code and eeprom pointers. They are differentiated by the value of the 7th and 6th bits of the upper byte:
.P
\c
.TK
.TS
center tab(	);
| c | c | c | c | lw(5c) |
| c | c | c | c | lw(5c) |
| c | c | c | c | lw(5c) |
| c | c | c | c | lw(5c) |
| c | c | c | c | lw(5c) |.
_
pointer type	7th bit	6th bit	rest of the pointer	description
_
data	1	0	\f[CI]uuuuuu uuuuxxxx xxxxxxxx\f[R]	T{
a 12-bit data pointer in data RAM memory
T}
code	0	0	\f[CI]uxxxxx xxxxxxxx xxxxxxxx\f[R]	T{
a 21-bit code pointer in FLASH memory
T}
eeprom	0	1	\f[CI]uuuuuu uuuuuuxx xxxxxxxx\f[R]	T{
a 10-bit eeprom pointer in EEPROM memory
T}
(unimplemented)	1	1	\f[CI]xxxxxx xxxxxxxx xxxxxxxx\f[R]	T{
unimplemented pointer type
T}
_
.TE
.TKE
.P
Generic pointer are read and written with a set of library functions which read/write 1, 2, 3, 4 bytes.
.H 3 "\&Configuration Bits"
.P
Configuration bits (also known as fuses) can be configured using one of two methods:
.BL
.LI
using #pragma config (see section \c
.GETHN subsec:PIC16_Pragmas Rf60
.Rd Rf60
\*[Rf60]), which is a preferred method for the new code. Example:
.LE
.DS I
.ft CR
\f[CR]#pragma config CP0=OFF,OSCS=ON,OSC=LP,BOR=ON,BORV=25,WDT=ON,WDTPS=128,CCP2MUX=ON
\f[CR]#pragma config STVR=ON
.ft
.DE
.BL
.LI
using `\f[CR]__code\f[R]' and `\f[CR]__at\f[R]' modifiers. This method is deprecated. Possible options should be ANDed and can be found in your processor header file. Example for PIC18F2550:
.LE
.DS I
.ft CR
\f[CR]#include <pic18fregs.h> //Contains config addresses and options
\&
static __code char __at(__CONFIG1L) configword1l =
  _USBPLL_CLOCK_SRC_FROM_96MHZ_PLL_2_1L &
\f[CR]  _PLLDIV_NO_DIVIDE__4MHZ_INPUT__1L & [...];
static __code char __at(__CONFIG1H) configword1h = [...];
static __code char __at(__CONFIG2L) configword2l = [...];
//More configuration words
.ft
.DE
.P
Mixing both methods is not allowed and throws an error message \[lq]mixing __CONFIG and CONFIG directives\[rq].
.H 3 "\&PIC16 C Libraries"
.H 4 "\&Standard I/O Streams"
.P
In the \f[I]stdio.h\f[R] the type FILE is defined as:
.DS I
.ft CR
\f[CR]typedef char * FILE;
.ft
.DE
.P
This type is the stream type implemented I/O in the PIC18F devices. Also the standard input and output streams are declared in stdio.h:
.DS I
.ft CR
\f[CR]extern FILE * stdin;
\f[CR]extern FILE * stdout;
.ft
.DE
.P
The FILE type is actually a generic pointer which defines one more type of generic pointers, the \f[I]stream\f[R] pointer. This new type has the format:
.P
\c
.TK
.TS
center tab(	);
| c | c | c | c | c | c | lw(5c) |
| c | c | c | c | c | c | lw(5c) |.
_
pointer type	<7:6>	<5>	<4>	<3:0>	rest of the pointer	description
_
stream	00	1	0	nnnn	\f[CI]uuuuuuuu uuuuuuuu\f[R]	T{
upper byte high nibble is 0x2n, the rest are zeroes
T}
_
.TE
.TKE
.P
Currently implemented there are 3 types of streams defined:
.P
\c
.TK
.TS
center tab(	);
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |.
_
stream type	value	module	description
_
STREAM_USART	\f[CR]0x200000UL\f[R]	USART	Writes/Reads characters via the USART peripheral
_
STREAM_MSSP	\f[CR]0x210000UL\f[R]	MSSP	Writes/Reads characters via the MSSP peripheral
_
STREAM_USER	\f[CR]0x2f0000UL\f[R]	(none)	Writes/Reads characters via used defined functions
_
.TE
.TKE
.P
The stream identifiers are declared as macros in the stdio.h header.
.P
In the libc library there exist the functions that are used to write to each of the above streams. These are
.VL 18n
.LI "\f[B]_\&_stream_usart_putchar\f[]"
writes a character at the USART stream
.LI "\f[B]_\&_stream_mssp_putchar\f[]"
writes a character at the MSSP stream
.LI "\f[B]putchar\f[]"
dummy function. This writes a character to a user specified manner.
.LE
.P
In order to increase performance \f[I]putchar\f[R] is declared in stdio.h as having its parameter in WREG (it has the \f[I]__wparam\f[R] keyword). In stdio.h exists the macro PUTCHAR(arg) that defines the putchar function in a user-friendly way. \f[I]arg\f[R] is the name of the variable that holds the character to print. An example follows:
.DS I
.ft CR
\f[CR]#include <pic18fregs.h>
#include <stdio.h>
\&
PUTCHAR( c )
\f[CR]{
\f[CR]    PORTA = c;    /* dump character c to PORTA */
\f[CR]}
\&
void main(void)
\f[CR]{
\f[CR]    stdout = STREAM_USER;    /* this is not necessary, since stdout points
\f[CR]                              * by default to STREAM_USER */
\f[CR]    printf (\[dq]This is a printf test\[rs]n\[dq]);
\f[CR]}
\f[CR]
.ft
.DE
.H 4 "\&Printing functions"
.P
PIC16 contains an implementation of the printf-family\c
.IND "printf()" "PIC16"
 of functions. There exist the following functions:
.DS I
.ft CR
\f[CR]extern unsigned int sprintf(char *buf, char *fmt, ...);
\f[CR]extern unsigned int vsprintf(char *buf, char *fmt, va_list ap);
\f[CR]
\f[CR]extern unsigned int printf(char *fmt, ...);
\f[CR]extern unsigned int vprintf(char *fmt, va_lista ap);
\f[CR]
\f[CR]extern unsigned int fprintf(FILE *fp, char *fmt, ...);
\f[CR]extern unsigned int vfprintf(FILE *fp, char *fmt, va_list ap);
.ft
.DE
.P
For sprintf and vsprintf \f[I]buf\f[R] should normally be a data pointer where the resulting string will be placed. No range checking is done so the user should allocate the necessary buffer. For fprintf and vfprintf \f[I]fp\f[R] should be a stream pointer (i.e. stdout, STREAM_MSSP, etc...).
.H 4 "\&Signals"
.P
The PIC18F family of microcontrollers supports a number of interrupt sources. A list of these interrupts is shown in the following table:
.P
\c
.TK
.TS
center tab(	);
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |
| c | c | c | c |.
_
signal name	description	signal name	description
_
SIG_RB	PORTB change interrupt	SIG_EE	EEPROM/FLASH write complete interrupt
_
SIG_INT0	INT0 external interrupt	SIG_BCOL	Bus collision interrupt
_
SIG_INT1	INT1 external interrupt	SIG_LVD	Low voltage detect interrupt
_
SIG_INT2	INT2 external interrupt	SIG_PSP	Parallel slave port interrupt
_
SIG_CCP1	CCP1 module interrupt	SIG_AD	AD convertion complete interrupt
_
SIG_CCP2	CCP2 module interrupt	SIG_RC	USART receive interrupt
_
SIG_TMR0	TMR0 overflow interrupt	SIG_TX	USART transmit interrupt
_
SIG_TMR1	TMR1 overflow interrupt	SIG_MSSP	SSP receive/transmit interrupt
_
SIG_TMR2	TMR2 matches PR2 interrupt		
_
SIG_TMR3	TMR3 overflow interrupt		
_
.TE
.TKE
.P
The prototypes for these names are defined in the header file \f[I]signal.h\f[R].
.P
In order to simplify signal handling, a number of macros is provided:
.VL 18n
.LI "DEF_INTHIGH(name)"
begin the definition of the interrupt dispatch table for high priority interrupts. \f[I]name\f[R] is the function name to use.
.LI "DEF_INTLOW(name)"
begin the definition of the interrupt dispatch table for low priority interrupt. \f[I]name\f[R] is the function name to use.
.LI "DEF_HANDLER(sig,handler)"
define a handler for signal \f[I]sig.\f[R]
.LI "END_DEF"
end the declaration of the dispatch table.
.LE
.P
Additionally there are two more macros to simplify the declaration of the signal handler:
.VL 18n
.LI "SIGHANDLER(handler)"
this declares the function prototype for the \f[I]handler\f[R] function.
.LI "SIGHANDLERNAKED(handler)"
same as SIGHANDLER() but declares a naked function.
.LE
.P
An example of using the macros above is shown below:
.DS I
.ft CR
\f[CR]#include <pic18fregs.h>
\f[CR]#include <signal.h>
\&
DEF_INTHIGH(high_int)
\f[CR]DEF_HANDLER(SIG_TMR0, _tmr0_handler)
\f[CR]DEF_HANDLER(SIG_BCOL, _bcol_handler)
\f[CR]END_DEF
\&
SIGHANDLER(_tmr0_handler)
\f[CR]{
\f[CR]  /* action to be taken when timer 0 overflows */
\f[CR]}
\&
SIGHANDLERNAKED(_bcol_handler)
\f[CR]{
\f[CR]  __asm
\f[CR]    /* action to be taken when bus collision occurs */
\f[CR]    retfie
\f[CR] __endasm;
\f[CR]}
.ft
.DE
.P
\f[B]NOTES:\f[R] Special care should be taken when using the above scheme:
.BL
.LI
do not place a colon (;) at the end of the DEF_* and END_DEF macros.
.LI
when declaring SIGHANDLERNAKED handler never forget to use \f[I]retfie\f[R] for proper returning.
.LE
.H 3 "\&PIC16 Port \[en] Tips"
.P
Here you can find some general tips for compiling programs with SDCC/pic16.
.H 4 "\&Stack size"
.P
The default stack\c
.IND "PIC16" "stack"
 size (that is 64 bytes) probably is enough for many programs. One must take care that when there are many levels of function nesting, or there is excessive usage of stack, its size should be extended. An example of such a case is the printf/sprintf family of functions. If you encounter problems like not being able to print integers, then you need to set the stack size around the maximum (256 for small stack model). The following diagram shows what happens when calling printf to print an integer:
.DS I
.ft CR
\f[CR]printf () \-\-> ltoa () \-\-> ultoa () \-\-> divschar ()
.ft
.DE
.P
It is should be understood that stack is easily consumed when calling complicated functions. Using command line arguments like \-\&\-fomit-frame-pointer might reduce stack usage by not creating unnecessary stack frames. Other ways to reduce stack usage may exist.
.H 3 "\&Known Bugs"
.H 4 "\&Extended Instruction Set"
.P
The PIC16 port emits code which is incompatible with the extended instruction set available with many newer devices. Make sure to always explicitly disable it, usually using:
.BL
.LI
\f[CR]#pragma config XINST=OFF\f[R]
.LE
.P
or deprecated:
.BL
.LI
\f[CR]static __code char __at(__CONFIG4L) conf4l = /* more flags & */ _XINST_OFF_4L;\f[R]
.LE
.P
Some devices (namely 18f2455, 18f2550, 18f4455, and 18f4550) use _ENHCPU_OFF_4L instead of _XINST_OFF_4L.
.H 4 "\&Regression Tests"
.P
The PIC16 port currently passes most but not all of the tests in SDCC's regression test\c
.IND "Regression test (PIC16)"
 suite (see section \c
.GETHN sec:Quality-control Rf61
.Rd Rf61
\*[Rf61]), thus no automatic regression tests are currently performed for the PIC16 target.
.H 1 "\&Debugging"
.P
There are several approaches to debugging your code. This chapter is meant to show your options and to give detail on some of them:\c
.sp
When writing your code:
.BL
.LI
write your code with debugging in mind (avoid duplicating code, put conceptually similar variables into structs, use structured code, have strategic points within your code where all variables are consistent, ...)
.LI
run a syntax-checking tool like splint\c
.IND "splint (syntax checking tool)"
\c
.IND "lint (syntax checking tool)"
 (see \-\&\-more-pedantic \c
.GETHN opt:more-pedantic-SPLINT Rf62
.Rd Rf62
\*[Rf62]) over the code.
.LI
for the high level code use a C-compiler (like f.e. GCC) to compile run and debug the code on your host. See (see \-\&\-more-pedantic \c
.GETHN opt:more-pedantic-SPLINT Rf63
.Rd Rf63
\*[Rf63]) on how to handle syntax extensions like __xdata, __at(), ...
.LI
use another C-compiler to compile code for your target. Always an option but not recommended:) And not very likely to help you. If you seriously consider walking this path you should at least occasionally check portability of your code. Most commercial compiler vendors will offer an evaluation version so you can test compile your code or snippets of your code.
.LE
.P
Debugging on a simulator:
.BL
.LI
there is a separate section about SDCDB (section \c
.GETHN cha:Debugging-with-SDCDB Rf64
.Rd Rf64
\*[Rf64]) below.
.LI
or (8051 specific) use a free open source/commercial simulator which interfaces to the AOMF\c
.IND "AOMF, AOMF51"
 file (see \c
.GETHN OMF-file Rf65
.Rd Rf65
\*[Rf65]) optionally generated by SDCC.
.LE
.P
Debugging On-target:
.BL
.LI
use a MCU port pin to serially output debug data to the RS232 port of your host. You'll probably want some level shifting device typically involving a MAX232 or similar IC. If the hardware serial port of the MCU is not available search for 'Software UART' in your favourite search machine.
.LI
use an on-target monitor. In this context a monitor is a small program which usually accepts commands via a serial line and allows to set program counter, to single step through a program and read/write memory locations. For the 8051 good examples of monitors are paulmon and cmon51 (see section \c
.GETHN sec:Related-open-source-tools Rf66
.Rd Rf66
\*[Rf66]).
.LI
toggle MCU port pins at strategic points within your code and use an oscilloscope. A \f[I]digital oscilloscope\f[R]\c
.IND "Oscilloscope"
 with deep trace memory is really helpful especially if you have to debug a realtime application. If you need to monitor more pins than your oscilloscope provides you can sometimes get away with a small R-2R network. On a single channel oscilloscope you could for example monitor 2 push-pull driven pins by connecting one via a 10\ k\[*W] resistor and the other one by a 5\ k\[*W] resistor to the oscilloscope probe (check output drive capability of the pins you want to monitor). If you need to monitor many more pins a \f[I]logic analyzer\f[R] will be handy.
.LI
use an ICE (\f[I]i\f[R]n \f[I]c\f[R]ircuit \f[I]e\f[R]mulator\c
.IND "ICE (in circuit emulator)"
). Usually very expensive. And very nice to have too. And usually locks you (for years...) to the devices the ICE can emulate.
.LI
use a remote debugger. In most 8-bit systems the symbol information is not available on the target, and a complete debugger is too bulky for the target system. Therefore usually a debugger on the host system connects to an on-target debugging stub which accepts only primitive commands. \c
.br
Terms to enter into your favourite search engine could be 'remote debugging', 'gdb stub' or 'inferior debugger'. (is there one?)
.LI
use an on target hardware debugger. Some of the more modern MCUs include hardware support for setting break points and monitoring/changing variables by using dedicated hardware pins. This facility doesn't require additional code to run on the target and \f[I]usually\f[R] doesn't affect runtime behaviour until a breakpoint is hit. For the mcs51 most hardware debuggers use the AOMF\c
.IND "AOMF, AOMF51"
 file (see \c
.GETHN OMF-file Rf67
.Rd Rf67
\*[Rf67]) as input file.
.LE
.P
Last not least:
.BL
.LI
if you are not familiar with any of the following terms you're likely to run into problems rather sooner than later: \f[I]volatile\f[R], \f[I]atomic\f[R], \f[I]memory map\f[R], \f[I]overlay\f[R]. As an embedded programmer you \f[I]have\f[R] to know them so why not look them up \f[I]before\f[R] you have problems?)
.LI
tell someone else about your problem (actually this is a surprisingly effective means to hunt down the bug even if the listener is not familiar with your environment). As 'failure to communicate' is probably one of the job-induced deformations of an embedded programmer this is highly encouraged.
.LE
.H 2 "\&Debugging with SDCDB"
.SETR cha:Debugging-with-SDCDB
.IND "SDCDB (debugger)"
.P
SDCC is distributed with a source level debugger\c
.IND "Debugger"
\&. The debugger uses a command line interface, the command repertoire of the debugger has been kept as close to gdb\c
.IND "gdb"
 (the GNU debugger) as possible. The configuration and build process is part of the standard compiler installation, which also builds and installs the debugger in the target directory specified during configuration. The debugger allows you debug BOTH at the C source and at the ASM source level.
.H 3 "\&Compiling for Debugging"
.P
The \-\&\-debug\c
.IND "--debug"
 option must be specified for all files for which debug information is to be generated. The compiler generates a .adb file for each of these files. The linker creates the .cdb\c
.IND "<file>.cdb"
 file from the .adb\c
.IND "<file>.adb"
 files and the address information. This .cdb is used by the debugger.
.H 3 "\&How the Debugger Works"
.P
When the \-\&\-debug option is specified the compiler generates extra symbol information some of which are put into the assembler source and some are put into the .adb file. Then the linker creates the .cdb file from the individual .adb files with the address information for the symbols. The debugger reads the symbolic information generated by the compiler & the address information generated by the linker. It uses the SIMULATOR (Daniel's S51) to execute the program, the program execution is controlled by the debugger. When a command is issued for the debugger, it translates it into appropriate commands for the simulator. (Currently SDCDM only connects to the simulator but \f[I]newcdb\f[R] at \c
.URL "http://ec2drv.sourceforge.net/" ""
 is an effort to connect directly to the hardware.)
.H 3 "\&Starting the Debugger SDCDB"
.P
The debugger can be started using the following command line. (Assume the file you are debugging has the file name foo).\c
.sp
\f[HB]sdcdb foo\c
.br
\f[R]\c
.br
The debugger will look for the following files.
.BL
.LI
foo.c \- the source file.
.LI
foo.cdb \- the debugger symbol information file.
.LI
foo.ihx \- the Intel hex format\c
.IND "Intel hex format"
 object file.
.LE
.H 3 "\&SDCDB Command Line Options"
.BL
.LI
\-\&\-directory=<source file directory> this option can used to specify the directory search list. The debugger will look into the directory list specified for source, cdb & ihx files. The items in the directory list must be separated by ':', e.g. if the source files can be in the directories /home/src1 and /home/src2, the \-\&\-directory option should be \-\&\-directory=/home/src1:/home/src2. Note there can be no spaces in the option.
.LI
\-cd <directory> \- change to the <directory>.
.LI
\-fullname \- used by GUI front ends.
.LI
\-cpu <cpu-type> \- this argument is passed to the simulator please see the simulator docs for details.
.LI
\-X <Clock frequency > this options is passed to the simulator please see the simulator docs for details.
.LI
\-s <serial port file> passed to simulator see the simulator docs for details.
.LI
\-S <serial in,out> passed to simulator see the simulator docs for details.
.LI
\-k <port number> passed to simulator see the simulator docs for details.
.LE
.H 3 "\&SDCDB Debugger Commands"
.P
As mentioned earlier the command interface for the debugger has been deliberately kept as close the GNU debugger gdb, as possible. This will help the integration with existing graphical user interfaces (like ddd, xxgdb or xemacs) existing for the GNU debugger. If you use a graphical user interface for the debugger you can skip this section.
.nr Hu 4
.HU "\&break [line | file:line | function | file:function]"
.P
Set breakpoint at specified line or function:\c
.sp
\f[HB]sdcdb>break 100 \c
.br
sdcdb>break foo.c:100\c
.br
sdcdb>break funcfoo\c
.br
sdcdb>break foo.c:funcfoo\f[R]
.nr Hu 4
.HU "\&clear [line | file:line | function | file:function ]"
.P
Clear breakpoint at specified line or function:\c
.sp
\f[HB]sdcdb>clear 100\c
.br
sdcdb>clear foo.c:100\c
.br
sdcdb>clear funcfoo\c
.br
sdcdb>clear foo.c:funcfoo\f[R]
.nr Hu 4
.HU "\&continue"
.P
Continue program being debugged, after breakpoint.
.nr Hu 4
.HU "\&finish"
.P
Execute till the end of the current function.
.nr Hu 4
.HU "\&delete [n]"
.P
Delete breakpoint number 'n'. If used without any option clear ALL user defined break points.
.nr Hu 4
.HU "\&info [break | stack | frame | registers ]"
.BL
.LI
info break \- list all breakpoints
.LI
info stack \- show the function call stack.
.LI
info frame \- show information about the current execution frame.
.LI
info registers \- show content of all registers.
.LE
.nr Hu 4
.HU "\&step"
.P
Step program until it reaches a different source line. Note: pressing <return> repeats the last command.
.nr Hu 4
.HU "\&next"
.P
Step program, proceeding through subroutine calls.
.nr Hu 4
.HU "\&run"
.P
Start debugged program.
.nr Hu 4
.HU "\&ptype variable"
.P
Print type information of the variable.
.nr Hu 4
.HU "\&print variable"
.P
print value of variable.
.nr Hu 4
.HU "\&file filename"
.P
load the given file name. Note this is an alternate method of loading file for debugging.
.nr Hu 4
.HU "\&frame"
.P
print information about current frame.
.nr Hu 4
.HU "\&set srcmode"
.P
Toggle between C source & assembly source.
.nr Hu 4
.HU "\&! simulator command"
.P
Send the string following '!' to the simulator, the simulator response is displayed. Note the debugger does not interpret the command being sent to the simulator, so if a command like 'go' is sent the debugger can loose its execution context and may display incorrect values.
.nr Hu 4
.HU "\&quit"
.P
"Watch me now. Iam going Down. My name is Bobby Brown"
.H 3 "\&Interfacing SDCDB with DDD"
.P
The \f[I]p\f[R]ortable \f[I]n\f[R]etwork \f[I]g\f[R]raphics File \s[-2]\c
.URL "http://sdcc.sourceforge.net/wiki_images/ddd_example.png" ""
\s[0] shows a screenshot of a debugging session with DDD\c
.IND "DDD (debugger)"
 (Unix only) on a simulated 8032. The debugging session might not run as smoothly as the screenshot suggests. The debugger allows setting of breakpoints, displaying and changing variables, single stepping through C and assembler code. \c
.br
The source was compiled with \f[HB]\c
.sp
sdcc \-\f[R]\&\f[HB]\-debug ddd_example.c\f[R] \f[HB]\c
.br
\f[R]\c
.br
and DDD was invoked with \f[HB]\c
.sp
ddd \-debugger "sdcdb \-cpu 8032 ddd_example"\f[R]
.H 3 "\&Interfacing SDCDB with XEmacs"
.IND "XEmacs"
.IND "Emacs"
.P
Two files (in emacs lisp) are provided for the interfacing with XEmacs, sdcdb.el and sdcdbsrc.el. These two files can be found in the $(prefix)/bin directory after the installation is complete. These files need to be loaded into XEmacs for the interface to work. This can be done at XEmacs startup time by inserting the following into your '.xemacs' file (which can be found in your HOME directory): \c
.sp
\f[CR](load\-file sdcdbsrc.el)\f[R]\c
.sp
\&.xemacs is a lisp file so the () around the command is REQUIRED. The files can also be loaded dynamically while XEmacs is running, set the environment variable 'EMACSLOADPATH' to the installation bin directory (<installdir>/bin), then enter the following command ESC-x load-file sdcdbsrc. To start the interface enter the following command:\c
.sp
\f[HB]ESC-x sdcdbsrc\f[R]\c
.sp
You will prompted to enter the file name to be debugged.\c
.sp
The command line options that are passed to the simulator directly are bound to default values in the file sdcdbsrc.el. The variables are listed below, these values maybe changed as required.
.BL
.LI
sdcdbsrc-cpu-type '51
.LI
sdcdbsrc-frequency '11059200
.LI
sdcdbsrc-serial nil
.LE
.P
The following is a list of key mapping for the debugger interface.
.P
\ \f[CR]\c
.br
;;\ Current Listing ::\c
.br
;;key\ \ \ \ \ \ \ \ \ \ \ \ \ \ binding\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Comment\c
.br
;;\-\-\-\ \ \ \ \ \ \ \ \ \ \ \ \ \ \-\-\-\-\-\-\-\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \-\-\-\-\-\-\-\c
.br
;; \c
.br
;;\ n\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdb\-next\-from\-src\ \ \ \ \ \ \ \ \ \ SDCDB next command\c
.br
;;\ b\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdb\-back\-from\-src\ \ \ \ \ \ \ \ \ \ SDCDB back command\c
.br
;;\ c\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdb\-cont\-from\-src\ \ \ \ \ \ \ \ \ \ SDCDB continue command\c
.br
;;\ s\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdb\-step\-from\-src\ \ \ \ \ \ \ \ \ \ SDCDB step command\c
.br
;;\ ?\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdb\-whatis\-c\-sexp\ \ \ \ \ \ \ \ \ \ SDCDB ptypecommand for data at\c
.br
;;\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ buffer point\c
.br
;;\ x\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdbsrc\-delete\ \ \ \ \ \ \ \ \ \ \ \ \ \ SDCDB Delete all breakpoints if no arg\c
.br
;;\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ given or delete arg (C\-u arg x)\c
.br
;;\ m\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdbsrc\-frame\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ SDCDB Display current frame if no arg,\c
.br
;;\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ given or display frame arg\c
.br
;;\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ buffer point\c
.br
;;\ !\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdbsrc\-goto\-sdcdb\ \ \ \ \ \ \ \ \ \ Goto the SDCDB output buffer\c
.br
;;\ p\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdb\-print\-c\-sexp\ \ \ \ \ \ \ \ \ \ \ SDCDB print command for data at\c
.br
;;\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ buffer point\c
.br
;;\ g\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdbsrc\-goto\-sdcdb\ \ \ \ \ \ \ \ \ \ Goto the SDCDB output buffer\c
.br
;;\ t\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sdcdbsrc\-mode\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Toggles Sdcdbsrc mode (turns it off)\c
.br
;;\c
.br
;;\ C\-c\ C\-f\ \ \ \ \ \ \ \ \ sdcdb\-finish\-from\-src\ \ \ \ \ \ \ \ SDCDB finish command\c
.br
;;\c
.br
;;\ C\-x\ SPC\ \ \ \ \ \ \ \ \ sdcdb\-break\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Set break for line with point\c
.br
;;\ ESC\ t\ \ \ \ \ \ \ \ \ \ \ sdcdbsrc\-mode\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Toggle Sdcdbsrc mode\c
.br
;;\ ESC\ m\ \ \ \ \ \ \ \ \ \ \ sdcdbsrc\-srcmode\ \ \ \ \ \ \ \ \ \ \ \ \ Toggle list mode\c
.br
;;\f[R]
.H 2 "\&Debugging with other debuggers (e.g. GDB): ELF / DWARF"
.P
For some ports, SDCC can create ELF binaries with DWARF debug information. This can e.g. be used for on-target debugging on STM8 using OpenOCD and GDB. To do so, compile with \-\&\-debug \-\&\-out-fmt-elf. Note that \-\&\-out-fmt-elf needs to be specified both when compiling (to generate the debug info in DWARF rather than CDB format) and linking (to get an ELF binary instead of Intel Hex).
.H 1 "\&TIPS"
.P
Here are a few guidelines that will help the compiler generate more efficient code, some of the tips are specific to this compiler others are generally good programming practice.
.BL
.LI
Use the smallest data type to represent your data-value. If it is known in advance that the value is going to be less than 256 then use an 'unsigned char' instead of a 'short' or 'int'. Please note, that ANSI C requires both signed and unsigned chars to be promoted to 'signed int'\c
.IND "promotion to signed int"
\ \f[B]!\f[R] before doing any operation. This promotion\c
.IND "type promotion"
\c
.SETR type-promotion
 can be omitted, if the result is the same. The effect of the promotion rules together with the sign-extension is often surprising:
.DS I
.ft CR
\f[CR]unsigned char uc = 0xfe;
if (uc * uc < 0) /* this is true! */
{
\ \ \ \ ....
}
.ft
.DE
.P
\f[CR]uc * uc\f[R] is evaluated as \f[CR](int) uc * (int) uc = (int) 0xfe * (int) 0xfe = (int) 0xfc04 = \-1024\f[R].\c
.br
Another one:
.DS I
.ft CR
\f[CR](unsigned char) \-12 / (signed char) \-3 = ...
.ft
.DE
.P
No, the result is not 4:
.DS I
.ft CR
\f[CR](int) (unsigned char) \-12 / (int) (signed char) \-3 =
(int) (unsigned char) 0xf4 / (int) (signed char) 0xfd =
(int) 0x00f4 / (int) 0xfffd =
(int) 0x00f4 / (int) 0xfffd =
(int) 244 / (int) \-3 =
(int) \-81 = (int) 0xffaf;
.ft
.DE
.P
Don't complain, that gcc gives you a different result. gcc uses 32 bit ints, while SDCC uses 16 bit ints. Therefore the results are different.\c
.br
From \[lq]comp.lang.c FAQ\[rq]:
.DS I F
\f[I]If well-defined overflow characteristics are important and negative values are not, or if you want to steer clear of sign-extension problems when manipulating bits or bytes, use one of the corresponding unsigned types. (Beware when mixing signed and unsigned values in expressions, though.)\c
.br
Although character types (especially unsigned char) can be used as "tiny" integers, doing so is sometimes more trouble than it's worth, due to unpredictable sign extension and increased code size.\f[R]
.DE
.LI
Use unsigned when it is known in advance that the value is not going to be negative. This helps especially if you are doing division or multiplication, bit-shifting or are using an array index.
.LI
NEVER jump into a LOOP.
.LI
Declare the variables to be local\c
.IND "local variables"
 whenever possible, especially loop control variables (induction).
.LI
Have a look at the assembly listing to get a \[lq]feeling\[rq] for the code generation.
.LE
.H 2 "\&Porting code from or to other compilers"
.SETR sec:Porting-code-to-other-compilers
.BL
.LI
check whether endianness\c
.IND "Endianness"
 of the compilers differs and adapt where needed.
.LI
check the device specific header files\c
.IND "Header files"
\c
.IND "Include files"
 for compiler specific syntax. Eventually include the file <compiler.h\c
.IND "compiler.h (include file)"
> \c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/device/include/mcs51/compiler.h" ""
 to allow using common header files. (see f.e. cc2510fx.h \c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/device/include/mcs51/cc2510fx.h" "" ")."
.LI
check whether the startup code contains the correct initialization (watchdog\c
.IND "watchdog"
, peripherals).
.LI
check whether the sizes of short, int, long match.
.LI
check if some 16 or 32 bit hardware registers require a specific addressing order (least significant or most significant byte first) and adapt if needed (\f[I]first\f[R] and \f[I]last\f[R] relate to time and not to lower/upper memory location here, so this is \f[I]not\f[R] the same as endianness).
.LI
check whether the keyword \f[I]volatile\c
.IND "volatile"
\f[R] is used where needed. The compilers might differ in their optimization characteristics (as different versions of the same compiler might also use more clever optimizations this is good idea anyway). See section \c
.GETHN subsec:Common-interrupt-pitfall-volatile Rf68
.Rd Rf68
\*[Rf68].
.LI
check that the compilers are not told to suppress warnings.
.LI
check and convert compiler specific extensions (interrupts, memory areas, pragmas etc.).
.LI
check for differences in type promotion. Especially check for math operations on \f[CR]char\f[R] or \f[CR]unsigned char\f[R] variables. For the sake of C99 compatibility SDCC will probably promote these to \f[CR]int\f[R] more often than other compilers. Eventually insert explicit casts to \f[CR](char)\f[R] or \f[CR](unsigned char)\f[R]. Also check that the ~\ operator\c
.IND "~ Operator"
 is not used on \f[CR]bit\c
.IND "bit"
\f[R] variables, use the !\ operator instead. See sections \c
.GETHN type-promotion Rf69
.Rd Rf69
\*[Rf69] and \c
.GETHN sec:Compatibility-with-previous Rf70
.Rd Rf70
\*[Rf70].
.LI
check the assembly code generated for interrupt routines (f.e. for calls to possibly non-reentrant library functions).
.LI
check whether timing loops result in proper timing (or preferably consider a rewrite of the code with timer based delays instead).
.LI
check for differences in printf parameters\c
.IND "printf()" "parameters"
 (some compilers push (va_arg\c
.IND "vararg, va_arg"
) char variables as \f[CR]int\f[R] others push them as \f[CR]char\f[R]. See section \c
.GETHN sec:Compatibility-with-previous Rf71
.Rd Rf71
\*[Rf71]). Provide a putchar()\c
.IND "printf()" "putchar()"
 function if needed.
.LI
check the resulting memory map\c
.IND "Memory map"
\&. Usage of different memory spaces: code, stack, data (for mcs51/ds390 additionally idata, pdata, xdata). Eventually check if unexpected library functions are included.
.LE
.H 2 "\&Tools included in the distribution"
.IND "Tools"
.P
\c
.TK
.TS
tab(	);
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |
| c | c | c |.
_
\f[B]Name\f[R]	\f[B]Purpose\f[R]	\f[B]Directory\f[R]
_
as2gbmap.py	sdas map to rrgb map and no$gmb sym file format converter	sdcc/support/scripts
_
cinc2h.pl	gpasm inc to c header file converter	sdcc/support/scripts
_
gen_known_bugs.pl	generate knownbugs.html	sdcc/support/scripts
_
keil2sdcc.pl	T{
Keil header \c
.IND "Header files"
\c
.IND "Include files"
 to SDCC header file converter
T}	sdcc/support/scripts
_
makebin	Intel Hex to binary and GameBoy binay format converter	sdcc/bin
_
mcs51-disasm.pl	disassembler to the mcs51 instructions contained hex files	sdcc/support/scripts
_
mh2h.c	header file conversion	sdcc/support/scripts
_
optimize_pic16devices.pl	optimizes or unoptimizes the pic16devices.txt file	sdcc/support/scripts
_
packihx	T{
Intel Hex packer \c
.IND "packihx (tool)"
T}	sdcc/bin
_
pic14-header-parser.pl	helper to realization of peripheral-handling (PIC14)	sdcc/support/scripts
_
pic16-header-parser.pl	helper to realization of peripheral-handling (PIC16)	sdcc/support/scripts
_
pic16fam-h-gen.pl	helper to realization of peripheral-handling (PIC14)	sdcc/support/scripts
_
pic18fam-h-gen.pl	helper to realization of peripheral-handling (PIC16)	sdcc/support/scripts
_
repack_release.sh	repack sdcc to release package	sdcc/support/scripts
_
sdas390	assembler	sdcc/bin
_
sdas6808	assembler	sdcc/bin
_
sdas6500	assembler	sdcc/bin
_
sdas8051	assembler	sdcc/bin
_
sdasgb	assembler	sdcc/bin
_
sdasz80	assembler	sdcc/bin
_
as8085, asst8	ASxxxx assemblers	sdcc/bin
_
aslink	ASxxxx linker	sdcc/bin
_
sdcc_cygwin_mingw32	cross compile the sdcc with mingw32 under Cygwin	sdcc/support/scripts
_
sdcc_mingw32	cross compile the sdcc with mingw32	sdcc/support/scripts
_
SDCDB	simulator	sdcc/bin
_
sdld	linker	sdcc/bin
_
sdld6808	linker	sdcc/bin
_
sdldgb	linker	sdcc/bin
_
sdldz80	linker	sdcc/bin
_
T{
uCsim\c
.IND "uCsim"
T}	simulator for various architectures	sdcc/sim/ucsim
_
.TE
.TKE
.H 2 "\&Documentation included in the distribution"
.IND "Documentation"
.P
\c
.TK
.TS
tab(	);
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |
| cw(2.44i) | cw(3.66i) |.
_
T{
\f[B]Subject / Title\f[R]
T}	T{
\f[B]Filename / Where to get\f[R]
T}
_
T{
SDCC Compiler User Guide
T}	T{
You're reading it right now \f[I]\ \ \ \|online at:\f[R]\c
.br
\c
.URL "http://sdcc.sourceforge.net/doc/sdccman.pdf" ""
T}
_
T{
Changelog of SDCC
T}	T{
sdcc/Changelog \f[I]\ \ \ \|online at:\f[R]\c
.br
\c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/ChangeLog" ""
T}
_
T{
ASXXXX\c
.IND "sdas (sdasgb, sdas6808, sdas8051, sdasz80)"
\c
.IND "Assembler documentation"
 Assemblers and\c
.br
ASLINK\c
.IND "sdld"
\c
.IND "Linker documentation"
 Relocating Linker
T}	T{
sdcc/sdas/doc/asmlnk.txt \f[I]\ \ \ \|online at:\f[R]\c
.br
\c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/sdas/doc/asmlnk.txt" ""
T}
_
T{
SDCC regression test\c
.IND "Regression test"
T}	T{
test_suite_spec\f[I]\ \ \ \|online at:\f[R]\c
.br
\c
.URL "http://sdcc.sourceforge.net/wiki/index.php/Proposed_Test_Suite_Design" ""
T}
_
T{
Various notes
T}	T{
sdcc/doc/* \f[I]\ \ \ \|online at:\f[R]\c
.br
\c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/doc/" ""
T}
_
T{
Notes on debugging with SDCDB\c
.IND "SDCDB (debugger)"
T}	T{
sdcc/debugger/README \f[I]\ \ \ \|online at\f[R]:\c
.br
\c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/debugger/README" ""
T}
_
T{
uCsim\c
.IND "uCsim"
 Software simulator for microcontrollers
T}	T{
sdcc/sim/ucsim/doc/index.html \f[I]\ \ \ \|online at:\f[R]\c
.br
\c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/sim/ucsim/doc/index.html" ""
T}
_
T{
Temporary notes on the pic16\c
.IND "PIC16"
 port
T}	T{
sdcc/src/pic16/NOTES \f[I]\ \ \ \|online at:\c
.br
\f[R]\c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/src/pic16/NOTES" ""
T}
_
T{
SDCC internal documentation (debugging file format)
.br
T}	T{
sdcc/doc/cdbfileformat.pdf \f[I]\ \ \ \|online at:\f[R]\c
.br
\c
.URL "http://sdcc.sourceforge.net/wiki/index.php/CDB_File_Format" ""
T}
_
.TE
.TKE
.H 2 "\&Communication online at SourceForge"
.P
\c
.TK
.TS
tab(	);
| cw(1.74i) | cw(1.74i) | cw(2.32i) |
| cw(1.74i) | cw(1.74i) | cw(2.32i) |
| cw(1.74i) | cw(1.74i) | cw(2.32i) |
| cw(1.74i) | cw(1.74i) | cw(2.32i) |
| cw(1.74i) | cw(1.74i) | cw(2.32i) |
| cw(1.74i) | cw(1.74i) | cw(2.32i) |
| cw(1.74i) | cw(1.74i) | cw(2.32i) |
| cw(1.74i) | cw(1.74i) | cw(2.32i) |.
_
T{
\f[B]Subject / Title\f[R]
T}	T{
\f[B]Note\f[R]
T}	T{
\f[B]Link\f[R]
T}
_
T{
wiki\c
.IND "wiki"
\c
.IND "Communication" "wiki"
T}		T{
\c
.URL "http://sdcc.sourceforge.net/wiki/" ""
T}
_
T{
sdcc-user mailing list\c
.IND "mailing list"
\c
.IND "Communication" "Mailing lists"
T}	T{
around 650 subscribers mid 2009
T}	T{
\c
.URL "https://lists.sourceforge.net/mailman/listinfo/sdcc-user" ""
T}
_
T{
sdcc-devel mailing list
T}		T{
\c
.URL "https://lists.sourceforge.net/mailman/listinfo/sdcc-devel" ""
T}
_
T{
help forum\c
.IND "Communication" "Forums"
T}	T{
similar scope as sdcc-user mailing list
T}	T{
\c
.URL "http://sourceforge.net/p/sdcc/discussion/1865" ""
T}
_
T{
open discussion forum
T}		T{
\c
.URL "http://sourceforge.net/p/sdcc/discussion/1864" ""
T}
_
T{
trackers (bug tracker, feature requests, patches, support requests, webdocs)\c
.IND "Communication" "Trackers"
T}		T{
\c
.URL "http://sourceforge.net/p/sdcc/_list/tickets" ""
T}
_
T{
rss feed\c
.IND "RSS feed"
\c
.IND "Communication" "RSS feed"
T}	T{
stay tuned with most (not all) sdcc activities
T}	T{
\c
.URL "http://sourceforge.net/export/rss2_keepsake.php?group_id=599" ""
T}
_
.TE
.TKE
.P
With a sourceforge account you can \[lq]monitor\[rq]\c
.IND "Communication" "Monitor"
 forums and trackers, so that you automatically receive mail on changes. You can digg out earlier communication by using the search function \c
.URL "http://sourceforge.net/search/?group_id=599" "" "."
.H 2 "\&Related open source tools"
.SETR sec:Related-open-source-tools
.IND "Related tools"
.P
\c
.TK
.TS
tab(	);
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |.
_
T{
\f[B]Name\f[R]
T}	T{
\f[B]Purpose\f[R]
T}	T{
\f[B]Where to get\f[R]
T}
_
T{
gpsim\c
.IND "gpsim (pic simulator)"
T}	T{
PIC simulator
T}	T{
\c
.URL "http://www.dattalo.com/gnupic/gpsim.html" ""
T}
_
T{
gputils\c
.IND "gputils (pic tools)"
T}	T{
GNU PIC utilities
T}	T{
\c
.URL "http://sourceforge.net/projects/gputils" ""
T}
_
T{
flP5
T}	T{
PIC programmer
T}	T{
\c
.URL "http://freshmeat.net/projects/flp5/" ""
T}
_
T{
ec2drv/newcdb
T}	T{
Tools for Silicon Laboratories JTAG debug adapter, partly based on SDCDB (Unix only)
T}	T{
\c
.URL "http://sourceforge.net/projects/ec2drv" ""
T}
_
T{
indent\c
.IND "indent (source formatting tool)"
T}	T{
Formats C source \- Master of the white spaces
T}	T{
\c
.URL "http://directory.fsf.org/GNU/indent.html" ""
T}
_
T{
srecord\c
.IND "srecord (bin, hex, ... tool)"
T}	T{
Object file conversion, checksumming, ...
T}	T{
\c
.URL "http://sourceforge.net/projects/srecord" ""
T}
_
T{
objdump\c
.IND "objdump (tool)"
T}	T{
Object file conversion, ...
T}	T{
Part of binutils (should be there anyway)
T}
_
T{
cmon51
T}	T{
8051 monitor (hex up-/download, single step, disassemble)
T}	T{
\c
.URL "http://sourceforge.net/projects/cmon51" ""
T}
_
T{
doxygen\c
.IND "doxygen (source documentation tool)"
T}	T{
Source code documentation system
T}	T{
\c
.URL "http://www.doxygen.org" ""
T}
_
T{
kdevelop
T}	T{
IDE (has anyone tried integrating SDCC & SDCDB? Unix only)
T}	T{
\c
.URL "http://www.kdevelop.org" ""
T}
_
T{
paulmon
T}	T{
8051 monitor (hex up-/download, single step, disassemble)
T}	T{
\c
.URL "http://www.pjrc.com/tech/8051/paulmon2.html" ""
T}
_
T{
splint\c
.IND "splint (syntax checking tool)"
T}	T{
Statically checks c sources (see \c
.GETHN opt:more-pedantic-SPLINT Rf72
.Rd Rf72
\*[Rf72])
T}	T{
\c
.URL "http://www.splint.org" ""
T}
_
T{
ddd\c
.IND "DDD (debugger)"
T}	T{
Debugger, serves nicely as GUI to SDCDB\c
.IND "SDCDB (debugger)"
 (Unix only)
T}	T{
\c
.URL "http://www.gnu.org/software/ddd/" ""
T}
T{
d52\c
.IND "d52"
\c
.IND "d52 (disassembler)"
T}	T{
Disassembler, can count instruction cycles\c
.IND "instruction cycles (count)"
, use with options \-pnd
T}	T{
\c
.URL "http://www.8052.com/users/disasm/" ""
T}
T{
cmake\c
.IND "cmake"
T}	T{
Cross platform build system, generates Makefiles\c
.IND "Makefile"
 and project workspaces\c
.IND "project workspace"
T}	T{
\c
.URL "http://www.cmake.org" ""
 and a dedicated wiki entry: \c
.URL "http://www.cmake.org/Wiki/CmakeSdcc" ""
T}
_
.TE
.TKE
.H 2 "\&Related documentation / recommended reading"
.P
\c
.TK
.TS
tab(	);
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |
| cw(1.16i) | cw(1.74i) | cw(2.90i) |.
_
T{
\f[B]Name\f[R]
T}	T{
\f[B]Subject / Title\f[R]
T}	T{
\f[B]Where to get\f[R]
T}
_
T{
c-refcard.pdf
T}	T{
C Reference Card\c
.IND "C Reference card"
, 2 pages
T}	T{
\c
.URL "http://refcards.com/refcards/c/index.html" ""
T}
_
T{
c-faq
T}	T{
C-FAQ\c
.IND "C FAQ"
T}	T{
\c
.URL "http://www.c-faq.com" ""
T}
_
T{
ISO/IEC 9899:TC2
T}	T{
\[lq]C-Standard\[rq]
T}	T{
\c
.URL "http://www.open-std.org/jtc1/sc22/wg14/www/standards.html#9899" ""
\s[-2]\s[0]
T}
_
T{
ISO/IEC DTR 18037
T}	T{
\[lq]Extensions for Embedded C\[rq]
T}	T{
\c
.URL "http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1021.pdf" ""
\s[-2]\s[0]
T}
_
	T{
Latest datasheet of target CPU
T}	T{
vendor
T}
_
	T{
Revision history of datasheet
T}	T{
vendor
T}
_
.TE
.TKE
.H 2 "\&Application notes specifically for SDCC"
.P
SDCC makes no claims about the completeness of this list and about up-to-dateness or correctness of the application notes\c
.IND "Application notes"
\&.
.P
\c
.TK
.TS
tab(	);
| cw(0.98i) | lw(1.56i) | cw(3.24i) |
| cw(0.98i) | cw(1.56i) | cw(3.24i) |
| cw(0.98i) | l | cw(3.24i) |
| cw(0.98i) | cw(1.56i) | cw(3.24i) |
| cw(0.98i) | cw(1.56i) | cw(3.24i) |
| cw(0.98i) | cw(1.56i) | cw(3.24i) |
| cw(0.98i) | cw(1.56i) | cw(3.24i) |.
_
T{
\f[B]\s[-2]Vendor\f[R]\s[0]
T}	T{
\f[B]\s[-2]Subject / Title\f[R]\s[0]
T}	T{
\f[B]\s[-2]Where to get\f[R]\s[0]
T}
_
T{
\s[-2]Maxim / Dallas\s[0]
T}	T{
\s[-2]Using the SDCC Compiler for the DS80C400\c
.IND "DS80C400"
\s[0]
T}	T{
\c
.URL "http://pdfserv.maxim-ic.com/en/an/AN3346.pdf" ""
\s[-2]\s[0]
T}
_
T{
\s[-2]Maxim / Dallas\s[0]
T}	T{
\s[-2]Using the Free SDCC C Compiler to Develop Firmware for the DS89C420/430/440/450\c
.IND "DS89C4x0"
 Family of Microcontrollers\s[0]
T}	T{
\c
.URL "http://pdfserv.maxim-ic.com/en/an/AN3477.pdf" ""
\s[-2]\s[0]
T}
_
T{
\s[-2]Silicon Laboratories / Cygnal\s[0]
T}	T{
\s[-2]Integrating SDCC 8051 Tools Into The Silicon Labs IDE\c
.IND "IDE"
\s[0]
T}	T{
\c
.URL "http://www.silabs.com/public/documents/tpub_doc/anote/Microcontrollers/en/an198.pdf" ""
\s[-2]\s[0]
T}
_
T{
\s[-2]Ramtron / Goal Semiconductor\s[0]
T}	T{
\s[-2]Interfacing SDCC to Syn and Textpad\s[0]
T}	T{
\c
.URL "http://www.ramtron.com/doc/Products/Microcontroller/Support_Tools.asp" ""
\s[-2]\s[0]
T}
_
T{
\s[-2]Ramtron / Goal Semiconductor\s[0]
T}	T{
\s[-2]Installing and Configuring SDCC and Crimson Editor \s[0]
T}	T{
\c
.URL "http://www.ramtron.com/doc/Products/Microcontroller/Support_Tools.asp" ""
\s[-2]\s[0]
T}
_
T{
\s[-2]Texas Instruments\s[0]
T}	T{
\s[-2]MSC12xx Programming with SDCC\s[0]
T}	T{
\c
.URL "http://focus.ti.com/general/docs/lit/getliterature.tsp?literatureNumber=sbaa109&fileType=pdf" ""
\s[-2]\s[0]
T}
_
.TE
.TKE
\s[-2]\s[0]
.H 2 "\&Some Questions"
.P
Some questions answered, some pointers given \- it might be time to in turn ask \f[I]you\f[R] some questions:
.BL
.LI
can you solve your project with the selected microcontroller? Would you find out early or rather late that your target is too small/slow/whatever? Can you switch to a slightly better device if it doesn't fit?
.LI
should you solve the problem with an 8 bit CPU? Or would a 16/32 bit CPU and/or another programming language be more adequate? Would an operating system on the target device help?
.LI
if you solved the problem, will the marketing department be happy?
.LI
if the marketing department is happy, will customers be happy?
.LI
if you're the project manager, marketing department and maybe even the customer in one person, have you tried to see the project from the outside?
.LI
is the project done if you think it is done? Or is just that other interface/protocol/feature/configuration/option missing? How about website, manual(s), internationali(z|s)ation, packaging, labels, 2nd source for components, electromagnetic compatability/interference, documentation for production, production test software, update mechanism, patent issues?
.LI
is your project adequately positioned in that magic triangle: fame, fortune, fun?
.LE
.P
Maybe not all answers to these questions are known and some answers may even be \f[I]no\f[R], nevertheless knowing these questions may help you to avoid burnout\*F\c
.FS
burnout is bad for electronic devices, programmers and motorcycle tyres
.FE
\&. Chances are you didn't want to hear some of them...
.H 1 "\&Support"
.IND "Support"
.P
SDCC has grown to be a large project. The compiler alone (without the preprocessor, assembler and linker) is well over 150,000 lines of code (blank stripped). The open source nature of this project is a key to its continued growth and support. You gain the benefit and support of many active software developers and end users. Is SDCC perfect? No, that's why we need your help. The developers take pride in fixing reported bugs. You can help by reporting the bugs and helping other SDCC users. There are lots of ways to contribute, and we encourage you to take part in making SDCC a great software package.
.P
The SDCC project is hosted on the SDCC SourceForge site at \c
.URL "http://sourceforge.net/projects/sdcc" "" "."
You'll find the complete set of mailing lists\c
.IND "Mailing list(s)"
, forums, bug reporting system, patch submission\c
.IND "Patch submission"
 system, wiki, rss-feed, download\c
.IND "download"
 area and Subversion code repository\c
.IND "Subversion code repository"
 there.
.H 2 "\&Reporting Bugs"
.IND "Bug reporting"
.IND "Reporting bugs"
.IND "Communication" "Bug report"
.P
The recommended way of reporting bugs is using the infrastructure of the SourceForge site. You can follow the status of bug reports there and have an overview about the known bugs.
.P
Bug reports are automatically forwarded to the developer mailing list and will be fixed ASAP. When reporting a bug, it is very useful to include a small test program (the smaller the better) which reproduces the problem. If you can isolate the problem by looking at the generated assembly code, this can be very helpful. Compiling your program with the \-\&\-dumpall\c
.IND "--dumpall"
 option can sometimes be useful in locating optimization problems. When reporting a bug please make sure you:
.AL
.LI
Attach the code you are compiling with SDCC.
.LI
Specify the exact command you use to run SDCC, or attach your Makefile.
.LI
Specify the SDCC version (type "\f[HB]sdcc \-v\f[R]"), your platform, and operating system.
.LI
Provide an exact copy of any error message or incorrect output.
.LI
Put something meaningful in the subject of your message.
.LE
.P
Please attempt to include these 5 important parts, as applicable, in all requests for support or when reporting any problems or bugs with SDCC. Though this will make your message lengthy, it will greatly improve your chance that SDCC users and developers will be able to help you. Some SDCC developers are frustrated by bug reports without code provided that they can use to reproduce and ultimately fix the problem, so please be sure to provide sample code if you are reporting a bug!
.P
Please have a short check that you are using a recent version of SDCC and the bug is not yet known. This is the link for reporting bugs: \c
.URL "http://sourceforge.net/p/sdcc/bugs/" "" "."
With SDCC on average having more than 200 downloads\c
.IND "download"
 on SourceForge per day\*F\c
.FS
220 daily downloads on average Jan-Sept 2006 and about 150 daily downloads between 2002 and 2005. This does not include other methods of distribution.
.FE
 there must be some users. So it's not exactly easy to find a new bug. If you find one we need it: \f[I]reporting bugs is good\f[R].
.H 2 "\&Requesting Features"
.SETR subsec:Requesting-Features
.IND "Feature request"
.IND "Requesting features"
.IND "Communication" "Feature request"
.P
Like bug reports feature requests are forwarded to the developer mailing list. This is the link for requesting features: \c
.URL "http://sourceforge.net/p/sdcc/feature-requests/" "" "."
.H 2 "\&Submitting patches"
.IND "Communication" "Patch submission"
.P
Like bug reports contributed patches are forwarded to the developer mailing list. This is the link for submitting patches\c
.IND "Patch submission"
: \c
.URL "http://sourceforge.net/p/sdcc/patches/" "" "."
.P
You need to specify some parameters to the \f[CR]diff\f[R] command for the patches to be useful. If you modified more than one file a patch created f.e. with \f[HB]\[lq]diff \-Naur unmodified_directory modified_directory >my_changes.patch\[rq]\f[R] will be fine, otherwise \f[HB]\[lq]diff \-u sourcefile.c.orig sourcefile.c >my_changes.patch\[rq]\f[R] will do.
.H 2 "\&Getting Help"
.P
These links should take you directly to the Mailing lists \c
.URL "http://sourceforge.net/p/sdcc/mailman/sdcc-user/" ""
\*F\c
.FS
Traffic on sdcc-devel and sdcc-user is about 100 mails/month each not counting automated messages (mid 2003)
.FE
 and the Forums \c
.URL "http://sourceforge.net/p/sdcc/discussion/" "" ","
lists\c
.IND "Mailing list(s)"
\c
.IND "Communication" "Mailing lists"
 and forums are archived and searchable so if you are lucky someone already had a similar problem. While mails to the lists themselves are delivered promptly their web front end on SourceForge sometimes shows a severe time lag (up to several weeks), if you're seriously using SDCC please consider subscribing to the lists.
.H 2 "\&ChangeLog"
.P
You can follow the status of the Subversion version\c
.IND "version"
 of SDCC by watching the Changelog\c
.IND "Changelog"
 in the Subversion repository\s[-2] \c
.URL "http://svn.code.sf.net/p/sdcc/code/trunk/sdcc/ChangeLog" "" "."
\s[0]
.H 2 "\&Subversion Source Code Repository"
.P
The output of \f[HB]sdcc \-\f[B]\&\f[HB]\-version\f[R] or the filenames of the snapshot versions of SDCC include date and its Subversion\c
.IND "Subversion code repository"
 number. Subversion allows to download the source of recent or previous versions \c
.URL "http://sourceforge.net/p/sdcc/code/8805/tree/" ""
 (by number or by date).
.H 2 "\&Release policy"
.IND "Release policy"
.P
Starting with version 2.4.0 SDCC in 2004 uses a time-based release schedule with one official release usually during the first half of the year.
.P
The last digit of an official release is zero. Additionally there are daily snapshots available at \c
.URL "http://sdcc.sourceforge.net/snap.php" "" ","
and you can always build the very last version from the source code available at Sourceforge \c
.URL "http://sdcc.sourceforge.net/snap.php#Source" "" "."
The SDCC Wiki\c
.IND "wiki"
\c
.IND "SDCC Wiki"
 at \c
.URL "http://sdcc.sourceforge.net/wiki/" ""
 also holds some information about past and future releases.
.H 2 "\&Quality control"
.SETR sec:Quality-control
.IND "Quality control"
.P
The compiler is passed through \f[I]daily\f[R] snapshot build compile and build checks. The so called \f[I]regression tests\f[R]\c
.IND "Regression test"
 check that SDCC itself compiles flawlessly on several host platforms (i386, Opteron, 64 bit Alpha, ppc64, Mac OS X on ppc and i386, Solaris on Sparc) and checks the quality of the code generated by SDCC by running the code for several target platforms through simulators. The regression test suite comprises about 1000 files which expand to more than 1500 test cases which include about 7000 tests. A large number of tests from the GCC test suite is included in this. The results of these tests are published daily on SDCC's snapshot page (click on the red or green symbols on the right side of \c
.URL "http://sdcc.sourceforge.net/snap.php" "" ")."
.P
You'll find the test code in the directory \f[I]sdcc/support/regression\f[R]. You can run these tests manually by running \f[HR]make\f[R] in this directory (or f.e. \f[HB]\[lq]make test-mcs51\[rq]\f[R] if you don't want to run the complete tests). The test code might also be interesting if you want to look for examples\c
.IND "Examples"
 checking corner cases of SDCC or if you plan to submit patches\c
.IND "Patch submission"
\&.
.P
The PIC14 port uses a different set of regression tests \c
.IND "Regression test (PIC14)"
, you'll find them in the directory \f[I]sdcc/src/regression\f[R].
.H 2 "\&Examples"
.IND "Examples"
.P
You'll find some small examples in the directory \f[I]sdcc/device/examples/.\f[R] More examples and libraries are available at \f[I]The SDCC Open Knowledge Resource \c
.URL "http://sdccokr.dl9sec.de/" ""
\f[R] web site or at \c
.URL "http://www.pjrc.com/tech/8051/" "" "."
.H 2 "\&Use of SDCC in Education"
.P
In short: \f[I]highly\f[R] encouraged\*F\c
.FS
the phrase "use in education" might evoke the association "\f[I]only\f[R] fit for use in education". This connotation is not intended but nevertheless risked as the licensing of SDCC makes it difficult to offer educational discounts
.FE
\&. If your rationales are to:
.AL
.LI
give students a chance to understand the \f[I]complete\f[R] steps of code generation
.LI
have a curriculum that can be extended for years. Then you could use an FPGA board as target and your curriculum will seamlessly extend from logic synthesis (http://www.opencores.org \c
.URL "opencores.org" "" ","
Oregano \c
.URL "http://www.oregano.at/ip/ip01.htm" "" "),"
over assembly programming, to C to FPGA compilers (FPGAC \c
.URL "http://sourceforge.net/projects/fpgac/" "" ")"
and to C.
.LI
be able to insert excursions about skills like using a revision control system, submitting/applying patches, using a type-setting (as opposed to word-processing) engine such as groff or LaTeX, using SourceForge \c
.URL "http://sourceforge.net/" "" ","
following some netiquette \c
.URL "http://en.wikipedia.org/wiki/Netiquette" "" ","
understanding BSD/LGPL/GPL/Proprietary licensing, growth models of Open Source Software, CPU simulation, compiler regression tests\c
.IND "Regression test"
\&. \c
.br
And if there should be a shortage of ideas then you can always point students to the ever-growing feature request list \c
.URL "http://sourceforge.net/p/sdcc/feature-requests/" "" "."
.LI
not tie students to a specific host platform and instead allow them to use a host platform of \f[I]their\f[R] choice (among them Alpha, i386, i386_64, Mac OS X, Mips, Sparc, Windows and eventually OLPC \c
.URL "http://www.laptop.org" "" ")"
.LI
not encourage students to use illegal copies of educational software
.LI
be immune to licensing/availability/price changes of the chosen tool chain
.LI
be able to change to a new target platform without having to adopt a new tool chain
.LI
have complete control over and insight into the tool chain
.LI
make your students aware about the pros and cons of open source software development
.LI
give back to the public as you are probably at least partially publicly funded
.LI
give students a chance to publicly prove their skills and to possibly see a world wide impact
.LE
.P
then SDCC is probably among the first choices. Well, probably SDCC might be the only choice.
.H 1 "\&SDCC Technical Data"
.H 2 "\&Optimizations"
.IND "Optimizations"
.P
SDCC performs a host of standard optimizations in addition to some MCU specific optimizations.
.H 3 "\&Sub-expression Elimination"
.IND "Subexpression elimination"
.P
The compiler does local and \f[I]g\f[R]lobal \f[I]c\f[R]ommon \f[I]s\f[R]ubexpression \f[I]e\f[R]limination, e.g.:
.DS I
.ft CR
\f[CR]i = x + y + 1;
j = x + y;
.ft
.DE
.P
will be translated to
.DS I
.ft CR
\f[CR]iTemp = x + y;
i = iTemp + 1;
j = iTemp;
.ft
.DE
.P
Some subexpressions are not as obvious as the above example, e.g.:
.DS I
.ft CR
\f[CR]a\->b[i].c = 10;
a\->b[i].d = 11;
.ft
.DE
.P
In this case the address arithmetic a->b[i] will be computed only once; the equivalent code in C would be.
.DS I
.ft CR
\f[CR]iTemp = a\->b[i];
iTemp.c = 10;
iTemp.d = 11;
.ft
.DE
.P
The compiler will try to keep these temporary variables in registers.
.H 3 "\&Dead-Code Elimination"
.IND "Dead-code elimination"
.DS I
.ft CR
\f[CR]int global;
\&
void f () {
\ \ int i;
\ \ i = 1; \ \ \ \ \ /* dead store */
\ \ global = 1;\ /* dead store */
\ \ global = 2;
\ \ return;
\ \ global = 3;\ /* unreachable */
}
.ft
.DE
.P
will be changed to
.DS I
.ft CR
\f[CR]int global;
\&
void f () {
\ \ global = 2;
}
.ft
.DE
.H 3 "\&Copy-Propagation"
.IND "Copy propagation"
.DS I
.ft CR
\f[CR]int f() {
\ \ int i, j;
\ \ i = 10;
\ \ j = i;
\ \ return j;
}
.ft
.DE
.P
will be changed to
.DS I
.ft CR
\f[CR]int f() {
\ \ int i, j;
\ \ i = 10;
\ \ j = 10;
\ \ return 10;
}
.ft
.DE
.P
Note: the dead stores created by this copy propagation will be eliminated by dead-code elimination.
.H 3 "\&Loop Optimizations"
.IND "Loop optimization"
.SETR subsec:Loop-Optimizations
.P
Two types of loop optimizations are done by SDCC \f[I]loop invariant\f[R] lifting and \f[I]strength reduction\f[R] of loop induction variables. In addition to the strength reduction the optimizer marks the induction variables and the register allocator tries to keep the induction variables in registers for the duration of the loop. Because of this preference of the register allocator\c
.IND "Register allocation"
, loop induction optimization causes an increase in register pressure, which may cause unwanted spilling of other temporary variables into the stack\c
.IND "stack"
 / data space. The compiler will generate a warning message when it is forced to allocate extra space either on the stack or data space. If this extra space allocation is undesirable then induction optimization can be eliminated either for the entire source file (with \-\&\-noinduction option) or for a given function only using #pragma\ noinduction\c
.IND "#pragma noinduction"
\&.\c
.sp
Loop Invariant:
.DS I
.ft CR
\f[CR]for (i = 0 ; i < 100 ; i ++)
\ \ \ \ f += k + l;
.ft
.DE
.P
changed to
.DS I
.ft CR
\f[CR]itemp = k + l;
for (i = 0; i < 100; i++)
\ \ \ \ f += itemp;
.ft
.DE
.P
As mentioned previously some loop invariants are not as apparent, all static address computations are also moved out of the loop.\c
.sp
Strength Reduction\c
.IND "Strength reduction"
, this optimization substitutes an expression by a cheaper expression:
.DS I
.ft CR
\f[CR]for (i=0;i < 100; i++)
\ \ \ \ ar[i*5] = i*3;
.ft
.DE
.P
changed to
.DS I
.ft CR
\f[CR]itemp1 = 0;
itemp2 = 0;
for (i=0;i< 100;i++) {
\ \ \ \ ar[itemp1] = itemp2;
\ \ \ \ itemp1 += 5;
\ \ \ \ itemp2 += 3;
}
.ft
.DE
.P
The more expensive multiplication\c
.IND "Multiplication"
 is changed to a less expensive addition.
.H 3 "\&Loop Reversing"
.IND "Loop reversing"
.P
This optimization is done to reduce the overhead of checking loop boundaries for every iteration. Some simple loops can be reversed and implemented using a \[lq]decrement and jump if not zero\[rq] instruction. SDCC checks for the following criterion to determine if a loop is reversible (note: more sophisticated compilers use data-dependency analysis to make this determination, SDCC uses a more simple minded analysis).
.BL
.LI
The 'for' loop is of the form \c
.sp
\f[CR]for(<symbol> = <expression>; <sym> [< | <=] <expression>; [<sym>++ | <sym> += 1])\c
.br
\ \ \ \ <for body>\f[R]
.LI
The <for body> does not contain \[lq]continue\[rq] or 'break\[rq].
.LI
All goto's are contained within the loop.
.LI
No function calls within the loop.
.LI
The loop control variable <sym> is not assigned any value within the loop
.LI
The loop control variable does NOT participate in any arithmetic operation within the loop.
.LI
There are NO switch statements in the loop.
.LE
.H 3 "\&Algebraic Simplifications"
.P
SDCC does numerous algebraic simplifications, the following is a small sub-set of these optimizations.
.DS I
.ft CR
\f[CR]i = j + 0;\ \ \ \  /* changed to: */\ \ \ \  i = j;
i /= 2;\ \ \ \ \ \ \  /* for unsigned i changed to: */\ \ \ \  i >>= 1;
i = j \- j;\ \ \ \  /* changed to: */\ \ \ \  i = 0;
i = j / 1;\ \ \ \  /* changed to: */\ \ \ \  i = j;
.ft
.DE
.P
Note the subexpressions\c
.IND "Subexpression"
 given above are generally introduced by macro expansions or as a result of copy/constant propagation.
.H 3 "\&'switch' Statements"
.SETR subsec:-switch--Statements
.IND "switch statement"
.P
SDCC can optimize switch statements to jump tables\c
.IND "jump tables"
\&. It makes the decision based on an estimate of the generated code size. SDCC is quite liberal in the requirements for jump table generation:
.BL
.LI
The labels need not be in order, and the starting number need not be one or zero, the case labels are in numerical sequence or not too many case labels are missing.
.DS I
.ft CR
\f[CR]switch(i) {\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ switch (i) {
\ \ \ case 4: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ case 0: ...
\ \ \ case 5: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ case 1: ...
\ \ \ case 3: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \
\ \ \ case 6: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ case 3: ...
\ \ \ case 7: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ case 4: ...
\ \ \ case 8: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ case 5: ...
\ \ \ case 9: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ case 6: ...
\ \ \ case 10: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ case 7: ...
\ \ \ case 11: ...\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ case 8: ...
}\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ }
.ft
.DE
.P
Both the above switch statements will be implemented using a jump-table. The example to the right side is slightly more efficient as the check for the lower boundary of the jump-table is not needed.
.LI
The number of case labels is not larger than supported by the target architecture.
.LI
If the case labels are not in numerical sequence ('gaps' between cases) SDCC checks whether a jump table with additionally inserted dummy cases is still attractive.
.LI
If the starting number is not zero and a check for the lower boundary of the jump-table can thus be eliminated SDCC might insert dummy cases 0, ... .
.LE
.P
Switch statements which have large gaps in the numeric sequence or those that have too many case labels can be split into more than one switch statement for efficient code generation, e.g.:
.DS I
.ft CR
\f[CR]switch (i) {
\ \ case 1: ...
\ \ case 2: ...
\ \ case 3: ...
\ \ case 4: ...
\ \ case 5: ...
\ \ case 6: ...
\ \ case 7: ...
\ \ case 101: ...
\ \ case 102: ...
\ \ case 103: ...
\ \ case 104: ...
\ \ case 105: ...
\ \ case 106: ...
\ \ case 107: ...
}
.ft
.DE
.P
If the above switch statement is broken down into two switch statements
.DS I
.ft CR
\f[CR]switch (i) {
\ \ case 1: ...
\ \ case 2: ...
\ \ case 3: ...
\ \ case 4: ...
\ \ case 5: ...
\ \ case 6: ...
\ \ case 7: ...
}
.ft
.DE
.P
and
.DS I
.ft CR
\f[CR]switch (i) {
\ \ case 101: ...
\ \ case 102: ...
\ \ case 103: ...
\ \ case 104: ...
\ \ case 105: ...
\ \ case 106: ...
\ \ case 107: ...
}
.ft
.DE
.P
then both the switch statements will be implemented using jump-tables whereas the unmodified switch statement will not be.
.H 3 "\&Bit-shifting Operations."
.IND "Bit shifting"
.P
Bit shifting is one of the most frequently used operation in embedded programming. SDCC tries to implement bit-shift operations in the most efficient way possible, e.g.:
.DS I
.ft CR
\f[CR]unsigned char i;
\&...
i >>= 4;
\&...
.ft
.DE
.P
generates the following code:
.DS I
.ft CR
\f[CR]mov\  a,_i
swap a
anl\  a,#0x0f
mov\  _i,a
.ft
.DE
.P
Typically, SDCC will not setup a loop if the shift count is known. Another example:
.DS I
.ft CR
\f[CR]unsigned int i;
\&...
i >>= 9;
\&...
.ft
.DE
.P
will generate:
.DS I
.ft CR
\f[CR]mov\ \ a,(_i + 1)
mov\ \ (_i + 1),#0x00
clr\ \ c
rrc\ \ a
mov\ \ _i,a
.ft
.DE
.H 3 "\&Bit-rotation"
.IND "Bit rotation"
.P
A special case of the bit-shift operation is bit rotation\c
.IND "rotating bits"
, SDCC recognizes the following expression to be a left bit-rotation:
.DS I
.ft CR
\f[CR]\f[CB]unsigned\f[CR]\ \ char i;\ \ \ \ \ \ \ \ \ \ \ /* unsigned is needed for rotation */
\&...
i = ((i << 1) | (i >> 7));
\&...
.ft
.DE
.P
will generate the following code:
.DS I
.ft CR
\f[CR]mov\ \ a,_i
rl\ \ \ a
mov\ \ _i,a
.ft
.DE
.P
SDCC uses pattern matching on the parse tree to determine this operation.Variations of this case will also be recognized as bit-rotation, i.e.:
.DS I
.ft CR
\f[CR]i = ((i >> 7) | (i << 1)); /* left\-bit rotation */
.ft
.DE
.H 3 "\&Nibble and Byte Swapping"
.P
Other special cases of the bit-shift operations are nibble or byte swapping\c
.IND "swapping nibbles/bytes"
, SDCC recognizes the following expressions:
.DS I
.ft CR
\f[CR]\f[CB]unsigned\f[CR]\ \ char i;
\f[CB]unsigned\f[CR]\ \ int j;
\&...
i = ((i << 4) | (i >> 4));
j = ((j << 8) | (j >> 8));
.ft
.DE
.P
and generates a swap instruction for the nibble swapping\c
.IND "Nibble swapping"
 or move instructions for the byte swapping\c
.IND "Byte swapping"
\&. The \[lq]j\[rq] example can be used to convert from little to big-endian or vice versa. If you want to change the endianness of a \f[I]signed\f[R] integer you have to cast to \f[CR](unsigned int)\f[R] first.
.P
Note that SDCC stores numbers in little-endian\*F\c
.FS
Usually 8-bit processors don't care much about endianness. This is not the case for the standard 8051 which only has an instruction to increment its \f[I]dptr\f[R]\c
.IND "DPTR"
\-datapointer so little-endian is the more efficient byte order.
.FE
\c
.IND "little-endian"
\c
.IND "Endianness"
 format (i.e. lowest order first) for most backends. However, the hc08, s08 and stm8 backends are big-endian.
.H 3 "\&Getting a Bit"
.IND "Any Order Bit"
.P
It is frequently required to obtain the highest order bit of an integral type (long, int, short or char types). Also obtaining any other order bit is not uncommon. SDCC recognizes the following expressions to yield the highest order bit and generates optimized code for it, e.g.:
.DS I
.ft CR
\f[CR]unsigned int gint;
\&
foo () {
\ \ unsigned char hob1, aob1;
\ \ bit hob2, hob3, aob2, aob3;
\ \ ...
\ \ hob1 = (gint >> 15) & 1;
\ \ hob2 = (gint >> 15) & 1;
\ \ hob3 = gint & 0x8000;
\ \ aob1 = (gint >> 9) & 1;
\ \ aob2 = (gint >> 8) & 1;
\ \ aob3 = gint & 0x0800;
\ \ ...
}
.ft
.DE
.P
will generate the following code:
.DS I
.ft CR
\f[CR]\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  61 ;\  hob.c 7
000A E5*01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  62\ \ \ \ \ \ \ \  mov\ \  a,(_gint + 1)
000C 23\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  63\ \ \ \ \ \ \ \  rl\ \ \  a
000D 54 01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  64\ \ \ \ \ \ \ \  anl\ \  a,#0x01
000F F5*02\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  65\ \ \ \ \ \ \ \  mov\ \  _foo_hob1_1_1,a
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  66 ;\  hob.c 8
0011 E5*01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  67\ \ \ \ \ \ \ \  mov\ \  a,(_gint + 1)
0013 33\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  68\ \ \ \ \ \ \ \  rlc\ \  a
0014 92*00\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  69\ \ \ \ \ \ \ \  mov\ \  _foo_hob2_1_1,c
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  66 ;\  hob.c 9
0016 E5*01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  67\ \ \ \ \ \ \ \  mov\ \  a,(_gint + 1)
0018 33\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  68\ \ \ \ \ \ \ \  rlc\ \  a
0019 92*01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  69\ \ \ \ \ \ \ \  mov\ \  _foo_hob3_1_1,c
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  70 ;\  hob.c 10
001B E5*01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  71\ \ \ \ \ \ \ \  mov\ \  a,(_gint + 1)
001D 03\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  72\ \ \ \ \ \ \ \  rr\ \ \  a
001E 54 01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  73\ \ \ \ \ \ \ \  anl\ \  a,#0x01
0020 F5*03\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  74\ \ \ \ \ \ \ \  mov\ \  _foo_aob1_1_1,a
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  75 ;\  hob.c 11
0022 E5*01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  76\ \ \ \ \ \ \ \  mov\ \  a,(_gint + 1)
0024 13\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  77\ \ \ \ \ \ \ \  rrc\ \  a
0025 92*02\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  78\ \ \ \ \ \ \ \  mov\ \  _foo_aob2_1_1,c
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  79 ;\  hob.c 12
0027 E5*01\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  80\ \ \ \ \ \ \ \  mov\ \  a,(_gint + 1)
0029 A2 E3\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  81\ \ \ \ \ \ \ \  mov\ \  c,acc[3]
002B 92*03\ \ \ \ \ \ \ \ \ \ \ \ \ \ \  82\ \ \ \ \ \ \ \  mov\ \  _foo_aob3_1_1,c
.ft
.DE
.P
Other variations of these cases however will \f[I]not\f[R] be recognized. They are standard C expressions, so I heartily recommend these be the only way to get the highest order bit, (it is portable). Of course it will be recognized even if it is embedded in other expressions, e.g.:
.DS I
.ft CR
\f[CR]xyz = gint + ((gint >> 15) & 1);
.ft
.DE
.P
will still be recognized.
.H 3 "\&Higher Order Byte / Higher Order Word"
.IND "Higher Order Byte"
.IND "Higher Order Word"
.P
It is also frequently required to obtain a higher order byte or word of a larger integral type (long, int or short types). For mcs51, SDCC recognizes the following expressions to yield the higher order byte or word and generates optimized code for it, e.g.:
.DS I
.ft CR
\f[CR]unsigned int gint;
unsigned long int glong;
\&
foo () {
\ \ unsigned char hob1, hob2;
\ \ unsigned int how1, how2;
\ \ ...
\ \ hob1 = (gint >> 8) & 0xFF;
\ \ hob2 = glong >> 24;
\ \ how1 = (glong >> 16) & 0xFFFF;
\ \ how2 = glong >> 8;
\ \ ...
}
.ft
.DE
.P
will generate the following code:
.DS I
.ft CR
\f[CR]\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  91 ;\  hob.c 15
0037 85*01*06\ \ \ \ \ \ \ \ \ \ \ \  92\ \ \ \ \ \ \ \  mov\ \  _foo_hob1_1_1,(_gint + 1)
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  93 ;\  hob.c 16
003A 85*05*07\ \ \ \ \ \ \ \ \ \ \ \  94\ \ \ \ \ \ \ \  mov\ \  _foo_hob2_1_1,(_glong + 3)
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  95 ;\  hob.c 17
003D 85*04*08\ \ \ \ \ \ \ \ \ \ \ \  96\ \ \ \ \ \ \ \  mov\ \  _foo_how1_1_1,(_glong + 2)
0040 85*05*09\ \ \ \ \ \ \ \ \ \ \ \  97\ \ \ \ \ \ \ \  mov\ \  (_foo_how1_1_1 + 1),(_glong + 3)
0043 85*03*0A\ \ \ \ \ \ \ \ \ \ \ \  98\ \ \ \ \ \ \ \  mov\ \  _foo_how2_1_1,(_glong + 1)
0046 85*04*0B\ \ \ \ \ \ \ \ \ \ \ \  99\ \ \ \ \ \ \ \  mov\ \  (_foo_how2_1_1 + 1),(_glong + 2)
.ft
.DE
.P
Again, variations of these cases may \f[I]not\f[R] be recognized. They are standard C expressions, so I heartily recommend these be the only way to get the higher order byte/word, (it is portable). Of course it will be recognized even if it is embedded in other expressions, e.g.:
.DS I
.ft CR
\f[CR]xyz = gint + ((gint >> 8) & 0xFF);
.ft
.DE
.P
will still be recognized.
.H 3 "\&Placement of Bank-Selection Instructions"
.P
For non-intrinsic named address spaces, SDCC will place the bank selection instructions optimally. For details see Philipp Klaus Krause, \[lq]Optimal Placement of Bank Selection Instructions in Polynomial Time\[rq], Proceedings of the 16th International Workshop on Software and Compilers for Embedded Systems, M-SCOPES \[cq]13, pp 23\[en]30. Association for Computing Machinery, 2013.
.H 3 "\&Lifetime-Optimal Speculative Partial Redundancy Elimination"
.P
SDCC has an implementation of lifetime-optimal speculative partial redundancy elimination based on tree-decompositions.
.H 3 "\&Register Allocation"
.SETR subsec:Register-Allocation
.IND "Register-Allocation"
.P
SDCC currently has two register allocators. One of them is optimal when optimizing for code size. This register allocator is used by default on all ports except for mcs51, ds390, pic14 and pic16. With the exception of hc08 and s08, it is also the only available register allocator for these ports. Even though it runs in polynomial time, it can be quite slow; therefore the \f[CR]\-\-max\-allocs\-per\-node\f[R] command line option can be used for a trade-off between compilation speed and quality of the generated code: Lower values result in faster compilation, higher values can result in better code being generated.
.P
It first creates a tree-decomposition of the control-flow graph, and then uses dynamic programming bottom-up along the tree-decomposition. Optimality is achieved through the use of a cost function, which gives cost for instructions under register assignments. The cost function is target-specific and has to be implemented for each port; in all current SDCC ports the cost function is integrated into code generation.
.P
For more details on how this register allocator works, see: Philipp Klaus Krause, \[lq]Optimal Register Allocation in Polynomial Time\[rq], Compiler Construction \- 22nd International Conference, CC 2013, Held as Part of the European Joint Conferences on Theory and Practice of Software, ETAPS 2013. Proceedings, Lecture Notes in Computer Science, volume 7791, pp. 1-20. Springer, 2013. Also: Philipp Klaus Krause, \[lq]Bytewise Register Allocation\[rq], Proceedings of the 18th International Workshop on Software and Compilers for Embedded Systems, SCOPES \[cq]15, pp 22\[en]27. Association for Computing Machinery, 2015.
.H 3 "\&Peephole Optimizer"
.SETR subsec:Peephole-Optimizer
.IND "Peephole optimizer"
.P
The compiler uses a rule based, pattern matching and re-writing mechanism for peep-hole optimization. It is inspired by \f[I]copt\f[R] a peep-hole optimizer by Christopher W. Fraser (cwfraser\ @\ microsoft.com). A default set of rules are compiled into the compiler, additional rules may be added with the \f[I]\-\&\-peep-file\c
.IND "--peep-file"
 <filename>\f[R] option. The rule language is best illustrated with examples.
.DS I
.ft CR
\f[CR]replace {
\ \ mov %1,a
\ \ mov a,%1
} by {
\ \ mov %1,a
}
.ft
.DE
.P
The above rule will change the following assembly\c
.IND "Assembler routines"
 sequence:
.DS I
.ft CR
\f[CR]mov r1,a
mov a,r1
.ft
.DE
.P
to
.DS I
.ft CR
\f[CR]mov r1,a
.ft
.DE
.P
Note: All occurrences of a \f[I]%n\f[R] (pattern variable) must denote the same string. With the above rule, the assembly sequence:
.DS I
.ft CR
\f[CR]mov r1,a
mov a,r2
.ft
.DE
.P
will remain unmodified.\c
.sp
Other special case optimizations may be added by the user (via \f[I]\-\&\-peep-file option\f[R]). E.g. some variants of the 8051 MCU\c
.IND "MCS51 variants"
 allow only \f[CR]ajmp\f[R] and \f[CR]acall\f[R]. The following two rules will change all \f[CR]ljmp\f[R] and \f[CR]lcall\f[R] to \f[CR]ajmp\f[R] and \f[CR]acall\f[R]
.DS I
.ft CR
\f[CR]replace { lcall %1 } by { acall %1 }
replace { ljmp %1 } by { ajmp %1 }
.ft
.DE
.P
(NOTE: from version 2.7.3 on, you can use option \-\f[I]\&\f[R]\-acall-ajmp\c
.IND "--acall-ajmp"
, which also takes care of aligning the interrupt vectors properly.)\c
.br
.P
The \f[I]inline-assembler code\f[R] is also passed through the peep hole optimizer, thus the peephole optimizer can also be used as an assembly level macro expander. The rules themselves are MCU dependent whereas the rule language infra-structure is MCU independent. Peephole optimization rules for other MCU can be easily programmed using the rule language.\c
.sp
The syntax for a rule is as follows:
.DS I
.ft CR
\f[CR]rule := replace [ restart ] '{' <assembly sequence> '\[rs]n'
\  \  \  \  \  \  \  \  \  \  \  \  \  \  '}' by '{' '\[rs]n'
\  \  \  \  \  \  \  \  \  \  \  \  \  \  \  \  <assembly sequence> '\[rs]n'
\  \  \  \  \  \  \  \  \  \  \  \  \  \  '}' [if <functionName> ] '\[rs]n'
.ft
.DE
.P
<assembly sequence> := assembly instruction (each instruction including labels must be on a separate line).\c
.sp
The optimizer will apply to the rules one by one from the top in the sequence of their appearance, it will terminate when all rules are exhausted. If the 'restart' option is specified, then the optimizer will start matching the rules again from the top, this option for a rule is expensive (performance), it is intended to be used in situations where a transformation will trigger the same rule again. An example of this (not a good one, it has side effects) is the following rule:
.DS I
.ft CR
\f[CR]replace restart {
\ \ pop %1
\ \ push %1 } by {
\ \ ; nop
}
.ft
.DE
.P
Note that the replace pattern cannot be a blank, but can be a comment line. Without the 'restart' option only the innermost 'pop' 'push' pair would be eliminated, i.e.:
.DS I
.ft CR
\f[CR]pop ar1
pop ar2
push ar2
push ar1
.ft
.DE
.P
would result in:
.DS I
.ft CR
\f[CR]pop ar1
; nop
push ar1
.ft
.DE
.P
\f[I]with\f[R] the restart option the rule will be applied again to the resulting code and then all the pop-push pairs will be eliminated to yield:
.DS I
.ft CR
\f[CR]; nop
; nop
.ft
.DE
.P
A conditional function can be attached to a rule. Attaching rules are somewhat more involved, let's illustrate this with an example.
.DS I
.ft CR
\f[CR]replace {
\  \  \ ljmp %5
%2:
} by {
\  \  \ sjmp %5
%2:
} if labelInRange
.ft
.DE
.P
The optimizer does a look-up of a function name table defined in function \f[I]callFuncByName\f[R] in the source file SDCCpeeph.c, with the name \f[I]labelInRange\f[R]. If it finds a corresponding entry the function is called. Note there can be no parameters specified for some of these functions, in this case the use of \f[I]%5\f[R] is crucial, since the function \f[I]labelInRange\f[R] expects to find the label in that particular variable (the hash table containing the variable bindings is passed as a parameter). If you want to code more such functions, take a close look at the function labelInRange and the calling mechanism in source file SDCCpeeph.c. Currently implemented are \f[I]labelInRange, labelRefCount, labelRefCountChange, labelIsReturnOnly, xramMovcOption, portIsDS390, 24bitMode, notVolatile\f[R]. \f[I]notUsed, notSame, operandsNotRelated, labelJTInRange, canAssign, optimizeReturn, notUsedFrom, labelIsReturnOnly, operandsLiteral, labelIsUncondJump, deadMove, useAcallAjmp\f[R] and \f[I]okToRemoveSLOC.\f[R]
.P
This whole thing is a little kludgy, but maybe some day SDCC will have some better means. If you are looking at the \f[CR]peeph*.def\f[R] files, you will see the default rules that are compiled into the compiler, you can add your own rules in the default set there if you get tired of specifying the \-\&\-peep-file option.
.H 2 "\&Cyclomatic Complexity"
.IND "Cyclomatic complexity"
.P
Cyclomatic complexity of a function is defined as the number of independent paths the program can take during execution of the function. This is an important number since it defines the number test cases you have to generate to validate the function. The accepted industry standard for complexity number is 10, if the cyclomatic complexity reported by SDCC exceeds 10 you should think about simplification of the function logic. Note that the complexity level is not related to the number of lines of code in a function. Large functions can have low complexity, and small functions can have large complexity levels. \c
.sp
SDCC uses the following formula to compute the complexity:\c
.br
.P
complexity = (number of edges in control flow graph) \- (number of nodes in control flow graph) + 2;\c
.sp
Having said that the industry standard is 10, you should be aware that in some cases it be may unavoidable to have a complexity level of less than 10. For example if you have switch statement with more than 10 case labels, each case label adds one to the complexity level. The complexity level is by no means an absolute measure of the algorithmic complexity of the function, it does however provide a good starting point for which functions you might look at for further optimization.
.H 2 "\&Retargetting for other Processors"
.P
The issues for retargetting the compiler are far too numerous to be covered by this document. What follows is a brief description of each of the phases of the compiler and its MCU dependency.
.BL
.LI
Parsing the source and building the annotated parse tree. This phase is largely MCU independent (except for the language extensions). Syntax & semantic checks are also done in this phase, along with some initial optimizations like back patching labels and the pattern matching optimizations like bit-rotation etc.
.LI
The second phase involves generating an intermediate code which can be easy manipulated during the later phases. This phase is entirely MCU independent. The intermediate code generation assumes the target machine has unlimited number of registers, and designates them with the name iTemp. The compiler can be made to dump a human readable form of the code generated by using the \-\&\-dumpraw option.
.LI
This phase does the bulk of the standard optimizations and is also MCU independent. This phase can be broken down into several sub-phases:\c
.sp
Break down intermediate code (iCode) into basic blocks.\c
.br
Do control flow & data flow analysis on the basic blocks.\c
.br
Do local common subexpression elimination, then global subexpression elimination\c
.br
Dead code elimination\c
.br
Loop optimizations\c
.br
If loop optimizations caused any changes then do 'global subexpression elimination' and 'dead code elimination' again.
.LI
This phase determines the live-ranges; by live range I mean those iTemp variables defined by the compiler that still survive after all the optimizations. Live range analysis\c
.IND "Live range analysis"
 is essential for register allocation, since these computation determines which of these iTemps will be assigned to registers, and for how long.
.LI
Phase five is register allocation. For new ports register allocator described above in \c
.GETHN subsec:Register-Allocation Rf73
.Rd Rf73
\*[Rf73] should be used in most cases, since it can result in substantially better code. In the old register allocator, there are two parts to register allocation.\c
.sp
The first part I call 'register packing' (for lack of a better term). In this case several MCU specific expression folding is done to reduce register pressure.\c
.sp
The second part is more MCU independent and deals with allocating registers to the remaining live ranges. A lot of MCU specific code does creep into this phase because of the limited number of index registers available in the 8051.
.LI
The Code generation phase is (unhappily), entirely MCU dependent and very little (if any at all) of this code can be reused for other MCU. However the scheme for allocating a homogenized assembler operand for each iCode operand may be reused.
.LI
As mentioned in the optimization section the peep-hole optimizer is rule based system, which can reprogrammed for other MCUs.
.LE
.P
More information is available on SDCC Wiki\c
.IND "wiki"
 (preliminary link \c
.URL "https://sourceforge.net/p/sdcc/wiki/Adding%20a%20port/" "" ")"
and in the thread \c
.URL "http://sourceforge.net/mailarchive/message.php?msg_id=13954144" ""
 .
.H 1 "\&Compiler internals"
.IND "Compiler internals"
.H 2 "\&The anatomy of the compiler"
.SETR subsec:The-anatomy-of
.P
\f[I]This is an excerpt from an article published in Circuit Cellar Magazine in\f[R] \f[BI]August 2000\f[I]. It's outdated (the compiler is much more efficient now and user/developer friendly), but pretty well exposes the guts of it all.\f[R]\c
.sp
The current version of SDCC can generate code for Intel 8051 and Z80 MCU. It is fairly easy to retarget for other 8-bit MCU. Here we take a look at some of the internals of the compiler.
.nr Hu 5
.HU "\&Parsing"
.IND "Parsing"
.P
Parsing the input source file and creating an AST (Annotated Syntax Tree\c
.IND "Annotated syntax tree"
). This phase also involves propagating types (annotating each node of the parse tree with type information) and semantic analysis. There are some MCU specific parsing rules. For example the intrinsic named address spaces are MCU specific: While there may be an __xdata intrinsic named address space for 8051 there none for z80. SDCC has MCU specific intrinsic named address spacess, i.e. __xdata will be treated as a named address space when parsing 8051 C code but will be treated as a C identifier when parsing z80 code.
.nr Hu 5
.HU "\&Generating iCode"
.IND "iCode"
.P
Intermediate code generation. In this phase the AST is broken down into three-operand form (iCode). These three operand forms are represented as doubly linked lists. ICode is the term given to the intermediate form generated by the compiler. ICode example section shows some examples of iCode generated for some simple C source functions.
.nr Hu 5
.HU "\&Optimizations."
.IND "Optimizations"
.P
Bulk of the target independent optimizations is performed in this phase. The optimizations include constant propagation, common sub-expression elimination, loop invariant code movement, strength reduction of loop induction variables and dead-code elimination.
.nr Hu 5
.HU "\&Live range analysis"
.IND "Live range analysis"
.P
During intermediate code generation phase, the compiler assumes the target machine has infinite number of registers and generates a lot of temporary variables. The live range computation determines the lifetime of each of these compiler-generated temporaries. A picture speaks a thousand words. ICode example sections show the live range annotations for each of the operand. It is important to note here, each iCode is assigned a number in the order of its execution in the function. The live ranges are computed in terms of these numbers. The from number is the number of the iCode which first defines the operand and the to number signifies the iCode which uses this operand last.
.nr Hu 5
.HU "\&Register Allocation"
.IND "Register allocation"
.P
The register allocation determines the type and number of registers needed by each operand. In most MCUs only a few registers can be used for indirect addressing. In case of 8051 for example the registers R0 & R1 can be used to indirectly address the internal ram and DPTR to indirectly address the external ram. The compiler will try to allocate the appropriate register to pointer variables if it can. ICode example section shows the operands annotated with the registers assigned to them. The compiler will try to keep operands in registers as much as possible; there are several schemes the compiler uses to do achieve this. When the compiler runs out of registers the compiler will check to see if there are any live operands which is not used or defined in the current basic block being processed, if there are any found then it will push that operand and use the registers in this block, the operand will then be popped at the end of the basic block.
.P
There are other MCU specific considerations in this phase. Some MCUs have an accumulator; very short-lived operands could be assigned to the accumulator instead of a general-purpose register.
.nr Hu 5
.HU "\&Code generation"
.P
Figure II gives a table of iCode\c
.IND "iCode"
 operations supported by the compiler. The code generation involves translating these operations into corresponding assembly code for the processor. This sounds overly simple but that is the essence of code generation. Some of the iCode operations are generated on a MCU specific manner for example, the z80 port does not use registers to pass parameters so the SEND and RECV iCode operations will not be generated, and it also does not support JUMPTABLES. \c
.br
.P
\s[-2]Figure II \c
.TK
.TS
tab(	);
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |
| cw(0.71i) | cw(0.71i) | cw(1.21i) | cw(2.20i) |.
_
T{
\f[B]iCode\f[R]\c
.IND "iCode"
T}	T{
\f[B]Operands\f[R]
T}	T{
\f[B]Description\f[R]
T}	T{
\f[B]C Equivalent\f[R]
T}
_
T{
\s[-2]'!'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RESULT()\s[0]
T}	T{
\s[-2]NOT operation \s[0]
T}	T{
\s[-2]IC_RESULT = ! IC_LEFT;\s[0]
T}
_
T{
\s[-2]'~'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RESULT()\s[0]
T}	T{
\s[-2]Bitwise complement of \s[0]
T}	T{
\s[-2]IC_RESULT = ~IC_LEFT;\s[0]
T}
_
T{
\s[-2]ROT\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Rotate\s[0]
T}	T{
\s[-2]IC_RESULT = (IC_LEFT << IC_RIGHT) | (IC_LEFT >> (sizeof(IC_LEFT)*8-IC_RIGHT));\s[0]
T}
_
T{
\s[-2]UNARYMINUS\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RESULT()\s[0]
T}	T{
\s[-2]Unary minus\s[0]
T}	T{
\s[-2]IC_RESULT = \- IC_LEFT;\s[0]
T}
_
T{
\s[-2]IPUSH\s[0]
T}	T{
\s[-2]IC_LEFT()\s[0]
T}	T{
\s[-2]Push the operand onto stack\s[0]
T}	T{
\s[-2]NONE\s[0]
T}
_
T{
\s[-2]IPOP\s[0]
T}	T{
\s[-2]IC_LEFT()\s[0]
T}	T{
\s[-2]Pop the operand from the stack \s[0]
T}	T{
\s[-2]NONE\s[0]
T}
_
T{
\s[-2]CALL\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RESULT()\s[0]
T}	T{
\s[-2]Call the function represented by IC_LEFT \s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT();\s[0]
T}
_
T{
\s[-2]PCALL\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RESULT()\s[0]
T}	T{
\s[-2]Call via function pointer\s[0]
T}	T{
\s[-2]IC_RESULT = (*IC_LEFT)();\s[0]
T}
_
T{
\s[-2]RETURN\s[0]
T}	T{
\s[-2]IC_LEFT()\s[0]
T}	T{
\s[-2]Return the value in operand IC_LEFT \s[0]
T}	T{
\s[-2]return IC_LEFT;\s[0]
T}
_
T{
\s[-2]LABEL\s[0]
T}	T{
\s[-2]IC_LABEL() \s[0]
T}	T{
\s[-2]Label\s[0]
T}	T{
\s[-2]IC_LABEL:\s[0]
T}
_
T{
\s[-2]GOTO\s[0]
T}	T{
\s[-2]IC_LABEL() \s[0]
T}	T{
\s[-2]Goto label\s[0]
T}	T{
\s[-2]goto IC_LABEL();\s[0]
T}
_
T{
\s[-2]'+'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Addition\s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT + IC_RIGHT\s[0]
T}
_
T{
\s[-2]'\-'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Subtraction\s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT \- IC_RIGHT \s[0]
T}
_
T{
\s[-2]'*'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Multiplication \s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT * IC_RIGHT;\s[0]
T}
_
T{
\s[-2]'/'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Division\s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT / IC_RIGHT;\s[0]
T}
_
T{
\s[-2]'%'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Modulus\s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT % IC_RIGHT;\s[0]
T}
_
T{
\s[-2]'<'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Less than\s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT < IC_RIGHT;\s[0]
T}
_
T{
\s[-2]'>'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Greater than \s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT > IC_RIGHT;\s[0]
T}
_
T{
\s[-2]EQ_OP\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Equal to \s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT == IC_RIGHT;\s[0]
T}
_
T{
\s[-2]AND_OP\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT() \s[0]
T}	T{
\s[-2]Logical and operation\s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT && IC_RIGHT; \s[0]
T}
_
T{
\s[-2]OR_OP\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT() \s[0]
T}	T{
\s[-2]Logical or operation \s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT || IC_RIGHT; \s[0]
T}
_
T{
\s[-2]'^'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT() \s[0]
T}	T{
\s[-2]Exclusive OR\s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT ^ IC_RIGHT;\s[0]
T}
_
T{
\s[-2]'|'\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT() \s[0]
T}	T{
\s[-2]Bitwise OR \s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT | IC_RIGHT;\s[0]
T}
_
T{
\s[-2]BITWISEAND\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Bitwise AND \s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT & IC_RIGHT;\s[0]
T}
_
T{
\s[-2]LEFT_OP\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Left shift \s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT << IC_RIGHT \s[0]
T}
_
T{
\s[-2]RIGHT_OP\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Right shift\s[0]
T}	T{
\s[-2]IC_RESULT = IC_LEFT >> IC_RIGHT \s[0]
T}
_
T{
\s[-2]GET_VALUE_\c
.br
AT_ ADDRESS\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RESULT()\s[0]
T}	T{
\s[-2]Indirect fetch \s[0]
T}	T{
\s[-2]IC_RESULT = (*IC_LEFT);\s[0]
T}
_
T{
\s[-2]POINTER_SET\s[0]
T}	T{
\s[-2]IC_RIGHT() IC_RESULT() \s[0]
T}	T{
\s[-2]Indirect set\s[0]
T}	T{
\s[-2](*IC_RESULT) = IC_RIGHT;\s[0]
T}
_
T{
\s[-2]'='\s[0]
T}	T{
\s[-2]IC_RIGHT() IC_RESULT()\s[0]
T}	T{
\s[-2]Assignment\s[0]
T}	T{
\s[-2]IC_RESULT = IC_RIGHT;\s[0]
T}
_
T{
\s[-2]IFX\s[0]
T}	T{
\s[-2]IC_COND IC_TRUE IC_LABEL\s[0]
T}	T{
\s[-2]Conditional jump. If true label is present then jump to true label if condition is true else jump to false label if condition is false \s[0]
T}	T{
\s[-2]if (IC_COND) goto IC_TRUE; \c
.br
\ \ Or \c
.br
If (!IC_COND) goto IC_FALSE;\s[0]
T}
_
T{
\s[-2]ADDRESS_OF\s[0]
T}	T{
\s[-2]IC_LEFT() IC_RESULT()\s[0]
T}	T{
\s[-2]Address of \s[0]
T}	T{
\s[-2]IC_RESULT = &IC_LEFT();\s[0]
T}
_
T{
\s[-2]JUMPTABLE\s[0]
T}	T{
\s[-2]IC_JTCOND IC_JTLABELS\s[0]
T}	T{
\s[-2]Jump to list of labels depending on the value of JTCOND\s[0]
T}	T{
\s[-2]Switch statement\s[0]
T}
_
T{
\s[-2]CAST\s[0]
T}	T{
\s[-2]IC_RIGHT() IC_LEFT() IC_RESULT()\s[0]
T}	T{
\s[-2]Cast types \s[0]
T}	T{
\s[-2]IC_RESULT = (typeof IC_LEFT) IC_RIGHT;\s[0]
T}
_
T{
\s[-2]SEND\s[0]
T}	T{
\s[-2]IC_LEFT()\s[0]
T}	T{
\s[-2]This is used for passing parameters in registers; \c
.br
move IC_LEFT to the next available parameter register.\s[0]
T}	T{
\s[-2]None\s[0]
T}
_
T{
\s[-2]RECV\s[0]
T}	T{
\s[-2]IC_RESULT()\s[0]
T}	T{
\s[-2]This is used for receiving parameters passed in registers;\c
.br
Move the values in the next parameter register to IC_RESULT \s[0]
T}	T{
\s[-2]None\s[0]
T}
_
T{
\f[I]\s[-2](some more have been added)\f[R]\s[0]
T}			T{
\f[I]\s[-2]see f.e.\f[R] \f[CI]gen51Code()\f[R] \f[I]in\f[R] \f[CI]src/mcs51/gen.c\f[R]\s[0]
T}
_
.TE
.TKE
\s[0]
.P
.nr Hu 5
.HU "\&ICode Example"
.IND "iCode"
.P
This section shows some details of iCode. The example C code does not do anything useful; it is used as an example to illustrate the intermediate code generated by the compiler.
.DS I
.ft CR
\f[CR]1.\ __xdata int * p;
2.\ int gint;
3.\ /* This function does nothing useful. It is used
4.\ \ \ \ for the purpose of explaining iCode */
5.\ short function (__data int *x)
6.\ {
7.\ \ \ short i=10; \ \ /* dead initialization eliminated */
8.\ \ \ short sum=10; /* dead initialization eliminated */
9.\ \ \ short mul;
10.\ \ int j ;
11.\ \ while (*x) *x++ = *p++;
12.\ \ \ \ sum = 0 ;
13.\ \ mul = 0;
14.\ \ /* compiler detects i,j to be induction variables */
15.\ \ for (i = 0, j = 10 ; i < 10 ; i++, j\-\&\-) {
16.\ \ \ \ sum += i;
17.\ \ \ \ mul += i * 3; \ \ /* this multiplication remains */
18.\ \ \ \ gint += j * 3;\ \ /* this multiplication changed to addition */
19.\ \ }
20.\ \ return sum+mul;
21.\ }
.ft
.DE
.P
In addition to the operands each iCode contains information about the filename and line it corresponds to in the source file. The first field in the listing should be interpreted as follows:\c
.br
\f[I]\s[-2]Filename(linenumber: iCode Execution sequence number : ICode hash table key : loop depth of the iCode).\f[R]\s[0]\c
.br
Then follows the human readable form of the ICode operation. Each operand of this triplet form can be of three basic types a) compiler generated temporary b) user defined variable c) a constant value. Note that local variables and parameters are replaced by compiler generated temporaries. Live ranges\c
.IND "Live range analysis"
 are computed only for temporaries (i.e. live ranges are not computed for global variables). Registers\c
.IND "Register allocation"
 are allocated for temporaries only. Operands are formatted in the following manner:\c
.br
\f[I]\s[-2]Operand Name [lr live-from : live-to ] { type information } [ registers allocated ].\f[R]\s[0]\c
.br
As mentioned earlier the live ranges are computed in terms of the execution sequence number of the iCodes, for example \c
.br
the iTemp0 is live from (i.e. first defined in iCode with execution sequence number 3, and is last used in the iCode with sequence number 5). For induction variables such as iTemp21 the live range computation extends the lifetime from the start to the end of the loop.\c
.br
The register allocator used the live range information to allocate registers, the same registers may be used for different temporaries if their live ranges do not overlap, for example r0 is allocated to both iTemp6 and to iTemp17 since their live ranges do not overlap. In addition the allocator also takes into consideration the type and usage of a temporary, for example itemp6 is a pointer to near space and is used as to fetch data from (i.e. used in GET_VALUE_AT_ADDRESS) so it is allocated a pointer register (r0). Some short lived temporaries are allocated to special registers which have meaning to the code generator e.g. iTemp13 is allocated to a pseudo register CC which tells the back end that the temporary is used only for a conditional jump the code generation makes use of this information to optimize a compare and jump ICode.\c
.br
There are several loop optimizations\c
.IND "Loop optimization"
 performed by the compiler. It can detect induction variables iTemp21(i) and iTemp23(j). Also note the compiler does selective strength reduction\c
.IND "Strength reduction"
, i.e. the multiplication of an induction variable in line 18 (gint = j * 3) is changed to addition, a new temporary iTemp17 is allocated and assigned a initial value, a constant 3 is then added for each iteration of the loop. The compiler does not change the multiplication\c
.IND "Multiplication"
 in line 17 however since the processor does support an 8 * 8 bit multiplication.\c
.br
Note the dead code elimination\c
.IND "Dead-code elimination"
 optimization eliminated the dead assignments in line 7 & 8 to I and sum respectively.\c
.br
.P
\s[-2]Sample.c (5:1:0:0) _entry($9) :\s[0]
.P
\s[-2]Sample.c(5:2:1:0) proc _function [lr0:0]{function short}\s[0]
.P
\s[-2]Sample.c(11:3:2:0) iTemp0 [lr3:5]{_near * int}[r2] = recv \s[0]
.P
\s[-2]Sample.c(11:4:53:0) preHeaderLbl0($11) :\s[0]
.P
\s[-2]Sample.c(11:5:55:0) iTemp6 [lr5:16]{_near * int}[r0] := iTemp0 [lr3:5]{_near * int}[r2]\s[0]
.P
\s[-2]Sample.c(11:6:5:1) _whilecontinue_0($1) :\s[0]
.P
\s[-2]Sample.c(11:7:7:1) iTemp4 [lr7:8]{int}[r2 r3] = @[iTemp6 [lr5:16]{_near * int}[r0]]\s[0]
.P
\s[-2]Sample.c(11:8:8:1) if iTemp4 [lr7:8]{int}[r2 r3] == 0 goto _whilebreak_0($3)\s[0]
.P
\s[-2]Sample.c(11:9:14:1) iTemp7 [lr9:13]{_far * int}[DPTR] := _p [lr0:0]{_far * int}\s[0]
.P
\s[-2]Sample.c(11:10:15:1) _p [lr0:0]{_far * int} = _p [lr0:0]{_far * int} + 0x2 {short}\s[0]
.P
\s[-2]Sample.c(11:13:18:1) iTemp10 [lr13:14]{int}[r2 r3] = @[iTemp7 [lr9:13]{_far * int}[DPTR]]\s[0]
.P
\s[-2]Sample.c(11:14:19:1) *(iTemp6 [lr5:16]{_near * int}[r0]) := iTemp10 [lr13:14]{int}[r2 r3]\s[0]
.P
\s[-2]Sample.c(11:15:12:1) iTemp6 [lr5:16]{_near * int}[r0] = iTemp6 [lr5:16]{_near * int}[r0] + 0x2 {short}\s[0]
.P
\s[-2]Sample.c(11:16:20:1) goto _whilecontinue_0($1)\s[0]
.P
\s[-2]Sample.c(11:17:21:0)_whilebreak_0($3) :\s[0]
.P
\s[-2]Sample.c(12:18:22:0) iTemp2 [lr18:40]{short}[r2] := 0x0 {short}\s[0]
.P
\s[-2]Sample.c(13:19:23:0) iTemp11 [lr19:40]{short}[r3] := 0x0 {short}\s[0]
.P
\s[-2]Sample.c(15:20:54:0)preHeaderLbl1($13) :\s[0]
.P
\s[-2]Sample.c(15:21:56:0) iTemp21 [lr21:38]{short}[r4] := 0x0 {short}\s[0]
.P
\s[-2]Sample.c(15:22:57:0) iTemp23 [lr22:38]{int}[r5 r6] := 0xa {int}\s[0]
.P
\s[-2]Sample.c(15:23:58:0) iTemp17 [lr23:38]{int}[r7 r0] := 0x1e {int}\s[0]
.P
\s[-2]Sample.c(15:24:26:1)_forcond_0($4) :\s[0]
.P
\s[-2]Sample.c(15:25:27:1) iTemp13 [lr25:26]{char}[CC] = iTemp21 [lr21:38]{short}[r4] < 0xa {short}\s[0]
.P
\s[-2]Sample.c(15:26:28:1) if iTemp13 [lr25:26]{char}[CC] == 0 goto _forbreak_0($7)\s[0]
.P
\s[-2]Sample.c(16:27:31:1) iTemp2 [lr18:40]{short}[r2] = iTemp2 [lr18:40]{short}[r2] + ITemp21 [lr21:38]{short}[r4]\s[0]
.P
\s[-2]Sample.c(17:29:33:1) iTemp15 [lr29:30]{short}[r1] = iTemp21 [lr21:38]{short}[r4] * 0x3 {short}\s[0]
.P
\s[-2]Sample.c(17:30:34:1) iTemp11 [lr19:40]{short}[r3] = iTemp11 [lr19:40]{short}[r3] + iTemp15 [lr29:30]{short}[r1]\s[0]
.P
\s[-2]Sample.c(18:32:36:1:1) iTemp17 [lr23:38]{int}[r7 r0]= iTemp17 [lr23:38]{int}[r7 r0]- 0x3 {short}\s[0]
.P
\s[-2]Sample.c(18:33:37:1) _gint [lr0:0]{int} = _gint [lr0:0]{int} + iTemp17 [lr23:38]{int}[r7 r0]\s[0]
.P
\s[-2]Sample.c(15:36:42:1) iTemp21 [lr21:38]{short}[r4] = iTemp21 [lr21:38]{short}[r4] + 0x1 {short}\s[0]
.P
\s[-2]Sample.c(15:37:45:1) iTemp23 [lr22:38]{int}[r5 r6]= iTemp23 [lr22:38]{int}[r5 r6]- 0x1 {short}\s[0]
.P
\s[-2]Sample.c(19:38:47:1) goto _forcond_0($4)\s[0]
.P
\s[-2]Sample.c(19:39:48:0)_forbreak_0($7) :\s[0]
.P
\s[-2]Sample.c(20:40:49:0) iTemp24 [lr40:41]{short}[DPTR] = iTemp2 [lr18:40]{short}[r2] + ITemp11 [lr19:40]{short}[r3]\s[0]
.P
\s[-2]Sample.c(20:41:50:0) ret iTemp24 [lr40:41]{short}\s[0]
.P
\s[-2]Sample.c(20:42:51:0)_return($8) :\s[0]
.P
\s[-2]Sample.c(20:43:52:0) eproc _function [lr0:0]{ ia0 re0 rm0}{function short}\s[0]\c
.sp
Finally the code generated for this function:\c
.br
.P
\s[-2].area DSEG (DATA)\s[0]
.P
\s[-2]_p::\s[0]
.P
\ \s[-2]\ .ds 2\s[0]
.P
\s[-2]_gint::\s[0]
.P
\ \s[-2]\ .ds 2\s[0]
.P
\s[-2]; sample.c 5\s[0]
.P
\s[-2]; \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\s[0]
.P
\s[-2]; function function\s[0]
.P
\s[-2]; \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\s[0]
.P
\s[-2]_function:\s[0]
.P
\s[-2]; iTemp0 [lr3:5]{_near * int}[r2] = recv \s[0]
.P
\ \s[-2]\ mov r2,dpl\s[0]
.P
\s[-2]; iTemp6 [lr5:16]{_near * int}[r0] := iTemp0 [lr3:5]{_near * int}[r2]\s[0]
.P
\ \s[-2]\ mov ar0,r2\s[0]
.P
\s[-2];_whilecontinue_0($1) :\s[0]
.P
\s[-2]00101$:\s[0]
.P
\s[-2]; iTemp4 [lr7:8]{int}[r2 r3] = @[iTemp6 [lr5:16]{_near * int}[r0]]\s[0]
.P
\s[-2]; if iTemp4 [lr7:8]{int}[r2 r3] == 0 goto _whilebreak_0($3)\s[0]
.P
\ \s[-2]\ mov ar2,@r0\s[0]
.P
\ \s[-2]\ inc r0\s[0]
.P
\ \s[-2]\ mov ar3,@r0\s[0]
.P
\ \s[-2]\ dec r0\s[0]
.P
\ \s[-2]\ mov a,r2\s[0]
.P
\ \s[-2]\ orl a,r3\s[0]
.P
\ \s[-2]\ jz 00103$\s[0]
.P
\s[-2]00114$:\s[0]
.P
\s[-2]; iTemp7 [lr9:13]{_far * int}[DPTR] := _p [lr0:0]{_far * int}\s[0]
.P
\ \s[-2]\ mov dpl,_p\s[0]
.P
\ \s[-2]\ mov dph,(_p + 1)\s[0]
.P
\s[-2]; _p [lr0:0]{_far * int} = _p [lr0:0]{_far * int} + 0x2 {short}\s[0]
.P
\ \s[-2]\ mov a,#0x02\s[0]
.P
\ \s[-2]\ add a,_p\s[0]
.P
\ \s[-2]\ mov _p,a\s[0]
.P
\ \s[-2]\ clr a\s[0]
.P
\ \s[-2]\ addc a,(_p + 1)\s[0]
.P
\ \s[-2]\ mov (_p + 1),a\s[0]
.P
\s[-2]; iTemp10 [lr13:14]{int}[r2 r3] = @[iTemp7 [lr9:13]{_far * int}[DPTR]]\s[0]
.P
\ \s[-2]\ movx a,@dptr\s[0]
.P
\ \s[-2]\ mov r2,a\s[0]
.P
\ \s[-2]\ inc dptr\s[0]
.P
\ \s[-2]\ movx a,@dptr\s[0]
.P
\ \s[-2]\ mov r3,a\s[0]
.P
\s[-2]; *(iTemp6 [lr5:16]{_near * int}[r0]) := iTemp10 [lr13:14]{int}[r2 r3]\s[0]
.P
\ \s[-2]\ mov @r0,ar2\s[0]
.P
\ \s[-2]\ inc r0\s[0]
.P
\ \s[-2]\ mov @r0,ar3\s[0]
.P
\s[-2]; iTemp6 [lr5:16]{_near * int}[r0] = \s[0]
.P
\s[-2]; iTemp6 [lr5:16]{_near * int}[r0] + \s[0]
.P
\s[-2]; 0x2 {short}\s[0]
.P
\ \s[-2]\ inc r0\s[0]
.P
\s[-2]; goto _whilecontinue_0($1)\s[0]
.P
\ \s[-2]\ sjmp 00101$\s[0]
.P
\s[-2]; _whilebreak_0($3) :\s[0]
.P
\s[-2]00103$:\s[0]
.P
\s[-2]; iTemp2 [lr18:40]{short}[r2] := 0x0 {short}\s[0]
.P
\ \s[-2]\ mov r2,#0x00\s[0]
.P
\s[-2]; iTemp11 [lr19:40]{short}[r3] := 0x0 {short}\s[0]
.P
\ \s[-2]\ mov r3,#0x00\s[0]
.P
\s[-2]; iTemp21 [lr21:38]{short}[r4] := 0x0 {short}\s[0]
.P
\ \s[-2]\ mov r4,#0x00\s[0]
.P
\s[-2]; iTemp23 [lr22:38]{int}[r5 r6] := 0xa {int}\s[0]
.P
\ \s[-2]\ mov r5,#0x0A\s[0]
.P
\ \s[-2]\ mov r6,#0x00\s[0]
.P
\s[-2]; iTemp17 [lr23:38]{int}[r7 r0] := 0x1e {int}\s[0]
.P
\ \s[-2]\ mov r7,#0x1E\s[0]
.P
\ \s[-2]\ mov r0,#0x00\s[0]
.P
\s[-2]; _forcond_0($4) :\s[0]
.P
\s[-2]00104$:\s[0]
.P
\s[-2]; iTemp13 [lr25:26]{char}[CC] = iTemp21 [lr21:38]{short}[r4] < 0xa {short}\s[0]
.P
\s[-2]; if iTemp13 [lr25:26]{char}[CC] == 0 goto _forbreak_0($7)\s[0]
.P
\ \s[-2]\ clr c\s[0]
.P
\ \s[-2]\ mov a,r4\s[0]
.P
\ \s[-2]\ xrl a,#0x80\s[0]
.P
\ \s[-2]\ subb a,#0x8a\s[0]
.P
\ \s[-2]\ jnc 00107$\s[0]
.P
\s[-2]00115$:\s[0]
.P
\s[-2]; iTemp2 [lr18:40]{short}[r2] = iTemp2 [lr18:40]{short}[r2] + \s[0]
.P
\s[-2]; iTemp21 [lr21:38]{short}[r4]\s[0]
.P
\ \s[-2]\ mov a,r4\s[0]
.P
\ \s[-2]\ add a,r2\s[0]
.P
\ \s[-2]\ mov r2,a\s[0]
.P
\s[-2]; iTemp15 [lr29:30]{short}[r1] = iTemp21 [lr21:38]{short}[r4] * 0x3 {short}\s[0]
.P
\ \s[-2]\ mov b,#0x03\s[0]
.P
\ \s[-2]\ mov a,r4\s[0]
.P
\ \s[-2]\ mul ab\s[0]
.P
\ \s[-2]\ mov r1,a\s[0]
.P
\s[-2]; iTemp11 [lr19:40]{short}[r3] = iTemp11 [lr19:40]{short}[r3] + \s[0]
.P
\s[-2]; iTemp15 [lr29:30]{short}[r1]\s[0]
.P
\ \s[-2]\ add a,r3\s[0]
.P
\ \s[-2]\ mov r3,a\s[0]
.P
\s[-2]; iTemp17 [lr23:38]{int}[r7 r0]= iTemp17 [lr23:38]{int}[r7 r0]- 0x3 {short}\s[0]
.P
\ \s[-2]\ mov a,r7\s[0]
.P
\ \s[-2]\ add a,#0xfd\s[0]
.P
\ \s[-2]\ mov r7,a\s[0]
.P
\ \s[-2]\ mov a,r0\s[0]
.P
\ \s[-2]\ addc a,#0xff\s[0]
.P
\ \s[-2]\ mov r0,a\s[0]
.P
\s[-2]; _gint [lr0:0]{int} = _gint [lr0:0]{int} + iTemp17 [lr23:38]{int}[r7 r0]\s[0]
.P
\ \s[-2]\ mov a,r7\s[0]
.P
\ \s[-2]\ add a,_gint\s[0]
.P
\ \s[-2]\ mov _gint,a\s[0]
.P
\ \s[-2]\ mov a,r0\s[0]
.P
\ \s[-2]\ addc a,(_gint + 1)\s[0]
.P
\ \s[-2]\ mov (_gint + 1),a\s[0]
.P
\s[-2]; iTemp21 [lr21:38]{short}[r4] = iTemp21 [lr21:38]{short}[r4] + 0x1 {short}\s[0]
.P
\ \s[-2]\ inc r4\s[0]
.P
\s[-2]; iTemp23 [lr22:38]{int}[r5 r6]= iTemp23 [lr22:38]{int}[r5 r6]- 0x1 {short}\s[0]
.P
\ \s[-2]\ dec r5\s[0]
.P
\ \s[-2]\ cjne r5,#0xff,00104$\s[0]
.P
\ \s[-2]\ dec r6\s[0]
.P
\s[-2]; goto _forcond_0($4)\s[0]
.P
\ \s[-2]\ sjmp 00104$\s[0]
.P
\s[-2]; _forbreak_0($7) :\s[0]
.P
\s[-2]00107$:\s[0]
.P
\s[-2]; ret iTemp24 [lr40:41]{short}\s[0]
.P
\ \s[-2]\ mov a,r3\s[0]
.P
\ \s[-2]\ add a,r2\s[0]
.P
\ \s[-2]\ mov dpl,a\s[0]
.P
\s[-2]; _return($8) :\s[0]
.P
\s[-2]00108$:\s[0]
.P
\ \s[-2]\ ret\c
.br
\s[0]
.H 2 "\&A few words about basic block successors, predecessors and dominators"
.P
Successors are basic blocks\c
.IND "Basic blocks"
 that might execute after this basic block.\c
.br
Predecessors are basic blocks that might execute before reaching this basic block.\c
.br
Dominators are basic blocks that WILL execute before reaching this basic block.\c
.br
.P
[basic block 1]
.P
if (something)
.P
\ \ \ \ [basic block 2]
.P
else
.P
\ \ \ \ [basic block 3]
.P
[basic block 4]\c
.br
.P
a) succList of [BB2] = [BB4], of [BB3] = [BB4], of [BB1] = [BB2,BB3]
.P
b) predList of [BB2] = [BB1], of [BB3] = [BB1], of [BB4] = [BB2,BB3]
.P
c) domVect of [BB4] = BB1 ... here we are not sure if BB2 or BB3 was executed but we are SURE that BB1 was executed.
.H 1 "\&Acknowledgments"
.P
\c
.URL "http://sdcc.sourceforge.net/#Who" ""
\c
.sp
\f[I]Thanks to all the other volunteer developers who have helped with coding, testing, web-page creation, distribution sets, etc. You know who you are :-)\f[R]\c
.sp
\f[I]Thanks to Sourceforge \c
.URL "http://sourceforge.net/" ""
 which has hosted the project since 1999 and donates significant download bandwidth.\f[R]\c
.sp
\f[I]Also thanks to all SDCC Distributed Compile Farm members for donating CPU cycles and bandwidth for snapshot builds.\c
.br
\f[R]
.P
This document was initially written by Sandeep Dutta and updated by SDCC developers.
.P
All product names mentioned herein may be trademarks\c
.IND "Trademarks"
 of their respective companies.
.nr Hu 2
.HU "\&Alphabetical index"
.P
To avoid confusion, the installation and building options for SDCC itself (chapter 2) are not part of the index.
.P
.\" The index.  The first pass writes the raw entries to sdccman.ind;
.\" mkindex.awk merges them into sdccman.idx, which the second pass sets.
.\" Two columns, except in plain text, where they are too narrow.
.de TYIND
.SK
.HU "Index"
.if !n .2C
.nf
..
.if !\n[Ref] .ds ind*file sdccman.idx
.INDP
.\" mm sets the contents last:  in a PDF, they move to after the title page.
.if '\*[.T]'pdf' .pdfswitchtopage after title
.if !'\*[.T]'html' .TC
