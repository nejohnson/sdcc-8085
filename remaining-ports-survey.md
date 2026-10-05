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
| **sm83** | **0 / 210** | **0** | nothing. The assembler side is clean | linker only |
| **r800** | 12 / 207 | 35 | `multuw hl,bc`, `multu a,c` | small ASxxxx addition |
| **tlcs90** | 20 / 208 | 83 | `lda rr,ix,#d` spelling — **plus a silent defect** | small, but see below |
| **ez80** | 98 / 208 | 260 | `lea rr,ix,#d` spelling, nothing else | SDCC-side only |
| **r2k, r2ka** | 127 / 208 | 221 | `add sp,#-n` (190), `jp lo/lz` | one ASxxxx fix + condition codes |
| **r3ka** | 127 / 208 | 203 | same | same |
| **r4k, r5k, r6k** | 141 / 208 | ~680 | the whole Rabbit 4000 instruction set | large ASxxxx addition |

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
| **r2k, r2ka, r3ka** | **0 / 208** | assembler-clean. The port switch, the library wiring and the link-time work are still to do. |
| **r800** | 0 / 207 expected | `asz80` now has `.r800`, `multu` and `multuw`; not yet re-measured or switched. |
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
