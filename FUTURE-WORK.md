# Future work

Things that were found, measured and deliberately not done.  Each entry
says what is known, what it would cost and why it was parked, so that
picking one up does not start with rediscovery.  Dated so that a claim
can be re-checked against the tree it was made about.

Ordered by size, not priority.

---

## Removing sdas and sdld from the tree (2026-10-17) - DONE 2026-10-19; manual 2026-10-20

Neil's goal: build every port with vendor ASxxxx (and gputils for
PIC, which never used sdas), and delete `sdcc/sdas`.  State on
2026-10-17: every port drives vendor ASxxxx/aslink - pdk13/14/15, the
last, moved that day (`remaining-ports-survey.md`, pdk section); the
sdas/sdld command tables left in `src/z80/main.c` are dead.  Decisions
and steps:

- pdk13/14/15: DONE 2026-10-17, new vendor `aspdk13/14/15`.
- Rabbits: Neil accepts them as they are on vendor ASxxxx - r2k/r2ka/
  r3ka at 2 failures and 2 abnormal stops, r4k/r5k/r6k at 145/145/163
  (all `ldf`, the parked >64K question).  Not a reason to keep sdas.
- hc08/s08 and mos6502:  DONE 2026-10-17, re-run on this tree.  hc08 7
  failures (its 2026-10-07 baseline), s08 7, s08-stack-auto 7 + 1
  abnormal stop (first measurements); every one the compiler's, a
  program too big for the part, or p99's UTF-8 - none the vendor
  tools', which refuse two s08-stack-auto programs where the compiler
  emits tst with a 16 bit offset the instruction does not have.
  uc6502, uc6502-stack-auto, uc65c02 1 each (p99), from 2.  The plain
  mos6502 port needs cc65's sim65, not installed here.
