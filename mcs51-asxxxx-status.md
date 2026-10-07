# mcs51 on vendor ASxxxx — where it stands

**Merged into `feat/i8085`** on 2026-10-05, deliberately and with the suite
not at baseline: **69 failures across six models against a baseline of 6**.
That is a decision, not an oversight.  The port went from every model
failing every case to within 63 of the stock toolchain, every remaining
cause is identified in §5, and none of them is both ours and open — so the
work is more useful in the branch everyone builds than parked beside it.
What is left is listed below and should not be mistaken for a clean run.

## 1. What works

All six models build their libraries clean — 243 objects each, no assembler
diagnostics — and programs link with no linker diagnostics except the Page0
warnings in §4.

| model | failures | failing cases | sdas baseline |
|---|---|---|---|
| mcs51-medium | 9 | 6 | 0 |
| mcs51-huge | 11 | 8 | 3 |
| mcs51-large-stack-auto | 11 | 9 | 0 |
| mcs51-small | 12 | 14 | 0 |
| mcs51-large | 12 | 9 | 3 |
| mcs51-small-stack-auto | 14 | 7 | 0 |

**69 against a baseline of 6.**  Every one of these models failed every
single case when the port was first switched over, and stood at 445 before
§6.

Re-measured on 2026-10-05 after the ds390 work, `mcs51-small` also reports
**42 abnormal stops** - tests that run to uCsim's cycle limit rather than
finishing - which the table above does not count and which this document
had not recorded.

**Diagnosed on 2026-10-07 - see §8.  They are programs whose directly
addressed internal data was placed above 0x7F, where the 8051 reads and
writes SFRs instead of RAM.**  §8 also replaces the "sdas baseline" column
above, which was never measured like for like: a pre-migration worktree
measures `mcs51-small` at **5 failures and 0 abnormal stops**, not 0.

## 2. The design: four address spaces are four banks

This is the whole of the area-attribute problem and it is worth stating
once.  SDAS tagged every area with the address space it belongs to —
`(CODE)`, `(DATA)`, `(XDATA)`, `(BIT)` — and sdld kept **one location
counter per tag** (`rloc[4]`, gated on `TARGET_IS_8051`).  ASxxxx has no
such attribute, but it has banks, and aslink runs **one location counter
per bank**: the same mechanism arrived at from the other end.  So

    (CODE) -> (BANK=BCODE)     (DATA) -> (BANK=BDATA)
    (XDATA) -> (BANK=BXDATA)   (BIT)  -> (BANK=BBIT)

with four `.bank` declarations ahead of the first `.area` in every module —
they are not created implicitly, an undeclared `BANK=` is an undefined
symbol.  A real generated module went from 46 errors to 0 on that rewrite
alone.

**sdld builds the rest of the 8051 into the linker** (`sdas/linksrc/lkmain.c`):
it pre-declares `BSEG_BYTES`, `BIT_BANK`, `DSEG`, `OSEG`, `ISEG` and `SSEG`,
pins the register banks at 0x00/0x08/0x10/0x18 and `BSEG_BYTES` at 0x20,
defines `l_IRAM`, and derives `BSEG_BYTES`' size from `BSEG`'s bit count.
aslink is target agnostic and knows none of it — which is the right design;
a linker should not have to know what an 8051 is.  Everything it knew now
comes from the assembler source and the link script instead.

## 3. What had to be fixed, in the order it became visible

Each of these was hidden behind the one before it.

1. **`.optsdcc` → `.abi`**, the tool commands, the PORT flags, `PAG` off
   `PSEG`, `LIB_TYPE = ASXVENDOR` for the six models only.
2. **The bit bank.**  `b0 = bits[0]` is SDAS's operator for a bit of a byte
   the linker has yet to place, resting on sdld's `R_BIT` relocation.
   ASxxxx has neither that relocation nor a bit-address operator, so the
   byte cannot float: `BIT_BANK` is based at 0x20, the first
   bit-addressable byte, and the eight addresses are the constants 0..7.
   That is where sdld put it in all 214 corpus programs that use it.
3. **`l_IRAM`.**  `crtclear.asm` clears internal RAM with
   `mov r0,#(l_IRAM-1)`; sdld defines it from its `-I` option, which aslink
   does not have.  An undefined global fails the link, so *every* program
   failed.  The link script defines it.
