#!/usr/bin/env python3
"""Translate an SDAS/sdld .lk link script into ASxxxx aslink's dialect.

Pass 2 of the placement audit: re-link objects SDAS already built, with
vendor aslink, to reach the one class of defect a .map cannot show - a
relocation that resolves outside the range its addressing mode can encode.
Nothing is recompiled and no port is migrated; only the script is rewritten.

  -b AREA = n   ->  -a AREA = n     -b is a *bank* base to aslink
  -i file       ->  -i+file         aslink's rename form
  -k dir        ->  -k dir/         the path must end in a separator
  -m[ujwx]      ->  -m[wx]          aslink has no -u and no -j
  -M            ->  dropped         sdld only
  -r            ->  dropped         bare in sdld; in this fork -r takes
                                    a root argument and would eat the
                                    following line
  -o+ base      ->  added           so the map and hex land in the audit
                                    directory instead of over SDAS's
"""
import sys, os, re

def translate(src, outbase, libdir):
    out = ['-n', '-o+ ' + outbase]
    for line in open(src, errors='replace'):
        line = line.rstrip('\n').rstrip('\r')
        if not line:
            out.append('')
            continue
        if line in ('-M', '-r'):
            continue
        if re.match(r'^-m[a-z]*$', line):
            keep = ''.join(c for c in line[2:] if c in 'wxdq1c')
            out.append('-m' + keep)
            continue
        m = re.match(r'^-b\s+(.*)$', line)
        if m:
            out.append('-a ' + m.group(1))
            continue
        m = re.match(r'^-i\s+(\S+)$', line)
        if m:
            out.append('-i')
            continue
        m = re.match(r'^-k\s+(\S+)$', line)
        if m:
            out.append('-k ' + libdir.rstrip('/') + '/')
            continue
        out.append(line)
    return '\n'.join(out) + '\n'

if __name__ == '__main__':
    src, outbase, libdir, dst = sys.argv[1:5]
    open(dst, 'w').write(translate(src, outbase, libdir))
