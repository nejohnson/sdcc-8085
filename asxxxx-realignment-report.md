# SDAS vs. upstream ASxxxx — realignment diff report

> Project 1 deliverable (see `sdcc-claude-masterclass.md` for background and
> the plan this executes). Research only — **no compiler code was changed**
> producing this report. Comparison is `vendor/asxxxx` (upstream ASxxxx
> v6.10, pinned submodule) vs `sdcc/sdas/` (SDCC's fork, self-identified as
> `V05.50.4+NoICE+SDCCmods-WIP-R14`).

## Method

Upstream's sources ship with CRLF line endings; naive `diff` counted almost
every line as changed for that reason alone. All comparisons below use a
scratch copy with line endings normalized to LF (the actual `vendor/asxxxx`
submodule is untouched — it stays a pristine, byte-for-byte copy of the
upstream zip). Diff-line counts are `diff -u | grep -c '^[+-]'` against
that normalized copy.

## Headline finding: SDAS's asz80 already carries upstream's full 8080/8085 instruction set — including all ten undocumented 8085 instructions

This is the most consequential result. `vendor/asxxxx/asz80/z80pst.c` (the
upstream Z80-family mnemonic table) **already lists all ten undocumented
8085 instructions** — `dsub`, `arhl`, `rdel`, `rstv`, `shlx`, `lhlx`,
`ldhi`, `ldsi`, `jnx5`/`jnk`, `jx5`/`jk` — with **identical mnemonics and
opcodes** to what `sdcc/sdas/asz80/z80pst.c` has (e.g. `dsub`=`0x08`,
`lhlx`=`0xED`, `ldhi`=`0x28`, `jx5`=`0xFD` match exactly on both sides).
The dedicated `vendor/asxxxx/as8085/i85pst.c` target has the same ten
instructions too, just with Intel mnemonics/opcode encoding for the same
underlying opcodes.

This means the §7 "exploited undocumented 8085 instructions" work
described in the masterclass doc — the codegen side in `gen.c` — was new,
but the **assembler-side recognition of these instructions was not**: it
already existed upstream (`asz80/z80pst.c:379-392` in the vendored tree)
and SDAS's fork already carried it forward at the fork point. What SDCC's
fork *added* on top is a different, redundant gating mechanism: a
per-mnemonic `M_UNDOC85` flag column (`sdcc/sdas/asz80/z80pst.c:300-309`)
plus the `.allow_undocumented` directive
(`sdcc/sdas/asz80/z80pst.c` new entry, not present upstream), gated in
`z80mch.c`. Upstream instead relies purely on the existing `mchtyp`
legality check in `z80mch.c` (`X_8080`/`X_8085`/`X_8085X`, already present
upstream at `z80mch.c:1224-1339`) — i.e. **the ten instructions are only
reachable once you've selected `.8085x`**, with no second flag needed.
SDAS's `.allow_undocumented`/`M_UNDOC85` layer is solving a problem
(compiler-driven, `--allow-undocumented-instructions`-flag-controlled
gating) that upstream's simpler `.8085x`-only gate doesn't need to solve,
since upstream has no compiler driving it — so this isn't wasted work, but
it is a second, SDCC-specific gating mechanism layered on top of
capability that was already there.

Also present upstream but dropped somewhere along SDAS's fork: the `jnk`/
`jk` mnemonic aliases for `jnx5`/`jx5` (upstream `z80pst.c:387-390`) — a
minor loose end, not a functional gap.

**Also already present upstream, and already present in the vendored
`.8080`/`.8085`/`.8085x` directives themselves**
(`vendor/asxxxx/asz80/z80pst.c:224-226`) — byte-identical to SDAS's copy of
those three lines. The subset-legality error messages in `z80mch.c`
("Not an 8080 instruction.", "Not a standard 8085 instruction.",
"Not an 8085 instruction.") are also already upstream, unchanged. **SDAS
did not invent 8080/8085 subset-checking in the assembler — it inherited a
complete implementation from ASxxxx and mostly kept it intact.** What
SDCC's fork does add here: `.ez80`/`.r800` directives (unrelated
Z80-family variants upstream's asz80 doesn't carry — a pre-existing SDCC
addition, not part of this project), and `rim`/`sim` (documented 8085
opcodes) which *are* new in SDAS relative to this vendored tree — worth a
closer look before assuming they're missing upstream generally, since
`rim`/`sim` may simply live in a different part of upstream's table not
captured by this pass.

