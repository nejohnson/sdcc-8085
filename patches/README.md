# Patches

Standalone patches derived from this project's work, intended for
submission to the relevant upstream project on their own technical
merits. Two separate tracks, since the two upstream projects have
different maintainers and submission processes:

- **`sdcc/`** - patches against SDCC itself (`sdcc/src/...`), for
  submission to the sdcc-devel mailing list. Kept free of any
  8080/8085-project framing, so each can be evaluated purely as a
  general SDCC bug fix.
- **`asxxxx/`** - patches against the vendored ASxxxx Cross Assemblers
  (`vendor/asxxxx/...`, mirroring `nejohnson/asxxxx-upstream`), for
  submission to ASxxxx's author Alan R. Baldwin via the bug-report form
  linked from https://shop-pdp.net/ashtml/asxbug.php (see
  `vendor/asxxxx`'s own `VENDOR.md`). The vendored submodule itself stays
  pristine and read-only at all times - patches here are prepared in a
  throwaway local branch against the submodule, verified, then the
  submodule is restored to its pinned tag before anything is committed
  to this outer repo.

Format: `git format-patch` output (apply with `git am` or `patch -p1`),
one file per patch, numbered per-track in submission order. Each patch's
commit message describes the bug, the fix, and how it was verified.

## Workflow for adding a new patch

**For an SDCC patch:**
1. Develop and validate the fix on its own branch, branched off `main`
   (see `bugfix/3915` for the precedent) - not off `feat/i8085` - so the
   patch stays a clean, minimal diff against pristine SDCC with no
   8080/8085-project history mixed in.
2. Once validated, cherry-pick the commit onto `feat/i8085` too, so this
   project's own tree benefits from the fix.
3. Generate the patch: `git format-patch -1 <commit> --stdout > patches/sdcc/NNNN-description.patch`
4. Commit the patch file here on `feat/i8085` and push.

**For an ASxxxx patch:**
1. Work in `/home/njohnson/Projects/asxxxx-upstream` - a separate,
   persistent local clone of `nejohnson/asxxxx` (**not** the
   `vendor/asxxxx` submodule checkout inside this repo, which stays
   pristine and pinned at all times - see below). Branch off `master`,
   apply and commit the fix there, with a commit message written for
   Alan Baldwin as the audience (describe the bug, the fix, and how it
   was verified - no SDCC/i8085-project framing).
2. Verify the fix directly: build a standalone copy of the affected
   assembler/tool with plain `gcc` (the vendored tree ships old-school
   per-IDE project files, not a POSIX Makefile - gather the relevant
   `asxxsrc/*.c` + target-specific `.c` files by hand, cross-checked
   against a current `asxmak/vs22/build/<target>/*.vcxproj` file for the
   exact list), reproduce the bug against the unpatched build, confirm
   the fix resolves it against the patched build. Re-run the relevant
   upstream self-tests (`t80.bat`/`tz80.bat`/etc.) before and after as a
   regression check.
3. Push the branch to `origin` (`nejohnson/asxxxx`), then merge to
   `master` and push that too once verified - see
   `asxxxx-integration-plan.md` for the current, still-open questions
   about exactly when to merge vs. leave as a reviewable branch.
4. Generate the patch from the real commit:
   `git format-patch -1 <commit> --stdout > patches/asxxxx/NNNN-description.patch`
   (run from within the standalone clone).
5. The `vendor/asxxxx` submodule inside this repo is a completely
   separate checkout, pinned to a release tag - it is never used for
   development and must never show as dirty. Bumping its pin to a new
   ASxxxx commit (once one is ready to actually build against) is a
   deliberate, separate step, tracked in `asxxxx-integration-plan.md`,
   not part of producing the patch file itself.
6. Commit the patch file here on `feat/i8085` and push.

## Patches

### sdcc/

| File | Bug | Status |
|---|---|---|
| `0001-z80-fix-genEor-zero-run-clobber-check-bug-3915.patch` | SDCC bug #3915: `genEor`'s zero-run clobber check only inspected the first register in a copied range, missing later-byte clobbers. Manifests with IY unavailable/reserved (`--reserve-regs-iy`, or any IX/IY-less z80-family target). | Fixed, validated (0 failures/0 abnormal stops across all 16 z80-family regression sub-targets), not yet submitted upstream. |

### asxxxx/

| File | Bug | Status |
|---|---|---|
| `0001-asz80-fix-i85pg1-lxi-d.patch` | `asz80/z80mch.c`'s `i85pg1[0x11]` incorrectly marks `LD DE,nn`/`LXI D,nnnn` as "not a standard 8085 instruction" - an isolated one-entry transcription error (siblings at 0x01/0x21 for BC/HL are correct, and the undoc-enabled `x85pg1[0x11]` is also correct). Discovered because it broke the [end-to-end build-and-swap test](../asxxxx-swap-test-report.md) - real SDCC-generated `.8085`-mode code uses this instruction constantly. Also extended `asz80/t80.asm` with a `.8085`-mode section, since the existing test never exercised `.8085` mode at all (only `.8080`) and wouldn't have caught this. | **Landed** on `master` in `nejohnson/asxxxx` as commit `1fbc20f`, verified (before/after assembly of all four `LD rp,nn` forms, plus the existing `t80.bat` self-test pipeline before/after), not yet submitted to Baldwin. |
| `0002-asxxsrc-fix-aslex-half-buffer.patch` | `asxxsrc/aslex.c`'s three `fgets()`/`fgetm()` calls in `nxtline()` pass `NINPUT` (380) instead of `NINPUT*2` (759, `ib[]`'s actual declared size) as the max read length - a stale size argument from before the buffer was doubled. Any source line at or past 380 characters gets truncated mid-line; if it's a comment, the untagged tail is read back as bogus source on the next line. Applies to every `asxxsrc`-based target (asz80, as8085, aspic, ...), not SDCC-specific - discovered because SDCC's `--fverbose-asm --i-code-in-asm` output produces comment lines up to ~380 characters. | **Landed** on `master` in `nejohnson/asxxxx` as commit `83a99c1`, verified (binary-searched failure threshold: exactly 379/380 chars before the fix matching `NINPUT`, 759 chars after matching `NINPUT*2-1`; `t80.bat`/`tz80.bat` self-tests clean before/after), not yet submitted to Baldwin. |
