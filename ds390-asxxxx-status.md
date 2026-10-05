# ds390 on vendor ASxxxx — where it stands

**At baseline.**  `ds390` runs the full regression suite with **14 failures
against a baseline of 14**, and links with **no linker diagnostics at all**.
`ds400` has no regression port; its library builds clean, which is all the
tree can measure.

That is a different outcome from mcs51, which merged 63 adrift, and the
reason is worth stating: ds390 had one blocking problem rather than six,
and the problem turned out to be in ASxxxx rather than in SDCC.

## 1. What the port drives

`sdas390` is built from `sdas/as8xcxxx`, and ASxxxx ships its own
`as8xcxxx` — the two differ by about 45 lines, and the vendor one already
has the native V4 `R_J11 0x0100` / `R_J19 0x0200` relocation modes that
sdas has to escape.  So the switch is `as8xcxxx` + `aslink` in place of
`sdas390` + `sdld`, in `src/ds390/main.c` and in the library makefiles.

`TARGET_MCS51_LIKE` covers DS390 and DS400, so every `SDCCmain.c` and
`SDCCglue.c` change written for mcs51 — the bank declarations, the
canonical area ordering, `BSEG_BYTES`, the `-mwx`/`-a`/`-g` link script
rewrites — already applied here unchanged.

**`tininative` is deliberately not switched.**  It assembles with
`_a390Cmd` to `.a51`, which is a different toolchain entirely.  Its PORT
struct keeps `asxxxx` false and its area strings keep the old spellings.

## 2. The one real blocker: as8xcxxx predefined no SFRs

The first full run linked with roughly 65,000 undefined-global warnings,
and they were almost all one thing:

| symbol | count |
|---|---|
| `b` | 25412 |
| `acc` | 17853 |
| `psw` | 3965 |
| `b.5`, `b.6` | 3962 each |
| `sp`, `ov`, `ea`, `F0`, `acc.N`, `b.N` | the rest |

`as8051` carries a `preDef[]` table in `i51pst.c` and registers every
entry twice from `minit()`, upper case and lower, so a source can write
`ACC`, `acc`, `B.5` or `b.5` without including a `.sfr` file.  `as8xcxxx`
was built for exactly the same thing and never got it: `ds8.h` declares
`struct PreDef` — with an extra `ptype` field, for the registers that
differ between the DS8xCxxx parts — and declares `extern struct PreDef
preDef[]`, but no table was ever defined and `minit()` never walked one.
The `extern` had been dangling since the file was written.

SDCC's ds390 runtime is written against those names.  `push acc`,
`push psw` and `jnb b.6,...` come straight out of `device/lib/ds390/
tinibios.c`.

Fixed in ASxxxx, not worked around in SDCC: `asxxxx` `8f3852f` defines the
table with the 37 names every processor in the family has — values
identical to `as8051`'s, `ptype` zero meaning "common to all" — and
registers it the way `as8051` does.  `astest/cases/sfrpre` pins both
spellings assembling identically and pins a source's own definition still
winning, which is what makes the table safe to add to a released
assembler.

After that, zero undefined globals.

## 3. The rest, in the order it became visible

1. **`acc[n]` has no ASxxxx equivalent.**  119 library errors.  `acc[n]`
   is SDAS's bit-of-a-bit-addressable-byte operator; ASxxxx has no such
   operator.  For the accumulator it needs none — `acc` is the SFR at
   0xE0 and bit-addressable, so `acc[n]` is just `0xE0 + n`, no relocation
   involved (unlike mcs51's relocatable `bits[n]`).  `accbit()` in
   `src/ds390/gen.c` returns `0x%02x` on the ASxxxx path and `acc[%d]`
   otherwise; 45 call sites.
2. **`.area HOME (CODE)` in library inline assembly.**  Four files —
   `gptr_cmp.c` and the three `atomic_*` ones — hand-write the area
   directive with the sdas flag spelling.  `(BANK=BCODE)`.  Safe to change
   unconditionally: `device/lib/ds390` is built only for `model-ds390` and
   `model-ds400`, both of which are now on ASxxxx.
3. **`s_XINIT` / `s_XISEG` / `s_PSEG` / `s_XSEG` in the crt0.**
   `_ds390_genXINIT()` names area starts with the sdas `s_` prefix;
   ASxxxx uses `a_`.  Same `port->linker.asxxxx ? "a" : "s"` conditional
   `src/hc08/main.c` already uses.
4. **`-g l_IRAM` must not be emitted for ds390.**  aslink's `-g` *sets the
   value of* a symbol the link already references; it does not create one.
   mcs51's `crtclear.asm` references `l_IRAM`, so `-g` works there.  ds390
   has no `crtclear`, nothing references it, and the result is
   `?ASlink-Error-No definition of symbol l_IRAM`.  Now gated on
   `TARGET_IS_MCS51` rather than `TARGET_MCS51_LIKE`.
5. **`-Wl-r` had to come out of the regression spec.**  sdld's `-r` raises
   `xram_size`/`code_size` to 24 bits and enables Intel HEX extended
   linear address records.  vendor aslink emits `:02000004` records
   automatically whenever the high address changes, so the flag is
   unnecessary — and its `-r` is the section collector's root option,
   which takes an argument.

## 4. Not ours

- `tst_bug-3803`, `tst_bug-4090`, `tst_bug-716242` fail on the sdas
  baseline too.
- `tst_p99-conformance` fails on every ASxxxx port: it uses non-ASCII
  identifiers, which this fork deliberately does not support.
- `gte_pr46019` and the two `asconaead128` assertions are baseline too.

## 5. Two pre-existing SDCC defects found on the way, both left alone

Neither is this migration's to fix, and neither changes behaviour on the
ASxxxx path, but both are real:

1. **`device/lib/_gptrget.c` has two dead arms.**  It tests
   `DSDCC_MODEL_HUGE` and `DSDCC_MODEL_MEDIUM`; SDCC defines
   `__SDCC_MODEL_HUGE` and `__SDCC_MODEL_MEDIUM` (`SDCCmain.c:2499`).
   Neither macro is ever defined, so only the `#else` arm is ever
   compiled, for every model.  This is why the `acc[7]`/`acc[6]`/`acc[5]`
   in the medium arm never produced an assembler error — that code has
   not been built in a long time.  Fixing it would change code generation
   for the medium and huge models, which is well outside this work.
2. **ds390's crt0 references `_TA`, `_ESP`, `_SP` and `_P2` without
   defining them.**  `_ds390_genInitStartup()` emits `mov _TA,#0xAA` and
   friends unconditionally.  Nothing in the emitted module defines those
   symbols; they resolve only because the module that carries `main` also
   includes `<ds80c390.h>`.  A translation unit that does not include it
   links with four undefined globals that silently become address zero.
   Identical under sdas — the crt0 text is the same — so it is not a
   migration regression, but it is a trap.
