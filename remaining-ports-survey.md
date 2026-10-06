# The remaining SDCC ports, surveyed against vendor ASxxxx

**Updated 2026-10-05, after acting on the survey.**  Four small ASxxxx
changes took r2k, r2ka, r3ka and ez80 from "diagnosed" to assembler-clean,
and ez80 all the way to a finished migration.  The table in **Results** is
the measurement that led to them; **Where each port now stands** at the end
is the current state.

Measured 2026-10-05.  Ten ports are left, and all ten live in
`src/z80/main.c` alongside z80/z180/z80n, which are already migrated.
**ez80 and r800 were not migrated** — earlier notes folded them into "the
z80 family is done"; they still name `sdasz80`.

## Method

For each port, the 208-odd shared sources in `device/lib/*.c` were compiled
to `.asm` with the current compiler (so, sdas spelling throughout) and then
assembled with the vendor ASxxxx assembler for that port.  Errors were
classified by the offending source line with numbers folded to `N`.

This measures two of the three axes a port has to be costed on — **area
attributes** and **instruction syntax**.  It says nothing about the third,
**placement**, which only shows up at link time and which is where hc08 and
mos6502 each produced days of work after a clean assembler sweep.  Treat a
low number here as "worth starting", never as "nearly done".

Three sources were excluded as artifacts of the method: `_decdptr.c`,
`_gptrget*.c` and `_setjmp.c` reach an 8051 arm when compiled for these
ports, and the real build never compiles them here — they are
`SOURCES_SDCC`, which only the mcs51-family `objects` target uses.

`.optsdcc` and the CPU-select directive are excluded from the counts below.
Both fail on every port and both are already-solved problems: `.optsdcc`
becomes `.abi`, and the directive is part of the PORT-struct switch.

## Results

| port | objects affected | error lines | what it is | size |
|---|---|---|---|---|
| **sm83** | **0 / 210** | **0** | **migrated**, 2026-10-06. **2 failures** - `tst_bug-3803` and `tst_p99-conformance`, the same two `ucz80` fails. The cleanest port in the family. |
| **r800** | 12 / 207 | 35 | `multuw hl,bc`, `multu a,c` | small ASxxxx addition |
| **tlcs90** | 20 / 208 | 83 | **migrated**, 2026-10-06. 3 failures, the z80-family baseline. The survey undercounted this one badly - see below. |
| **ez80** | 98 / 208 | 260 | `lea rr,ix,#d` spelling, nothing else | SDCC-side only |
| **r2k, r2ka** | 127 / 208 | 221 | `add sp,#-n` (190), `jp lo/lz` | one ASxxxx fix + condition codes |
| **r3ka** | 127 / 208 | 203 | same | same |
| **r4k, r5k, r6k** | 205 / 208 | ~680 | the Rabbit 4000 instruction set - **30 shapes, scoped below** | still parked, but now measured |

## What is actually common

Two findings generalise, and they point in opposite directions.

**1. The three-operand displacement form.**  ez80's `lea hl,ix,#-6` and
tlcs90's `lda hl,ix,#-6` are the same problem wearing two names, and each
vendor assembler already assembles its own spelling correctly:

| SDCC emits | ASxxxx wants | assembles to |
|---|---|---|
| `lea hl,ix,#-6` | `lea hl,ix-6` | `ED 22 FA` |
| `lda hl,ix,#-6` | `lda hl,-6 (ix)` | `F4 FA 3A` |

Nothing is missing from either assembler — this is 358 error lines across
two ports from a printf format string.  It is SDCC-side work in
`src/z80/gen.c`, the file `feat/i8085` churns most, which is the only
reason to be careful about it.

**2. The Rabbit's `add sp,n` is a signed displacement and the vendor checks
it as unsigned.**  190 sites per Rabbit port, every one of them a stack
frame being allocated:

```
add sp,#-6   ->  27 FA   both assemblers, identical bytes
                 vendor also says: <v> Unsigned Number Exceeded Range
```

`asrab/rabmch.c` emits `outrb(&e2, R_USGN)`; sdas emits `outrb(&e2, 0)`
with the comment `n=signed displacement`.  Both signs are meaningful for a
byte added to SP — negative to allocate a frame, large-positive to free a
big one — so there is no range to check.  **One line, six ports.**