4. **`OSEG` was `(ABS,OVR)`.**  A bare `OVR` means absolute to ASxxxx and
   relocatable to SDAS — the divergence `b90f792d` already fixed for hc08
   and mos6502, needing `(REL,OVR)` in three more places here.
5. **`SSEG` had no bank**, so the stack landed on top of the code.
6. **`ISEG` was based at 0x0000**, over the register banks.  That base was
   written whether or not an `idata_loc` was asked for, which sdld could
   afford because of its per-space counters.
7. **Area order.**  aslink lays a bank's areas out in the order they are
   *first declared across the whole link*, and the first module linked is
   usually the test framework, which has no overlaid locals — so `OSEG`
   first appeared in a later module and was laid out after `SSEG`, which
   the stack then grew into.  Every module now declares all nine internal
   RAM areas in sdld's order, empty if it has nothing to put in them.  One
   module's idea of the order is not enough.
8. **`XSEG` and `PSEG` were both based at the xdata location.**  Two areas
   based at the same address in one chain is not a layout: whichever is
   processed last leaves the counter at its own base, and `XISEG`, which
   follows, lands on top of the other.  That put a 2-byte initialised
   `__xdata` array inside 23 bytes of pdata.  Base the first area of the
   chain and let the rest run on.  **This one fix took medium from 9,614
   failures to 121 and large-stack-auto from 25,188 to 96** — both
   outliers were the same bug, medium because pdata is its default
   storage, large-stack-auto because reentrancy puts the parameter block
   there.

The bank itself is deliberately *not* based: aslink rejects that, correctly,
with `Base Address of Area[XABS] less than Bank[BXDATA]`.  Absolute xdata is
placed by the programmer and may sit below where the compiler starts.

## 4. The spills: diagnosed, measured, deliberately left

**Withdrawn on 2026-10-07.  The premise was wrong.**  `rotate_size_64`'s
352 bytes of `OSEG` were not an unbounded spill set; they were one
assembler bug, counted 44 times.  SDCC gives each function its own block
of the overlay area - one `.area OSEG` per function - and relies on them
all beginning at the area's base, which is what makes an overlay an
overlay.  ASxxxx re-entered the area where it had left off instead, so a
module's overlay came out as the *sum* of every function's block rather
than the largest: 44 functions x 8 bytes = 352, where 16 were called for.
Fixed in ASxxxx `c082027`; the same module now asks for 16.  See §8.

The three-placement table below was measured with that bug present, so it
was measuring the wrong thing, and the conclusion drawn from it - that the
spill set needs bounding in `ralloc.c` - does not follow.  It is kept
because the Page0 observation in it stands on its own: removing every
Page0 warning made the suite dramatically worse, so the warnings are not
what the failures are made of.

The original text follows.


`src/mcs51/ralloc.c` forces every spill into internal RAM in every memory
model, and says so:

    /* we also turn off memory model to prevent
       the spil from going to the external storage */
    options.model = options.useXstack = 0;

Nothing bounds them.  `rotate_size_64` has 44 slots of 8 bytes — **352 bytes
of `OSEG`**, running to 0x187, against the 128 bytes a direct address can
reach.  sdld placed it and said nothing; aslink reports a Page0 relocation
error per access.  Third architecture with this bug, after hc08's spills and
mos6502's zero page.

Three placements, measured on mcs51-medium:

| spills go to | failures | Page0 warnings | ticks |
|---|---|---|---|
| internal RAM (as shipped) | **121** | 13,002 | 1.7bn |
| pdata | 40,942 | 0 | 2.0bn |
| xdata | 19,068 | 0 | 120bn |

pdata is one 256-byte page reached by `movx @Ri` and the spills came to 570
bytes of it, so that merely moved the overflow.  xdata has the room and is
still four times worse.

**The table is the finding.**  Removing every Page0 warning makes the suite
dramatically worse, so the warnings are not what the remaining failures are
made of — they are overwhelmingly truncated accesses that happen not to
matter.  The real fix is to *bound* the spill set, not relocate it, and that
is compiler surgery, not a port change.  Same conclusion `--no-zp-spill`
reached on mos6502, now with mcs51 numbers behind it.

