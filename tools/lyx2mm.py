#!/usr/bin/env python3
"""Convert SDCC's LyX manual (sdccman.lyx) to groff -mm source.

A one-off migration tool:  the .mm file it writes is the manual's source
from then on, edited by hand.  It is kept so the conversion can be
reviewed and, if need be, re-run.  The LyX source it read is in git
history, at f40703db:sdcc/doc/sdccman.lyx; the pic drawings are the
figures in sdcc/doc/sdccman.mm.

    lyx2mm.py sdccman.lyx figures-dir > sdccman.mm

It understands the subset of LyX that sdccman.lyx uses - which layouts,
insets and character attributes, measured over the whole file - and
stops with a message on anything else, rather than drop it silently.
Figures are not converted:  each Graphics inset is replaced by the pic
drawing figures-dir/<name>.pic, written by hand from the SVG.
"""

import os
import re
import sys


# ---------------------------------------------------------------------------
# Parsing:  the LyX file as a tree of layouts, insets, text and attribute
# switches.

class Layout:
    def __init__(self, name, depth):
        self.name = name
        self.depth = depth
        self.params = {}
        self.items = []


class Inset:
    def __init__(self, kind, line):
        self.kind = kind          # e.g. "CommandInset ref", "Flex Code"
        self.line = line          # the whole \begin_inset line
        self.params = {}
        self.items = []           # layouts, or for Tabular a table model


class Attr:
    def __init__(self, name, value):
        self.name = name
        self.value = value


class Fail(Exception):
    pass


def parse(lines):
    pos = [0]

    def peek():
        return lines[pos[0]] if pos[0] < len(lines) else None

    def take():
        l = lines[pos[0]]
        pos[0] += 1
        return l

    def parse_layouts(end):
        """Layouts up to a line equal to end (consumed)."""
        out = []
        depth = 0
        while True:
            l = peek()
            if l is None:
                raise Fail('unexpected end of file, expecting ' + end)
            if l == end:
                take()
                return out
            if l.startswith('\\begin_layout '):
                take()
                out.append(parse_layout(l[len('\\begin_layout '):], depth))
            elif l == '\\begin_deeper':
                take()
                depth += 1
            elif l == '\\end_deeper':
                take()
                depth -= 1
            elif l.strip() == '':
                take()
            else:
                raise Fail('line %d: unexpected %r between layouts' % (pos[0] + 1, l))

    def parse_layout(name, depth):
        lay = Layout(name, depth)
        while True:
            l = take()
            if l == '\\end_layout':
                return lay
            if l.startswith('\\begin_inset '):
                lay.items.append(parse_inset(l))
            elif l == '\\backslash':
                lay.items.append('\\')
            elif l.startswith('\\') and re.match(r'\\[a-z_]+( |$)', l):
                word, _, val = l[1:].partition(' ')
                if word in ('family', 'series', 'shape', 'emph', 'size', 'noun',
                            'bar', 'color', 'lang', 'strikeout', 'uuline',
                            'uwave', 'xout', 'numeric'):
                    lay.items.append(Attr(word, val))
                else:
                    lay.params[word] = val
            else:
                lay.items.append(l)

    def parse_inset(line):
        kind = line[len('\\begin_inset '):]
        head = kind.split(' ')
        if head[0] in ('Flex', 'CommandInset', 'Quotes', 'Note', 'space',
                       'Newline', 'Separator', 'VSpace', 'Index'):
            kname = ' '.join(head[:2])
        else:
            kname = head[0]
        ins = Inset(kname, line)
        if kname == 'Tabular':
            ins.items = parse_tabular()
            return ins
        while True:
            l = peek()
            if l == '\\end_inset':
                take()
                return ins
            if l.startswith('\\begin_layout '):
                take()
                ins.items.append(parse_layout(l[len('\\begin_layout '):], 0))
            elif l == '\\begin_deeper' or l == '\\end_deeper':
                take()
            elif l.strip() == '':
                take()
            else:
                take()
                k, _, v = l.strip().partition(' ')
                ins.params[k] = v.strip('"')

    def parse_tabular():
        rows = []
        cols = []
        row = None
        while True:
            l = take()
            if l == '\\end_inset':
                return {'rows': rows, 'cols': cols}
            s = l.strip()
            if s.startswith('<column'):
                cols.append(dict(re.findall(r'(\w+)="([^"]*)"', s)))
            elif s.startswith('<row'):
                row = []
                rows.append(row)
            elif s.startswith('<cell'):
                cell = dict(re.findall(r'(\w+)="([^"]*)"', s))
                l2 = take()
                assert l2 == '\\begin_inset Text', l2
                cell['layouts'] = parse_layouts('\\end_inset')
                row.append(cell)
            elif s in ('</cell>', '</row>', '</lyxtabular>') or s.startswith(('<lyxtabular', '<features')):
                pass
            elif s == '':
                pass
            else:
                raise Fail('table: unexpected %r' % l)

    # the body
    while not peek().startswith('\\begin_body'):
        take()
    take()
    return parse_layouts('\\end_body')