## The three that are not cheap

**tlcs90 — the silent one.**  The syntax above is the easy half.  The real
blocker, confirmed again today, is that vendor `astlcs90` has no
register-indirect jump, and rather than rejecting `jp (hl)` it parses
`(hl)` as a parenthesised expression naming an undefined symbol `hl`:

```
vendor:  0000 1Ar00s00   jp (hl)     <- jp nn, relocatable, no diagnostic
         0000 1Ar00s00   jp hl       <- also accepted
sdas:    0000 EA C8      jp (hl)     <- the real instruction
         a               jp hl       <- correctly refused
```

Wrong code, no error, and only the regression suite finds it — which is how
84 of 202 library objects were wrong when this was attempted in September.
The missing encoding is `EA C8`.  Fixing the acceptance matters more than
fixing the instruction.

**r4k, r5k, r6k — a whole CPU generation.**  Vendor `asrab` is a Rabbit
2000/3000 assembler: its directives are `.r2k`, `.r3k`, `.z80`, `.z180`,
and `.r3k` is just an alias for `X_R2K`.  SDCC's fork added `.r3ka`,
`.r4k`, `.r4k00/01/10/11` and `.r6k00/01/10/11` and the instructions that
go with them — `cp hl,de`, the 32-bit `bcde`/`jkhl` quads (`push bcde`,
`ld bcde,n (sp)`), `clr hl`, the `lo`/`lz` condition codes.  That is an
assembler extension on the scale of a new target, not a patch.  **Park
these three** until r2k/r2ka/r3ka are done and the payoff is clear.

**sm83 — the assembler is not the problem.**  Zero assembler errors, which
is the best starting position of any port so far.  The blocker is entirely
on the linker side: `sdldgb` builds the Game Boy ROM header (the logo,
the title field, the cartridge-type bytes and the two checksums) and
aslink has no equivalent.  The earlier cross-link audit saw this as
"ucgbz80's PCR errors in the ROM header areas".  This needs a decision
before code: a `-gb` mode in aslink is a target-specific lump in a
target-agnostic linker, which is exactly the argument that kept the 8051's
memory map out of aslink and in the link script.

## Suggested order

1. **`add sp` signed displacement** in `asrab` — one line, unblocks the
   three Rabbit ports that are otherwise in reach.
2. **ez80** — spelling only, and the whole port should fall out.
3. **r800** — `multuw`/`multu` in `asz80`, about the size of the
   `.allow_undocumented` work.
4. **r2k, r2ka, r3ka** — after (1), what is left is the `lo`/`lz`
   condition codes.
5. **tlcs90** — the `jp (hl)` acceptance bug first, as an ASxxxx fix in its
   own right, then the `lda` spelling.
6. **sm83** — needs the ROM-header design decision first.
7. **r4k, r5k, r6k** — parked.

## Where each port now stands

| port | assembler errors | state |
|---|---|---|
| **ez80** | **0 / 208** | **migrated.** `ucez80` 3 failures, which is exactly what `ucz180` fails on this tree - `tst_bug-3803`, `tst_p99-conformance` and `malloc.c`. `ucz80` fails the first two. At baseline. |
| **r2k, r2ka, r3ka** | **0 / 208** | **migrated**, 2026-10-06. 2 failures each, which is the z80-family baseline - but **2 new abnormal stops each**, from `__far`. See below. |
| **r800** | **0 / 207** | **migrated**, 2026-10-06. 3 failures - `tst_bug-3803`, `tst_p99-conformance`, `malloc.c` - which is exactly what `ucz180` and `ez80` fail. No abnormal stops. At baseline. |
| **sm83** | 0 / 210 | unchanged - it was always clean. Still blocked on the ROM header. |
| **tlcs90** | 83 | unchanged. Needs the `jp (hl)` fix first. |
| **r4k, r5k, r6k** | ~480 each | parked. Was ~680; `add sp` and the conditions helped, the Rabbit 4000 instruction set did not go away. |

### What landed in ASxxxx

