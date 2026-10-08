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
size table declared 8 bytes for it with no runtime to match: the pic14
and pic16 libraries contain **zero** `long long` helper objects, against
16 for mcs51-small, 15 for hc08 and 11 for z80.

Three symptoms, one cause: the `allocated more than 4 or 0 registers`
warning at `ralloc.c:2480`, the `assert (rsize > 0 && rsize <= 4)` at
`gen.c:1924` (8 of the 69 internal errors in the first baseline), and
heap corruption - `malloc(): corrupted top size`, SIGABRT - from writing
eight pointers into the four-pointer array.  Valgrind named it exactly:
20 invalid writes in one compilation of `gte/pr57860.c`, *"0 bytes after
a block of size 40"*, at `pic14AopOp (gen.c:712)`.

**What was done instead.**  The overrun is guarded and the port now
declines `long long` honestly - `error 369: 'long long' is not supported
by this target` - rather than corrupting memory.  Note the front end was
*already* refusing it, with `!TARGET_IS_PIC14` hardcoded in `mergeSpec`
and reported as `E_SHORTLONG`, "Invalid combination of short / long";
that refusal did not stop code generation, which is how a `long long`
still reached the register allocator.

**What it would take.**  Widen `aop_reg` and every `offset < 4`
assumption in `src/pic14/gen.c` (7993 lines), then build the `long long`
runtime for PIC.  pic16 shows it is possible - `PIC16_MAX_ASMOP_REGS` is
8 there, and pic16 compiles *and links* a `long long` divide today.

**Why parked.**  Nobody has asked for `long long` on a 16F877, and the
1703 compile failures in `pic14-baseline.md` are mostly other things.
Measure which of them are downstream of this before starting.

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