# ---------------------------------------------------------------------------
# Rendering.

FONTS = {
    # family, bold, italic -> groff font
    ('roman', 0, 0): 'R', ('roman', 1, 0): 'B', ('roman', 0, 1): 'I', ('roman', 1, 1): 'BI',
    ('sans', 0, 0): 'HR', ('sans', 1, 0): 'HB', ('sans', 0, 1): 'HI', ('sans', 1, 1): 'HBI',
    ('typewriter', 0, 0): 'CR', ('typewriter', 1, 0): 'CB', ('typewriter', 0, 1): 'CI', ('typewriter', 1, 1): 'CBI',
}

SIZES = {'tiny': -3, 'scriptsize': -2, 'footnotesize': -2, 'small': -1,
         'normal': 0, 'default': 0, 'large': 2, 'Large': 3, 'larger': 2}


# The manual's few non-ASCII characters, as groff escapes:  the source
# stays ASCII.
NON_ASCII = {0x2013: '\\[en]', 0x2014: '\\[em]', 0x2026: '.\\|.\\|.', 0x2019: '\\[cq]'}


def esc_text(s, mono):
    """Escape running text for troff."""
    s = s.translate(NON_ASCII)
    s = re.sub(r'\\SpecialChar (\w+)', r'\1', s)
    s = s.replace('\\', '\\[rs]')
    out = []
    for i, c in enumerate(s):
        if c == '-':
            prev = s[i - 1] if i else ' '
            nxt = s[i + 1] if i + 1 < len(s) else ' '
            # A minus sign in code, in an option and between hyphens;
            # a hyphen elsewhere, so that words still break there.
            if mono or prev in ' (/[=-"\'' or nxt == '-' or prev == '':
                out.append('\\-')
            else:
                out.append('-')
        else:
            out.append(c)
    return ''.join(out)


LINE_WIDTH = 17 / 2.54     # inches:  the PGFORM line length


def tbl_width(w, ncol):
    """A LyX column width in tbl's units; '' for none.  A percentage is
    of the line less the gaps between columns."""
    m = re.fullmatch(r'([0-9.]+)(in|cm|pt|col%|text%|line%|page%)', w or '')
    if not m or float(m.group(1)) == 0:
        return ''
    v, u = float(m.group(1)), m.group(2)
    if u.endswith('%'):
        return '%.2fi' % (v / 100 * (LINE_WIDTH - 0.3 * ncol))
    return '%g%s' % (v, {'in': 'i', 'cm': 'c', 'pt': 'p'}[u])


def ref_name(n):
    """A LyX label as an mm reference name:  no spaces or quotes."""
    return re.sub(r'[^A-Za-z0-9_.:-]', '-', n)


def esc_arg(s):
    """For a quoted macro argument."""
    return s.replace('"', '\\(dq')