| commit | change | effect |
|---|---|---|
| `bugfix/asrab-add-sp-signed` | `add sp,n` is a signed displacement, so stop range checking it as unsigned | r2k 221 error lines -> 31, r3ka 203 -> 13 |
| `feat/asrab-lz-lo-conditions` | `LZ` and `LO` alongside `NV` and `V` | r2k 31 -> **0**, r3ka 13 -> **0** |
| `feat/asez80-lea-third-operand` | `lea` takes its displacement as a second *or* third operand | ez80 260 -> **0** |
| `feat/asz80-r800` | `.r800`, `multu`, `multuw`, and the IX/IY half registers with them | r800's 35 lines, not yet re-measured |

### The one judgement call worth recording

ez80's `lea hl,ix,#-6` and tlcs90's `lda hl,ix,#-6` could have been fixed on
either side.  I wrote the SDCC-side version first - a helper in
`src/z80/gen.c` emitting the vendor spelling under `port->assembler.asxxxx`,
nine call sites, plus a NULL guard in `src/z80/peep.c` - and then threw it
away, because `src/z80/peeph-ez80.def` contains text rules that both *match*
and *emit* the three-operand form.  A second spelling in the code generator
has to be carried through the whole peephole layer, forever, for every port
that has one of these instructions.

Six lines in the assembler instead.  Same decision as `tst a,n` (`d02ee7a`):
when the two spellings are the same instruction and the same bytes, the
assembler is the cheaper place to accept both.  **Expect this to come up
again on tlcs90**, which is the same instruction wearing a different name.

## The Rabbit ports, finished 2026-10-06

All three run **2 failures** - `tst_bug-3803` and `tst_p99-conformance`, the
same two `ucz80` fails on this tree - and **2 abnormal stops**, which are
new and are this migration's.

Three more ASxxxx changes were needed beyond the two the survey predicted:

| change | why |
|---|---|
| the **Rabbit 3000A** (`.r3ka`, 13 instructions, `push/pop su`) | SDCC emits `lsidr` in place of `ldir` on r3ka and later - a Rabbit 2000 `ldir` has a wait-state bug across memory types |
| `rabadr.c` and the cycle table, missed by the above | 19 `ld n (sp), hl` refused under `.r3ka` that assembled fine under `.r2k` |
| `ipset0`..`ipset3` beside `ipset n` | three suite cases; `peep.c` matches those four by instruction name in six places |

The library side was the same four things ez80 needed: `LIB_TYPE =
ASXVENDOR`, `SAS = bin/asrab`, `crt0.s` naming area starts `a_` and carrying
the bank attributes, and one stray `.optsdcc`.

### What the sweep missed, and why

The survey said r2k and r3ka were assembler-clean at 0 error lines.  Both
statements were true and both were incomplete:

- **`lsidr` is never emitted by the 208 library sources**, because none of
  them copies a block.  It is emitted by the regression suite constantly.
- **`ipset0` likewise** - it appears in three suite cases and nowhere in the
  library.

An assembler sweep over the library is a floor, not a ceiling.  It finds
what the library happens to contain, which is arithmetic and string code,
and misses whatever the code generator emits only for constructs the
library does not use.

### The open item: `__far` cannot be placed

Both abnormal stops are the same cause, and it is structural rather than an
oversight.

The Rabbit reaches extended memory through an MMU, and SDCC models it as a
flat address above 64K: the link script says `-a _XDATA = 0x84000`.  The
link is 16-bit, so that base **silently truncates to 0x4000**, and `_XDATA`
- 40005 bytes of it in `tst_far_rabbit_fields` - is laid over `_DATA` at
0xA000.  The program links, exit 0, and then runs until uCsim's cycle limit.
Between them the two tests burn 2.4 billion ticks: ucr2k went from 897M on
the sdas baseline to 3,363M.

Two things were tried and neither works:

1. **`(BANK=_XSEG)` on `_XCONST` and `_XDATA` in `crt0.s`** has no effect,
   because aslink takes an area's attributes from wherever it is *first*
   declared across the whole link, and the test framework is linked first.
   Doing it properly means the `BANK=` going into the port's area strings in
   `src/z80/main.c`, the way mcs51 does it.
2. **Widening the link with `.24bit`** is not available: the directive is
   **commented out** in both `asrab/rabpst.c` and `asz80/z80pst.c`.  Baldwin
   disabled address-width changes for these targets deliberately - they are
   16-bit machines, and the Rabbit's 20-bit physical space is an MMU
   artefact rather than an address width.

So placing `__far` on the Rabbit needs a decision about how a >64K physical
space is expressed to a 16-bit linker at all, and that is a design question,
not a patch.

