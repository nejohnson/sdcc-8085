# mcs51 on vendor ASxxxx — where it stands

**Branch:** `feat/mcs51-asxxxx`.  **Not merged**, and must not be: the suite
does not pass.  Last measured 2026-10-05 on top of `origin/feat/i8085`.

## 1. What works

All six models build their libraries clean — 243 objects each, no assembler
diagnostics — and programs link with no linker diagnostics except the Page0
warnings in §4.

| model | failures | sdas baseline |
|---|---|---|
| mcs51-small-stack-auto | 9 | 0 |
| mcs51-small | 28 | 0 |
| mcs51-huge | 95 | 3 |
| mcs51-large | 96 | 3 |
| mcs51-large-stack-auto | 96 | 0 |
| mcs51-medium | 121 | 0 |

445 against a baseline of 6.  For scale, every one of these models failed
every single case when the port was first switched over.

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
| `absolute` — `__at` in 0x20-0x2F overlaid by DSEG; see §6 | all 6 | ours, measured and left |
| `tst_sfr16` — `__sfr16` | 5 | **ours, not yet looked at** |
| `rotate` — the spill overflow above | 4 | ours, deliberately left |
| `tst_p99-conformance` — non-ASCII identifiers | 2 | expected, standing policy |
| `tst_bug-716242` — compiler *front-end* errors, `error 226`/`error 102` | all 6 | not the toolchain |
| `tst_bug-4090` — `sizeof (fp) == sizeof (void *)` | 5 | a real mcs51 property; test expectation |
| `tst_bug-3803` — `r1.c == 0x42` | all 6 | **fails on ucz80 too**, not mcs51 |

Three of the seven are not this migration's.  `absolute` was taken next and is written up in §6: it is fixable, and the
fix costs more than it buys.

**Also worth knowing:** `ucz80` measures **2 failures** on this tree where it
was 0 before the weekend's compiler work.  Not investigated here; flagged
because it is a port nobody is touching.

## 6. `absolute`, and why the bit-addressable region is not reserved

`absolute_mem___code` puts `Byte0` at `__at(0x20)` and asks that setting a
`__bit` does not disturb it.  Three things were landing on 0x20: that
`Byte0`, `BSEG`'s bit 0, and `DSEG`.

Built the same module with sdas and sdld to see what the baseline does, and
it puts `BSEG_BYTES` at **0x0023** — above the absolutely-placed `Byte0`
(0x20) and `Byte1` (0x22), sized from the bits actually used, with `DSEG`
after it.  That is the layout aslink cannot reproduce: there is no
relocation turning a byte address into a bit address, and nothing to derive
the count from, so the only faithful version reserves the whole
bit-addressable region, 0x20-0x2F.

Measured on mcs51-small, reserving it:

| | failing cases | cases run | abnormal stops |
|---|---|---|---|
| reserved (`-a DSEG = 0x0030`) | 22 | 6,291 | 67 |
| not reserved | **13** | 6,335 | 36 |

`absolute` passes when the region is reserved, and `bigstack`, `tst_string`
and `wchar` start failing, which is 128 bytes of internal RAM running out.
Nine cases lost to buy one.  So it is not reserved, and `__at` data in
0x20-0x2F can still be overlaid by `DSEG`.

One half of it was kept, because it is correct and free: `BSEG` now starts
at **bit 8**, so the user's `__bit` variables begin in byte 0x21 and leave
byte 0x20 to `BIT_BANK`, which is pinned there and has to be.  Before this
a program using both put its first `__bit` on top of the register
allocator's bit registers.

This is the same gap as §4's spills in a different guise: sdld sized a
thing at link time that aslink has no way to size, and every fixed
substitute is either too small to be correct or too big to afford.