## 5. What the 445 are actually made of

Classified, with a non-mcs51 control (`ucz80` on the same tree) to separate
this port's problems from the tree's:

| cause | models | whose |
|---|---|---|
| ~~`tst_sfr16`~~ — `__sfr32`; see §7 | - | **fixed** |
| `rotate` — the spill overflow above | 4 | ours, deliberately left |
| `tst_p99-conformance` — non-ASCII identifiers | 2 | expected, standing policy |
| `tst_bug-716242` — compiler *front-end* errors, `error 226`/`error 102` | all 6 | not the toolchain |
| `tst_bug-4090` — `sizeof (fp) == sizeof (void *)` | 5 | a real mcs51 property; test expectation |
| `tst_bug-3803` — `r1.c == 0x42` | all 6 | **fails on ucz80 too**, not mcs51 |

Three of the seven are not this migration's.  `absolute` was taken next and is fixed — §6, which also accounts for most
of the drop from 445 to 75.  `tst_sfr16` is fixed, §7.  Nothing in the
list is now unexamined and nothing left in it is both ours and open.

**Also worth knowing:** `ucz80` measures **2 failures** on this tree where it
was 0 before the weekend's compiler work.  Not investigated here; flagged
because it is a port nobody is touching.

## 6. `absolute`: reserving the bytes behind the bits

`absolute_mem___code` puts `Byte0` at `__at(0x20)` and asks that setting a
`__bit` does not disturb it.  Three things were landing on 0x20: that
`Byte0`, `BSEG`'s bit 0, and `DSEG`.

Built the same module with sdas and sdld to see what the baseline does, and
it puts `BSEG_BYTES` at **0x0023** — above the absolutely-placed `Byte0`
(0x20) and `Byte1` (0x22), **sized from the bits actually used**, with
`DSEG` after it.  Nothing in this tree was reserving those bytes at all, so
`DSEG` started at 0x20 and was laid over both them and the `__at` data.

The first attempt reserved the whole bit-addressable region, 0x20-0x2F,
because that is the only *fixed* size that is always enough.  Measured on
mcs51-small it fixed `absolute` and cost nine other cases — failing cases
13 to 22, picking up `bigstack`, `tst_string` and `wchar`, which is 128
bytes of internal RAM running out.

What makes it affordable is sizing it, and that needs no linker feature at
all.  **Each module reserves `ceil(its own bit count / 8)` bytes in a `CON`
area, and the areas add up.**  The sum of the ceilings is never less than
the ceiling of the sum, so it is always enough; it over-reserves by under a
byte per bit-using module; and it costs **nothing** when no module declares
a `__bit`, which is the usual case and is exactly where the fixed 16 bytes
hurt.

`BIT_BANK` is now always one byte at 0x20, so its eight bit registers are
at constants 0-7 whether or not they are used, and `BSEG_BYTES` always
starts at 0x21 where bit 8 lives.  One byte buys the alignment the rest
rests on:

    REG_BANK_0  0x0000  8
    BIT_BANK    0x0020  1      bits 0-7
    BSEG_BYTES  0x0021  2      for this program's 9 bits
    BSEG        bit 8          -> byte 0x21, aligned
    DSEG        0x0023         above all of it

This was worth far more than the one test it was chased for: **445 failures
to 75**, because `DSEG` had been overlapping the bit bytes in every model.
`absolute` and `reentrant` both pass now.

A caveat on reading small differences after this.  With the ~13,000
truncated spill accesses of §4 still in play, shifting the layout by a byte
changes *which* truncated address happens to be harmless, so a couple of
cases trade places between runs.  The failure counts are signal; ±2 failing
cases is not.

## 7. `tst_sfr16`: 32-bit arithmetic on a 16-bit assembler

Only the `__sfr32` half fails; `__sfr16` is fine, because 0x8C8A fits.

SDCC packs the four byte addresses of an `__sfr32` into one symbol and has
the code generator shift them out:

    _SFR_32  =  0x8c8acdcc
    mov ((_SFR_32 >> 24) & 0xFF),#0x12

