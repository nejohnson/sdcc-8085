#!/usr/bin/env python3
"""Size up how much of SDCC's open bug tracker plausibly affects this fork.

Policy (Neil, 2026-09-30): we don't own the whole tracker, only the parts
that touch code this fork actually runs - the shared frontend/optimizer,
and whatever toolchain code ends up shared with vendor ASxxxx.  Bugs scoped
to a backend we don't build (PIC14/16, MCS51, STM8, the various Z80-family
ports, DS390, PDK, ...) are the upstream maintainers' problem, not ours,
even when they're real.  i8085/i8080 are this fork's own addition, so there
will never be an upstream ticket *about* them - the risk is bugs in code we
still share with upstream, filed against something else's port.

Pulls every open ticket from SourceForge's Allura REST API in one call (no
auth needed for public read), then splits them two ways:

  - EXCLUDED: ticket's _category custom field names a specific backend we
    don't touch, or its summary text names one even though the category
    doesn't (categories are filled in by hand and are not reliable alone -
    spot-checking found genuine front-end bugs filed under "other").
  - CANDIDATE: everything else - Front-end, Build, Preprocessor, the old
    sdas/sdld toolchain (which we don't even use - we build on vendor
    ASxxxx - flagged separately so they can be discounted), and the large
    "other" grab-bag, which needs a human second pass, not more regex.

This is a title-only first pass, not a verdict on any individual ticket -
see sdcc-upstream-bugs-triage.md for what it found and the caveats on the
keyword list (hyphenation, backend names that don't appear in the title at
all, e.g. "mos65c02 segfault in windows build" naming a sub-target our list
doesn't literally contain as a substring).

Known structural limit, confirmed 2026-09-30 by reading all 133 bodies in
the "other" bucket in full: of the 10 that turned out genuinely
backend-specific once read, *zero* had a catchable name in the title -
the port only showed up in the body text (a stack trace, a command line,
a "tested on" line). No keyword-list addition fixes this; it means this
script's title-only CANDIDATE count is an upper bound; the true "ours to
worry about" count is always <= what it reports, confirmed only by
reading bodies, and every re-run should say so rather than imply the
count is final.

Same pass finished 2026-09-30 for the remaining two candidate buckets
(Front-end, 45; infra - Build/Preprocessor/Simulator/redundancy
elimination/Documentation/Tools/uncategorized, 32/35) - every one of the
466 open tickets as of that date has now been either excluded by
title/category or read in full at least once. See
sdcc-upstream-bugs-triage.md for the definitive, tracker-wide numbers;
treat this script's own EXCLUDED/CANDIDATE split as a snapshot to re-run,
not as those final numbers - it will disagree slightly every time the
tracker moves.
"""
import json, re, sys, urllib.request, collections

API = "https://sourceforge.net/rest/p/sdcc/bugs/search?q=status%3Aopen&limit=500"

# Backend/sub-target names that are not i8085/i8080 and not shared frontend
# or toolchain infra.  Substring match, case-insensitive - deliberately
# loose to catch prefixed/suffixed forms like "uc6502", "ucz80-resiy".
BACKEND_NAMES = [
    "pic14", "pic-14", "pic16", "pic-16", "mcs51", "mcs-51", "8051", "80c51",
    "stm8", "z80", "z180", "gbz80", "ez80", "rabbit", "r2k", "r3ka",
    "tlcs90", "tlcs-90", "ds390", "ds400", "pdk13", "pdk14", "pdk15",
    "pdk16", "hc08", "s08", "mos6502", "mos65c02", "6502", "65c02", "sm83",
    "r800", "f8l", "f8", "tininative", "sdldgb", "huc6280",
]

# _category values that ARE a single named backend (not shared, not us).
BACKEND_CATEGORIES = {
    "PIC16", "PIC14", "MCS51", "STM8", "Z80", "DS390", "PDK", "GBZ80",
    "HC08", "MOS6502", "Rabbit", "f8",
}

# Categories naming the toolchain SDCC bundles itself (sdas/sdld) - this
# fork doesn't use either for i8085/i8080 (vendor ASxxxx's as8085/aslink
# instead, see main.c), so these are worth a look but likely moot for us.
LEGACY_TOOLCHAIN_CATEGORIES = {"sdas", "sdld"}


def fetch_open_tickets():
    with urllib.request.urlopen(API) as r:
        return json.load(r)["tickets"]


def classify(tickets):
    backend_re = re.compile("|".join(re.escape(n) for n in BACKEND_NAMES), re.I)
    excluded, candidate, legacy_toolchain = [], [], []
    for t in tickets:
        cat = t["custom_fields"].get("_category") or "(none)"
        mentions_backend = bool(backend_re.search(t["summary"]))
        if cat in BACKEND_CATEGORIES or mentions_backend:
            excluded.append((cat, t))
        elif cat in LEGACY_TOOLCHAIN_CATEGORIES:
            legacy_toolchain.append((cat, t))
        else:
            candidate.append((cat, t))
    return excluded, candidate, legacy_toolchain


def report(tickets):
    excluded, candidate, legacy = classify(tickets)

    def counts(pairs):
        c = collections.Counter(cat for cat, _ in pairs)
        return sorted(c.items(), key=lambda kv: -kv[1])

    print(f"Open tickets fetched: {len(tickets)}\n")
    print(f"EXCLUDED (backend-specific, not ours): {len(excluded)}")
    for cat, n in counts(excluded):
        print(f"  {n:4d}  {cat}")
    print(f"\nLEGACY TOOLCHAIN (sdas/sdld - we don't use either): {len(legacy)}")
    for cat, n in counts(legacy):
        print(f"  {n:4d}  {cat}")
    print(f"\nCANDIDATE (core/shared, needs a human look): {len(candidate)}")
    for cat, n in counts(candidate):
        print(f"  {n:4d}  {cat}")
    total = len(excluded) + len(candidate) + len(legacy)
    print(f"\nTotal: {total} (should equal fetched count)")
    return excluded, candidate, legacy


if __name__ == "__main__":
    tickets = fetch_open_tickets()
    excluded, candidate, legacy = report(tickets)
    if "--dump-candidates" in sys.argv:
        for cat, t in sorted(candidate, key=lambda p: -p[1]["ticket_num"]):
            pr = t["custom_fields"].get("_priority")
            print(f"#{t['ticket_num']:5d} [{cat:5s} p{pr}] {t['summary']}")
