# Placement audit: what ASlink would refuse in SDCC's regression output

**Status:** pass 1 complete, 2026-09-29.  Four candidate findings, one of them
a control.  Read §4 before quoting any of them.

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

| # | Port(s) | Area | Scope | Observation | Verdict |
|---|---|---|---|---|---|
| 1 | hc08, s08 | `CSEG` | 2/4750 | `addr=0x8021 size=0x9768`, ends at `0x11789` | **control** - the known serpent overflow, already diagnosed and left failing.  The check finds what it is meant to find. |
| 2 | mcs51-medium | `PSEG` | 1/4752 | `addr=0x0001 size=0x0363` - **867 bytes of pdata** in an area the port marked `PAG` | **candidate, unverified.**  `movx @Ri` addresses 256 bytes.  Same class as hc08 and mos6502, third architecture. |
| 3 | mcs51 (all 6 models), ds390 | `PSEG` | 4/4750 each, and **4752/4752** on mcs51-medium | `PSEG` based at `0x0001`, never page aligned | **migration blocker, not a defect.**  pdata starts at 1 for the same reason mos6502's `ZP` does - address 0 has to stay distinguishable from a null pointer.  ASlink would reject every one of these links with a Boundary Error, so `PAG` has to come off `PSEG` exactly as it came off hc08's `DSEG` and mos6502's `ZP`. |
| 4 | stm8-large | `CODE` | 2/4760 | `CONST` runs `0x8031`-`0xFDE0`, then `CODE` at `0xFDE4` size `0x2C0` ends at `0x100A4` | **candidate, unverified.**  Same shape as the hc08 serpent wrap, on a port ASxxxx cannot assemble at all - so if it is real, it is a pure SDCC bug with no ASxxxx angle. |
| 5 | tlcs90 | `_XDATA` etc. | `tst_far_rabbit_fields` and a few `far_rabbits` variants | `_XDATA` `0x977E`+`0x9C45` ends at `0x133C3`; `_GSINIT`, `_XCONST`, `_INITIALIZER` then placed above 64K | **candidate, unverified.**  These tests use `__far`, a Rabbit qualifier.  Needs an answer on what tlcs90's address space actually is before it means anything. |

Every other port is clean on both checks: f8, f8l, i8080, i8085, i8085-undoc,
pdk14, pdk15, pdk15-stack-auto, s08-stack-auto, stm8, uc6502, uc6502-stack-auto,
uc65c02, ucez80, ucgbz80, ucr800, ucz180, ucz180-resiy, ucz80, ucz80-resiy,
ucz80-unsafe-read, ucz80n.

## 4. What this corpus can and cannot support

**The maps are real.**  Every map for a non-migrated port is dated 2026-09-22,
from a single sweep made when the sdas tools and device libraries were still
built.  They are genuine sdld output and the placements in them are what sdld
actually chose.

**The pass/fail results are not.**  21 of the 36 ports cannot run in this tree
today: `bin/` holds only `sdas6500`, `sdld` and `sdld6808`, and 21 of the
`device/lib/build/` model directories are empty, so those suites now fail every
case at link with `?ASlink-Warning-Couldn't find library`.  Their `.sum` files
have since been overwritten with `0 bytes, 0 ticks` - the unbuilt-library
signature.  So findings 2, 4 and 5 are placements without outcomes: **do not
claim any of them makes a test fail until the libraries are rebuilt and the
port re-run.**

Only ds390, hc08, s08, s08-stack-auto, i8085, uc6502, uc6502-stack-auto,
uc65c02, ucz80, ucz80-resiy, ucz80-unsafe-read, ucz180 and ucz180-resiy have
results that mean anything right now.

## 5. What the audit structurally cannot see

The check that caught hc08 and mos6502 in the first place - a *direct-page
relocation* resolving past `0xFF` - leaves no trace in a `.map`.  It lives in
the `R` records, and it is the single highest-yield check there is, because it
is where both of the confirmed miscompilations were found.

Getting it needs pass 2: **re-link the existing sdas objects with vendor
aslink** and collect the diagnostics.  No assembler change and no migration -
the `.rel` files are V3 and `lkrloc3.c` reads them - only a mechanical
translation of each `.lk` script into ASxxxx's dialect (`-a` for `-b`, `-i+`
for `-i`, a trailing separator on `-k`, and dropping `-I -X -C -S -M`, which
aslink does not have).  Expect noise from `s_<area>` versus `a_<area>`, which
is identifiable and can be filtered.

## 6. Next

1. Rebuild the sdas assemblers and the 21 missing device libraries, and re-run
   every port, to get sdas baselines that are worth comparing against.  This is
   the enabling step for everything else, including the mcs51 migration.
2. Settle findings 2, 4 and 5 against those baselines.
3. Pass 2, the relocation audit described above.