class Renderer:
    def __init__(self, figdir):
        self.figdir = figdir
        self.refvars = 0
        self.title = ''
        self.warn = []
        self.center = False
        self.table_feet = None

    # -- inline content ----------------------------------------------------

    def inline(self, items, nofill=False, base=None, plain=False):
        """Render a layout's items as troff text (one string, which may
        hold request lines of its own).  base forces a family; plain
        renders text only, for index terms and macro arguments."""
        st = {'family': base or 'roman', 'series': 0, 'shape': 0, 'emph': 0,
              'size': 0, 'noun': 0, 'bar': 0}
        out = []
        cur = ['R', 0]

        def font():
            f = FONTS[(st['family'] if st['family'] in ('roman', 'sans', 'typewriter') else 'roman',
                       1 if st['series'] else 0,
                       1 if (st['shape'] or st['emph']) else 0)]
            return f

        def sync():
            if plain:
                return
            f = font()
            if f != cur[0]:
                out.append('\\f[%s]' % f)
                cur[0] = f
            if st['size'] != cur[1]:
                out.append('\\s[0]' if st['size'] == 0 else '\\s[%+d]' % st['size'])
                cur[1] = st['size']

        def request(r):
            # a request line in the middle of running text:  \c joins the
            # text on either side of it, as if the line were not there.
            if nofill:
                out.append('\\c\n' + r + '\n')
            else:
                out.append('\\c\n' + r + '\n')

        for it in items:
            if isinstance(it, Attr):
                n, v = it.name, it.value
                if n == 'family':
                    st['family'] = base or ({'default': 'roman'}.get(v, v))
                elif n == 'series':
                    st['series'] = 1 if v == 'bold' else 0
                elif n == 'shape':
                    st['shape'] = 1 if v in ('italic', 'slanted') else 0
                elif n == 'emph':
                    st['emph'] = 1 if v == 'on' else 0
                elif n == 'size':
                    if v not in SIZES:
                        raise Fail('size ' + v)
                    st['size'] = SIZES[v]
                elif n in ('noun', 'bar', 'color', 'lang'):
                    pass
                else:
                    raise Fail('attribute ' + n)
                continue
            if isinstance(it, str):
                sync()
                f = font()
                out.append(esc_text(it, f.startswith('C')) if not plain else it.replace('\\', '\\[rs]'))
                continue
            k = it.kind
            if k == 'Newline newline':
                if nofill:
                    out.append('\n')
                else:
                    request('.br')
            elif k == 'space ~' or k.startswith('space '):
                sym = it.line.split(' ', 2)[2] if len(it.line.split(' ')) > 2 else '~'
                out.append('\\ ' if sym in ('~', '\\space{}') else '\\|')
            elif k == 'ERT':
                txt = self.plaintext(it.items)
                out.append({'\\/': '\\&', '\\_': '_', '!': '!', '\\#': '#',
                            '\\,': '\\|', '|': '|', '{': '{', '}': '}',
                            '\\&': '&', '\\ \\ ': '\\ \\ '}[txt] if not plain else
                           {'\\/': '', '\\_': '_', '!': '!', '\\#': '#', '\\,': ' ',
                            '|': '|', '{': '{', '}': '}', '\\&': '&', '\\ \\ ': '  '}[txt])
            elif k == 'Index idx':
                if not plain:
                    request('.IND ' + self.index_args(it.items))
            elif k == 'CommandInset label':
                if not plain:
                    request('.SETR ' + ref_name(it.params['name']))
            elif k == 'CommandInset ref':
                cmd = it.params['LatexCommand']
                ref = ref_name(it.params['reference'])
                self.refvars += 1
                v = 'Rf%d' % self.refvars
                if cmd == 'ref':
                    request('.GETHN %s %s\n.Rd %s' % (ref, v, v))
                    out.append('\\*[%s]' % v)
                elif cmd == 'vpageref':
                    request('.GETPN %s %s' % (ref, v))
                    out.append('on page \\*[%s]' % v)
                elif cmd == 'vref':
                    request('.GETHN %s %s\n.Rd %s' % (ref, v, v))
                    request('.GETPN %s %sp' % (ref, v))
                    out.append('\\*[%s] on page \\*[%sp]' % (v, v))
                else:
                    raise Fail('ref ' + cmd)
            elif k == 'CommandInset href':
                name = it.params.get('name') or it.params['target']
                if plain:
                    out.append(name)
                else:
                    request('.URL "%s" "%s"' % (esc_arg(it.params['target']), esc_arg(esc_text(name, False))))
            elif k == 'Flex URL':
                u = self.plaintext(it.items)
                if plain:
                    out.append(u)
                else:
                    request('.URL "%s" ""' % esc_arg(u))
            elif k in ('Flex Code', 'Flex Strong', 'Flex Emph'):
                save = dict(st)
                if k == 'Flex Code':
                    st['family'] = 'typewriter'
                elif k == 'Flex Strong':
                    st['series'] = 1
                else:
                    st['emph'] = 1
                for lay in it.items:
                    for x in lay.items:
                        if isinstance(x, str):
                            sync()
                            out.append(esc_text(x, font().startswith('C')) if not plain else x)
                        elif isinstance(x, Attr):
                            pass
                        else:
                            out.append(self.inline([x], nofill, plain=plain))
                st.update(save)
                sync()
            elif k.startswith('Quotes'):
                q = it.line.split()[-1]
                left = q[1] == 'l'
                single = q[2] == 's'
                if plain:
                    out.append("'" if single else '"')
                elif font().startswith('C'):
                    # code has straight quotes, as typed
                    sync()
                    out.append("\\[aq]" if single else '\\[dq]')
                else:
                    out.append(('\\[oq]' if single else '\\[lq]') if left else
                               ('\\[cq]' if single else '\\[rq]'))
            elif k == 'Foot':
                if plain:
                    continue
                body = '\n'.join(self.inline(l.items) for l in it.items)
                if self.table_feet is not None:
                    # A footnote cannot be set from inside a table:  it
                    # gets a letter, and its text follows the table.
                    mark = 'abcdefghij'[len(self.table_feet)]
                    out.append('\\u\\s-2%s\\s+2\\d' % mark)
                    self.table_feet.append('.FS %s\n%s\n.FE' % (mark, body))
                else:
                    out.append('\\*F')
                    request('.FS\n' + body + '\n.FE')
            elif k == 'Note Note':
                pass
            elif k == 'Marginal':
                body = self.inline([x for l in it.items for x in l.items], nofill, plain=plain)
                out.append(body)
            elif k == 'Formula':
                f = it.line.split(' ', 2)[2]
                m = {'$^{\\text{TM}}$': '\\[tm]', '$^{\\textrm{2}}$': '\\u\\s-2' + '2' + '\\s+2\\d',
                     '$\\Omega$': '\\[*W]'}
                if f not in m:
                    raise Fail('formula ' + f)
                out.append(m[f] if not plain else {'$^{\\text{TM}}$': '(TM)', '$^{\\textrm{2}}$': '2', '$\\Omega$': 'Ohm'}[f])
            elif k == 'VSpace defskip':
                request('.sp')
            elif k == 'Separator latexpar' or k == 'Separator plain':
                pass
            elif k == 'CommandInset include':
                out.append('\\*[sdcc-version]' if not plain else 'VERSION')
            elif k == 'CommandInset toc':
                pass        # mm writes the contents at the end
            elif k == 'CommandInset index_print':
                pass        # likewise the index
            elif k == 'Graphics':
                request(self.figure(it.params['filename']))
            elif k == 'Tabular':
                request(self.table(it.items))
            else:
                raise Fail('inset ' + k)
        if not plain:
            st.update({'family': base or 'roman', 'series': 0, 'shape': 0, 'emph': 0, 'size': 0})
            sync()
        return ''.join(out)

    def plaintext(self, layouts):
        return ''.join(x if isinstance(x, str) else '' for l in layouts for x in l.items
                       if not isinstance(x, Attr)).replace('\\', '\\')

    def index_args(self, layouts):
        """An index term:  makeindex's a!b!c becomes three IND arguments.
        The ! that separates them is in an ERT inset; any other ! is text."""
        parts = ['']
        for lay in layouts:
            for x in lay.items:
                if isinstance(x, Inset) and x.kind == 'ERT' and self.plaintext(x.items) == '!':
                    parts.append('')
                elif isinstance(x, Attr):
                    continue
                else:
                    parts[-1] += self.inline([x], plain=True)
        return ' '.join('"%s"' % esc_arg(p.strip()) for p in parts)

    # -- block content -----------------------------------------------------

    def figure(self, name):
        base = os.path.splitext(os.path.basename(name))[0]
        p = os.path.join(self.figdir, base + '.pic')
        if os.path.exists(p):
            # A terminal cannot draw the figure:  the text version says
            # where to find it.
            return ('.ie n \\{\\\n.DS CB\n[Figure:  see the PDF or HTML version of this manual.]\n.DE\n.\\}\n'
                    '.el \\{\\\n.DS CB\n.PS\n' + open(p).read().strip() + '\n.PE\n.DE\n.\\}')
        self.warn.append('figure %s: no %s, placeholder' % (name, p))
        return '.DS C\n[figure: %s]\n.DE' % base

    def table(self, model):
        """A LyX tabular as tbl:  one format line per row, since lines and
        spans vary from row to row."""
        rows, cols = model['rows'], model['cols']
        ncol = len(cols)
        self.table_feet = []
        fmt_lines = []
        data = []
        for r, row in enumerate(rows):
            spec = []
            cells = []
            for c, cell in enumerate(row):
                if cell.get('multicolumn') == '2':
                    spec.append('s')
                    continue
                a = cell.get('alignment') or cols[c].get('alignment', 'left')
                letter = {'left': 'l', 'center': 'c', 'right': 'r', 'block': 'l'}.get(a, 'l')
                w = tbl_width(cols[c].get('width', ''), ncol)
                if w and cell.get('multicolumn') != '1':
                    letter += 'w(%s)' % w
                if cell.get('leftline') == 'true' and (c == 0 or row[c - 1].get('rightline') != 'true'):
                    letter = '| ' + letter
                if cell.get('rightline') == 'true':
                    letter += ' |'
                spec.append(letter)
                body = '\n.br\n'.join(self.inline(l.items) for l in cell['layouts']).strip()
                if body and ('\n' in body or w):
                    cells.append('T{\n' + body + '\nT}')
                else:
                    cells.append(body)
            # a spanned cell's right line is the last spanned column's
            fmt_lines.append(' '.join(spec))
            if any(cell.get('topline') == 'true' for cell in row):
                data.append('_')
            data.append('\t'.join(cells))
        if any(cell.get('bottomline') == 'true' for cell in rows[-1]):
            data.append('_')
        feet, self.table_feet = self.table_feet, None
        return ('.TK\n.TS\n' + ('center ' if self.center else '') + 'tab(\t);\n' + '\n'.join(fmt_lines) + '.\n'
                + '\n'.join(data) + '\n.TE\n.TKE' + ''.join('\n' + f for f in feet))

    def heading(self, lay, level, numbered):
        # The heading text, and any labels and index entries in it, which
        # have to follow the heading request.
        text_items = [x for x in lay.items if not (isinstance(x, Inset) and x.kind in ('CommandInset label', 'Index idx'))]
        title = self.inline(text_items, plain=False).replace('\\c\n', '').replace('\n', ' ').strip()
        title = re.sub(r'\\f\[\w*\]$', '', title)
        after = [x for x in lay.items if isinstance(x, Inset) and x.kind in ('CommandInset label', 'Index idx')]
        out = []
        if numbered:
            out.append('.H %d "\\&%s"' % (level, esc_arg(title)))
        else:
            out.append('.nr Hu %d' % level)
            out.append('.HU "\\&%s"' % esc_arg(title))
        for x in after:
            if x.kind == 'CommandInset label':
                out.append('.SETR ' + ref_name(x.params['name']))
            else:
                out.append('.IND ' + self.index_args(x.items))
        return '\n'.join(out)

    LISTS = {'Itemize': ('.BL', '.LI'), 'Enumerate': ('.AL', '.LI'),
             'Labeling': ('.VL 18n', None), 'Description': ('.VL 18n', None)}

    def label_split(self, lay):
        """Labeling/Description:  the label is everything before the first
        plain space; space insets are part of it."""
        lab, rest, done = [], [], False
        for x in lay.items:
            if done:
                rest.append(x)
            elif isinstance(x, str) and ' ' in x:
                a, _, b = x.partition(' ')
                if a:
                    lab.append(a)
                rest.append(b)
                done = True
            else:
                lab.append(x)
        return lab, rest

    def body(self, layouts):
        out = []
        lists = []           # (kind, depth)
        i = 0

        def close_to(depth, kind=None):
            while lists and (lists[-1][1] > depth or (lists[-1][1] == depth and lists[-1][0] != kind)):
                out.append('.LE')
                lists.pop()

        while i < len(layouts):
            lay = layouts[i]
            n = lay.name
            if n in self.LISTS:
                close_to(lay.depth, n)
                if not lists or lists[-1] != (n, lay.depth):
                    out.append(self.LISTS[n][0])
                    lists.append((n, lay.depth))
                if n in ('Labeling', 'Description'):
                    lab, rest = self.label_split(lay)
                    # labels and index entries in the label go after the .LI
                    marks = [x for x in lab if isinstance(x, Inset) and x.kind in ('CommandInset label', 'Index idx')]
                    lab = [x for x in lab if x not in marks]
                    labtxt = self.inline(lab).replace('\\c\n', '').replace('\n', ' ')
                    if n == 'Description':
                        labtxt = '\\f[B]' + labtxt + '\\f[]'
                    out.append('.LI "%s"' % esc_arg(labtxt))
                    out.append(self.inline(marks))
                    out.append(self.inline(rest))
                else:
                    out.append('.LI')
                    out.append(self.inline(lay.items))
                i += 1
                continue
            close_to(lay.depth - 1 if lay.depth else -1) if lay.depth == 0 else close_to(lay.depth - 1, None) if False else None
            if lay.depth == 0:
                close_to(-1)
            else:
                # a continuation paragraph inside a list item
                while lists and lists[-1][1] >= lay.depth:
                    out.append('.LE')
                    lists.pop()
            if n == 'Chapter':
                out.append(self.heading(lay, 1, True))
            elif n == 'Section':
                out.append(self.heading(lay, 2, True))
            elif n == 'Section*':
                out.append(self.heading(lay, 2, False))
            elif n == 'Subsection':
                out.append(self.heading(lay, 3, True))
            elif n == 'Subsubsection':
                out.append(self.heading(lay, 4, True))
            elif n == 'Subsubsection*':
                out.append(self.heading(lay, 4, False))
            elif n == 'Paragraph':
                out.append(self.heading(lay, 5, True))
            elif n == 'Paragraph*':
                out.append(self.heading(lay, 5, False))
            elif n == 'Title':
                self.title = self.inline(lay.items).replace('\n', ' ')
            elif n == 'Date':
                pass
            elif n in ('Standard', 'Plain Layout'):
                align = lay.params.get('align')
                blocks = any(isinstance(x, Inset) and x.kind in ('Tabular', 'Graphics') for x in lay.items)
                # tables and figures centre themselves, outside any display
                self.center = align == 'center'
                txt = self.inline(lay.items)
                self.center = False
                if blocks:
                    out.append('.P\n' + txt)
                elif align == 'center':
                    out.append('.DS C F\n' + txt + '\n.DE')
                elif align == 'right':
                    out.append('.DS R F\n' + txt + '\n.DE')
                else:
                    out.append('.P\n' + txt)
            elif n == 'Quote':
                out.append('.DS I F\n' + self.inline(lay.items) + '\n.DE')
            elif n in ('LyX-Code', 'Verse'):
                # consecutive code paragraphs are one display
                block = []
                while i < len(layouts) and layouts[i].name == n and layouts[i].depth == lay.depth:
                    block.append(self.inline(layouts[i].items, nofill=True, base='typewriter'))
                    i += 1
                code = '\n'.join(block)
                # a blank line in code is kept, as an empty text line
                code = '\n'.join(l if l.strip() else '\\&' for l in code.split('\n'))
                out.append('.DS I\n.ft CR\n' + code + '\n.ft\n.DE')
                continue
            else:
                raise Fail('layout ' + n)
            i += 1
        close_to(-1)
        return '\n'.join(out)