**The base range check is done** (`asxxxx` `7de9475`).  `-a AREA = <value>`
and `-b BANK = <value>` beyond the address space no longer truncate in
silence - the same family as the three sign-extension bugs already fixed
(`79c25e7` and the two before it).  The check has to be made on the digits
as they are scanned rather than on the value `expr()` returns, because
`expr()` sign-extends and a legitimate base in the top half of memory
(`0xFF80` on a 16-bit target) comes back as `0xFFFFFF80`; `nmbr()` records
the loss in `expr_ovf` and `setarea()`/`setbank()` ask afterwards.

**What it immediately found is worth recording.**  The first run with it in
place failed **every single r2k test, 4785 of them** - because
`-a _XDATA = 0x84000` is in every Rabbit link script, not only the ones that
use `__far`.  It had always been impossible; it was simply harmless whenever
`_XDATA` was empty, which is almost always.  SDCC no longer asks for a base
it cannot honour (`fix/rabbit-xdata-base`): for an ASxxxx Rabbit the
`_XDATA` base is skipped when it does not fit, with the reasoning in the
comment.

`__far` is **still** broken on the Rabbit and is unchanged by any of this -
40005 bytes of `_XDATA` have nowhere to go in a 64K space,
which is precisely why extended memory exists.  The two abnormal stops
remain.  What has changed is that the impossible base is now impossible to
reintroduce silently.

## r800, finished 2026-10-06

The last of the z80 family.  3 failures, no abnormal stops, no undefined
globals: `tst_bug-3803`, `tst_p99-conformance` and `malloc.c`, which is the
identical set `ucz180` and `ez80` produce on this tree.  `ucz180` is
migrated and has not been touched, so that is the baseline and r800 is at
it.

Nothing new was needed.  The assembler work had already landed with the
Rabbit batch (`.r800`, `multu`, `multuw`, and the IX/IY half registers that
come with the machine type), and a re-sweep with it in place put r800 at
**0 substantive error lines** across the 207 shared library sources - only
`.optsdcc`, which the PORT flag turns into `.abi`.

The library side was the same four things every port in this batch has
needed: `LIB_TYPE = ASXVENDOR`, `SAS = bin/asz80`, `crt0.s` naming area
starts `a_` and carrying the bank attributes, and one stray `.optsdcc`.
The explanatory comment about why the banks are needed was copied across
from `z80/crt0.s` rather than left to be rediscovered.

**The z80 family is now genuinely complete** - z80, z180, z80n, ez80 and
r800 - which is the claim an earlier note made prematurely while ez80 and
r800 were still naming `sdasz80`.

## tlcs90, finished 2026-10-06

**3 failures** - `tst_bug-3803`, `tst_p99-conformance` and `malloc.c`, the
same three `ucz180`, `ez80` and `r800` produce - with no abnormal stops and
no undefined globals.  Bytes and ticks are within half a percent of the sdas
baseline.  In September this port was reverted at **4759 failures out of
4759**.

Four ASxxxx changes, two of them spellings the survey never saw:

| change | sites | how it was found |
|---|---|---|
| `jp`/`call` take a register operand written either way | - | the September revert |
| `lda` takes its displacement as one operand or as two | 83 | the library sweep |
| `rrd`/`rld` with no operand | 3663 | **the suite** |
| `a(hl)` for `(hl+a)` | 27 | **the suite** |

### `jp (hl)` was the one that mattered

`S_JP` handled a register operand only after a condition, and for the
unconditional form went straight to `expr()`.  `(hl)` is a perfectly good
parenthesised expression naming a symbol `hl`, so `jp (hl)` assembled with
**no diagnostic at all** as `1A` plus a relocatable word - an absolute jump
to an undefined global - and then linked, because an undefined global is a
warning.  That is why 84 of 202 library objects were wrong in September with
nothing to show for it.

### The survey was wrong about this port, three times over

It reported 83 error lines, all `lda`.  The real figure was 83 plus 3690
more that the library cannot contain: `rrd`/`rld` (3663) and `a(hl)` (27)
appear nowhere in `device/lib/*.c` and everywhere in the suite.  That is the
third, fourth and fifth instance in this batch of the same thing - after
`lsidr` and `ipset` on the Rabbit.

