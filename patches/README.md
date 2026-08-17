# Patches

Standalone patches derived from this project's work, intended for submission
upstream to the SDCC project. Each patch here is a general-purpose bug fix
against pristine SDCC (`main`, the SVN trunk baseline) — not part of the
8080/8085 port itself, and free of any i8085-project framing, so it can be
evaluated purely on its own technical merits.

Format: `git format-patch` output (apply with `git am` or `patch -p1`),
one file per patch, numbered in submission order. Each patch's commit
message describes the bug, the fix, and how it was verified.

## Workflow for adding a new patch

1. Develop and validate the fix on its own branch, branched off `main`
   (see `bugfix/3915` for the precedent) — not off `feat/i8085` — so the
   patch stays a clean, minimal diff against pristine SDCC with no
   8080/8085-project history mixed in.
2. Once validated, cherry-pick the commit onto `feat/i8085` too, so this
   project's own tree benefits from the fix.
3. Generate the patch: `git format-patch -1 <commit> --stdout > patches/NNNN-description.patch`
4. Commit the patch file here on `feat/i8085` and push.

## Patches

| File | Bug | Status |
|---|---|---|
| `0001-z80-fix-genEor-zero-run-clobber-check-bug-3915.patch` | SDCC bug #3915: `genEor`'s zero-run clobber check only inspected the first register in a copied range, missing later-byte clobbers. Manifests with IY unavailable/reserved (`--reserve-regs-iy`, or any IX/IY-less z80-family target). | Fixed, validated (0 failures/0 abnormal stops across all 16 z80-family regression sub-targets), not yet submitted upstream. |