ASxxxx evaluates expressions at the **address width** — `rngchk()` in
`asxxsrc/asexpr.c` masks every term to `v_mask`, 15 bits plus sign for a
2-byte target.  That is deliberate, it is how the `<v>` overflow check
works, and it means a 32-bit constant cannot survive on a 16-bit target.
The listing says so plainly:

                         CDCC    49  _SFR_32  =  0x8c8acdcc

Assembling the same two lines both ways:

| | `(_SFR_32 >> 24) & 0xFF` | `>> 16` |
|---|---|---|
| sdas8051 | 0xFF | 0x8A |
| vendor as8051 | 0x00 | 0x00 |

**Neither is right** — the top byte should be 0x8C.  sdas is wrong too; it
passes only because the test writes and reads back the same four addresses,
so a wrong-but-distinct address is self-consistent.  ASxxxx collapses the
top two to 0x00, two SFR writes land on one address, and the readback is
not.

So the representation is the weaker half of the argument: a symbol is being
used as a container for four packed byte addresses, which works only on an
assembler with arithmetic wider than its own addresses.  The fix belongs in
SDCC — emit the four addresses separately, or emit them already evaluated —
and it touches shared `SDCCglue.c`, the mcs51 back end, and a naming
convention, to fix one test.  It would also fix the latent sdas wrongness,
which deserves to be raised on its own terms rather than buried in a port
migration.

**Fixed**, and entirely inside the two back ends - no shared glue, no
naming convention.  `aopForSym()` keeps the `__at` value on the asmop
(mcs51) or reads it back off the operand's own type (ds390, which marks
SFRs differently), and the `AOP_SFR` cases in `aopGet()`/`aopPut()` emit
`0x%02x` of the byte they want instead of asking the assembler to shift it
out.  The four bytes of `SFR_32` now go to 0xCC, 0xCD, 0x8A and 0x8C -
exactly what `__at 0x8C8ACDCC` says - on either assembler.

ds390 carries the identical bug and is fixed with it, which is a change to
a port outside this migration, so: the only code path touched is a
multi-byte SFR, exactly two tests in the whole corpus use one (`sfr16.c`
and `bug-2235.c`), both pass on ds390 and on every mcs51 model, and none
of ds390's remaining failures involve an `__sfr16` or `__sfr32`.  `tst_sfr16`
passed on ds390 before this only by the self-consistency accident; it
passes now because the addresses are right.


## 8. The 42 abnormal stops: direct data above 0x7F, where the SFRs are

Measured on 2026-10-07.  This is the fault §1 recorded as unexplained, and
it is also what §4 was looking at from the wrong end.

### What goes wrong

The 8051 reaches internal RAM two ways.  A direct operand carries an eight
bit address, and above 0x7F that address names an **SFR, not RAM**.  Only
`@Ri` reaches RAM from 0x80 to 0xFF.  So every area the compiler addresses
directly - the register banks, `BIT_BANK`, `BSEG_BYTES`, `DSEG`, `OSEG` -
has to end by 0x80.  Nothing in the ASxxxx link said so, and 30 of
`mcs51-small`'s 2868 programs ran past it.

Traced end to end on `itoa_test_itoa_part_1`, which loops forever and
prints line 46 as `4^`:

- `__moduint_PARM_2` links at **0x89**.  uCsim disassembles `_moduint`'s
  first instruction as `MOV A,0x89 <TMOD>`.
- So the divisor reads as 0, `_moduint` takes its `jz div_by_0` path and
  returns the dividend unchanged.  `n % 10` yields `n`, `'0' + 46` is
  `0x5E` which is `^`, and `__uitoa`'s `while (value != 0)` never ends.
- `_moduint`'s own bytes are byte-perfect against its listing - all 77 were
  compared.  Nothing is miscompiled or misassembled.  Only the placement
  is wrong.

### What sdld does instead

`lnksect2()` in `sdas/linksrc/lkarea.c` is a bitmap allocator over the 256
bytes of internal RAM, with the comment *"Notice that only ISEG and SSEG
can be in the indirectly addressable internal RAM"*.  It caps every other
area at 0x80, reports `Could not get N consecutive bytes in internal RAM
for area X` when it will not fit, and **packs each module's chunk into free
space** - so `DSEG` fills the hole between register bank 0 and the bit
bytes.  Same program, same symbols:

