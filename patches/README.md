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
1. In `vendor/asxxxx/` (the submodule), create a throwaway local branch
   off `master`, apply and commit the fix there, with a commit message
   written for Alan Baldwin as the audience (describe the bug, the fix,
   and how it was verified - no SDCC/i8085-project framing).
2. Verify the fix directly: build a standalone copy of the affected
   assembler/tool with plain `gcc` (the vendored tree ships old-school
   per-IDE project files, not a POSIX Makefile - gather the relevant
   `asxxsrc/*.c` + target-specific `.c` files by hand, cross-checked
   against a current `asxmak/vs22/build/<target>/*.vcxproj` file for the
   exact list), reproduce the bug against the unpatched build, confirm
   the fix resolves it against the patched build.
3. Generate the patch: `git format-patch -1 <commit> --stdout > patches/asxxxx/NNNN-description.patch`
   (from within `vendor/asxxxx/`).
4. **Restore the submodule to its pristine pinned state** -
   `git checkout master && git branch -D <scratch-branch>` in
   `vendor/asxxxx/` - before committing anything in the outer repo. The
   submodule must never show as dirty or point anywhere but its pinned
   tag.
5. Commit the patch file here on `feat/i8085` and push.

## Patches

### sdcc/

| File | Bug | Status |
|---|---|---|
| `0001-z80-fix-genEor-zero-run-clobber-check-bug-3915.patch` | SDCC bug #3915: `genEor`'s zero-run clobber check only inspected the first register in a copied range, missing later-byte clobbers. Manifests with IY unavailable/reserved (`--reserve-regs-iy`, or any IX/IY-less z80-family target). | Fixed, validated (0 failures/0 abnormal stops across all 16 z80-family regression sub-targets), not yet submitted upstream. |

### asxxxx/

| File | Bug | Status |
|---|---|---|
| `0001-asz80-fix-i85pg1-lxi-d.patch` | `asz80/z80mch.c`'s `i85pg1[0x11]` incorrectly marks `LD DE,nn`/`LXI D,nnnn` as "not a standard 8085 instruction" - an isolated one-entry transcription error (siblings at 0x01/0x21 for BC/HL are correct, and the undoc-enabled `x85pg1[0x11]` is also correct). Discovered because it broke the [end-to-end build-and-swap test](../asxxxx-swap-test-report.md) - real SDCC-generated `.8085`-mode code uses this instruction constantly. Also flags that `asz80/t80.asm`, the closest existing upstream test, never exercises `.8085` mode at all (only `.8080`), so it wouldn't have caught this even with reference output available. | Fixed, verified directly (before/after assembly of all four `LD rp,nn` forms - BC/HL/SP unaffected, DE now assembles with correct opcode bytes), not yet submitted upstream. |