- Build system:  DONE 2026-10-17.  configure finds the vendor/asxxxx
  submodule (and stops with a message if it is empty), `sdcc/asxxxx/`
  builds the tools the configured ports need with the vendor makefile,
  objects kept out of the vendor tree, and copies them to `sdcc/bin`;
  `make install` installs them in `$bindir` under their ASxxxx names,
  beside sdcc (Neil's choice).  `tools/build-vendor-asxxxx.sh` and the
  hand-made symlinks are gone.
- Deletion:  DONE 2026-10-19 (`e10d7199`, `b90d7f6d`).  `sdcc/sdas`, its
  build and configure rules, the LIB_TYPE machinery, the dead sdas/sdld
  code paths in `src/`, and the sdas names in the regression, ucsim,
  installer and MSVC files are gone; comments that compared against
  sdas/sdld now describe ASxxxx.  sdbinutils was *not* removed:  sdcpp
  builds against its libiberty.
- The manual:  DONE 2026-10-20, on `docs/groff-manual`.  It is groff
  now (`doc/sdccman.mm`), and describes the ASxxxx tools, aslink's
  library format, the vendor asmlnk.txt, and the other changes below.

sdld features with no vendor equivalent:  the memory-usage summary
(`lkmem.c`), which is also where the 8051 `--code-size`, `--xram-size`
and `--stack-size` checks were made - sdcc still accepts the options and
nothing checks them; and reading `ar`/sdcclib archives.
ELF output, AOMF51 output and the Padauk RAM/ROM size checks were three
more; all are covered as of 2026-10-17 (aslink `-e` and `-yo`, and
`.bank` sizes).

---

## AOMF51 output went with the mcs51 migration (2026-10-17) - DONE 2026-10-17

sdld writes an AOMF51 file (`.omf`, Intel's absolute OMF-51, which
third-party 8051 emulators and debuggers read) at the end of every
8051 link - `CreateAOMF51()` in `sdas/linksrc/lkaomf51.c`, Jesus
Calvino-Fraga 2002, about 1100 lines.  The manual describes it under
`--debug`.  Vendor aslink has no such writer, so since the mcs51 ports
moved to it `--debug` gives the `.cdb` and no `.omf`.  Nothing in the
regression noticed:  the suite does not use `--debug`.

Done the same day:  vendor `b267240` ports `lkaomf51.c` into aslink,
asked for with `-yo`, which SDCC now writes for mcs51 debug links.  On a
two-module program the `.omf` is byte-identical to sdld's own writer
run on the same inputs.  It found a worse fault on the way (vendor
`fd7ca7b`):  aslink copied each module's `.cdb` into the linked one,
but SDCC writes `.adb`, so on every vendor port the linked `.cdb` had
no compiler records at all and SDCDB had nothing to work from.

---

## stm8: migrated to vendor asst8 and aslink (2026-10-17)

stm8 and stm8-large at 2 failures each, identical to the sdas baseline
in bytes and ticks.  Details in `remaining-ports-survey.md`, stm8
section.  Later the same day `--out-fmt-elf --debug` was made to work
with the vendor tools (LEB128, NOLOAD, ELF output from aslink), and
stm8 gained a crt0; both are in the same section.

---

## 8051 family: done for now (2026-10-16)

Neil's call (2026-10-16): the 8051 ports are in better shape than
before; leave them.  Programs refused by error 387 are too big for the
part's direct data, which is the program's problem, not the
compiler's - the compiler's job is to refuse them rather than
miscompile, and it does.  Final state is `mcs51-asxxxx-status.md` §12
(`0c140aaa`): no abnormal stops in any model; mcs51-small 20 (17 of
them refusals), medium 4, large 7, huge 7, small-stack-auto 9,
large-stack-auto 6, ds390 13.  The open items there stay recorded, not
scheduled.

---

## PIC family: done for now; next focus the 8051 (2026-10-15)

Neil's call (2026-10-15): the PIC ports have been pushed far enough;
mark them done and revisit only if a PIC-based project needs more.
Final state (full runs, clean libraries, `0e6bc113`): pic14 (16F877)
419 failures, pic14-enhanced (16F1788) 335, pic16 (18F452) 277 with 2
abnormal stops. The open PIC items below stay recorded, not scheduled.

Next: the 8051 family - SDCC's mcs51 ports and relatives. 8051 cores
are still a popular embedded CPU IP block in SoC designs. Existing
mcs51 entries below are natural starting points.

First 8051 round (2026-10-16): no abnormal stops in any mcs51 model;
failures small 20 (17 of them link refusals), medium 4, large 7, huge
7, small-stack-auto 9, large-stack-auto 6, ds390 13.  What is left is
listed in `mcs51-asxxxx-status.md` §12.  The front end changes it
needed moved the PIC ports too: pic14 418, pic14-enhanced 334, pic16
276, no case worse.

---

## `long long` on pic14 (2026-10-08) - IMPLEMENTED 2026-10-11

**Resolution (2026-10-11).** `long long` now works on pic14. The history
below is kept because the measurement in it still holds: refusing the
type would have cost 321 failures.

- **Front end.** `mergeSpec` no longer rejects `long long` for pic14
  (`SDCCsymt.c`), and `stdint.h` defines `__SDCC_LONGLONG` for it, so
  `int64_t`/`uint64_t` exist.
- **Width.** `asmop.aop_reg`/`aop_str` hold 8 (`gen.h`). Literals are
  read with `ullFromVal`. glue.c emits 8-byte initialisers.
  `__gptrget8`/`__gptrput8` exist in all three libsdcc variants
  (regular, enhanced, enhanced-no-xinst) for 8-byte access through a
  generic pointer.
- **Returns.** A value comes back in WREG plus the STKnn registers, so
  the limit is now `pic14_stackSize () + 1` (14 bytes on a 16F877)
  instead of 4. That lifts the old "return wider than four bytes" error
  too, so 5- and 9-byte struct returns work.
- **Arguments past the pseudo-stack.** `_pic14_regparm` used to pass
  every parameter in WREG/STKnn, and more than 14 bytes was a hard
  "Out of stack Space". From the first parameter that would not fit,
  parameters now go in the callee's own `_f_PARM_n` variables, the
  mcs51 model for non-reentrant functions. That is what lets
  `_mullonglong (long long, long long)` be called at all.
  `aopForSym` records such parameters, and glue.c declares the ones
  whose function is not defined in the module `extern`. Before that
  fix, a caller in another module filled a private copy of
  `_f_PARM_n`, linked cleanly and computed the wrong answer.
- **Runtime.** libsdcc gains `_mul/_divs/_divu/_mods/_modu` `longlong`,
  `__mul{s,u}long2{s,u}longlong` and the four float conversions, all
  from the generic `device/lib` sources. `_fs2slonglong.c` and
  `_slonglong2fs.c` now include `<stdint.h>`. Without it, `float.h`
  hides the prototypes of the unsigned functions they call: every port
  compiled those calls as implicit declarations, and only gpasm, which
  wants an `extern`, noticed. For i8085 the generated code is identical
  except for one added `.globl`.

**Measured** (full pic14 run against a clean-library baseline at
`b756a8db`, every library object recompiled on both sides): 626 -> 467
failures as the harness reports them. That figure flatters: see "pic14
link failures are not counted" below. Counting every link failure as
one, 915 -> 814, with 127 files better and 4 worse. All 4 are tests
that used to stop at a compile error on `long long` and now run into
older pic14 bugs, both logged below: `bug-3711`/`bug-3712` (reentrancy)
and `gte/pr30185`/`931004-11` (structs by value). Both pass in full
with those features taken out of them.

**Still failing because of the 16F877, not the port:**
`shifts2` at size 64 (24 cases) needs one 5824-word function, against
2048-word code pages. About 20 other programs run out of data RAM;
the `long long` helpers take 19-47 bytes of static RAM each, and pic14
does not overlay non-reentrant locals.


**What is known.**  The pic14 back end is built for operands of at most
four bytes.  `asmop.aopu.aop_reg` is `reg_info *[4]`
(`src/pic14/gen.h:85`) while `sym->nRegs` is `getSize (sym->type)`
(`src/pic14/ralloc.c:2468`), which is 8 for a `long long`.  The port's
size table declares 8 bytes for it with no runtime to match: the pic14
and pic16 libraries contain **zero** `long long` helper objects, against
16 for mcs51-small, 15 for hc08 and 11 for z80.

The overrun that followed is fixed: see `pic14: refuse an operand too
wide for the asmop`.  The register allocator had been saying
`allocated more than 4 or 0 registers for type longlong-int fixed`
and then letting code generation run on anyway, eight pointers into a
four-pointer array, which glibc reported much later as
`malloc(): corrupted top size`.  Valgrind named it exactly: 20 invalid
writes in one compilation of `gte/pr57860.c`, *"0 bytes after a block
of size 40"*, at `pic14AopOp`.

**What was tried and reverted.**  Declaring the type unsupported -
`port->s.longlong_size = 0` plus a refusal in `mergeSpec`, reported as
`'long long' is not supported by this target`.  It is worse than what it
replaces, and the measurement is the reason this entry exists:

|                   | baseline | with the refusal |
| ----------------- | -------: | ---------------: |
| failures          | **2074** |         **2395** |
| files refused     |        0 |          **201** |
| refusal sites     |        0 |             1965 |

**+321 failures across 201 files.**  Those are programs that compile
today and would stop compiling.  Two attempts at the refusal were
measured; the first also returned a zero-sized type, which reads as
*incomplete*, and took the compiler down with it - `error 176` 295
times and six SIGSEGVs where the baseline had four.  Demoting to plain
`long` instead cleared that (`error 176` 295 -> 3) but did nothing for
the 321, because the 321 are not error recovery.  They are the refusal.

**What this means.**  The premise was that pic14's `long long` is broken
and should be declined.  The failure delta says otherwise: most of it
works, by way of SDCC's generic multi-byte lowering, and only operands
that reach `pic14AopOp` in registers cannot be encoded.  Exactly one
file in the 4809-case corpus reaches that path.

**The open question, to answer by measurement and not by assumption:**
*which* `long long` operations does pic14 currently get right?  The way
to find out is to enumerate the suite's `long long` cases and check
them against the simulator, not to reason from the size table.  Until
someone does that, neither "it works" nor "it is broken" is a claim
this project can make.

**What a real implementation would take.**  Widen `aop_reg` and every
`offset < 4` assumption in `src/pic14/gen.c` (8013 lines), then build
the `long long` runtime for PIC.  pic16 shows it is possible -
`PIC16_MAX_ASMOP_REGS` is 8 there, and pic16 compiles *and links* a
`long long` divide today.

**Why parked.**  Nobody has asked for `long long` on a 16F877, and the
1703 compile failures in `pic14-baseline.md` are mostly other things.

---

## pic14 cannot return a value wider than four bytes (2026-10-08)

**What is known.**  `assignResultValue` asserts on the size of a called
function's return type:

    int rsize = getSize (ftype->next);
    assert (rsize > 0 && rsize <= 4);        /* src/pic14/gen.c:1944 */

8 of the baseline's 69 internal compiler errors were this assert, and
they are **not** `long long` cases, which is what an earlier draft of
this document claimed.  They were struct and `long` returns:

    dynamiccstructret_rtype_signed_long.c
    dynamiccstructret_rtype_unsigned_long.c
    structreturn_type_long.c
    gte/pr58365.c
    gcc-torture-execute-20131127-1.c
    gcc-torture-execute-950628-1.c
    gcc-torture-execute-980223.c
    gcc-torture-execute-990525-2.c

The count was unchanged by the asmop fix - 69 before, 69 after -
because it is a different bug reached by a different path.

**Fixed (2026-10-09): same answer as the asmop overrun, same shape of
fix.** The four-byte limit is real, not unexamined: the return value
is carried through `get_return_val_pcop()`'s handful of fixed
pseudo-stack registers (a device-dependent shared-RAM region, not an
arbitrary number), and nothing past 4 bytes fits through it today.
Confirmed directly for both of the above two file classes
(`dynamiccstructret`'s `struct s2 {char c; long i;}` is 5 bytes,
`structreturn`'s `struct s {long a; long b;}` is 8), and all eight
files turned out to share this one cause - checked each individually,
not assumed from two examples.

`assignResultValue`'s `assert(rsize > 0 && rsize <= 4)`
(`src/pic14/gen.c:1944`) is now `werror (E_RETURN_VALUE_TOO_WIDE, ...)`
(error 370) with `rsize` clamped into range afterward, same reasoning
as the asmop fix: the port cannot return such a value whatever happens
here, so the only question is whether it says so or crashes.

Measured over support/regression for pic14, full corpus (not the
8-file subset): internal compiler errors 69 -> **61**, exactly the
eight; SIGABRT 0 -> 0, SIGSEGV 4 -> 4, `validateOpType` failures 48 ->
48, all unchanged - the fix touches nothing but this one path. Error
370 fires exactly 10 times (two files return through two call sites
each). Overall failure/test-case counts moved far more than 8 in this
same run (test cases 4967 -> 6019, failures 2117 -> 1039), but that is
the corpus drift this project's own handoff doc already named - new
shared regression tests landing from unrelated work, not this fix -
and is not claimed as this fix's effect.

**Since resolved (2026-10-11):** the limit is now the pseudo-stack
size plus WREG (14 bytes on a 16F877), not 4; see the `long long` entry.
Error 370 still fires above that.

---

## Calling a no-prototype function with an argument (2026-10-09)

**What is known.** `processParms` (`src/SDCCast.c:1216`, shared frontend
- not pic14-specific) has a `wassertl (0, "Setting of register
parameter vs. other parameter not yet implemented for functions
without prototype.")`, unconditional whenever it is reached: calling a
function that has no prototype (K&R-style implicit declaration), with
at least one argument, where the call itself isn't variadic. Confirmed
directly on i8085 too (`exit(0)` with no `<stdlib.h>` in scope hits the
identical crash) - not a pic14 bug, every port can reach it, pic14's
corpus just exercises it far more (59 of the baseline's 69 internal
compiler errors).

**Fixed (2026-10-09), same shape as the other two crashes above.**
`wassertl` always fired here, so no port could ever have compiled
anything that reached this path - converting it to
`werror (E_NOPROTO_PARM_UNSUPPORTED, ...)` (error 371) can only turn
"always crashes" into "always a clean diagnostic," never break a
currently-passing file. Verified on both i8085 (the `exit(0)` repro,
plus full i8085 + i8085-undoc regression: 0 failures, byte- and
tick-identical to baseline) and pic14 (full regression, same test/case
counts as the prior run - a clean comparison, no corpus drift this
time): internal compiler errors 61 -> 2, exactly the 59; everything
else (SIGABRT 0, SIGSEGV 4, `validateOpType` 48, overall failure count
1039) unchanged.

**What is still open:** the real feature - "build a temporary function
type that can be used for processFunc, which then can be used here,"
per the original TODO - so that a no-prototype call with arguments
actually compiles instead of failing cleanly. Not attempted: it is
shared-frontend, cross-port design work, a different scale of change
from converting an unconditional crash into a diagnostic.

**Both of the remaining FATAL errors are now fixed too (2026-10-10) -
pic14's baseline internal-compiler-error count is fully cleared.**
Two unrelated causes, each its own small fix:

- `gen.c:7031`, `genPointerSet: illegal pointer type`
  (`gte/bug-3023.c`, `*(char *)"c" = 0;` - writing through a cast
  string literal, syntactically valid, undefined behaviour if
  executed, "should still compile" per the test's own comment).
  pic14's `genPointerSet` switch had no `case CPOINTER:` - a string
  literal lives in code space, so the storage-class-derived pointer
  type is `CPOINTER`, and the switch fell to `default` and called
  `exit (1)` right after an already-fatal `werror`. mcs51 already has
  exactly this case (`werror (W_CODEMEM_WRITE); break;` - warn, emit
  nothing, move on, since code space can't be written by a plain store
  on this kind of target either way) - ported it verbatim, and dropped
  the unreachable `exit (1)` in `default` (the preceding
  `werror (E_INTERNAL_ERROR, ...)` already halts the compile, same as
  every `wassertl` in this file).

- `SDCCsymt.c:1083`, `code generator internal error`
  (`gte/bug-3855.c`, plain `long` division - no `_BitInt` anywhere in
  the source). `SDCCgenconstprop.cc`'s `optimizeMult` synthesizes a
  16-bit `_BitInt` to narrow a multiplication's operand/result types,
  and unlike the two other `newBitIntLink()` call sites in the same
  file, this one had no `if (width > port->s.bitint_maxwidth) return;`
  guard first. pic14's own `.s` struct literal sets `_BitInt` max
  width to a literal `0` (`pic14/main.c`, with a comment naming the
  field) - a deliberate "no `_BitInt` support" choice, not an
  oversight - so this specific optimization could never run on pic14
  without hitting the assert. Added the missing guard, matching the
  other two sites exactly.

Verified both: i8085 + i8085-undoc full regression for each fix is
byte- and tick-identical to baseline (the guard can only ever trigger
when a port's `bitint_maxwidth` is below 16, which no port but pic14
sets - true no-op everywhere else). pic14 full regression: FATAL
internal compiler errors 2 -> **0** - the entire baseline category is
now clear. Failures 1039 -> 1037 (exactly the two), test cases
unchanged (6019, clean comparison) - both files now fully pass, not
just fail more gracefully: `bug-3023.c`'s test body is empty (only
needed to compile), and `bug-3855.c`'s arithmetic was already correct
once the crashing optimization is skipped rather than approximated.

---

## pic14's four SIGSEGV crashes (2026-10-10) - FIXED, one shared cause

**What was known.** `pic14-baseline.md`'s four SIGSEGVs, re-measured
fresh rather than trusted from the original list (two had drifted to
different files - corpus movement, as warned about elsewhere in this
document): `satcounteroverflow_type_unsigned_{char,int,long}.c` and
`gcc-torture-execute-pr68506.c`.

**Root cause, found with gdb (`-O0` rebuild, optimized-out arguments
in the normal `-O2` build made this necessary).** `FixRegisterBanking`
(`pic14/pcode.c`) walks instructions needing a possible `BANKSEL` and
falls back to `insertBankSel (pci, pci->pcop->name)` whenever
`getRegFromInstruction()` can't find a register but `pci->pcop` still
has a name. `insertBankSel` then unconditionally does
`popCopyReg (PCOR (pci->pcop))` - a bare cast to `pCodeOpReg*`, no
type check - and `popCopyReg` reads `pc->r`. Confirmed directly with a
breakpoint at the call site: the crashing operand's type is
`PO_LITERAL` (`pci->pcop->name` is literally the printed value, e.g.
`"0x00"`) - allocated as a different, smaller struct that has no `r`
field at that offset, so the cast reads past the real allocation.
`popCopyReg`'s own `if (pcor->r) pcor->r->wasUsed=1;` null check
doesn't help: the garbage read is non-null, just not a valid pointer,
so it crashes one dereference later, in a different function, which
is why the original baseline doc described this as needing a `-O0`
rebuild to debug rather than a quick printf trace.

**Fix:** a literal operand has no register and nothing to bank-select
- `getRegFromInstruction()` already special-cases `PO_LITERAL` the
same way, returning no register for it (`case PO_LITERAL: break;`).
Added the matching check in `FixRegisterBanking` itself, `continue`ing
past the instruction before it ever reaches `insertBankSel` with a
literal operand, rather than trying to make `insertBankSel` itself
safe for every possible operand shape.

Verified: i8085 + i8085-undoc full regression byte- and tick-identical
to baseline (this file is pic14-only, touches nothing shared - a
sanity check on the rebuild, not a test of the fix). pic14 full
regression: SIGSEGV 4 -> **0**, clearing the entire category; failures
1037 -> 1033 (exactly the four) - all four now fully pass, not just
avoid crashing; `FATAL`/`validateOpType` unchanged, test cases stable
at 6019.

**Every crash category from the original pic14 baseline is now
clear**: FATAL internal errors 69 -> 0, SIGABRT 1 -> 0, SIGSEGV
4 -> 0. What remains of that baseline is `validateOpType` (48,
not yet investigated) and ordinary compile/assertion failures.

---

## pic14's 48 validateOpType crashes, and the test-fixture bug they'd been hiding (2026-10-10/11)

**The crash, fixed.** `OP_SYM_ETYPE (left)` (`SDCCicode.h` -
`validateOpType(op, ..., SYMBOL, ...)->svt.symOperand->etype`) asserts
that its argument is a symbol operand. `genUnpackBits`/`emitPtrGet`
(`pic14/gen.c`) used it on `left` - the pointer being dereferenced for
a bitfield read - purely to get `SPEC_USIGN` for sign-extension. For
`*(volatile struct_8bits *)0x0100` (an absolute-address cast, no named
variable involved at all), `left` is a value, not a symbol, and every
one of the 48 failures was exactly this: 24 `varType_1` + 24
`varType_2` cases across several bitfield-test families, all built on
the same `#define volatileBits (*(volatile struct_8bits*)ABS_ADDR1)`
idiom.

Both functions already compute `etype = getSpec (operandType
(result))` for `SPEC_BLEN`/`SPEC_BSTR` (the bitfield's own shape) -
`emitPtrGet` just hadn't been given the same local variable yet.
Confirmed against mcs51's equivalent function: it uses exactly this
`result`-derived `etype` for `SPEC_USIGN` too, never anything from
`left` - pic14's version was the inconsistent one. Added the missing
`etype` to `emitPtrGet` and replaced all four `OP_SYM_ETYPE (left)`
call sites (two in each function) with it.

**What it uncovered, found by actually checking runtime results, not
just "does it compile now".** Failing *files* dropped (590 -> 544,
consistent with 48 fewer compile crashes), but failing *tests* rose
(1033 -> 1308): these 48 files now compile and run, and most of them
fail their own assertions - e.g. `bitfields-checks_struct_1_varType_1_bit_0.c`
fails 9 of 12, including bare byte-level checks like `AS_UINT8
(volatileBits) == (1 << BIT_TO_TEST)` right after setting that one bit.
First instinct was that this had to be a pic14 codegen bug in the
bitfield-through-absolute-pointer path (`genPackBits` /
`emitPtrByteGet` / `emitPtrByteSet`), since the write path already
used the correct symbol-independent `etype` pattern and the generated
assembly's address-byte loading and bitmask literals both checked out
by hand against the `__gptrget1`/`__gptrput1` calling convention
(`device/lib/pic14/libsdcc/*/macros.inc`: `STK01` -> `FSR` i.e. the
low address byte, `STK00` bit 0 -> `IRP` i.e. the bank-select/high
side, `W` -> the generic-pointer tag).

**The real cause: the test's own `ABS_ADDR1`/`ABS_ADDR2` for pic14
were not plain RAM.** `tests/bitfields-bits1.c.in` picked `0x0100`/
`0x0104` for pic14 "bank 2 on a 16F877" - but on the 14-bit core,
`INDF`/`PCL`/`STATUS`/`FSR` are bank-independent and mirrored at the
*same low offset in every bank* (confirmed against
`/usr/share/gputils/header/p16f877.inc`: bank 2's own SFRs, `EEDATA`
etc, only start at `0x010C`). So `0x0100` *is* `INDF` and `0x0104` *is*
`FSR` - not general-purpose storage at all. Confirmed empirically with
a minimal repro under `gpsim` (`break w 0x120`/`break w 0x100` plus
`dump r`): at `0x0100`, the write landed on the correct register value
but the surrounding read-modify-write sequence was contending with the
very `FSR`/`INDF` pair the generated code uses to *perform* that
write; moving the test to real GPR space (`0x0120`/`0x0130`, inside
the bank's documented `0x110`-`0x16F` GPR range, clear of the
`0x170`-`0x17F` shared-RAM block the compiler itself uses for `STK*`)
made the identical generated code sequence work first try - `REG120`
read back `0x01` exactly as the C source asked for. This was a bad
choice of test addresses, not a pic14 bug; the file's own existing
comment ("mcs51 fails tests. Don't know if that is a bug or just a bad
choice for ABS_ADDR1 and ABS_ADDR2") had already flagged exactly this
risk for another port, which should have been the first thing checked.

**Fix.** The same bad pic14 `ABS_ADDR1`/`ABS_ADDR2` pair was copied
into four sibling test fixtures, not just the one this bug was found
through: `tests/bitfields-bits1.c.in`, `bitfields-checks.c.in`,
`bitfields-nibbles.c.in`, and `bitfields-dead-loop.c.in`. All four
moved from `0x0100`/`0x0104` to `0x0120`/`0x0130`, with the same
comment explaining why the old pair aliased `INDF`/`FSR`. No pic14
backend code changed for this part - `genPackBits`, `emitPtrByteGet`,
`emitPtrByteSet` were all already correct.

Verified (the crash fix, `OP_SYM_ETYPE` -> `etype`): i8085 +
i8085-undoc full regression byte- and tick-identical to baseline
(pic14-only file). pic14 full regression: `validateOpType` 48 -> 0,
clearing that category entirely.

Verified (the address fix): minimal standalone repro under `gpsim`
with direct register breakpoints/dumps, then the full pic14 regression
rerun after wiping `gen/pic14`+`results/pic14` - see commit for the
before/after counts.

---

## pic14's pCode register optimiser moved code past a live W (2026-10-11) - FIXED

**Symptom.** Every rotate by exactly half the width failed at runtime:
`(x << 8) | (x >> 8)` on a `uint16_t` returned the low byte in both
halves, and the 32-bit equivalent was wrong the same way (16 `rotate2`
and 4 `rotate` cases). The code from `gen.c` was correct. With
`--no-pcode-opt` the output was right, so the bug was in the register
optimiser that runs over pCode afterward.

**Cause.** `pCodeOptime2pCodes` (`src/pic14/pcoderegs.c`) rewrites

    movf  reg1,w          stuff...
    movwf reg       ->    movf  reg1,w
    stuff...             [movwf reg]
    movf  reg,w

It checked that `stuff` does not touch `reg1`. It did not check that
`stuff` does not read W, even though W held `reg1`'s value all through
`stuff` before the rewrite and no longer does after it. Here `stuff` was
a `movwf` of the other result byte. When `reg` has more than two uses
(`can_free == 0`), the rewrite also moves `movwf reg` past `stuff`, and
nothing checked that `stuff` doesn't use `reg`. The sibling rewrite
`movwf reg; stuff; movf reg,w; movwf reg2 -> movwf reg2; stuff` had the
same `reg` hole.

**Fix.** Before the first rewrite, require that W is not read before it
is next written (`pCodeSearchCondition(..., PCC_W, 0) != 1`). In the
multi-use case, also require that `reg` is not referenced inside
`stuff`, for both rewrites (new helper `regUsedBetween`).

**Verified.** The full pic14 regression was run against the old and the
new compiler. *Correction (later the same day):* the libraries were not
rebuilt as claimed. `make -C device/lib model-pic14` does not recompile
an object when only the compiler changed, so both runs linked the same
older library objects. The comparison is still like for like, and a
later clean-library run at `b756a8db` reproduced these results case for
case. Results:
749 -> **638** failures, 21574 -> 21556 tests, 6011 test cases and 290
abnormal stops both unchanged. A per-case diff shows only gains: the
20 rotate cases (93 tests), plus `gcc-torture-execute-20050826-2` and
`-20060910-1`, which now pass. Those two use `ASSERT (0)` as `abort ()`,
so a pass runs zero tests. That accounts for the 18-test drop exactly
(17 + 1). No other case changed. pic14-only file, so the other ports
are not affected.

**Not done.** `hasExtBitOp` in `src/pic14/main.c` tests
`(right & lbits) == 1` where `right % lbits == 1` was clearly meant,
so `genRLC` is never used for a rotate left by one. Fixing that is an
optimisation that would put `genRLC` in front of the suite for the
first time, so it needs its own measured change.

---

## pic14 `ptrdiff_t` is `long`; `intptr_t` should be too, and isn't yet (2026-10-11)

**Fixed.** `newPtrDiffLink()` gives a pointer difference the smallest
integer type that holds `GPTRSIZE`, which is 3 on pic14, so `long`.
`stddef.h` said `int`, so `sizeof (p - p) == sizeof (ptrdiff_t)` failed
(12 `sizeof` cases). pic14 now gets the same treatment as mcs51/ds390:
`ptrdiff_t` and `PTRDIFF_MIN/MAX` are `long` (`stddef.h`, `stdint.h`),
and so is a `z`-suffixed literal (`SDCCval.c`).

**Not done: `intptr_t`/`uintptr_t`.** These are still `int`, which
cannot hold a 3-byte generic pointer either. Widening them alongside
`ptrdiff_t` was measured in a full pic14 run. It fixed nothing extra and
exposed two latent bugs, so it was backed out:

- `bug3564104`: `(const void *)(base + *message * 8)` with a `long`
  `base` computes the wrong pointer in `f1` (4 assertions fail). The
  same expression through a `volatile` temporary (`f2`) is right, so
  suspect the cast from `long` to generic pointer when it is folded into
  the call argument.
- `bug-2752`: `Internal error: validateLink failed in DCL_TYPE(ptype) @
  SDCCcse.c:659: expected DECLARATOR, got SPECIFIER`, an
  `inline ... __reentrant` function taking a `uintptr_t` that is cast
  from `&dat1`.

Both reproduce with `intptr_t` as `long` on pic14. Fix them first, then
widen `intptr_t`.

Verified (`ptrdiff_t` only): with the `intptr_t` part reverted, the
`sizeof`, `memalignment`, `bug-2752` and `bug3564104` cases were rerun
against the 638-failure baseline: the 12 `sizeof` tests pass and nothing
else moved. The full run with both parts was otherwise identical to the
baseline.

---

## pic14 variable arguments (2026-10-12) - IMPLEMENTED

**Design.** pic14 has no data stack, and the front end used to make
every variadic function reentrant and push the variable arguments with
`IPUSH`, for which pic14 generates nothing. They now go in a static
area per function, the same model pic14 already uses for ordinary
parameters:

- `processFuncArgs` no longer forces a variadic function to be reentrant
  on pic14 (`SDCCsymt.c`). Its fixed parameters go in `_f_PARM_n`.
- A caller stores each variable argument at increasing offsets in
  `_f_VA` (`geniCodeStaticVaArg`, `SDCCicode.c`).
- In the callee, `__va_start` (the ISO C23 `va_start` placeholder) names
  that area (`allocParms`, `SDCCmem.c`). pic14's `stdarg.h` sets
  `va_start` to it, and the existing ascending `va_arg` reads from it.
- Every module that uses an area emits it as a `udata_ovr` section
  `VA_f_VA` (pic14 `glue.c`). gplink overlays same-named sections and
  keeps the largest size, so the area is as big as the largest call
  anywhere in the program, and costs nothing if unused.
- `__SDCC_PIC14_HAS_VARARGS` is now defined, so libc builds `printf`,
  `sprintf`, `fprintf` and `printf_small`, which used to compile to
  empty objects.

Same semantics as any non-reentrant pic14 function: a variadic function
that is re-entered while it is still reading its arguments sees them
overwritten. Two `static` variadic functions with the same name in
different modules would share an area.

**Limitation.** Variable arguments in a call through a function
pointer are refused: the caller cannot know which area to fill. The new
error is `E_VARARG_PTR_CALL_UNSUPPORTED` (372); in practice SDCC's
older error 92 ("must be 'reentrant'") usually fires first.
`gcc-torture-execute-930513-1` declares such a call in a function it
never runs, now guarded for pic14.

**Also fixed.** pic14's `stdlib.h`, `vfprintf.c`, `printfl.c` and
`_ftoa.c` still used `_itoa`/`_uitoa`/`_ltoa`/`_ultoa`, the names
before the generic library renamed them to `__itoa` etc., so nothing
using them linked. That covers the 10 `itoa` cases.

**Measured** (full pic14 run with clean libraries, against `ae19590a`'s
809): **679 failures**, 158 files better, including all 69 `argval`, 8
`vaargs` and the `itoa` family. Six files got worse:
- 4 pass structs as variable arguments and now reach the struct-by-value
  bug: `strct-varg-1`, `strct-stdarg-1`, `920625-1` and `bug-2776`.
  `bug-3368` does the same and stops abnormally (2 abnormal stops,
  was 1).
- `bug2084206` reads a 2-byte function pointer back as a 3-byte
  `void *`, which the test already excludes for mcs51/ds390/pic16 for
  that reason; pic14 added to the exclusion.
- `930513-1`: see Limitation.

**`printf` and floats: decided 2026-10-12.** Neil's call: float output
does not belong in `printf` on PICs. pic14 now matches pic16: off by
default (`%f` prints `<NO FLOAT>`), opt in with the library's
`./configure --enable-floats` (`-DUSE_FLOATS=1`). Before this, even a
minimal `sprintf` test ran out of RAM on the 16F877, because floats
pull in `_ftoa` and the float library and pic14 does not overlay
non-reentrant locals. Floats in arithmetic are unaffected. Measured
against the varargs commit: 679 -> **652** failures, 0 worse. The
`snprintf` family and about 20 `tcc`/gcc-torture programs now link and
pass. `snprintf`'s `PTR` variant is excluded on pic14 as it already is
on pic16 (the whole test): the PIC `printf` prints pointers without
"0x" and has no `%P`. The default build's `vfprintf` objects are
identical to the ones measured.

---

## pic16: consistency with pic14, first pass (2026-10-15)

pic16 had never been regression-run in this tree: its libraries had not
been built since the front-end tightening, and did not build (libsdcc's
fixed16x16 comparisons, see `b7caeb35`). Baseline on the PIC18F452 with
clean libraries: **785 failures, 16 abnormal stops**, 25077 tests.

Fixed in this pass (ported from pic14 where pic14 already had it):

- `_BitInt` up to 64 bits, with the top byte of odd widths normalised
  after casts, add, subtract, multiply and left shift. libc gains the
  stdbit.h sources and the libraries are built as C23; libsdcc gains
  the `long long` float conversions and widening multiplies.
- Wrong code that pic16 had all along: literal shifts of 3, 5, 6, 7 and
  8 byte values emitted nothing; a cast from a variable in `__code` used
  its address. (`pic16aopLiteral` and genAssign now read literals with
  `ullFromVal`; on this LP64 host `ulFromVal` is already 64 bits, so that
  only matters where `unsigned long` is 32 bits, a Windows build say. The
  commit messages of `26fbf89d` and `8314fd97` overstate it.)
- Bit-fields of 8 bits or more, read and written (pic16 bailed out on
  reads, wrote multi-byte ones wrongly); the sign of a bit-field comes
  from the field, not `OP_SYM_ETYPE (left)` (pic14 `94e3ae00`).
- Front-end fallout: an `inline` definition no longer gets a `global`;
  wide string literals in `__code`; `&struct` initializers (pic16 marked
  struct variables "implicit", the front end's word for member names);
  struct-member arrays in pointer initializers; calls to a constant
  address; a store into a string literal compiles to nothing.
- `static __at` locals were allocated twice; an object over a 256-byte
  RAM bank gets error 380 instead of a gplink error.
- Regression: pic16 test addresses inside the support code's software
  stack (0x200-0x2FE) moved to bank 5; the watchdog is turned off.

Measured (full run, clean libraries): **902 failures, 46 abnormal
stops, 29196 tests**. 4119 more tests run than before; 176 files are
better and 19 worse, all of them `_BitInt` tests that used to skip
themselves. The 30 new abnormal stops were watchdog resets in bit-field
tests whose failure messages outran it; with the watchdog off they are
plain failures (see the generic-pointer item below).

**Second pass (2026-10-15), `401385d3`..`f00e6124`.** Done since:
- **C library** (Neil's call: standard, like pic14): generic ctype,
  string and stdlib sources and headers; pic16's string.h and stdlib.h
  wrap the generic ones and add only the PIC18's own functions; pic14's
  allocator with a 128-byte default heap and `_initHeap`; standard
  putchar/getchar/gets/puts/fputs/fputc/EOF, a NULL stream writing
  through putchar. memrchr rewritten (it read past the buffer). Also
  div/ldiv/lldiv, the uabs family, memalignment and ckd_* (pic14 too,
  without lldiv: 16 bytes is more than a pic14 function returns).
- **Structs by value** (regparm refused them, as pic14 `f065a768`) and
  **structs as variable arguments** (IPUSH_VALUE_AT_ADDRESS was not
  implemented: "UNHANDLED iCode", nothing pushed, compile succeeded).
- **Results over 4 bytes:** `--optimize-df` deleted the FSR0H set-up of
  the result pointer, breaking every library function that returns more
  than 4 bytes (the whole long long runtime).
- **Integer constants as generic pointers:** a nonzero constant up to
  0xFFF (PIC18 data addresses are 12 bits) gets the data tag. A generic
  pointer made an integer keeps its tag, which pic16 code reads with
  `(unsigned long)p >> 16`, so `(long)(void *)12` is 0x80000c and
  `bug-3780` fails by design.
- References to inline functions are declared extern; the sizeof
  fixture knows pic16's `&var` is `__data`.

**Third pass (2026-10-15), `62c639f9`..current.** Fixed: a function cast
in a pointer initializer, `{(DT) f1, f2}`, became one zero byte;
initialized absolute `__data`/`__xdata` variables were never emitted,
and an uninitialized alias at the same address overlapped them; gplink
can fail and exit 0, so sdcc now checks the hex file; an address
constant minus a variable or constant read RAM; genAddLit took an
`int`, truncating 64-bit add/subtract constants; pic16_OptimizeJumps
pointed Bcc at labels far behind it (a negative distance passed the
range check, and gpasm wraps the offset silently); an address constant
as a truth value read RAM.

Measured (full runs, clean libraries): **pic16 277 failures, 2 abnormal
stops, 31456 tests** (first baseline 785 / 16 / 25077). pic14 419 and
pic14-enhanced 335 after the shared library additions.

**Still open on pic16:**
- **Objects over 256 bytes** (~30 compile failures, error 380): gplink
  places each object in one DATABANK. pic16 code already selects the
  bank for every byte's own address (`BANKSEL (sym + n)`), so a linker
  script with merged banks could take them; a decision for the
  user-visible device scripts.
- **`__code` objects at odd addresses** (absolute_mem___code): gputils
  needs word-aligned program-memory sections; adjacent absolute objects
  would have to share one section. Now a link failure, not a silent one.
- 2 abnormal stops: reentrant_type_signed_long_long (recursion with an
  8-byte result through FSR0) and sha3-256 (runs past the simulator
  limit; unexamined).
- Run-time failures in ~45 files, the largest 20021120-1 (float-heavy,
  86) and bug3223041 (24); largeoddstruct (struct returns from `__code`).
- genCmp, genAnd, genOr and genXor still read literals as `unsigned
  long`: right on LP64 hosts, 32 bits where `long` is.
- `_BitInt` from float above 32 bits; signed wide `_BitInt` multiply
  (fails on pic14 too); `struct-ret-1` is error 92 by design (a struct
  through a pointer to a non-reentrant function), as on pic14.

---

## pic14-enhanced: objects larger than a RAM bank (2026-10-15) - PARKED

Neil's call (2026-10-15): record it, do not implement it now.

**What fails.** Four tests pass on the 16F877 (96-byte banks) and fail
to compile on the 16F1788 (80-byte banks), each because of one object
of 81-90 bytes:

- `bug-2890326`: error 380, global `vehicles`, 90 bytes.
- `gcc-torture-execute-strlen-1`: error 380, global `u`, 81 bytes.
- `bug-3547`: error 379, local `points` of `f`, 84 bytes.
- `new_wide`: error 379, local `c16_buffer` of `testW`, 82 bytes.

The errors are correct: pic14 addresses a variable with BANKSEL plus a
7-bit offset, so an object has to sit inside one bank. Nothing is
miscompiled.

**What enhanced cores offer.** The general-purpose RAM of every bank
also appears as one contiguous block in the FSR address space, from
0x2000 (the device lkr's `LINEARMEM linear0`, 0x2000-0x27EF on the
16F1788, with each `gprN` bank declared `SHADOW=linear0:...`; the lkr
also has `SECTION NAME=LINEAR0 RAM=linear0`). An object placed there
can be any size up to the total.

**What already works.** Pointer access: the enhanced `setup_fsr` and
the `__gptrget`/`__gptrput` helpers load the full 16-bit address into
FSR0, so `*p` and `p[i]` into linear memory need nothing new.

**What the work is.**
- Placement: glue.c emits an object larger than `pic14_maxRamBank()`
  into a linear-memory section instead of reporting 379/380. Check
  first that gpasm/gplink accept a relocatable `udata` in `LINEAR0`
  and how they relocate a symbol there (gputils is the risk here; see
  the RELOC_LOW note in memory for how its relocations have bitten
  before).
- Code generation: every *direct* access to such an object (a constant
  offset, a struct member, `&obj` itself) must go through FSR
  (`MOVIW`/`MOVWI k[FSRn]`) instead of BANKSEL + direct addressing.
  That is the `AOP_DIR` paths of `pic14/gen.c`, plus the BANKSEL
  placement in `pcode.c`, which must not touch these operands.
  `&obj` must give the linear address (0x2000+), which pointers then
  handle as now.
- Locals: an over-size local is the same case for a function's
  static frame; the locals split (`47be65d4`) would give the large
  object a section of its own.
- FSR use: codegen already uses FSR0 for pointers; a direct access to a
  linear object in the middle of a pointer operation needs FSR1 or a
  save/restore.

**Cost and risk.** Contained to enhanced cores, but it touches the
direct-access paths that every test uses, so a full run on both ports
is the check. Gains 4 tests in the suite today, and real programs on
enhanced parts with arrays of more than 80 bytes.

**Classic cores** (16F877 class) have no linear memory: 379/380 stay
the answer there.

---

## pic14-enhanced: failures the 16F877 does not have (2026-10-15)

After the abnormal stops were gone, 13 tests passed on the 16F877 but
failed on the 16F1788. Fixed:

- **Locals over one bank** (`791e80e7`, `47be65d4`). A module's locals
  were one udata section, and the 16F1788's banks hold 80 bytes against
  the 16F877's 96: six `itoa` cases, `qct_0057-duff`,
  `zeropad_storage_auto`, `loop-13`, `bitwidth` (whose extra BANKSELs
  pushed `testCount` past a page) and more. Locals now go in sections no
  bigger than the largest RAM bank in the device's linker script, only
  when they need more than one. The r0x temporaries get their sections
  inside `AnalyzeBanking`, after flow analysis drops unused registers
  and before BANKSELs are placed. `pic14_operandsAllocatedInSameBank`,
  which took any two r0x registers to share a bank, now requires the
  same section.
- **`bug-2304`** pointed pic14 at 0xcab0, program memory to an enhanced
  FSR; it now uses 0x01b0.

Measured (full runs, clean libraries, against `a2b630c4`'s 430 / 367):
pic14 **424**, pic14-enhanced **340**, none worse on either. The
splitting also fixed tests on both chips (`offsetof`, `20011008-3`,
`20090113-1`, `pr89634`, ascon, `structreturn` long long, ...).

**Left:** four 16F1788-only failures, each one object larger than any
bank. See "pic14-enhanced: objects larger than a RAM bank" above.

---

## pic14-enhanced: no abnormal stops left; code addresses and malloc decided (2026-10-14) - FIXED

The 16F1788 port's 10 abnormal stops, and what they turned out to be:

- **gpsim, not the compiler (7).** gpsim 0.32.1 keeps only five bits of
  PCLATH on the 16F1788 (`movlp 0x20` writes 0x00), so a CALL or GOTO
  into pages 4-7 lands 8K words lower. Every program over 8K words
  (`tst_string`, `m4_compare_2_n`, five `bitfields-nibbles` operation 4
  cases) jumped into test code and recursed until the stack overflowed.
  The port now links with `ports/pic14-enhanced/16f1788_8k.lkr` (pages
  0-3 only), and the link check reads its memory map from a `-Wl-s,`
  script when given one, so those programs fail with error 381 instead.
  The real part has 16K words; this is a simulator limit only.
- **`bug-2568` (1).** Its pic14 address, 0x0100, is INDF in bank 2; the
  initialised array wrote PCL at startup. It now uses 0x0120 and passes
  on both chips. Such definitions are now error 386 (a variable `__at`
  a core register mirrored in every bank).
- **`funcptrcmp_type_char` (1).** `&f1 != &g1` XORed the second address
  as a RAM register (`a27c3b7a`); the 16F877 passed by luck.
- **`920810-1` (1).** malloc without `_initHeap` returned NULL.

Two decisions by Neil (2026-10-14):

- **Code addresses carry bit 15 on enhanced cores.** gputils forces
  bit 7 into `high()` of any program-memory symbol (0x01A0 loads as
  0x81A0, the address FSR reads program memory at), and no relocatable
  expression removes it, but `dw sym` gave the plain value, so an
  initialised pointer compared unequal to the same address computed in
  code. Initialisers now emit `dw sym + 0x8000` (`24fcbd54`). An integer
  constant cast to a `__code` pointer is taken as written: it reads the
  same byte as `&obj` but compares unequal to it.
- **malloc has a default heap** (`db64f1b1`): 64 bytes on classic
  cores, 80 on enhanced, set up on the first allocation, in its own
  library module so it is linked only with the heap functions.
  `_initHeap` still replaces it.

Found on the way (`b0a64fbf`): a pointer held in `__code` (a `const`
function pointer, say) was read by address, so `fp == &g1` compared fp's
location and a call through fp jumped into its retlw table.

Measured (full runs, clean libraries): pic14 432 -> **430**
(`bug-2568`, `920810-1`); pic14-enhanced 364 + 10 abnormal stops ->
**367 + 0**: the seven oversized programs are now counted as build
failures, and `absolute_mem___code`, `funcptrcmp`, `bug-2568`,
`920810-1` pass.

---

## pic14: programs that cannot run correctly are now build errors (2026-10-14) - IMPLEMENTED

Neil's policy: "fail compilation with an error message if a program will
not fit or run correctly. Silently failing code is not acceptable."
Decisions: reject reentrancy rather than build a data stack; run the
whole-program checks in sdcc's link step; a cycle that exists only
through function pointers is an error.

**Compiler** (per module):
- `__reentrant` function definitions (error 373) and `--stack-auto`
  (374). The old prologue/epilogue for them was mcs51 text emitted as
  comments only, so parameters had the wrong values (`bug-3711/3712`).
- Recursion within a module (375), reported with the cycle at the
  function's line: `CheckRecursion` in `pcode.c`, run before `ReuseReg`.
- The interrupt handler saves and restores STK00.. and PCALL_W when it
  calls anything (including library helpers): `genIsrPseudoStack`, into
  `___sdcc_saved_stk` (16 bytes, defined in the handler's module). Before
  this, an interrupt during an argument pass corrupted it: a timer-interrupt
  test (3000 calls passing two `unsigned int`s) fails with the save
  stripped and passes with it, on both the 16F877 and the 16F1788.

**Link step** (`src/pic14/linkcheck.c`, before gplink): reads the
objects and the library members they pull in (gplib archives), builds the
call graph from `RELOC_CALL`/`RELOC_GOTO`, treats a call to a local label
ending in `MOVWF PCL` as an indirect call reaching every address-taken
function, and reports:
- recursion across modules or through function pointers (375);
- calls nested deeper than the hardware stack, 8 or 16 levels, plus one
  and the handler's own depth for the interrupt, printing the chain (376);
- a function (377) or constant table (378) bigger than a code page;
- a module's locals (379, with each function's bytes) or a module's
  variables (380) bigger than a RAM bank; program memory (381) and RAM
  (382) totals - page and bank sizes from gplink's own `<proc>_g.lkr`;
- a function with static storage reachable from both the interrupt
  handler and main code (383), e.g. `_mulint` when both multiply;
- two functions of one module that share local registers while one
  reaches the other through another module (384) - the "declare all
  modules non-reentrant. This is a bug." case in `register_reassign`;
  only `UDL_` storage counts, since callers write a callee's parameter
  and variable-argument areas by design;
- interrupt-handler code and main code sharing locals (385).
Programs linked by running gplink directly are not checked.

**Measured** (full runs, clean libraries; before: pic14 449,
pic14-enhanced 393 + 15 abnormal stops): **pic14 432**, **pic14-enhanced
364 + 10 abnormal stops**. Per case against the compile-time stage alone
(421 / 364): no file worse except 11 pic14 programs now rejected for call
depth 9-10 on the 16F877's 8 levels - mostly the assertion-failure path
(`__fail -> __printu -> __prints -> _gptrget`, 4 levels) that passed only
because no assertion failed. Every file worse than the 449/393 runs is one
of the new errors; several assertion-failing or timing-out programs are
now single compile errors.

**Found, not fixed:** the 8 remaining 16F1788 "stack overflows" are not
deep calls but a wild jump: in `tst_string`, `__fail`'s message read
through `__gptrget1` jumps to 0x03E8 (test code) instead of a string, and
the test re-runs itself until the stack overflows. Enhanced-core code
generation, with `absolute_mem___code`, `bug-2304` and
`funcptrcmp_type_char` below.

---

## Second pic14 regression port: `pic14-enhanced` on a PIC16F1788 (2026-10-13)

Neil's decision: keep the 16F877 (`pic14`, classic core: 8K words,
368 bytes of RAM) and add the 16F1788 (`pic14-enhanced`: enhanced core,
16K words, 2KB of RAM) alongside it, for a record of both. The 16F1788 is
the largest midrange part that gpsim 0.32.1 simulates.
`ports/pic14-enhanced/spec.mk` sets `PIC14_DEVICE` and `PIC14_LIBS`
(`libsdcce`/`libce`/`libme`) and includes `ports/pic14/spec.mk`; it has
its own `support.c` (config words, EUSART). Excluded from the default
`make` like `pic14`; run with `make test-pic14-enhanced`.

**gpsim quirk:** gpsim's 16F1788 drives EUSART TX on RC4, not on RC6 as
the device does, so `support.c` attaches the USART module to `portc4`.

**Limits that stay on any midrange PIC:** program memory is in 2K-word
pages, and gplink cannot split one function across pages. An enhanced
bank has 80 bytes of general-purpose RAM (16F877: 96), and one
function's locals (`UDL_*`) must fit a bank.

**First measurement** (both on the same compiler and clean libraries;
pic14 449 failures): **393 failures, 15 abnormal stops** (13 stack
overflows). 86 files better than pic14, almost all ones that did not
fit the 16F877 (76 compile/link, 9 timeouts). 35 worse:
- 15 locals sections larger than the 80-byte bank (`itoa`, `zeropad`,
  `bug-3563`, `bug-3729`, `qct_0057-duff`, ...);
- abnormal stops: gpsim detects overflow of the 16-level hardware stack,
  where the 16F877's 8-level stack silently wrapped (those were timeouts
  or failures there);
- `reentrant/*`: timeouts became assertion failures, the known
  reentrancy gap;
- **to investigate, possibly enhanced-core code generation:**
  `absolute_mem___code` (4 of 10), `bug-2304` (4 of 4),
  `funcptrcmp_type_char` (abnormal stop).

---

## `_BitInt` and `<stdbit.h>` on pic14 (2026-10-13) - IMPLEMENTED

pic14 now has `_BitInt` up to 64 bits (`BITINT_MAXWIDTH` was 0), and its
libc includes the `<stdbit.h>` sources; the library is compiled as
`--std-c23` (`aligned_alloc.c` lost its `#pragma std_c11`).

- **Odd widths.** `pic14_fixBitIntTop` masks (unsigned) or sign-extends
  the top byte after casts, add, subtract and left shift, so a
  `_BitInt(N)` never holds bits above N.
- **Initializers** of 3, 5, 6 and 7 bytes (`pic14_printTypeLiteral`); only
  a 3-byte *pointer* gets a tag byte (`pic14_printValue`).
- **Rotations.** `hasExtBitOp` tested `(right & lbits) == 1` for
  `% lbits`, and accepted widths that are not whole bytes, which the
  RLF/RRF chains cannot rotate: an internal error or a wrong result.
  Fixed in `pic14/main.c` and `pic16/main.c`; other rotations use
  shifts.
- **Bit-fields wider than 32 bits.** Initializers (`pic14_printIvalBitFields`
  was limited to 1, 2 or 4 bytes and 32-bit values) and literal stores
  (`emitPtrPut` shifted an `int` by 32 for the last partial byte).
- **Returning a variable in `__code`** (`return (const_struct);`)
  returned its address. `genRetFromCode` reads it through `__gptrget1`
  a byte at a time, the bytes for W, STK00 and STK01 last (via
  temporaries), as those calls overwrite STK00/STK01.

**Measured** (full run, clean libraries, against `edd66f35`'s 485, before
the `emitPtrPut` fix, which was checked on the affected cases):
**451** failures, 74 files better (stdbit tests, `bitint*`, `store8`,
`load8`, `bug-3410`, ...). 29 files worse, all newly enabled
`_BitInt` cases: 24 do not fit one 2K-word code page of the 16F877
(`bitintarith` at 17 bits and wider, `bitintrot` at 63/64 bits), 2 were
the bit-field store fixed afterwards, and 3 are the per-test totals.

---

## pic14 pointer stores of address constants (2026-10-13) - FIXED

`emitPtrPut` (direct and FSR cases) loaded its source as "`AOP_LIT` ->
`MOVLW`, else `MOVF`", and `genDataPointerSet` treated "immediate asmop
of pointer type" as an address constant. So storing a *function's*
address (`fp t[2] = {a, 0};` in a local array) read RAM at the
function's address. And a pointer *variable* outside direct space would
have stored its own location. Both now use the same decision as
everywhere else (`mov2w_op`, `op_isImmediateAddr`).

`tests/bug-4090.c` compared `sizeof (fp)` with `sizeof (void *)`. On
pic14 and mcs51 those differ (2-byte function pointers, 3-byte generic
pointers); it now compares with `sizeof (void (*) (void))`, which is
what the test is about. i8085 is unaffected (both 2 bytes).

Measured (full run, clean libraries, against `9504a4a1`'s 490): **485**,
`bug-2455`, `bug-4090`, `fptr_cast_array_init` fixed. `bug-2993` went
from a timeout to 2 failures: it is a `__reentrant` test, now reaching
the reentrancy gap. Abnormal stops 0.

**What is left among runtime failures** is mostly reentrancy and
recursion: `__reentrant` functions (the `reentrant` family, `funptrs`,
`bug-3711`/`3712`/`3778`/`2993`, `930702-1`, `991112-1`) and recursive
programs (`tcc_25_quicksort`, `tcc_30_hanoi`). pic14 has no data stack,
so these need one. Also left: `bug-2567`, `strcpy-1`, `bug-927659`, the
`wchar` restart cases, `bug-2031` (gputils), and `920810-1` (malloc
without `_initHeap`).

---

## pic14 calls through a function pointer with arguments (2026-10-13) - IMPLEMENTED

**The problem.** pic14 makes an indirect call by writing PCLATH and then
PCL from WREG. WREG is also where the first argument byte travels, so
`genPcall` could not pass arguments at all. It now can.

**Design** (approved by Neil, 2026-10-13):
- Every function with WREG/STKnn parameters gets a one-word alternate
  entry, printed right before its label after the pCode passes:
  `_f_ind: MOVF PCALL_W,W`, falling through into `_f`. Interrupt
  handlers do not.
- `PCALL_W` is one byte of shared RAM next to WSAVE, taken from the
  pseudo-stack (register-argument capacity on a 16F877: 14 -> 13 bytes;
  `pCodeInitRegisters`, `emitPseudoStack`, `__SDCC_PIC14_STACK_SIZE`).
- `genPcall` sends the arguments as `genCall` does (shared
  `pic14_sendArgs`), stores the would-be WREG byte in `PCALL_W`, then
  jumps.
- A function's address is its `_ind` entry wherever it is taken: in
  `aopForSym` (code) and `pic14_printFuncPtrLabel` (initializers).
  `pic14_declare` declares `_f_ind` alongside `_f`. Direct calls are
  unchanged.
- Functions whose address is taken (`pic14_indirectTargets`, filled by
  `aopForSym` and by scanning global initializers before the pCode
  passes) are neither inlined by `InlinepCode` nor given call-tree-shared
  registers by `ReuseReg`. Callers through a pointer do not appear in
  the call tree, so both were unsafe even for argument-less pointer
  calls before this change.

**Also fixed:** a one-bit bit-field tested in an `if` through a code or
generic pointer used a `BTFSC INDF` shortcut, reading RAM.
`far_rabbit_fields`' `csb.b`, a `const` struct in program memory,
passed only because a RAM byte happened to have the bit set; the new
entries moved the code. The shortcut now fetches the byte
(`emitPtrByteGet`) and tests it in W.

**Measured** (full run, clean libraries, against `360d8b0c`'s 551):
**490**, 24 files better, none worse: all the `float_single` that fit
the 16F877, `funptrs` (8 left each, `__reentrant`), `z88dk`,
`z88dk_callee`, `func-ptr-1`, `bug-2271`, `bug-2822`, `bug-2497` and
more. `bug-2124` is listed as better but has only gone back to an
abnormal stop (which counts zero), and remains reentrancy work.

---

## pic14: leaked indirect-call arguments; casts of __code variables (2026-10-13) - FIXED

- **`genPcall` never cleared `_G.sendSet`.** Arguments to an indirect
  call cannot be passed (W makes the jump), and they were not dropped
  either: the next *direct* call anywhere later in the module sent them
  as extra leading arguments, ahead of its own. `bug-2271`'s plain
  `foo0 (p)` received 6 bytes instead of 3, because `foo1` before it
  called through `pf[]`. Several tests that timed out were this.
  `genPcall` now discards them.
- **A cast whose source is a variable in `__code`**
  (`(void *) const_ptr_in_code`): `genCast` read the variable as if it
  were in RAM, while `genAssign` already reads it through its `retlw`
  table. `genCast` now does the same, reading exactly the source's size
  (reading the result's size could run off the table into unrelated
  code), then adding the generic-pointer tag or sign/zero extension
  (`bug1928022`).

**Measured** (full run, clean libraries, against `c9e38ce6`'s 492):
**551**. The rise is not regressions. 19 files changed:
3 better (`bug-2271` 1 of 2, `bug1928022`, `20030714-1`), and 16 that
used to time out or fail to compile and now run into the
indirect-calls-with-arguments gap. Every one of the 16 calls through a
function pointer with arguments, most also with `__reentrant`:
`funptrs` (4), `bug-1918`, `bug-2373`, `bug-2497`, `bug-2663`,
`bug-2822`, `bug-2993`, `bug-3778`, `bug-3917`, `z88dk`,
`z88dk_callee`, `bug-2124`, and `float_single` NEG (+1). Abnormal stops
1 -> 0.

---

## pic14 glue and genRet: three ports of fixes the generic code already had (2026-10-13) - FIXED

pic14 has its own copies of initializer and return code, and fixes
made since to the generic versions never reached them:

- **String-literal addresses in initializers** (`bug-3973`, upstream
  #3973; generic fix `626db99a`). `constExprValue()` marks a string
  literal's address `S_LITERAL` with `val->sym` set.
  `pic14_printIvalPtr` and `pic14_printIvalType` now check `val->sym`
  before treating the value as a number.
- **Integer initialized from an address** (`(unsigned long)"AAA"`):
  `pic14_printTypeLabel` put a generic-pointer tag byte into every
  4-byte integer. Only a generic pointer has one; any other address is
  zero-extended.
- **`return *p` for a struct** (`bug-3803`, upstream #3803; the fork
  fixed this for i8085's `genRet`). The operand can carry a wider type
  than the struct, so a 1-byte struct returned its neighbour byte. pic14's
  `genRet` now caps the size at the declared return type.

Measured (full run, clean libraries, against `d3d54ae0`'s 497, also
covering `518a52aa`'s `strtoul` fix): **492**, `bug-3474`, `bug-3803`
and `bug-3973` fixed, none worse.

**Decided 2026-10-14:** pic14's `malloc` now sets up a default heap
when the program has not called `_initHeap`; see the pic14-enhanced
entry of that date.

---

## pic14 literal add/subtract: stale carry, 32-bit literals, wide results (2026-10-13) - FIXED

Three bugs in `genAddLit` (`src/pic14/genarith.c`), plus one in glue:

- **Stale carry.** When the literal's low byte is 0, the carry is
  unknown (`clear_carry`), but a later byte whose literal was also 0
  still went through the `CLRF; RLF` carry path and added whatever
  carry the previous instruction had left. `c += x` straight after a
  loop came out 256 too high (`920411-1`). Every lower literal byte
  being zero means there is no carry, so that byte is now copied.
- **32-bit literals.** The literal was an `int` (add) or read with
  `ulFromVal` (subtract), so the upper half of a `long long` constant
  vanished: `0x0102030405060708 + c` lost its top four bytes. Now
  `unsigned long long` with `ullFromVal` throughout.
- **Results wider than the operand.** When the front end folds a cast
  into the operation (`(u64)(int)(foo - 1)` becomes `u64 = int - 1`),
  the sum is computed at the operand's width and then extended. It was
  always *zero*-extended; it now takes the operand's signedness
  (`20120817-1`). A first attempt that widened the operand before
  adding was wrong, and the regression caught it: `bug-3504` and
  `20050410-1` need the wrap at the narrow width.
- **Union initializer** (`pic14/glue.c`): a union whose first
  alternative is an anonymous struct got only that struct's first
  member, and the rest was zero-padded (`pr87053`). This ports the fix
  the generic `SDCCglue.c` already has (`84f9c74d`, upstream bug #2948)
  to pic14's own copy.

Measured (full run, clean libraries, against `127a9a67`'s 500): **497**,
3 better, none worse.

---

## pic14 read a pointer variable's location instead of its value (2026-10-13) - FIXED

`p = standin; p->a` (`bug-2385`): the optimiser folds the copy into
`@[_standin + 0]`, a pointer read whose pointer is the variable itself.
pic14 gives a variable outside its direct-space map an `AOP_PCODE` /
`PO_IMMEDIATE` asmop naming its *location*. `op_isLitLike` and the
near-pointer "access directly" checks treated any immediate as an
address constant, so the generated code read through `&standin`
instead of through `standin`.

`op_isVariable` / `op_isImmediateAddr` (`src/pic14/gen.c`) now tell
the two apart: an immediate is an address constant for arrays,
functions and rematerialised `&x` temporaries, but a RAM variable's
immediate is where its value lives. Variables in code space keep the
old meaning, because they are read through their address. Applied in
`op_isLitLike`/`mov2w_op`, `SetIrp`, and the near pointer get and set
paths.

Measured (full run, clean libraries, against `8814bb9e`'s 501): **500**,
`bug-2385` fixed, no other result changed.

---

## gplink corrupts label addresses in pic14 initialized data (2026-10-13) - WORKED AROUND

**Symptom.** An initialized global pointer such as
`const char *string1 = "\x00\x01";` read garbage, but only for some
program layouts: `zeropad`, `strnlen`, `compound-literal` and about 15
gcc-torture programs, some of which timed out.

**Cause: gputils 1.5.2.** In gplink's relocation patching
(`libgputils/gpcofflink.c`, `_patch_addr`), `RELOC_LOW` in a data
section goes through the processor class's `reloc_f`, which on the
14-bit core is the 7-bit *file register* relocation. So
`db low(label)` in an `idata` section loses bit 7 of the address
(`0x06A8` becomes `0x0628`), and only when that bit is set, hence the
layout dependence. gpasm also records data relocations at
byte offset / 2. Plain numeric bytes >= 0x80 are unaffected, and so are
`RELOC_ALL` (`dw label`) and `RELOC_HIGH`.

**Workaround** (`pic14_printLabel`, `src/pic14/glue.c`): a label address
of two or more bytes in RAM data is emitted as `dw label` (plus the
generic-pointer tag byte), never as `db low(label), high(label)`.
`retlw low(label)` in code tables is unaffected.

**Not covered:** a *one-byte* initializer from a label, such as
`unsigned char gc = (unsigned char) &gv;`. gpasm only produces
`RELOC_LOW` for that, and no other expression it accepts gives a
working relocation. `bug-2031` tests exactly this and fails 2 of 12
whenever `gv`'s address has bit 7 set; it passed before only by layout
luck. The proper fix belongs in gplink: `RELOC_LOW` in a data section
should mask with 0xff.

**Also in this change:** `tests/sizeof.c.in` gives pic14 a
`DEFAULT_ADDR_SPACE` of `__data`, as pdk already has. On pic14 `&var`
is a 2-byte `__data` pointer, not a 3-byte generic one. That accounts
for all 36 `sizeof` failures.

**Measured** (full run, clean libraries, against `f065a768`'s 573):
**501** failures, 32 files better, 1 worse (`bug-2031`, above).

---

## pic14 link failures are not counted (2026-10-11) - FIXED

**Fixed (2026-10-11).** The compile and link rules in
`ports/pic14/spec.mk` no longer start with `-`, matching pic16. A
failed compile, assembly or link now stops make, and the harness
reports it as `cannot compile/link` (`Summary: 1/1/1`). Full run at
`d2b9a0f9`: 809 failures, 1 abnormal stop (was 467 and 348). That
equals the honest count below minus the 5 cases the 32x32->64
helpers fixed, case for case. The one remaining abnormal stop,
`bug-2124`, runs and dies without a summary in the baseline too.

**As found:**

`ports/pic14/spec.mk` links with `-$(SDCC) ...`, so make carries on when
the link fails. gpsim then reports `failed to open program file ...cod`,
the result file has no `--- Summary` line, and the harness records an
"abnormal stop" with **zero** failures. 289 results at `b756a8db` and
347 after `long long` are invisible this way. Most are out of RAM or
code space on the 16F877, plus the known `printf`/`setjmp` gaps.
`long long` made it worse, because programs that used to fail to
compile (counted) now fail to link (not counted). Until the harness is
fixed, count every result containing `failed to open program` as one
failure when comparing runs.

---

## pic14 `__reentrant` functions get the wrong parameter values (2026-10-11)

`void f (unsigned char b, unsigned char c) __reentrant` called as
`f (0, 0x55)` sees neither value. `bug-3711` and `bug-3712` pass in
full once `__reentrant` is removed, and the `reentrant` family times
out. pic14 has no data stack, so this needs a design decision, not a
patch.

---

## pic14 passes structs by value wrongly (2026-10-11) - FIXED 2026-10-12

**As found.** `char getu (struct {char a, b;} x) { return x.b; }`
returned the wrong value, for any struct size: the `structparam`
family, `gte/pr30185`, `931004-11`, `950607-2` and more. Struct
*returns* worked.

**Cause, in two layers.**
1. `_pic14_regparm` accepted struct parameters. For a struct "in
   registers" the caller sends only its address, and the callee reads
   its own copy, which nothing ever filled in. mcs51 and hc08 refuse
   structs in `regparm`; pic14 now does too (`pic14/main.c`).
2. That sends structs down the front end's copy-in path, which calls
   `__memcpy` (`geniCodeParms`, `SDCCicode.c`). It cast only the
   destination to the prototype's type. The source went as a 2-byte
   data pointer to pic14's 3-byte-generic-pointer `__memcpy`, and the
   length as 1 byte. The source and length are now cast too, when
   `__memcpy` is a real function. Where it is `__builtin__` (i8085,
   z80 ...) codegen ignores argument types and nothing changes.

Structs as **variable arguments** had the same shape of problem:
`geniCodeStaticVaArg` assigned the struct, which stores its address.
They are now copied into the area with `__memcpy`. This is safe because
a pic14 variadic function's fixed parameters are never in registers,
so the inner call cannot disturb them.

**Measured** (full runs, clean libraries, against `99a3e1fe`'s 652):
parameters 652 -> 610 (33 files better, 0 worse); variable arguments
610 -> **573** (7 better, 0 worse: `strct-varg-1`, `strct-stdarg-1`,
`920625-1`, `bug-2776`, `bug-3368`, `bug-3013`, `pr44575`). Abnormal
stops 2 -> 1 (`bug-2124`, pre-existing).

---

## PIC off gputils (2026-10-08)

**What is known.**  `aspic` is a genuine Microchip PIC assembler -
`picmch.c` identifies itself as *"Microchip Technology Inc."*, it covers
five cores (`.pic12bit`, `.pic14bit`, `.pic16bit` for PIC17,
`.pic20bit` for PIC18, and now `.pic14ebit`), and it ships 140 device
`.def` files plus `ptoa`, a converter for Microchip's own `.inc`.  It
assembles and links a PIC16F877 program end to end with `aslink`.

**The gap is not the instruction set.**  `BANKSEL`/`PAGESEL` have no
`aspic` equivalent, and SDCC's pic14 output leans on them heavily;
`aspic` offers `.setdmm` plus hand-written `MOVLB`/`MOVLP`, and
`CALL`/`GOTO` stay 11-bit with no automatic page handling.  SDCC also
emits **MPASM dialect** (`list p=`, `include`, `extern`, `global`,
`CODE`, `END`), depends on gputils' 681 `.inc` headers and its 677
`.lkr` linker scripts, of which SDCC ships none, and produces COFF for
`gplink` rather than `.rel` for `aslink`.

**It is three dependencies, not one**: `gpasm`, `gplink` and `gpsim`.
`sim/ucsim/src/sims/` has twenty targets and no PIC, so the test path
needs gpsim whatever happens to the build path.

**Why parked.**  `pic14-baseline.md`: 2074 failures of which 1703 never
reach the simulator.  Replacing the assembler leaves all of that
untouched.  The back end comes first.

---

## `aspic`: map the enhanced parts in `piccpu.def` (2026-10-08)

`piccpu.def` is 224 hand-written `.ifdef __PART / .picNNbit` entries and
maps **no** device to `.pic14ebit`, so an enhanced part has to select the
core by hand.  Roughly 94 devices to add.  Mechanical, and deliberately
left out of the enhanced-core branch to keep it self-contained.

---

## `asxxsrc/aslex.c`: `strcpy` with overlapping arguments (2026-10-08) - FIXED 2026-10-16

Fixed in ASxxxx `b711951`.  The copy was of `afn` onto itself, and the
same line set the included file's path length without its path, so a
file included from another directory could not `.include` or `.incbin`
anything beside itself - a real bug the undefined behaviour sat next
to.  New astest cases `incpath`, `itst`, `incsym` (52 of 52); all 54
assemblers byte-identical over their 171 sources.  See ASxxxx
`VENDOR.md`.  The original entry:

ASan reports `strcpy-param-overlap` in `strcpy (afn, asmc->afn)` at
`asxxsrc/aslex.c:901`, where source and destination are the same pointer
at the outermost `.include` level.  Six of `aspic`'s sample sources trip
it; **a `master`-built assembler does the same**, so it is not from any
recent change.  Undefined behaviour that happens to work.  `asxxsrc/` is
shared by 56 assemblers, so it needs the usual byte-identical sweep.

---

## `e027ae17` broke `tst_bug3475630` on mcs51-medium (2026-10-07) - FIXED 2026-10-16

Fixed by keeping `e027ae17`'s deferred pointer + 0 fold for pointers and
arrays to `_Optional`, which is all its diagnostic needs; any other
pointer + 0 folds where it is generated, as before it (`optionalTarget()`
in `SDCCcse.c`).  0 failures on mcs51-medium.  See
`mcs51-asxxxx-status.md` §12.  The original entry:

35 of 40 assertions fail, and the module's code shrinks 15 bytes at that
commit.  Bisected: `d26bf369` immediately before it passes 40/40.  Not
`FIT` - relinking the same objects with `OSEG`/`ISEG` where they sit
without the attribute fails identically.  Not general - `ucz80`
compiles and passes the same test with the same compiler.  So it is an
mcs51 interaction with *"SDCCcse/SDCCicode/SDCCopt: fix wrong diagnostic
for pointer + 0 (#4003)"*.  Left for whoever wrote it, who has context
this session does not.

---

## mcs51: 53 programs still place direct data above 0x7F (2026-10-08) - FIXED 2026-10-16

None do now.  ASxxxx `5a5d88c` splits a `FIT` area no gap holds whole
across the gaps section by section, and what still ends past 0x7F is
refused at link time with error 387 rather than run.  17 programs on
mcs51-small and 5 on mcs51-small-stack-auto are refused: closing them
needs fewer bytes of direct data from the compiler.
`mode-dependent-address` on mcs51-large-stack-auto is unchanged (its
stack is what runs out).  See `mcs51-asxxxx-status.md` §12.  The
original entry:

Down from 66 after ASxxxx's `FIT`.  The rest cannot be reached that way:
the overflowing area is `DSEG` itself at about a hundred bytes, and it
will never fit the 24-byte gap at 0x08-0x1F.  Closing them needs the gap
used at **areax** granularity - `DSEG` split across it, which is what
sdld's bitmap allocator does and what `FIT` deliberately does not.  See
`mcs51-asxxxx-status.md` §8 and §11.

Also open there: `gcc-torture-execute-mode-dependent-address` on
mcs51-large-stack-auto needs the stack below 0x20, which it cannot have
while `BIT_BANK` is pinned there.

---

## The >64K question (2026-10-06) - PARKED 2026-10-16

Neil's call (2026-10-16): park the Rabbit `__far`/`ldf` work - the
Rabbit processors are end of life.  r4k/r5k/r6k stay at 145/145/163
failures (all `ldf`), r2k/r2ka/r3ka at 2 abnormal stops each.  The
original entry:

`ldf` on r4k/r5k/r6k and the two `__far` abnormal stops on the r2k
family.  `.24bit` is commented out, `outr3b` writes `a_bytes` rather
than the requested width, and a base beyond the address space is now
correctly an error.  See `asxxxx-vs-sdas-divergences.md`.

---

## Act 3: upstreaming to Baldwin

Deliberately on hold.  `VENDOR.md` is current and grouped by what each
change would be upstream - 51 entries, with four that need squashing or
splitting first.  The reasoning for waiting: it costs political capital,
and the case is stronger with a fully working system than with one whose
remaining faults are merely well documented.