| symbol | sdld | aslink |
|---|---|---|
| `___numTests` | 0x08 | 0x22 |
| `__moduint_PARM_2` | **0x12** | **0x89 (TMOD)** |
| `___itoa_PARM_2` | 0x7A | 0x85 |

§2's "four address spaces are four banks" is true and incomplete: it misses
the 0x80 limit on direct data, and it misses the packing.  One location
counter per bank cannot use 0x08-0x1F at all, because `BIT_BANK` is based
at 0x20 and an area is laid out contiguously - 25 of the 119 usable bytes,
21%, abandoned.

### The baseline, measured properly

A worktree at `99819dea^` (pre-migration), configured and built, full
suite:

| | sdas/sdld | ours, 2026-10-07 | after the overlay fix |
|---|---|---|---|
| failures | **5** | 12 | **6** |
| abnormal stops | **0** | 42 | 42 |
| test cases | 6382 | 6334 | 6334 |
| programs with direct data past 0x7F | 0 | 30 | **25** |

§1's "sdas baseline 0" for `mcs51-small` is wrong - it is 5 - and the
comparison was never like for like: a program sdld refuses to link never
runs, produces no `--- Summary:` line, and so is counted neither as a
failure nor as an abnormal stop.

### What is fixed

ASxxxx `c082027` makes a module re-entering an `OVR` area restart at its
base and sizes the area by its largest block, which is what the ASxxxx
manual describes and what SDAS does.  That removes the gross overshoot -
`rotate_size_64` from 352 bytes of `OSEG` to 16 - and takes failures from
12 to 6 against a baseline of 5.  `rotate` and `checkedint` pass.

### What is left

25 programs still put direct data past 0x7F, by **7 to 22 bytes**, against
the **25 bytes** wasted at 0x08-0x1F.  Every one of them would fit if that
hole could be used, which needs placement at areax (per-module) granularity
- `itoa`'s own chunk is 78 bytes and needs the big space, but testfwk's 10
and `__itoa`'s 16 fit the hole exactly.  aslink lays an area out
contiguously, so this is a real feature, not a tweak, and it costs the
contiguity of a `CON` area - which is why sdld's map reports `DSEG` as
"addr 0 size 128" rather than as a span.

The alternatives are to need fewer direct bytes (compiler work) or to make
the overflow an error rather than silence.  The second was prototyped - a
`BDATA (base=0, size=0x80)` bank for the direct areas and `BIDATA
(base=0x80, size=0x80)` for `ISEG`/`SSEG`, which aslink already checks and
reports as `Addresses in Area[OSEG] overflow Bank[BDATA] region` - and it
is honest but turns 25 silent miscompiles into 25 link errors that sdld
builds.  Not landed.

## 9. The library could not be rebuilt at all

Found while measuring the above, and a prerequisite for any of it.

`device/lib/printf_large.c` for `--model-small` ended in

    printf_large.c:877: error 9: FATAL Compiler Internal Error in file
    'gen.c' line number '2009' : code generator internal error

Bisected to `37a01812`, which ported upstream's fix for #4072 and said of
the rest of it: *"The patch's 8 per-port ralloc.c hunks ... don't apply
here - added the equivalent one-line fix to our own independent
i8085/ralloc.c instead, the only port this fork actually builds."*  True of
i8085 and false of the other seven: `createStackSpil()` clears
`SPEC_VOLATILE` on the spill location but nothing cleared `volatileAccess`,
so a temporary spilled out of a union inherits the optimizer's internal
volatile marking and mcs51's `aopPut()` falls off the end of its switch.

**The whole mcs51 library has been unbuildable since 5 October**, and
nothing noticed, because `make` sees the `.rel` files as current against
the `.c` files - the intermediate `.asm` are deleted after each build.
Every mcs51 measurement between then and 7 October was made against a
library built before the fix landed.  Deleting `device/lib/small` and
`device/lib/build/small` is what finds it.

Fixed in `d60d9ee8` for ds390, mcs51, z80, stm8, mos6502, hc08 and pdk,
which with i8085 is the eight hunks upstream's patch had.