# The requests and macros this converter writes.  A line that starts with
# . or ' and is not one of them is text, and is protected with \&.
REQUESTS = set("""H HU P BL AL VL LI LE DS DE IND INDP SETR GETHN GETPN URL FS FE
    TS TE PS PE br sp ft nr ce SK TC INITR INITI PGFORM Rd mso if ds ftr de substring no-tm pdfpagename pdfswitchtopage char 2C 1C nf fi in ti am HTML-IMAGE HTML-IMAGE-END PH TK TKE ie el \\}""".split()) | {"."}


def tidy(s):
    """Line-level fixes:  text that looks like a request is protected;
    empty lines are dropped; trailing spaces go."""
    out = []
    for line in s.split('\n'):
        line = line.rstrip(' ')
        if line == '':
            continue
        if line[0] in ".'" and not line.startswith('.\\"'):
            name = re.match(r"[.']([^ ]*)", line).group(1)
            if name not in REQUESTS:
                line = '\\&' + line
        # punctuation after a URL goes in its third argument, or it is
        # set off by a space
        m = re.match(r'(\\&)?([.,;:)!?]+)(?=[\s\\]|$)(.*)', line)
        if m and not m.group(1) and line[0] in ".'" and line[1:2].isalpha():
            m = None
        if m and out and out[-1].startswith('.URL ') and out[-1].count('"') == 4:
            out[-1] += ' "%s"' % m.group(2)
            line = m.group(3).lstrip(' ')
            if not line:
                continue
            if line[0] in ".'":
                line = '\\&' + line
        out.append(line)
        # two line breaks in a row are an empty line
        if out[-3:] == ['.br', '\\c', '.br']:
            out[-3:] = ['.sp']
        # an empty paragraph is no paragraph
        if len(out) > 1 and out[-2] == '.P' and (line == '.P' or line.startswith(('.H ', '.HU '))):
            del out[-2]
    return '\n'.join(out) + '\n'


