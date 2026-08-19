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
| `i85pg1[0x11]` (LXI D marked illegal on 8085) | **ASxxxx** | **Done.** Landed on `master` in `nejohnson/asxxxx` as commit `1fbc20f`. Also extended `asz80/t80.asm` with a `.8085`-mode section covering all four `LD rp,nn` forms, closing the coverage gap that let this through. | Clean bug, no controversy expected |
| Long comment-line lexer limit | **ASxxxx** | **Done.** Landed on `master` in `nejohnson/asxxxx` as commit `83a99c1`. Root cause: `asxxsrc/aslex.c`'s three `fgets()`/`fgetm()` calls in `nxtline()` passed `NINPUT` (380) instead of `NINPUT*2` (759, `ib[]`'s actual declared size - the doubling is pre-existing headroom for `.define` substitution growth) - a stale size argument, not a genuinely undersized buffer. Fix confirmed via binary-searched failure threshold: exactly 379/380 chars before the fix (matching `NINPUT` precisely), 759 chars after (matching `NINPUT*2-1`). Applies to every `asxxsrc`-based target, not just Z80. | Not SDCC-specific - any long input line trips it, on any target |
| `.optsdcc` directive unrecognized | **SDCC** | **Done.** `_z80_genAssemblerStart` emits it as `;optsdcc` for i8085 only - i8080 unaffected, still gets the real directive (i8080 stays on `sdasz80` for now, not switched to vendor tools in this pass). | |
| `-a`/`-b` flag collision | **SDCC** | **Done, but needed more than the two mandated files could reach cleanly.** The `-b AREA = addr` line turned out to be written by shared code in `SDCCmain.c` (`WRITE_SEG_LOC`, gated on `TARGET_Z80_LIKE`, shared with z80/z180/rabbit/etc.) - not touchable without affecting other targets. Worked around within the `src/i8085/main.c`/`crt0.s` mandate: `i8085_port.linker.needLinkerScript = 0` skips that shared `.lk`-file-writing block entirely, and a new `linker.mcmd` macro builds vendor's actual command line (`-a` not `-b`) instead. Also found and handled: vendor's Intel Hex output flag needs `-i+"name"` syntax, not SDAS's `-i name`. | |
| `s__<AREA>`/`l__<AREA>` symbol naming | **SDCC** | **Done**, subtler than expected. SDCC's area names already carry a leading underscore (`_DATA`), so vendor's `l_<area>` naturally comes out as `l__DATA` with zero changes needed - only `s_<area>_<n>`'s numeric instance suffix needed handling (`s__DATA` -> `s__DATA_1`), relying on `crt0.rel` always linking first and contributing an empty chunk (confirmed true). | |
| Area-flags format divergence (`.rel` A-line) | **SDCC** | **Confirmed a non-issue** once both sides are vendor's own tools consistently - no `Conflicting flags in area` error. | Matches the hypothesis from the structural follow-up test |
| Assembler invocation syntax (positional output filename) | **SDCC** | **Done.** New `_i8085VendorAsmCmd`: `asz80 $l $3 $1.asm`, no explicit output arg. | |
| **NEW: banking omitted for SDCC's non-`_CODE`/`_DATA` areas** | **SDCC** | **Done.** Vendor's `asz80` only auto-assigns a bank to its own hardcoded `_CODE`/`_DATA` (`asz80/z80pst.c`) - SDCC's other areas (`_HOME`, `_GSINIT`, `_GSFINAL`, `_INITIALIZER`, `_INITIALIZED`, `_BSEG`, `_BSS`, `_HEAP`) got no bank, so `aslink` placed them in a separate address space starting at 0, overlapping everything else. Fixed by tagging them `(BANK=_CSEG)`/`(BANK=_DSEG)` in `crt0.s`. Verified: byte-for-byte-identical `.ihx` against the SDAS/`sdldz80` baseline for `tst_swap.c`. | Found while investigating item 5, not anticipated by the original triage |
| **NEW: `i8085.lib`'s archive format** | **SDCC** | **Blocking - not started.** SDCC's `i8085.lib` is a real GNU `ar` archive (confirmed: `!<arch>` magic bytes, `file` reports "current ar archive"). Vendor's `aslink` doesn't parse `ar` archives at all - `linksrc/lklibr.c` opens a "library" file and reads it as a **plain-text list of relative `.rel` filenames**, one per line (exactly like `support/regression/fwk/lib/fwk.lib` already does - confirmed that file is plain ASCII text, `statics.rel`/`extern1.rel`/`extern2.rel`, one per line - so there's already a working precedent for this simpler format elsewhere in SDCC's own build). Every single `test-i8085` case failed to link with this in place (`?ASlink-Error-<cannot open> : "i8085.lib"`) - deterministic, confirmed via the real regression run, not a flake. | Discovered running the real regression suite, not part of the original 5-item scope |
| **NEW: `device/lib/i8085/Makefile` hardcodes `sdasz80`** | **SDCC** | **Blocking - not started.** `SAS = $(top_builddir)/bin/sdasz80` at line 16 - the device-lib build for i8085 bypasses `src/i8085/main.c` entirely, calling the real assembler directly. Confirmed worse than just "wrong tool": real `sdasz80` rejects the `(BANK=_CSEG)` syntax the crt0.s banking fix (above) now requires ("undefined symbol _CSEG") - so as of the crt0.s fix landing, `make` in this directory is actively broken, not just using the wrong assembler. | Outside the original two-file mandate; needs a third file touched |
| **NEW: `device/lib/i8085-undoc/crt0.s` is a separate, untouched copy** | **SDCC** | **Not started.** Confirmed genuinely separate from `device/lib/i8085/crt0.s` (different content, unmodified since before this session). `--allow-undocumented-instructions` builds (the same `i8085_port`, now vendor-targeting) will hit the same banking/symbol-naming issues this copy never received the fix for. | |
| **NEW: `aslex.c`'s line buffer still isn't big enough** | **ASxxxx** | **Not started.** Found running the full i8085 regression: `tst_long_asm_line.c` generates a genuine 1135-character code line (a long chained ternary, not a debug comment - happens regardless of `--fverbose-asm`), past even the just-landed `NINPUT*2` (759-char) fix. Confirmed the installed `asz80` has that fix (correctly handles a 400+ char test line) - this is a distinct, larger case, not the same bug resurfacing. The `NINPUT*2` fix's own commit message called the doubling "deliberate headroom for `.define` substitution growth," not a considered answer to "how long can a line be" - the doubled fixed size was never meant to be a hard ceiling. Recommend a genuinely dynamic (realloc-based) line buffer this time, not another fixed bump - there's no principled way to guess the next "big enough" constant. | Found via the SDCC track's regression run, not part of the original 2 items |
| **NEW: `asz80` can't handle non-ASCII (UTF-8) symbol names** | **ASxxxx** | **Not started, not yet confirmed fixable.** `tcc_83_utf8_in_identifiers.c` fails with `?ASxxxx-Error-<q>` on a symbol like `_Lefèvre`. SDCC supports Unicode identifiers as a language feature, so this isn't something SDCC can route around - needs investigating whether `asz80`'s symbol-table/lexer code can be made 8-bit-clean, or whether this is a harder architectural limit not worth chasing. Also confirmed hit by `tst_p99-conformance.c` (`_has_καθολικός_χαρακτήρ`, `_κ`). | Found via the SDCC track's regression run |
| **NEW: `aslink`'s symbol tokenizer stops at `-`** | **ASxxxx** | **Not started.** `tst_bug-2031.c` fails with `?ASlink-Error-Invalid symbol type -20 for tst_bug`. Root cause (independently verified: read `linksrc/lkdata.c`'s `ctype[128]` table directly, confirmed `ctype[0x2D]` - the `-` character - is `BINOP`, not `LETTER`/`DIGIT`): `linksrc/lklex.c`'s `getid()`-style tokenizer loops on `ctype[c] & (LETTER|DIGIT)`, so it stops at the first `-`. SDCC derives a local symbol name from the module name (`tst_bug-2031_1 =R1^D(...)`, from source filename `tst_bug-2031.c`, which legitimately contains a dash), so the linker reads `tst_bug` as the id and misparses the leftover `-2031_1 ...` as the type-code field. This is a real gap between what `asz80` will legitimately emit (dashes in symbol names, since it doesn't restrict what a module-name-derived symbol can contain) and what `aslink`'s own parser accepts back in - not an SDCC-side workaround candidate, since disallowing dashes in module/source-file names isn't a real option. | Found via the SDCC track's regression run |

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

