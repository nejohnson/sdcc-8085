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
it wrong invents findings - it invented three on the first pass, against
stm8-large, tlcs90 and the Rabbit ports, all of which turned out to address
beyond 64K perfectly legitimately.  So it is not assumed.  A port is asked
whether it is a 16-bit target, and the answer comes from its own output:
the .ihx files carry an Intel HEX extended linear address record
(type 04) with a non-zero upper address exactly when the toolchain is
deliberately placing something above 0xFFFF.  Find one and the SPACE check
is skipped for that port and reported as not applicable.

That distinction is the whole point, and it is not the same as "the area
ends above 0xFFFF".  hc08's serpent case ends at 0x11789 and its .ihx has
no extended record at all, because the tail was wrapped back over the data
area instead - which is the bug.  stm8-large's does have one, because the
program really is up there.

It still does not catch a port whose areas are placed in a physical space
wider than the logical addresses its .ihx carries - the Rabbit family puts
_XDATA at 0x84000 through an MMU, and tlcs90's __far tests do something
similar.  So every finding is also reported against the regression result
for the same program, read from results/<port>/<test>.out.  That is
context, not a filter, and deliberately so: hc08's serpent wrap *passed*
for years under sdld because the wrapped tail was never reached.  A
finding whose programs all pass is probably the check being wrong about
the port; a finding whose programs also fail is worth opening.  Neither is
conclusive on its own and the tool does not pretend otherwise.
"""
import os, re, sys, collections

AREA = re.compile(
    r'^([A-Za-z_.$][A-Za-z0-9_.$]*)\s+'
    r'([0-9A-F]{4}|[0-9A-F]{8})\s+'
    r'([0-9A-F]{4}|[0-9A-F]{8})\s*=\s*\d+\.\s*bytes\s*\(([^)]*)\)')

SPACE = 0x10000

# Intel HEX record ":02000004 UUUU" sets the upper 16 bits of the address.
# A non-zero one means the toolchain is placing something above 0xFFFF on
# purpose, so the port is not a 16-bit target and the SPACE check does not
# apply to it.
EXTADDR = re.compile(r'^:02000004([0-9A-Fa-f]{4})')

def wider_than_16_bits(gendir, limit=400):
    """Ask the port's own output whether it addresses beyond 64K."""
    seen = 0
    for root, _d, files in os.walk(gendir):
        for f in files:
            if not f.endswith('.ihx'):
                continue
            seen += 1
            if seen > limit:
                return False
            try:
                fh = open(os.path.join(root, f), 'r', errors='replace')
            except OSError:
                continue
            with fh:
                for line in fh:
                    m = EXTADDR.match(line)
                    if m and int(m.group(1), 16):
                        return True
    return False

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

def failed(path, gen, results):
    """Did the program this map belongs to fail its regression run?"""
    rel = os.path.relpath(path, gen)                 # <port>/[sub/]<prog>.map
    out = os.path.join(results, rel[:-4] + '.out')
    try:
        with open(out, 'r', errors='replace') as fh:
            return '--- FAIL' in fh.read()
    except OSError:
        return None                                  # no result recorded


def rec(d, name, path, addr, size):
    e = d.setdefault(name, [0, None, []])
    e[0] += 1
    if e[1] is None or size > e[1][2]:
        e[1] = (path, addr, size)
    if len(e[2]) < 64:
        e[2].append(path)

def report(port, n, pl, pb, ov, wide, gen, results):
    out = []
    for name, (cnt, ex, paths) in sorted(pl.items()):
        out.append(fmt('PAG-length', name, cnt, n, ex,
                       'more than 256 bytes in a paged area', paths, gen, results))
    for name, (cnt, ex, paths) in sorted(pb.items()):
        note = 'port convention, not a defect' if cnt == n else 'not page aligned'
        out.append(fmt('PAG-boundary', name, cnt, n, ex, note, paths, gen, results))
    if wide:
        if ov:
            out.append('    space-overrun  -- not applicable: this port emits Intel HEX '
                       'extended address records, so it addresses beyond 64K by design')
    else:
        for name, (cnt, ex, paths) in sorted(ov.items()):
            out.append(fmt('space-overrun', name, cnt, n, ex,
                           'runs past the end of the address space', paths, gen, results))
    print('%-24s %5d programs%s' % (port, n, '' if out else '   clean'))
    for line in out:
        print(line)
    sys.stdout.flush()

def fmt(label, name, cnt, n, ex, note, paths, gen, results):
    path, addr, size = ex
    verdicts = [failed(q, gen, results) for q in paths]
    bad = sum(1 for v in verdicts if v)
    known = sum(1 for v in verdicts if v is not None)
    if not known:
        corr = 'no results recorded'
    elif bad == known:
        corr = 'all %d also FAIL' % bad
    elif bad:
        corr = '%d of %d also FAIL' % (bad, known)
    else:
        corr = 'all %d PASS - probably the check, not the port' % known
    return ('    %-14s %-14s %5d/%-5d  worst %s: addr=%06X size=%06X\n'
            '                                      %s; %s'
            % (label, name, cnt, n, os.path.basename(path)[:44], addr, size, note, corr))

gen = sys.argv[1]
results = sys.argv[2] if len(sys.argv) > 2 else os.path.join(os.path.dirname(gen.rstrip('/')), 'results')
for port in sorted(p for p in os.listdir(gen) if os.path.isdir(os.path.join(gen, p))):
    d = os.path.join(gen, port)
    n, pl, pb, ov = scan_port(d)
    if n:
        report(port, n, pl, pb, ov, wider_than_16_bits(d), gen, results)
