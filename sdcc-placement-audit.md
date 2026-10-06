# Placement audit: what ASlink would refuse in SDCC's regression output

**Status:** passes 1 and 2 complete, 2026-10-01.  Two findings survive, one
of them the control.  Read §4 and §5 before quoting any of it.

## 1. Why

Migrating four ports to vendor ASxxxx has produced the same bug three times,
on three unrelated architectures:

| Port | What ASlink refused | What sdld did instead |
|---|---|---|
| hc08 | spill locations past `0x00FF` | truncated to the low byte - 21 sites in `tst_rabbit` alone |
| mos6502 | a 344-byte spill set in a 256-byte zero page | `lda *0x52` for an operand at `0x0152` |
| hc08 | `CSEG` of 38,643 bytes in 32,768 | wrapped the tail onto the data area; the test passed |

That is not three port bugs.  It is one compiler bug - **nothing in SDCC bounds
an allocation against the address space it is allocating into** - wearing three
costumes, and sdld hid every one of them, because sdld's job as SDCC understood
it was to place what it was given.

If the pattern is real it should appear on ports nobody has migrated.  This
audit tests that without migrating anything.

## 2. Method

`.map` files are linker output, so every ordinary sdld link in this tree has
already left the evidence on disk: 160,000 maps across 36 regression ports,
including the three ports ASxxxx can never assemble (stm8, pdk, f8).  The
scanner (`tools/audit-placement.py`) applies the two invariants ASlink checks
and sdld does not, neither of which needs any knowledge of a port's memory map:

- **PAG** - an area the port itself attributed `PAG` must start on a 256-byte
  boundary and be at most 256 bytes.  ASxxxx checks both halves for every
  target; sdld applies the length half generally and the boundary half only
  for the 8051, where it asks the different question of whether the area
  *crosses* a page.
- **SPACE** - an area must not run off the end of the address space.  ASlink
  has checked this since `79c25e7`; sdld wraps in silence.

The address space is the only port knowledge involved, and asserting it wrongly
invents findings, so it is inferred instead: if an "overrun" appears in more
than 5% of a port's programs the assumed 16-bit width is wrong - the port is
banked or wider - and the check is reported as not applicable rather than as
thousands of defects.  That correctly stands down on the Rabbit ports.

## 3. Findings

Pass 1 ran against the maps that were on disk.  They turned out to be
untrustworthy - §4 - so everything below is from the re-run against a corpus
built from nothing: every sdas tool, every device library, and all 41 ports
run from clean on 2026-10-01.

Each finding is reported with the regression outcome of the programs it
appears in.  That is context, not a filter, and deliberately so: hc08's
serpent wrap *passed* for years under sdld because the wrapped tail was never
reached.  A finding whose programs all pass is usually the check being wrong
about the port.  Neither is conclusive alone.

| # | Port(s) | Area | Scope | Observation | Verdict |
|---|---|---|---|---|---|
| 1 | hc08, s08 | `CSEG` | 2/4750, **both also FAIL** | `addr=0x8021 size=0x9768`, ends at `0x11789`, and the `.ihx` carries no extended address record - the tail was wrapped back over the data area | **confirmed.**  The known serpent overflow.  This is the control: the check finds what it is meant to find, and the correlation agrees. |
| 2 | mcs51 (all 6 models), ds390 | `PSEG` | 4 programs each, and 4752/4752 on mcs51-medium | `PSEG` based at `0x0001` carrying `PAG` | **migration blocker, not a defect.**  pdata starts at 1 so it stays distinguishable from a null pointer, exactly as mos6502's `ZP` does.  These programs all pass under sdld and always will; ASlink would reject every one of the links with a Boundary Error, so `PAG` has to come off `PSEG` before mcs51 can move - the same removal hc08's `DSEG` and mos6502's `ZP` needed.  The tool's "probably the check" note is about runtime behaviour and does not apply to a forward-looking check like this one. |
| ~~3~~ | ~~mcs51-medium~~ | ~~`PSEG`~~ | - | ~~867 bytes of pdata in a 256-byte page~~ | **retracted.**  An artifact of the pass-1 corpus.  On a correct build `PSEG` is 18 bytes and mcs51-medium runs 0 failures over 27,015 tests. |
| ~~4~~ | ~~stm8-large~~ | ~~`CODE`~~ | - | ~~ends at `0x100A4`~~ | **false positive.**  The `.ihx` carries Intel HEX extended linear address records, so the port places above 64K by design.  The tool now asks each port's own output this question instead of assuming 16 bits. |
| ~~5~~ | ~~tlcs90, Rabbit family~~ | ~~`_XDATA`, `_XCONST`~~ | - | ~~areas above 64K~~ | **false positive.**  Physical addressing through an MMU - the Rabbit puts `_XDATA` at `0x84000` - which the logical addresses in the `.ihx` do not show.  All affected programs pass. |

