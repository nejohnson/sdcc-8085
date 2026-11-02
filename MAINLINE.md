# Following mainline SDCC

`main` is SDCC trunk, imported from Subversion with `git svn`, plus this
repository's `.gitignore`.  `feat/i8085` is the fork.  Trunk reaches the
fork only through `main`.

Needs `git-svn` and `subversion` installed.

## Updating main

    git svn fetch
    git checkout main
    git merge svn/git-svn -m "Merge trunk rNNNNN into main"

`svn/git-svn` is the import.  Each trunk revision is one commit, and the
revision number is in its `git-svn-id:` line, so `git log --grep=@NNNNN`
finds it.  The merge into `main` never conflicts:  the only file `main`
adds is `.gitignore`.

## Merging main into the fork

On a branch, never directly on `feat/i8085`:

    git checkout -b merge/trunk-rNNNNN feat/i8085
    git merge main

Then:

1. Resolve the conflicts.  Where trunk fixed a bug this fork also fixed,
   take trunk's fix and drop ours, tests included.  Bug numbers are in
   both sides' commit subjects, so a merge starts with comparing the two
   lists.
2. Check what is left of our changes with `git diff main`, not just the
   conflicts.  A three-way merge keeps our side wherever trunk did not
   touch the same lines, even when trunk fixed the same thing elsewhere
   or added a change and later took it out again.  Every remaining hunk
   should be for i8080, i8085, stm8, ASxxxx, or a general fix trunk does
   not have.
3. The ports this fork does not carry must be identical to `main`:
   `git diff main --stat -- sdcc/src/z80 sdcc/src/mcs51 ...` shows
   nothing.
4. `src/SDCCerr.h`:  trunk owns the numbering.  Our codes go after
   trunk's last one, and a number that changes is searched for in
   `#pragma disable_warning` lines under `support/`.
5. `configure`:  keep the merged file rather than regenerating it.
   Trunk's carries a hand-added section (the sdcpp `--with-pkgversion`
   arguments) that autoconf does not produce.  Only `configure.ac`
   changes of our own need regenerating, and then the hand-added part
   has to be put back.
6. A new port in trunk needs `--disable-<port>-port` in the build.
7. Manual:  `git diff <old> main -- sdcc/doc/sdccman.lyx` lists trunk's
   manual changes, to be carried into `sdcc/doc/sdccman.mm` by hand.
8. Clean build, wipe `gen/` and `results/`, and run the regression for
   i8085, i8085-undoc, i8080, stm8 and stm8-large.  No new failures.
9. Merge the branch into `feat/i8085` with a merge commit.

## A release

An SDCC release is an SVN tag copied from trunk, for example
`tags/sdcc-4.5.0` from `/trunk:15245`.  `svn log -v -l1` on the tag
gives the trunk revision, and that revision's commit in `svn/git-svn` is
what gets merged:

    svn log -v -l1 https://svn.code.sf.net/p/sdcc/code/tags/sdcc-4.7.0
    git merge $(git log --format=%H --grep='@NNNNN ' svn/git-svn)

## A fresh clone

The import's bookkeeping is not part of a clone.  To set it up again:

    git svn init --prefix=svn/ https://svn.code.sf.net/p/sdcc/code/trunk
    git update-ref refs/remotes/svn/git-svn <latest trunk commit on main>
    git svn fetch

`git svn` rebuilds its revision map from the `git-svn-id:` lines and
carries on from there.

## History

`main` began as a plain checkout of trunk at r16710 (c3c9e098).  Commit
191126a1 joins it to the import of r16710, so the history from there
onwards is trunk's own.  svn had expanded the `$Id$` keyword in 22 files
of that checkout, and those lines are back to the unexpanded form, as in
the repository.
