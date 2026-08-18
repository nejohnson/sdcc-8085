# ASxxxx integration: two-track plan

> Follow-up to `asxxxx-swap-test-report.md`. That report found three
> possible paths to resolve the object-format/linker incompatibilities
> blocking a direct swap; this doc commits to a specific one and splits
> the resulting work into two independently-tracked, independently-
> pushable pieces of work, coordinated through this doc.

## Decision: SDCC adapts to ASxxxx, not the other way around

`sdcc/sdas/` (SDAS) is not touched by this work at all. It keeps serving
every other z80-family sub-target (z180, rabbit, tlcs90, ez80, r800,
sm83/gbz80) and every other SDCC backend (mcs51 and friends) exactly as
today - `sdldz80`/`sdasz80` are a shared binary across all of them (see
the NoICE/linker follow-up report), so changing their behavior would be
a whole-toolchain decision this project has no mandate or need to make.

Instead: only `src/i8085/main.c`'s own invocation of the assembler and
linker changes, to call vendor's (patched) `asz80`+`aslink` directly
instead of `sdasz80`/`sdldz80`. This is scoped entirely within the
already-fully-independent i8085 backend (Project 2's payoff) - no other
target is affected.

ASxxxx-side changes go against `vendor/asxxxx`'s upstream source
(developed and pushed in the standalone `nejohnson/asxxxx` repo, *not*
inside the pinned, read-only submodule checkout), scoped as tightly as
possible to what SDCC's i8085 backend actually needs, kept free of any
SDCC-specific framing, so the resulting patch series is genuinely
reviewable and mergeable by Alan Baldwin on its own merits.

## Ownership triage

Bug fixes are default-yes for the ASxxxx track. Anything that would be
*new* behavior needs to clear "would Baldwin plausibly want this
independent of SDCC" - if it doesn't, it belongs on the SDCC track
instead (adapt to what ASxxxx already does), not as a feature request.

| Gap | Track | Status | Notes |
|---|---|---|---|
| `i85pg1[0x11]` (LXI D marked illegal on 8085) | **ASxxxx** | Fix verified, patch ready (`patches/asxxxx/0001-asz80-fix-i85pg1-lxi-d.patch`) - not yet applied as a real commit in the `nejohnson/asxxxx` repo | Clean bug, no controversy expected |
| Long comment-line lexer limit | **ASxxxx** | Not started | Not SDCC-specific - any long input line trips it. Root-cause not yet found (fixed/short buffer somewhere in `aslex.c`, not yet located). Legitimate general robustness fix Baldwin could accept on its own merits. |
| `.optsdcc` directive unrecognized | **SDCC** | Not started | SDCC's own invention. Fix: don't emit it (or emit as a `;` comment) when targeting vendor's assembler. Nothing to ask upstream for. |
| `-a`/`-b` flag collision | **SDCC** | Not started | Vendor's `-a`/`-b` are ASxxxx's own long-established interface. Fix: use vendor's actual flag meanings in `src/i8085/main.c`'s linker-invocation command template. |
| `s__<AREA>`/`l__<AREA>` symbol naming | **SDCC** | Not started | Adapt `device/lib/i8085/crt0.s` (and anywhere else SDCC-generated/runtime code references these) to vendor's native `s_<area>_<n>`/`l_<area>` convention. Deliberately *not* an ASxxxx feature request - no independent justification for Baldwin to add a second naming convention. |
| Area-flags format divergence (`.rel` A-line, the big one) | **SDCC** | Not started | Not a bug upstream - 20 years of legitimate format evolution (banking support). `src/i8085/main.c`'s object-file handling (or whatever downstream of it reads/relies on the old flags encoding) needs to work with the current format as vendor's assembler actually emits it. |
| Assembler invocation syntax (positional output filename) | **SDCC** | Workaround identified in swap test (drop the explicit output arg) | Straightforward `_z80AsmCmd`-equivalent template change in `src/i8085/main.c`. |

Add new rows here as either track surfaces something new. Don't start
work on an item until it has a Track assigned in this table.

## Open question this doesn't resolve yet

Everything found so far is `asz80`(Zilog-mnemonic)-specific. `as8085`
(Intel-mnemonic) was clean at the one spot checked, but was never tested
end-to-end, and switching to it is still the deferred decision from the
original realignment report. Both tracks should treat `asz80` as the
working assumption for now (that's what SDCC currently emits) but flag
anything that looks like it'd be moot under a future dialect switch,
rather than silently assuming `asz80` is the final answer.

## Workflow

**ASxxxx track**, in `/home/njohnson/Projects/asxxxx-upstream` (clone of
`nejohnson/asxxxx`, tracks `origin/master`):
1. Take the next unstarted ASxxxx-track item from the triage table above.
2. Branch off `master`. Confirm the bug reproduces (build a standalone
   copy of the affected tool with plain `gcc` - the vendored tree ships
   old-school per-IDE project files, not a POSIX Makefile; cross-check
   the exact file list against a current `asxmak/vs22/build/<target>/
   *.vcxproj`). Fix it. Verify with a direct before/after test (same
   discipline as the `i85pg1` fix: unpatched build reproduces, patched
   build resolves it with correct output). Where practical, also extend
   the relevant upstream self-test (`asz80/t80.asm` etc.) to cover the
   gap that let the bug through, and run the existing self-tests
   (`t80.bat`/`tz80.bat`/etc.) as a sanity check nothing else broke.
3. Commit with a message written for Baldwin as the audience - describe
   the bug/gap, the fix, how it was verified. No SDCC/i8085-project
   framing.
4. Push the branch to `origin` (`nejohnson/asxxxx`).
5. Report back (commit hash, branch name, what was verified) so the
   triage table can be updated and the SDCC track knows a fix is ready
   to pull in.

**SDCC track**, in the `sdcc-8085` worktree:
1. Take the next unstarted SDCC-track item from the triage table above.
2. For items that depend on an ASxxxx-track fix landing first (none
   currently do, but future ones might), wait for that fix to be
   reported ready rather than working around it a second time.
3. Make the change in `src/i8085/main.c` (or wherever it actually
   belongs - `device/lib/i8085/crt0.s` for the symbol-naming item).
4. Validate against a standalone-built vendor `asz80`+`aslink` (same
   method used in the swap test and structural follow-up) before
   trusting the full regression suite - a clean regression run through
   `sdasz80`/`sdldz80` proves nothing about vendor-toolchain compat.
5. Once individual pieces are working, full `test-i8085`/
   `test-i8085-undoc`/`test-i8080` regression, same discipline as every
   other checkpoint this project has used.
6. When a validated ASxxxx-track fix is ready, bump the `vendor/asxxxx`
   submodule pin to that commit (or a tag once one exists) and re-
   validate.

## Status

Not started - this doc is the handoff point for both tracks.
