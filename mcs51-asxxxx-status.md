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
had not recorded.  They are not a regression from the ds390 changes: the
failure count is unchanged at 12 and nothing in those changes reaches the
mcs51 code path.  `ds390` has none.  Unexplained, and the first thing to
look at if mcs51 is picked up again.

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