**A library sweep is a floor.**  It finds what the library happens to
contain.  Run the suite before believing a port is nearly done.

### Two smaller things

- `.t90` is an SDAS directive.  Vendor `astlcs90` assembles the TLCS-90 and
  nothing else, so there is no CPU to select and no directive; it is dropped
  from the two hand-written `crt0` files.
- `-I<dir>` in the library makefile is an SDAS extension meaning "add an
  include search path".  ASxxxx's `-I` means "list include files", so `-I./`
  parsed as three options and then found no input file.  ASxxxx resolves
  `.include` relative to the including file, which is what `t90regs.s`
  needs, so the flag is simply dropped.

### One mistake worth recording

The first draft of the `lda` change accepted the comma and then encoded
whatever register followed.  The register index is masked to two bits on the
way out, so `lda hl,bc,#4` assembled quietly as `lda hl,0 (ix)` - the same
silent wrong answer this port was being fixed for, reintroduced in the fix.
The negative case in `astest/cases/t90lda` is there because of it.

## sm83, finished 2026-10-06

**2 failures**: `tst_bug-3803` and `tst_p99-conformance`, the same two
`ucz80` fails.  No abnormal stops, no undefined globals.  `malloc.c` passes
here, where `ucz180`, `ez80`, `r800` and `tlcs90` all fail it, so sm83 is the
cleanest port in the z80 family.

### The survey's verdict on this port was wrong

It said sm83 was blocked "entirely on the linker side", because `sdldgb`
"builds the Game Boy ROM header".  **It does not.**  The ROM header - the
logo, the title, the cartridge bytes and the checksums - is built by
`support/makebin/makebin.c`, a separate post-processing tool that is not part
of the linker at all.

What `sdldgb` actually does that aslink does not is **ROM/RAM banking**:
`lkarea.c` gives an area named `_CODE_<n>` a default base of
`(n << 16) + 0x4000` and `_DATA_<n>` one of `(n << 16) + 0xA000`, and
`lkout.c` translates those virtual bank addresses into ROM file offsets on
the way out.  Everything else under `TARGET_IS_GB` is sdld saying "behave
like an ordinary linker", which aslink already does.

**The regression exercises none of it** - no `_CODE_<n>` anywhere in the
crt0 or the suite - which is why the port migrated without any linker work.

### The banking gap is real, and is not measured here

SDCC supports banked Game Boy ROMs through `--codeseg` and banked functions.
Under `sdldgb` a `_CODE_3` area is based automatically; under aslink it is
not, and the banks would be laid out consecutively from zero instead.  **A
banked ROM built this way would be wrong, and nothing would say so.**

That is not something the suite can catch, so it is stated here rather than
measured.  The ASxxxx-shaped answer is not to teach aslink what a Game Boy
cartridge is - that is the same target-specific lump the project refused for
the 8051's memory map - but for SDCC to write the bank bases into the link
script, which it already does for mcs51's areas.  The newly added base range
check helps: `(n << 16) + 0x4000` does not fit a 16-bit address space, so if
SDCC ever does emit those bases, aslink will say so rather than truncate.

### `ldh`: two bugs, both fixed

**The absolute form** (`asxxxx` `ce6624f`) was a one-character typo:
`ldh a,(0xFF42)` tested `v1` where it meant `v2`, and `v1` is the A register
in that branch, so a full I/O address was always "not in range" - while the
store form, with the same two tests against a `v1` that really is the
address, always worked.  Four of the six failures were that.

**The relocatable form** (`asxxxx` `8b83c64`) could not link at all.  `asgb`
added `0xFF00` to the operand and emitted `R_PAGN`; `R4_PAGN` checks
`(relv & ~p_mask) == sdp.s_addr`, `sdp.s_addr` comes from a `P` record, a `P`
record comes from `.setdp` - and **`asgb` has no `.setdp`**.  So `sdp.s_addr`
was always zero and the check could not pass for any ordinary symbol.

Nothing had noticed because nothing reached it.  `tgb.asm` exercises the
form, but its `n8` is an absolute equate, so the value resolves at assembly
time and no relocation is emitted.  The four `ld a,(nn)` sites above it carry
the same `R_PAGN` against a raw address and are equally unreachable.