## `asxxsrc` (shared core) — moderate, uneven drift; no clean "just re-sync" answer

File set is nearly identical: SDCC's fork only *adds* `sdas.c`, `sdas.h`,
`strcmpi.c` (SDCC-specific glue, no upstream files removed or renamed).
But content drift within the shared files varies hugely by file — this is
not a uniform, mechanically-resyncable delta:

| file | upstream lines | sdcc lines | real diff-lines (LF-normalized) | drift |
|---|---|---|---|---|
| `asmain.c` | 3484 | 3070 | 1570 | ~46% |
| `aslex.c` | 1234 | 1166 | 196 | ~16% |
| `asexpr.c` | 1443 | 941 | 1052 | ~88% (see below) |
| `aslist.c` | 1445 | 1336 | 847 | ~61% |
| `asmcro.c` | 1846 | 1723 | 331 | ~19% |
| `asout.c` | 1926 | 2041 | 1227 | ~62% |
| `assubr.c` | 313 | 330 | 121 | ~38% |
| `assym.c` | 715 | 708 | 69 | ~10% |
| `asdata.c` | 666 | 692 | 142 | ~21% |
| `asdbg.c` | 934 | 238 | 772 | ~83% (see below) |
| `asxxxx.h` | 1525 | 1501 | 396 | ~26% |

Two files stand out as *structurally*, not just textually, diverged:

- **`asexpr.c` (expression parser)**: SDCC's version genuinely lacks the
  functions `binop`, `exprscan`, `exprsym`, `exprx`, `newsym` — confirmed
  by presence-grep, not just a diff artifact. SDCC instead has a
  differently-signatured `expr(struct expr *esp, int n)` (upstream:
  `expr(struct expr *esp)`, no `n`), called 7 places vs upstream's 2. This
  reads as a genuine rewrite of expression parsing at some point in SDAS's
  history, not a small patch — realigning this file specifically would be
  a non-trivial merge, not a resync.
- **`asdbg.c` (debug/dump support)**: SDCC's copy is barely a quarter the
  size (238 vs 934 lines). Confirmed-missing functions: `prntarea`,
  `prntbank`, `prntexpr`, `prntsym`, `prnttsym` — these look like a
  symbol/area/expression *dump* feature (probably a `-x`-style debug or
  cross-reference listing capability), not something SDCC's build process
  currently exercises. Likely a deliberate historical trim rather than a
  gap worth closing, but flagging it since it's the single largest
  proportional divergence found.

`asout.c` is worth a note too: SDCC's version is *larger* than upstream
(2041 vs 1926 lines) and adds `outradix`, `outrwp`, `write_rmode` (SDCC-
specific object-format extensions, presumably related to the NoICE debug
records / library handling mentioned in the masterclass doc), while
upstream has since added `outr4b`, `outr4bm`, `outrbm`, `outrxbm` that
SDAS doesn't have (read as newer relocation-record variants, plausibly for
larger/segmented address spaces — not yet assessed for relevance to
8080/8085 work).

`asmain.c` divergence is *purely additive* on SDCC's side (functions
`create_temp_path`, `search_path_append`, `search_path_fopen` — SDCC's
multi-path library/include search, sensible given SDCC's build layout) —
no upstream functions are missing from SDCC's copy, which makes this file
the least risky of the heavily-drifted ones to eventually re-sync.

## `asz80` — small, well-scoped SDCC-specific delta once undoc-instruction duplication is set aside