ASxxxx track: both assigned items done and pushed to `master` in
`nejohnson/asxxxx` (see table above). Standing by for further items.

SDCC track: all 5 original items done within `src/i8085/main.c` and
`device/lib/i8085/crt0.s`, verified against a real `bin/sdcc -mi8085`
-> vendor `asz80` -> vendor `aslink` -> `ucsim_i8085` run matching the
SDAS/`sdldz80` baseline exactly. Found 3 more, previously-unknown
blockers while validating against the real regression suite (see
table) - all still SDCC-track, all still consistent with "SDCC adapts
to ASxxxx, ASxxxx stays untouched beyond its own bug fixes," but two
of them need a third file (`device/lib/i8085/Makefile`) the original
two-file mandate couldn't reach, and the archive-format one needs a
decision on approach before it can be fixed at all. `test-i8085`
cannot pass end-to-end until these are resolved. Scope broadened
(2026-08-18, Neil approved) to cover all three - mandate now also
includes `device/lib/i8085/Makefile` and `device/lib/i8085-undoc/
crt0.s`. Recommended approach for the archive-format item: generate
`i8085.lib` as a plain-text `.rel`-filename list, matching
`fwk.lib`'s existing format, rather than `sdar`'s GNU `ar` format -
no other target depends on `i8085.lib`'s format so there's no
compatibility concern.