All seven sites are now a plain low-byte relocation, which is what SDAS emits
and what the instruction actually wants: LDH takes an eight-bit offset from
`0xFF00`, and both spellings of it - the offset `0x42` and the full address
`0xFF42` - have the same low byte.  There is nothing to disambiguate.

**What is given up**, stated plainly: a symbol resolving outside both pages
is no longer diagnosed.  ASxxxx has no relocation mode for "page 0 or page
0xFF", and either mode it does have would reject one of the two spellings the
assembler already accepts when the value is absolute - where the check is
kept, because there the value can be seen.  Nothing that used to be caught
stops being caught, because nothing could link this far.

SDCC reaches the relocatable form through a `__sfr` with no `__at`, which
gets a full HRAM address.

## r4k, r5k, r6k: scoped 2026-10-06, still parked

Measured properly rather than estimated.  The earlier note called it "an
assembler extension on the scale of a new target", which overstates the
instruction count and understates the structural change.

### What SDCC actually emits

**30 distinct shapes**, not a CPU's worth:

```
clr hl              ld bcde,#N          neg bcde      push bcde
cp hl,de            ld bcde,N (sp)      neg hl        push #N
cp hl,#N            ld bcde,(sym)       neg jkhl      pop bcde
cp hl,N (sp)        ld jkhl,N (sp)      test bc       rl bc
jp lt,label         ld N (sp),bcde      test bcde     rr bc
mulu                ld N (sp),jkhl      test hl       sub hl,de
                    ld (sym),bcde                     sub hl,N (sp)
r5k/r6k only:  adc hl,N (sp)   add hl,N (sp)   add iy,#N   or hl,N (sp)
```

`jp lt` is among them: `lt` is a Rabbit 4000 condition, and vendor `asrab`'s
`CND[]` carries only the Z80 set plus `NV`/`V` and the `LZ`/`LO` added
earlier today.

### The structural change is the real cost

`asrab` selects its target with a single flat `mchtyp` compared for equality.
Today's 3000A work replaced those comparisons with `IS_RABBIT()` and
`IS_MIN_R3KA()`, which is the first half of what is needed — but the Rabbit
4000 adds a **second dimension**.  sdas models it as `rab.cpu` × `rab.mode`:

| | |
|---|---|
| cpu | `R_2K`, `R_3KA`, `R_4K`, `R_6K` |
| mode | `R_NOMODE`, `R_MODE00`, `R_MODE01`, `R_MODE10`, `R_MODE11` |

and gates encodings on `IS_MIN_4K`, `IS_MIN_6K`, `IS_MIN_MODE_01`,
`IS_MODE_10_OR_11` and `IS_MODE_10` — 31 sites in `rabmch.c`.  The mode is
not cosmetic: `IS_MODE_10` emits a `0x7F` escape prefix before several
encodings.  Ten directives go with it (`.r4k00/01/10/11`, `.r6k00/01/10/11`,
`.r4k`, and `.r5k` via `.r4k10`); SDCC emits `.r4k10` for r4k and r5k and
`.r6k10` for r6k.

**The machine model has to be reworked from one dimension to two before a
single instruction can be added**, and every `IS_RABBIT()` site from today
has to be revisited against it.

### How to do it safely when it is picked up

sdas is a complete oracle.  Assemble a file containing every shape with
`sdasrab` under the right directive, and diff the vendor's bytes against it;
the reference encodings for the r4k set are already captured.  Six of the
thirty are rejected by sdas under `.r4k` and need `.r4k10` or `.r6k10`, which
is itself a useful check that the mode model is right.

**Do not skip the negative cases.**  New operand classes are where silent
wrong encodings live, and the `bcde`/`jkhl` quads are a new class. The `lda`
fix earlier today accepted a comma and then encoded whatever register
followed, so `lda hl,bc,#4` assembled quietly as `lda hl,0 (ix)` - the same
silent wrong answer that port was being fixed for, reintroduced in the fix,
and caught only because a negative case was written alongside the gold.

### Why it stays parked

Three ports, against a machine-model rework plus thirty encodings in a new
operand class.  Every other port in this batch was a day's work or less and
landed at baseline; this one is not that shape.  It is the last thing on the
list that is *possible* - stm8 and the pdk family have no ASxxxx target at
all - so it is worth doing, but worth doing deliberately rather than at the
end of a long session.