HEADER = r'''.\" SDCC Compiler User Guide.
.\"
.\" groff -mm source, with tbl tables and pic figures.  It is set in two
.\" passes, for the cross-references and the index:  see Makefile.in.
.\"
.if !d sdcc-version .ds sdcc-version (unknown version)
.mso www.tmac
.if '\*[.T]'pdf' .mso pdf.tmac
.\" In HTML, tables and pictures are images.  mm, unlike ms, does not ask
.\" for them:  its TS, TE, PS and PE are extended to.  (The images are made
.\" by a PostScript pass, so this is not conditional on the html device;
.\" elsewhere, the www.tmac macros do nothing.)
.am TS
.HTML-IMAGE
..
.am TE
.HTML-IMAGE-END
..
.am PS
.HTML-IMAGE
..
.am PE
.HTML-IMAGE-END
..
.\" grohtml makes the contents itself, and there are no pages.
.if '\*[.T]'html' .PH ""
.\" Option dashes and minus signs are ASCII '-', so that commands copied
.\" from the manual work.
.char \- \N'45'
.\" mmroff's first pass (Ref=1) keeps everything sent to the terminal,
.\" as references:  tbl's warnings are left to the second pass.
.de no-tm
..
.if r Ref .if \n[Ref] .als tm1 no-tm
.if r Ref .if \n[Ref] .als tmc no-tm
.INITR sdccman
.\" A4, with 2cm margins.  For PDF, the paper size also needs -P-pa4.
.PGFORM 17c 29.7c 2c
.\" The PostScript pass that makes HTML's images has 11in pages, and a
.\" table that crosses a page cannot be an image:  that pass keeps each
.\" table on one page (see TK).
.if r ps4html .PGFORM 17c 11i 2c
.de TK
.if r ps4html .DS
..
.de TKE
.if r ps4html .DE
..
.INITI N sdccman
.\" Headings:  break after levels 1-3, number to level 5, contents to 3.
.nr Hb 4
.nr Hs 3
.nr Cl 3
.nr Ej 1
.nr Hy 1
.ds HF B B B B B B B
.\" A level-1 heading number is "6." :  in a reference, "6".
.de Rd
.ds Rd*t \\*[\\$1]
.substring Rd*t -1
.if '\\*[Rd*t]'.' .substring \\$1 0 -2
..
.ds HP +4 +2 +1 0 0 0 0
.\" Commands are in sans serif, which terminals do not have.
.if n .ftr HR R
.if n .ftr HB B
.if n .ftr HI I
.if n .ftr HBI BI
'''