| file | upstream lines | sdcc lines | real diff-lines | drift |
|---|---|---|---|---|
| `z80adr.c` | 296 | 308 | 66 | ~22% |
| `z80.h` | 231 | 286 | 85 | ~33% |
| `z80mch.c` | 1452 | 2269 | 1569 | ~90% (see below) |
| `z80pst.c` | 394 | 554 | 348 | ~74% (mostly the undoc-instruction gating duplication above) |

`z80mch.c`'s huge apparent drift is misleading at face value — SDCC's copy
is 56% *larger* (2269 vs 1452 lines), consistent with this project's own
`gixiy()`/`IS_I8080_FAMILY` DD/FD-prefix rejection and `adc/sbc hl,rr` /
`in/out (c)` rejection under 8080/8085, documented already in the
masterclass doc (§11) as this project's own additions — i.e. most of this
delta is *known*, recent, and ours, not inherited fork drift. Not
re-analyzed line-by-line here since its provenance is already understood.

## `as8085` (dedicated Intel-mnemonic target) — complete and mature, no SDCC equivalent exists

`vendor/asxxxx/as8085/` (`i85mch.c` 333 lines, `i85pst.c` 373 lines,
`i8085.h` 99 lines) is a fully separate, self-contained target — not a
derivative of `asz80` — using classic Intel mnemonics (`mvi`, `lxi`, `mov`,
`sui`, `dad`, `call`, `jmp`, confirmed by direct grep of `i85pst.c`). It
ships its own test programs `t8080.asm`/`t8085.asm`/`t8085x.asm`,
structurally mirroring SDCC's own three-tier `X_8080`/`X_8085`/`X_8085X`
model exactly. It has the same complete documented + undocumented
instruction coverage as `asz80`'s 8080/8085 sub-modes (verified above).
There is no equivalent of this target anywhere in SDCC's tree — SDAS never
forked it, only `asz80`'s embedded sub-modes.

## Implications for the two open questions from the plan

**For the deferred mnemonic-dialect decision** (Zilog via `asz80` vs Intel
via dedicated `as8085`): both upstream options are complete and
instruction-set-equivalent, including undocumented instructions. Moving to
`as8085` is not blocked by a capability gap — it's a genuinely separate,
mature assembler personality, not a stub. The cost is entirely on SDCC's
side: teaching `gen.c` to emit Intel mnemonics, and figuring out whether
`as8085`'s object-file output carries whatever SDCC-specific extensions
(`outradix`/`outrwp`/`write_rmode`, NoICE debug records) SDAS's `asout.c`
currently relies on — `as8085` shares `asxxsrc`/`asout.c` (the same core
every target plugs into), so those extensions would need re-verifying
against `as8085` specifically, not assumed to carry over. Not yet checked
in this pass — next step if that path is chosen.

**For "realign SDAS with upstream" generally**: this is not a single clean
resync. `asxxsrc` divides into an easy tier (`assym.c`, `asdata.c`,
`aslex.c`, `asmcro.c` — 10-20% drift, additive) and a hard tier
(`asexpr.c`, `asdbg.c` — real structural rewrites requiring an actual
merge, not a patch pull). `asz80`'s 8080/8085-specific code is
comparatively low-risk to realign precisely *because* upstream already has
the same instructions SDAS added — the redundant `M_UNDOC85`/
`.allow_undocumented` gating layer could plausibly be simplified to lean
on upstream's existing `.8085x`-only gate instead, which would be a
reduction in SDCC-specific surface area, consistent with Benedikt's
original "reduce maintenance burden" framing.

## Not yet done (possible follow-ups, not started)

- Confirm whether `rim`/`sim` truly don't exist upstream in `asz80`, or
  live somewhere this grep pass didn't check.
- Check `linksrc`/`sdldz80` for the equivalent drift (not compared here —
  this pass was `asxxsrc`+`asz80`+`as8085` only, per the plan's scope).
- Verify `as8085`'s `asout.c` usage actually supports SDCC's NoICE/debug
  object-format extensions, if the Intel-mnemonic path is chosen later.
