#!/usr/bin/env python3
"""Look up SDCC's own upstream bug tracker (SourceForge Allura) without
re-typing the same curl+python one-liners every time.

SDCC's tracker has no auth-free web UI worth scraping, but its Allura
REST API is public and simple: https://sourceforge.net/rest/p/sdcc/bugs/.
This wraps the handful of calls that keep coming up while triaging
upstream bugs against this fork (see sdcc-upstream-bugs-triage.md) and
chasing individual fixes:

  sdcc-bug.py show <num>              summary/category/status/description
  sdcc-bug.py thread <num>             full discussion, newest-last
  sdcc-bug.py attachments <num>        list patch/file attachments + URLs
  sdcc-bug.py fetch <num> <url> [-o F] download one attachment (e.g. a
                                       patch URL from `attachments`)
  sdcc-bug.py open [--limit N]         every open ticket (num, category,
                                       summary) - what tools/audit-
                                       upstream-bugs.py classifies

Exit status is 0 on success, 1 if the ticket/attachment can't be found.
"""
import argparse
import json
import sys
import urllib.request

API = "https://sourceforge.net/rest/p/sdcc/bugs"


def get_json(url):
    with urllib.request.urlopen(url) as r:
        return json.load(r)


def fetch_ticket(num):
    try:
        return get_json(f"{API}/{num}/")["ticket"]
    except urllib.error.HTTPError as e:
        print(f"error: ticket #{num}: {e}", file=sys.stderr)
        sys.exit(1)


def cmd_show(args):
    t = fetch_ticket(args.num)
    print(f"#{t['ticket_num']}: {t['summary']}")
    print(f"status:   {t['status']}")
    print(f"category: {t['custom_fields'].get('_category', '(none)')}  "
          f"priority: {t['custom_fields'].get('_priority', '?')}")
    print(f"reported: {t['reported_by']} on {t['created_date']}")
    print(f"url:      https://sourceforge.net/p/sdcc/bugs/{t['ticket_num']}/")
    print()
    print(t["description"])


def cmd_thread(args):
    t = fetch_ticket(args.num)
    posts = t["discussion_thread"]["posts"]
    print(f"#{t['ticket_num']}: {t['summary']}  ({len(posts)} posts)")
    print()
    for p in posts:
        print(f"--- {p['author']} {p['timestamp']} ---")
        print(p["text"])
        for a in p["attachments"]:
            print(f"  [attachment] {a['url']}")
        print()


def cmd_attachments(args):
    t = fetch_ticket(args.num)
    found = False
    for p in t["discussion_thread"]["posts"]:
        for a in p["attachments"]:
            found = True
            print(f"{p['timestamp']}  {a['bytes']:>8} bytes  {a['url']}")
    if not found:
        print(f"no attachments on #{args.num}", file=sys.stderr)


def cmd_fetch(args):
    out = args.out or args.url.rsplit("/", 1)[-1]
    try:
        urllib.request.urlretrieve(args.url, out)
    except urllib.error.HTTPError as e:
        print(f"error fetching {args.url}: {e}", file=sys.stderr)
        sys.exit(1)
    print(f"saved to {out}")


def cmd_open(args):
    q = "status%3Aopen"
    d = get_json(f"{API}/search?q={q}&limit={args.limit}")
    for t in d["tickets"]:
        cat = t["custom_fields"].get("_category", "(none)")
        print(f"#{t['ticket_num']:5d} [{cat:20s}] {t['summary']}")
    print(f"\n{d['count']} open tickets total "
          f"({len(d['tickets'])} shown)", file=sys.stderr)


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)

    p = sub.add_parser("show", help="summary/category/status/description")
    p.add_argument("num", type=int)
    p.set_defaults(func=cmd_show)

    p = sub.add_parser("thread", help="full discussion thread")
    p.add_argument("num", type=int)
    p.set_defaults(func=cmd_thread)

    p = sub.add_parser("attachments", help="list patch/file attachments")
    p.add_argument("num", type=int)
    p.set_defaults(func=cmd_attachments)

    p = sub.add_parser("fetch", help="download one attachment")
    p.add_argument("num", type=int, help="(unused, kept for symmetry)")
    p.add_argument("url")
    p.add_argument("-o", dest="out", help="output path (default: basename of url)")
    p.set_defaults(func=cmd_fetch)

    p = sub.add_parser("open", help="list every open ticket")
    p.add_argument("--limit", type=int, default=500)
    p.set_defaults(func=cmd_open)

    args = ap.parse_args()
    args.func(args)


if __name__ == "__main__":
    main()