def main():
    src, figdir = sys.argv[1], sys.argv[2]
    lines = open(src, encoding='utf-8').read().split('\n')
    try:
        tree = parse(lines)
        r = Renderer(figdir)
        body = r.body(tree)
    except Fail as e:
        sys.exit('lyx2mm: ' + str(e))
    for w in r.warn:
        print('lyx2mm: ' + w, file=sys.stderr)
    title = r.title or 'SDCC Compiler User Guide'
    out = HEADER
    out += ('.\\" Title page\n.ce 3\n.sp 6\n\\s[+8]\\f[B]%s\\f[]\\s[0]\n.sp 2\nSDCC \\*[sdcc-version]\n'
            '.if \'\\*[.T]\'pdf\' .pdfpagename title\n.SK\n' % title)
    out += body
    out += ('\n.\\" The index.  The first pass writes the raw entries to sdccman.ind;\n'
            '.\\" mkindex.awk merges them into sdccman.idx, which the second pass sets.\n'
            '.de TYIND\n.SK\n.HU "Index"\n.2C\n.nf\n..\n'
            '.if !\\n[Ref] .ds ind*file sdccman.idx\n'
            '.INDP\n'
            '.\\" mm sets the contents last:  in a PDF, they move to after the title page.\n'
            '.if \'\\*[.T]\'pdf\' .pdfswitchtopage after title\n'
            '.if !\'\\*[.T]\'html\' .TC\n')
    sys.stdout.write(tidy(out))


if __name__ == '__main__':
    main()
