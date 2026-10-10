# Future work

Things that were found, measured and deliberately not done.  Each entry
says what is known, what it would cost and why it was parked, so that
picking one up does not start with rediscovery.  Dated so that a claim
can be re-checked against the tree it was made about.

Ordered by size, not priority.

---

## `long long` on pic14 (2026-10-08)

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

**What is still open:** this makes the crash go away; it does not make
returning a wide struct or `long long` by value work on pic14. That
remains the question above - whether to widen the return path at all,
parked for the same reason.

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

**The two FATAL errors this doesn't touch**, pic14's remaining
internal-compiler-error count after both fixes above: `gen.c:7031`,
`genPointerSet: illegal pointer type` (`gte/bug-3023.c`), and
`SDCCsymt.c:1083`, `code generator internal error`
(`gte/bug-3855.c`). Different causes, not investigated.

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

## `asxxsrc/aslex.c`: `strcpy` with overlapping arguments (2026-10-08)

ASan reports `strcpy-param-overlap` in `strcpy (afn, asmc->afn)` at
`asxxsrc/aslex.c:901`, where source and destination are the same pointer
at the outermost `.include` level.  Six of `aspic`'s sample sources trip
it; **a `master`-built assembler does the same**, so it is not from any
recent change.  Undefined behaviour that happens to work.  `asxxsrc/` is
shared by 56 assemblers, so it needs the usual byte-identical sweep.

---

## `e027ae17` broke `tst_bug3475630` on mcs51-medium (2026-10-07)

35 of 40 assertions fail, and the module's code shrinks 15 bytes at that
commit.  Bisected: `d26bf369` immediately before it passes 40/40.  Not
`FIT` - relinking the same objects with `OSEG`/`ISEG` where they sit
without the attribute fails identically.  Not general - `ucz80`
compiles and passes the same test with the same compiler.  So it is an
mcs51 interaction with *"SDCCcse/SDCCicode/SDCCopt: fix wrong diagnostic
for pointer + 0 (#4003)"*.  Left for whoever wrote it, who has context
this session does not.

---

## mcs51: 53 programs still place direct data above 0x7F (2026-10-08)

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

## The >64K question (2026-10-06)

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
