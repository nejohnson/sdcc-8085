#!/usr/bin/env python3
"""Apply ASlink's placement invariants to the .map files sdld already wrote
for SDCC's regression ports.  Nothing is rebuilt and nothing is migrated:
these are the maps on disk from ordinary sdas/sdld links, so every port is
covered, including the three ASxxxx can never assemble.

Two checks, both of which ASlink makes and sdld does not, or does not make
the same way.  Neither needs any knowledge of a port's memory layout.

  PAG    an area the port itself attributed PAG must start on a 256 byte
         boundary and be at most 256 bytes (ASxxxx lkarea.c, every target).
         sdld applies the length half generally and the boundary half only
         for the 8051, where it asks the different question of whether the
         area crosses a page.

  SPACE  an area must not run off the end of the address space.  ASlink has
         checked this since 79c25e7; sdld wraps silently.

The address space is the one thing here that is port knowledge, and getting
it wrong invents findings.  So it is inferred rather than asserted: if a
"overrun" shows up in more than SYSTEMIC of a port's programs, the assumed
width is wrong - a banked or 24-bit target - and the check is reported as
not applicable for that port instead of as thousands of bugs.
"""
import os, re, sys, collections

AREA = re.compile(
    r'^([A-Za-z_.$][A-Za-z0-9_.$]*)\s+'
    r'([0-9A-F]{4}|[0-9A-F]{8})\s+'
    r'([0-9A-F]{4}|[0-9A-F]{8})\s*=\s*\d+\.\s*bytes\s*\(([^)]*)\)')

SPACE = 0x10000
SYSTEMIC = 0.05          # above this share, blame the assumed width

def scan_port(gendir):
    pag_len, pag_bnd, overrun = {}, {}, {}
    nprog = 0
    for root, _d, files in os.walk(gendir):
        for f in files:
            if not f.endswith('.map'):
                continue
            nprog += 1
            path = os.path.join(root, f)
            seen = set()
            try:
                fh = open(path, 'r', errors='replace')
            except OSError:
                continue
            with fh:
                for line in fh:
                    m = AREA.match(line)
                    if not m:
                        continue
                    name = m.group(1)
                    addr = int(m.group(2), 16)
                    size = int(m.group(3), 16)
                    attrs = [x.strip() for x in m.group(4).split(',')]
                    key = (name, addr, size)
                    if key in seen:          # the table is reprinted per page
                        continue
                    seen.add(key)
                    if 'PAG' in attrs:
                        if size > 256:
                            rec(pag_len, name, path, addr, size)
                        if addr & 0xFF:
                            rec(pag_bnd, name, path, addr, size)
                    if 'ABS' not in attrs and size and addr + size > SPACE:
                        rec(overrun, name, path, addr, size)
    return nprog, pag_len, pag_bnd, overrun

def rec(d, name, path, addr, size):
    e = d.setdefault(name, [0, None])
    e[0] += 1
    if e[1] is None or size > e[1][2]:
        e[1] = (path, addr, size)

def report(port, n, pl, pb, ov):
    out = []
    banked = any(cnt > n * SYSTEMIC for cnt, _ in ov.values())
    for name, (cnt, ex) in sorted(pl.items()):
        out.append(fmt('PAG-length', name, cnt, n, ex,
                       'more than 256 bytes in a paged area'))
    for name, (cnt, ex) in sorted(pb.items()):
        note = 'port convention, not a defect' if cnt == n else 'not page aligned'
        out.append(fmt('PAG-boundary', name, cnt, n, ex, note))
    if banked:
        out.append('    space-overrun  -- not applicable: addresses exceed 64K in %d%% of '
                   'programs, so this port is banked or wider than 16 bits'
                   % (100 * max(c for c, _ in ov.values()) // n))
    else:
        for name, (cnt, ex) in sorted(ov.items()):
            out.append(fmt('space-overrun', name, cnt, n, ex, 'runs past the end of the address space'))
    print('%-24s %5d programs%s' % (port, n, '' if out else '   clean'))
    for line in out:
        print(line)
    sys.stdout.flush()

def fmt(label, name, cnt, n, ex, note):
    path, addr, size = ex
    return ('    %-14s %-14s %5d/%-5d  worst %s: addr=%06X size=%06X  (%s)'
            % (label, name, cnt, n, os.path.basename(path)[:44], addr, size, note))

gen = sys.argv[1]
for port in sorted(p for p in os.listdir(gen) if os.path.isdir(os.path.join(gen, p))):
    n, pl, pb, ov = scan_port(os.path.join(gen, port))
    if n:
        report(port, n, pl, pb, ov)
