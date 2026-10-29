# Scope reduction audit: i8085 and stm8 only

Status: carried out 2026-10-28 on `feat/scope-reduction`.  Neil chose
(b) restore sdas, keep the 3b fixes, keep the groff manual, and delete
the other-port notes and `patches/`.  The pre-reduction tree is tagged
`archive/all-ports-2026-10-28`.  Verified by a clean build and a wiped
regression: i8085, i8085-undoc and i8080 0 failures, stm8 and stm8-large
2 each (bug-3803, p99-conformance, as before), and mainline's z80
sources compile against the shared headers.  The rest of this file is
the audit as written before the work.

The fork is narrowing to two targets: i8085 (with its i8080 and
i8085-undoc variants) and stm8 (with stm8-large).  Everything else goes
back to mainline, so that a future mainline merge only conflicts where we
have a reason to differ.

Reference points:

- `main` is mainline SDCC trunk at SVN r16710.  It is the only mainline
  snapshot in the repo;  there is no live tracking of trunk yet.
- `feat/i8085` is 600 commits ahead.  The net diff is 844 files,
  +64,921 / -208,368 lines.
- Uncommitted mos6502 work is parked on the local branch
  `archive/mos6502-memset-zp` (c6fa5a49), not pushed.

## 1. The one structural decision: the assembler

The fork deleted sdas/sdld (e10d7199) and moved every port to the
vendored ASxxxx.  The core compiler lost its sdas branches with it
(b90d7f6d:  SDCCmain.c +70/-129, SDCCglue.c +31/-58, port.h, SDCCmem.c).

Mainline ports emit sdas syntax and expect sdld.  So resetting the other
ports to mainline while leaving the core ASxxxx-only gives a tree where
they no longer build at all.

Two ways to go:

- (a) Keep ASxxxx-only.  Other ports are reset but cannot be built.
  Each mainline merge then conflicts wherever trunk touches `sdas/`
  (deleted here) or the link and glue code near the removed branches.
- (b) Restore sdas/sdld and mainline's sdas code paths in the core.
  ASxxxx stays as an additional path, which only ports with
  `port->linker.asxxxx` take, and only i8085 and stm8 set it.  Our core
  diff becomes "add an ASxxxx path" instead of "replace the toolchain".
  As a bonus, mainline's own regression ports (ucz80 and the rest) build
  and run again.  That is a cheap check that a merge has not broken
  shared code.

Recommendation: (b).  It is the smallest standing diff against mainline,
which is the whole point of the exercise.  The cost is a careful
one-time job:  reverse e10d7199's deletions, and re-add the sdas
branches b90d7f6d removed without disturbing the ASxxxx path.

The f8 port was removed for a naming clash with ASxxxx's (unrelated)
Fairchild F8 target (5f842d5b, 56be4665, d8f577f3).  Under (b) it comes
back as mainline has it.  Its tools are `sdasf8`/`sdldf8`, which do not
collide with the vendored `asf8`.

## 2. Port directories: reset to mainline wholesale

These hold only other-port work and go back to r16710 as they stand:

- `src/`: z80, mcs51, ds390, pic14, pic16, mos6502, hc08, pdk, and f8
  restored.
  - `src/z80` still carries the original i8085 sub-target: options,
    `_i8085_init`, `SUB_8085`, `IS_8080LIKE`.  It is dead.  The live
    `i8085_port` is defined in `src/i8085/main.c`.
- `device/lib/`: pic14, pic16, mcs51, ds390, z80 family (z80, z180,
  z80n, ez80, r800, r2k..r6k, sm83, tlcs90), mos6502 (and stack-auto),
  mos65c02, hc08, s08 (and stack-auto), pdk13/14/15, and f8/f8l
  restored.
- `device/include/pic14`, `device/include/pic16`.
- `support/regression/ports/`: every port except i8080, i8085,
  i8085-undoc, stm8 and stm8-large.  pic14-enhanced (added here) goes,
  and f8/f8l come back.