Every other port is clean on both checks.

## 3a. What the sweep found that the audit could not

Rebuilding everything so the audit would have a corpus turned out to be worth
more than the audit:

- **`z80n`'s library has never built.**  SDCC's z80n code generation uses the
  undocumented IX/IY half-register instructions, and vendor `asz80` does not
  implement them: it classifies the operands (`asz80/z80adr.c:119`) and
  reserves the directive slot (`asz80/z80.h:121`), but has no
  `.allow_undocumented` row in its `mne[]` table and no encoding for
  `ld r,ixh`.  `sdasz80` accepts `ld iyh,#0x00` after either
  `.allow_undocumented` or `.zxn`; vendor `asz80` rejects the instruction and
  does not know the directive.  z80n was switched to vendor `asz80` with the
  rest of the z80 family and has produced only `crt0.rel` ever since.
- **`ucz80-undoc` is blocked by the same gap**, through the explicit
  `--allow-undocumented-instructions` path.  So the z80-family migration has
  two holes, not one, and both close with the same ASxxxx patch - plausibly a
  small one, since upstream reserved the slot.
- **`i8080`, `i8085` and `i8085-undoc` library models were never built at
  all** - `device/lib/Makefile.in` guarded them on `OPT_DISABLE_I8080` and
  `OPT_DISABLE_I8085` without ever pulling those in from configure.  This
  project's flagship port had been tested for ten days against a hand-built
  library from 2026-09-21, and two of its three models had never been tested.
  Fixed; all three now run 0 failures over 36,366 tests.

## 4. The pass-1 corpus, and why it is worth recording

Pass 1 used the 160,000 maps already on disk.  They were real sdld output -
all dated 2026-09-22 - but 21 of the 36 ports could not run at the time,
because `bin/` held only three sdas tools and 21 `device/lib/build/`
directories were empty.  Findings 3, 4 and 5 all came from that corpus and all
three are now withdrawn.

The report said at the time that those three were "placements without
outcomes" and must not be called failures until the libraries were rebuilt.
That caveat was correct and it is the reason the retraction is cheap rather
than embarrassing.  **Do not audit a corpus you have not built.**

## 5. Net yield, honestly

The static map audit found one real thing the migrations had not already
found: the `PSEG` `PAG` blocker, which is migration cost rather than a bug.
Both confirmed instances of the unbounded-allocation class - hc08's spills and
mos6502's - came from doing the migrations, not from scanning maps.

Pass 2 (§6) found none at all.

That is the lesson for the sweep: **the checks that need no memory model are
exactly the checks that cannot tell a 24-bit port from a wrapped 16-bit one.**
Breadth is cheap and shallow; the depth came from linking real programs with a
linker that refuses.

## 6. Pass 2: re-linking SDAS's objects with vendor ASlink

Run 2026-10-01 over 42,642 programs across the nine ports it turned out to
be possible on. `tools/audit-relink.py` rewrites each `.lk` into ASlink's
dialect (`-a` for `-b`, `-i+`, a trailing separator on `-k`, dropping `-M`,
`-u`, `-j` and the bare `-r`, which in this fork takes a root argument and
would eat the following line); the SDAS `.lib` archives are mirrored into
plain-text member lists, because ASlink cannot read an `ar` archive.

**Yield of new SDCC defects: none.** What it found instead is why the
premise was only half right.

### The V3 object format forked, and both forks extended it incompatibly

"The `.rel` files are V3 and `lkrloc3.c` reads them" holds only for a port
that uses nothing but the base V3 relocation modes. Beyond those, the two
lineages went different ways:

- **SDAS added an escape.** `R_ESCAPE_MASK 0xf0` in `sdas/linksrc/aslink.h`:
  a mode byte whose top nibble is set consumes **one extra byte** and builds
  a 12-bit mode, carrying `R_BYT3` (3-byte address, select one byte),
  `R_HIB` (select byte 3 of 24) and `R_BIT` (byte-addressable to
  bit-addressable). The relocation entry becomes five bytes. Vendor ASlink
  reads four, desynchronises, and reports `?ASlink-Error-R area error`.
- **Both assign different values to the same extended modes.** SDAS has
  `R3_J19 = 0210` and `R_C24 = 0200`; vendor has `R3_J19 = 0050` and
  `R3_3BYTE = 0110`. Same ideas, independently encoded.

Which modes each port actually uses, sampled over 200 objects:

| Port | `R_BYT3` | `R_HIB` | `R_BIT` |
|---|---|---|---|
| mcs51-small | 10,242 | - | 2 |
| mcs51-huge | 9,058 | 1,541 | 2 |
| ds390 | 3,302 | 1,045 | - |
| stm8 | 1,710 | - | - |
| stm8-large | 1,726 | 6 | - |
| Rabbit family | 4 | - | - |