**2026-08-19**: the 3 broadened-scope items were implemented (both
`i8085.lib` and `i8085-undoc`'s copy confirmed genuinely plain text,
both `Makefile.in`s and both `crt0.s` files modified), but the agent's
own session had an ~8.5 hour gap overnight with no live process and no
report - resumed from its saved transcript rather than lost. The full
`test-i8085`/`test-i8085-undoc`/`test-i8080` regression it then ran
came back **4738/4738 failures (100%) on both i8085 and i8085-undoc**
(`i8080` clean, but untouched/expected). Root-caused directly via
`strace` rather than trusting the generic "cannot compile/link" .out
text: `_i8085VendorLinkCmdMacro`'s macro substitution is broken for
`{z80libspec}`/`{z80extralibfiles}`/`{z80extralibpaths}`/`{z80crt0}` -
only `{z80bases}` (the `-b`->`-a` fix) and `{z80outputtypeflag}` are
substituting correctly. The actual `aslink` command has `i8085.lib`
and the library search path as bare, unflagged positional arguments
(no `-k`/`-l`), and `{z80crt0}` appears to have picked up the wrong
value entirely (`tst_swap.rel` where `crt0.rel` should be, then
`tst_swap.rel` again later) - `crt0.rel` doesn't appear in the command
at all. Sent this precise diagnosis (not just "it's broken, go look")
back to the agent along with an explicit instruction to verify the
*actual command line* via strace/debug output before trusting `make`'s
exit code again, not just re-run and hope.

**2026-08-19, later**: the linker-command fix worked - full re-run went
from 4738/4738 failures to **9/6356 failures on both i8085 and
i8085-undoc, 0 abnormal stops on all 3 ports**, `i8080` still clean.
Same 9 cases fail on both ports. Investigated several directly rather
than just handing the raw list back:

- `tst_long_asm_line.c` - genuinely exceeds even the ASxxxx track's
  just-landed fix. Confirmed the installed `asz80` does have the
  `NINPUT*2` fix (built after `83a99c1`, and directly verified a 400+
  char line assembles fine on it) - but this test's generated line is
  **1135 characters**, past even the doubled 759-char capacity, and
  it's genuine compiled code (a long chained ternary), not a debug
  comment, so it happens with or without verbose-asm flags. The
  `NINPUT*2` fix's own commit message called the doubling "deliberate
  headroom for `.define` substitution growth," not a considered answer
  to "how long can a line be" - suggests the right further fix is a
  genuinely dynamic (realloc-based) line buffer in `asxxsrc/aslex.c`,
  not another fixed bump. **New ASxxxx-track item.**