- `sim/ucsim`: f8.src restored and the test-conf.mk edits reverted.

## 3. Shared code: what each change is for

### 3a. Keep: needed by i8085 or stm8

- Port registration and target macros: 1a98c0b2 (port.h, SDCCmain.c),
  650003e4 (port.h).
- Errors used by i8085: `E_DYNAMICC_UNSUPPORTED` (e43d87c7) and
  `E_SFR_BANKED_UNSUPPORTED` (779d87e1).  Both are used in `src/i8085`.
- b826f636: SDCCopt routes non-literal memset/strncpy builtins to the
  library on 8080/8085.
- stm8: 3ab5931f (crt0 start-up: SDCCglobl.h, SDCCglue.c) and fd1f6ec3
  (ELF and debug output with the vendor tools: SDCCmain.c).
- The ASxxxx link path in SDCCmain.c, SDCCglue.c and port.h: the
  generic parts of 6f14f143, c694069a and b90d7f6d, minus the sdas
  removal (see section 1).
- Build: 7198e781, 44169d0f, 11e51fb8, d96820b5, 39a4f813 (configure,
  Makefiles, device/lib wiring, vendor ASxxxx build).
- Headers and library: 114b0218 (i8080/i8085 header guards), 97ea5f16
  (setjmp and heap), cf845f78 (`__mullong`), de2dce4a (widening
  multiplies).
- Regression: testfwk.h macros (1ed942d2) and the i8085 exclusions in
  MakeList (881129bb, bc85059c, 1fb726fa, fdc6ff37, 1d0842d9).
- ucsim i8085: f2cc6547, ac0699c7, c230af53, 60e03fb7 (flag and
  undocumented-instruction fixes), and ebcd4337 (build it with the
  i8085 ports).

### 3b. Keep: general compiler fixes and features

These are front-end or middle-end fixes that help every target,
including ours.  Keeping them costs merge conflicts only where trunk
later fixes the same thing differently.

- Diagnostics and crash fixes in SDCCast, SDCCsymt, SDCCval and SDCC.y:
  949d09eb, d26bf369, e027ae17 then 678c8c64, 17e609ab, 7624df8a,
  0d79fc09, c210ce65, bc494fc9, 6b0df23b, 229c1638, 37a01812, 2cf1f13a,
  9e699fca, a138d36b, 3b38b16a, 106d6c86, fa6c5e6a, e9df5c20, fbb41d32,
  ed5d9f37, 47cf1ea7, abe70a5c, dc1ecedb, 5f083696, bc2ba152.
- Optimizer and data-flow fixes: 36687890 (GCSE kill), d724de64
  (cseAllBlocks slowness), 91f06a01, 4d8f902b, 00fc6fbe (computeClash
  speed).
- Glue fixes: 626db99a and its follow-up ef75d08a (string literals,
  enumerators in initializers), 84f9c74d (anonymous struct in a union),
  7fce564c (static debug symbols), cd528a75 (DWARF constant).
- sdcpp: 6e921bd3 (`#pragma preproc_asm -`).
- Feature: a16c4089 `--ffunction-sections`.
- The added regression tests for these fixes, which make up most of the
  31 new `bug-*` tests.

### 3c. Revert: shared-code changes that exist only for other ports

- mcs51 (SDCCmain.c, SDCCglue.c, SDCCerr): 99819dea, ca432062,
  658d71c4, be3c625a, 36d738e4, 72870a12, 9f93003a, 58d93472
  (`checkDirectData`, error 387), 5462fd68.
- ds390: 54e0e4c8.   pdk: 97480b25 (SDCCmem.c).   Rabbit: 2afa17ba.
- hc08: db868ec4, b90f792d.   mos6502: 709f0c1a, plus the pushed
  `--no-zp-spill` fix 4abdcd02, which lives in src/mos6502 and goes
  with section 2.