So nine of the 22 SDAS ports cannot be re-linked by vendor ASlink at all:
all six mcs51 models, ds390, stm8 and stm8-large, plus two objects in each
Rabbit port.

**This is not a migration blocker, and it is worth being clear about why.**
ASxxxx V4 expresses every one of these natively - `R4_1BYTE` through
`R4_4BYTE` with `R4_BYTES` as the size field, `R4_MSB` for byte selection,
and `R4_MBRS`/`R4_MBRU` for merge-bit-range. A migrated port assembles with
ASxxxx's own assembler and emits V4, so it never produces an escaped V3
mode in the first place. The one to check before starting mcs51 is `R_BIT`,
the 8051's byte-to-bit-space conversion, against `R4_MBRS`/`R4_MBRU`; it is
rare (2 uses in 200 objects) but it has no obvious V4 twin.

### What the nine readable ports reported

Every one of them produces three or four `?ASlink-Warning-Undefined Global
s_<area>` per program. That is the `s_` versus `a_` divergence and is
expected dialect noise, not a finding. Setting it aside:

| Port | Programs | Beyond the noise |
|---|---|---|
| f8, f8l | 9,524 | nothing but `tst_p99-conformance` |
| ucez80, ucr800 | 9,524 | nothing but `tst_p99-conformance` |
| tlcs90 | 4,762 | 5 × `Area _XDATA Exceeds The Address Space`, all `__far` tests |
| ucgbz80 | 4,762 | 4,761 × `Byte PCR relocation error`, every one in `_HEADERd`/`_HEADERe` |
| pdk14, pdk15, pdk15-stack-auto | 14,060 | swamped: millions of `Undefined Extended Mode` and `2K Page relocation error` |

- **`tst_p99-conformance`** appears once per port as
  `Invalid symbol type : D for _N`. That is ASCII-only policy meeting
  `S _κ Def00A0` in the symbol table - the known deliberate non-goal, not a
  defect.
- **tlcs90's five** are the same `__far` programs pass 1 flagged and
  withdrew. They are now known to come from this fork's own address-space
  check (`94d8c73`) meeting a target that places through an MMU: the object
  declares `XL2`, so a 16-bit space, while SDCC puts `_XDATA` at `0x977E`
  with size `0x9C45`. Either the placement or the declared address size is
  wrong, and the programs pass, so the check is the thing that is wrong
  here. **Recorded against the check, not against SDCC.**
- **ucgbz80's PCR errors** are all in the Game Boy ROM header areas that
  `sdldgb` builds and ASlink has no equivalent for. That is sm83's
  already-known migration blocker showing up exactly where expected.
- **pdk** is the extended-mode divergence again, from the other side: its
  objects parse (no escape bytes) but SDAS's `R3_PAG` (0100) is vendor's
  extended-mode designator, so almost every relocation is misread.

### What this says about the sweep

Pass 1 found one real thing the migrations had not. Pass 2 found none. Both
confirmed instances of the unbounded-allocation class still come from doing
the migrations - assembling with ASxxxx's assembler and linking with a
linker that refuses.

The honest conclusion is that **auditing SDAS's output with ASlink has a
ceiling, and we have reached it**: the formats have diverged far enough that
what a cross-link reports is mostly the divergence, not the program. Depth
needs a migrated port.

## 7. Baselines

> **`f8` and `f8l` appear below and in §6 because they existed when this
> was measured on 2026-10-01.  The port was removed from this fork
> afterwards - see the README - so those two rows are history, not a
> baseline anything can be compared against now.

All 41 ports, 2026-10-01, sdas/sdld toolchain except where a port has been
migrated.  0 failures unless noted: ds390, f8, f8l, i8080, i8085,
i8085-undoc, mcs51-small, mcs51-medium, mcs51-small-stack-auto,
mcs51-large-stack-auto, pdk14, pdk15, pdk15-stack-auto, stm8, stm8-large,
tlcs90, ucez80, ucgbz80, ucr2k, ucr2ka, ucr3ka, ucr4k, ucr5k, ucr6k, ucr800,
ucz80, ucz80-resiy, ucz80-unsafe-read.

Non-zero: hc08 3, s08 3, s08-stack-auto 3, uc6502 3, uc65c02 3,
uc6502-stack-auto 1, mcs51-large 3, mcs51-huge 3, ucz180 1 (`malloc.c`),
ucz180-resiy 2.

`ucz80n` and `ucz80-undoc` could not run at all when this was first written,
on the `.allow_undocumented` gap in vendor `asz80`.  Both now run clean after
that gap and the `tst` operand form were fixed in ASxxxx (`40e56a0`,
`d02ee7a`): ucz80n 0 failures over 36,561 tests, ucz80-undoc 0 over 36,595.
Fixing `tst` also took ucz180 from two failures to one.