- `tcc_83_utf8_in_identifiers.c` - `asz80` errors on a non-ASCII
  (UTF-8, e.g. `_Lefèvre`) character in a symbol name
  (`?ASxxxx-Error-<q>`). SDCC supports Unicode identifiers as a
  language feature, so declining to emit them isn't a real SDCC-side
  option - needs investigating on the ASxxxx side (is 8-bit-clean
  symbol handling feasible at all, or a hard architectural limit).
  **New ASxxxx-track item, not yet confirmed fixable.**
- `tst_gcc-torture-execute-ashldi-1.c` - passes cleanly when built in
  isolation (both the `.rel` compile and the full `.ihx` link+run) but
  was reported as a failure in the `-j3` full-suite run. Looks like a
  parallel-build race, not a correctness bug - possibly vendor's tools
  aren't safe for concurrent invocation (shared temp file, non-unique
  intermediate name, etc.). **Not yet confirmed** - needs a `-j1`
  re-run to see if the same 9 (or a different set) fail, which would
  distinguish real flakiness from something else.
- `tst_bug-2031.c` - `?ASlink-Error-Invalid symbol type -20 for
  tst_bug`, reproducible in isolation (not flaky). Root cause not yet
  investigated.
- `ashrdi-1`/`lshrdi-1`/`tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_
  bytewise.c`/`tst_p99-conformance.c`/`malloc.c` - not yet individually
  diagnosed.

Handed this full picture to the SDCC-track agent to continue the
systematic triage (confirm/deny the flakiness hypothesis with a `-j1`
run, diagnose the remaining undiagnosed cases, distinguish genuine
SDCC-side fixes from ASxxxx-side ones) rather than diagnosing every
case here. Still nothing pushed to GitHub for this track - close, but
not at 0 failures yet.

**2026-08-19, later still**: agent reported back with real further
progress, independently verified before writing this up:

- **Fixed, verified (SDCC-side)**: `malloc.c` was failing because
  `device/lib/i8085/heap.s` (and its `i8085-undoc` twin) declares a
  `_HEAP_END` area that `crt0.s` never references, so it never picked
  up a `(BANK=...)` annotation from *any* source and landed at address
  0 instead of right after `_HEAP`'s 1023 reserved bytes - corrupting
  `malloc()`'s heap-size calculation. Fixed by annotating `heap.s`'s
  three areas directly (confirmed via diff review: clean, well-
  commented, matches `crt0.s`'s existing convention). 0/59 tests fail
  now.
- **3 more instances of the already-routed long-line item**:
  `ashrdi-1`/`lshrdi-1` (845-char `--i-code-in-asm` jump-table comment
  lines) and `tst_mm-pnvi-ae-udi-pointer_copy_user_ctrlflow_bytewise.c`
  (far worse - 3360 characters). No new category, just more evidence
  for the dynamic-buffer fix already on the ASxxxx track.
- **1 more instance of the already-routed UTF-8 item**:
  `tst_p99-conformance.c` (`_has_καθολικός_χαρακτήρ`, `_κ`).
- **New ASxxxx-track item, independently verified**: `tst_bug-2031.c`
  fails with `?ASlink-Error-Invalid symbol type -20 for tst_bug`.
  Root cause (checked directly against `linksrc/lkdata.c`'s `ctype[128]`
  table): `-` (0x2D) is classified `BINOP`, not `LETTER`/`DIGIT`, so
  `lklex.c`'s tokenizer stops at the first `-` in a symbol name. SDCC
  derives a local symbol name from the module name
  (`tst_bug-2031_1 =R1^D(...)`, from source filename `tst_bug-2031.c`,
  which legitimately contains a dash) - `asz80` happily emits it,
  `aslink` can't parse it back. Routed to the ASxxxx track.

Still waiting on the `-j1` comparison to settle whether `ashldi-1` is
genuinely a parallel-build race. Tally of the original 9: 1 fixed
(`malloc.c`), 4 routed to ASxxxx as the long-line item
(`tst_long_asm_line`/`ashrdi-1`/`lshrdi-1`/`mm-pnvi-...`), 2 routed as
the UTF-8 item (`tcc_83_utf8_in_identifiers`/`tst_p99-conformance`), 1
routed as the new dash-in-symbol item (`tst_bug-2031`), 1
(`ashldi-1`) still open pending the `-j1` result.