- z80 family's ASxxxx-specific link bits: 8c81c951 and the z80-only
  parts of 6f14f143 and c694069a.
- pic14/pic16 core hooks, all `TARGET_IS_PIC14`-guarded or pic-only:
  f065a768 and 239be1db (SDCCicode struct-by-value and varargs),
  d2b9a0f9, b756a8db, b7caeb35, 26fbf89d, and the pic error codes
  (367207bb, 7ef5c89d, d6754f87, 51d4dfd3).
- pic14/pic16 C-library changes to generic headers and sources:
  0425c988, 1de637ee, db64f1b1, 9b897320, 518a52aa, 99a3e1fe, and the
  header parts of 239be1db, d2b9a0f9 and b756a8db.
- Regression framework: 2007e3eb (pic14-enhanced in Makefile.in), and
  other ports' MakeList and test-file exclusions.
- The f8 removal: 5f842d5b, 56be4665, d8f577f3.

Judgement calls, flagged rather than decided:

- b6398d6f: SDCCgenconstprop asserted when a port declares no `_BitInt`
  at all.  It is a real general guard, but nothing in scope hits it.
  Lean: keep.
- d60d9ee8: ralloc clears volatileAccess on spill locations in seven
  other ports.  It lives in their directories, so it reverts with
  section 2.
- d26bf369 touched generic headers and library sources as part of a
  general diagnostic.  Keep its header and library edits only where
  they are not pic-specific.

Error numbering: SDCCerr.h is append-only.  Dropping the pic and mcs51
entries shifts nothing before them, and i8085's codes (362, 363) are
earlier.  `support/valdiag` and regression `#pragma disable_warning`
lines that name removed numbers have to be checked.

## 4. Documentation and notes

- Manual: mainline's is `doc/sdccman.lyx`;  ours is the hand-written
  groff `doc/sdccman.mm`, which documents ASxxxx.  Keeping it means
  porting trunk's manual edits by hand, forever.  Reverting means losing
  the i8085, stm8 and ASxxxx text unless it is re-added to the LyX.  No
  recommendation yet:  this is about how much manual work you want to
  own.
- Repo-root notes about other ports: mcs51-asxxxx-status.md,
  ds390-asxxxx-status.md, pic14-*.md, f8-removal-proposal.md,
  remaining-ports-survey.md, sdcc-placement-audit.md, and the
  asxxxx-*-report.md files.  Move them to `notes/archive/` or delete
  them; git keeps the history either way.  FUTURE-WORK.md gets pruned
  to the two targets.
- `patches/` holds upstream-submission patches.  With upstream
  submission off the table it can go, or stay as a record.

## 5. Mechanics

1. Tag the current `feat/i8085` (for example `archive/all-ports-2026-10-27`)
   and push the tag, so every bit of the other-port work stays
   reachable.
2. Do the reduction on a branch: whole-directory resets from `main`
   for section 2, then targeted reverts and hand edits for 3c and the
   sdas restoration.  Most 3c commits will not `git revert` cleanly,
   because later commits (b90d7f6d above all) rewrote the same lines,
   so expect hand work in SDCCmain.c and SDCCglue.c.
3. Configure with only the i8085, i8080 and stm8 ports enabled.  Under
   (b), optionally one mainline port such as z80 as a canary.
4. Verify with a full rebuild and a wiped regression: i8085,
   i8085-undoc, i8080, stm8, stm8-large.  Compare against the current
   numbers, which must not get worse.
5. Separately: decide how mainline gets in.  Today `main` is one
   snapshot.  Following trunk needs either `git svn` from r16710 onward
   or periodic snapshot commits on `main`, merged into the fork.

## Decisions needed

1. Assembler: (b) restore sdas next to ASxxxx (recommended), or
   (a) stay ASxxxx-only.
2. The general fixes in 3b: keep them (recommended), or revert to a
   bare minimum diff.
3. The manual: keep groff, or go back to LyX.
4. Repo-root notes and `patches/`: archive or delete.
