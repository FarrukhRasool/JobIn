#!/usr/bin/env python3
"""The whole board, in one read.

    python3 scripts/status.py

WHY THIS EXISTS. Orientation was the most expensive thing in the pipeline that
produced nothing. Every new session that needed to know where things stood
crawled the tree, read tracker/applications.csv, listed three directories, then
grepped all fifteen records in jobs/scored/ to find out what had been decided.
Roughly 12k tokens, repeated per session, to rebuild facts that had not changed.

This prints the same facts in about forty lines. It is READ-ONLY and writes
nothing, so running it can never affect the quality of a CV or a letter. That is
the whole point of doing orientation here rather than inside a generating step:
at this moment no application prose is being written, so there is nothing to
degrade.

WHAT IT DELIBERATELY DOES NOT DO. It does not pick the next action. The priority
rule ("interviews first, then overdue follow-ups, then drafted-but-not-submitted,
then new scoring") lives in .claude/commands/status.md, which is already loaded
when /status runs. Facts here, judgement there. A script that guessed at
judgement would be one more thing to keep in sync.

THE RECONCILIATION MATTERS MOST. A naive version reads only the CSV and is
quietly wrong. scalable-capital-senior-ios-engineer scored 88, the highest
unapplied score in the repo, and is held as FALLBACK with no tracker row at all.
CSV-only orientation makes the best fallback invisible. So jobs/scored/ is
reconciled against the tracker and anything scored but untracked is printed with
its decision, whichever way that decision went.
"""
import csv
import re
import sys
from datetime import date
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TODAY = date.today()

# **Total: 60 / 100 (capped from 81) — APPLY**
# **Total: 88 / 100 — would read APPLY on the rubric, held as FALLBACK**
TOTAL = re.compile(r"\*\*Total:\s*(\d+)\s*/\s*100([^*]*)")

# Order matters, and it is not the obvious one. Matching is case-insensitive, so
# every earlier token must be the more specific reading:
#   "would read APPLY on the rubric, held as FALLBACK" -> FALLBACK, not APPLY
#   "MAYBE, and I would skip it"                       -> MAYBE, not SKIP
#   "SKIPPED BY FARRUKH, 2026-08-01. Closed"           -> SKIP, no MAYBE present
VERDICTS = ["FALLBACK", "MAYBE", "SKIP", "APPLY"]


def parse_scored(path):
    """Score, decision and the verdict as written, from one scored record."""
    m = TOTAL.search(path.read_text())
    if not m:
        return None
    score, rest = int(m.group(1)), m.group(2)
    verdict = rest.split("—")[-1].strip(" .,") if "—" in rest else rest.strip(" .,")
    decision = next((v for v in VERDICTS if v in verdict.upper()), "?")
    return {"slug": path.stem, "score": score, "decision": decision, "verdict": verdict}


def load_tracker():
    p = ROOT / "tracker/applications.csv"
    if not p.exists():
        return []
    with p.open(newline="") as f:
        return list(csv.DictReader(f))


def days(iso):
    try:
        return (date.fromisoformat(iso) - TODAY).days
    except (ValueError, TypeError):
        return None


def due(n):
    if n is None:
        return ""
    if n < 0:
        return f"{-n}d late"
    return "today" if n == 0 else f"in {n}d"


def main():
    rows = load_tracker()
    tracked = {r["id"] for r in rows}
    by_status = {}
    for r in rows:
        by_status.setdefault(r["status"], []).append(r)

    inbox = sorted(p.stem for p in ROOT.glob("jobs/inbox/*.md"))
    folders = {p.name for p in (ROOT / "applications").glob("*") if p.is_dir()}
    scored = [s for s in (parse_scored(p) for p in sorted(ROOT.glob("jobs/scored/*.md"))) if s]

    # An apply decision with no package started is the thing /cv is for.
    waiting = [s for s in scored if s["decision"] == "APPLY" and s["slug"] not in folders]
    overdue = [r for r in rows if r["status"] not in ("rejected", "offer")
               and (d := days(r["next_action_date"])) is not None and d <= 0]
    interviews = by_status.get("interview", [])
    drafts = by_status.get("draft", [])

    print(f"JOB PIPELINE          {TODAY}\n")
    print(f"INBOX          {len(inbox):<2} unscored          -> /score all")
    print(f"SCORED         {len(waiting):<2} waiting           -> /cv <slug>")
    print(f"DRAFTED        {len(drafts):<2} not submitted     -> /submitted <slug>")
    print(f"FOLLOW-UP      {len(overdue):<2} overdue           -> /followups")
    print(f"INTERVIEW      {len(interviews):<2} booked            -> /prep <slug>")

    print(f"\nBOARD  {len(rows)} rows")
    for status in sorted(by_status, key=lambda s: -len(by_status[s])):
        print(f"  {status:<12} {len(by_status[status])}")

    pending = sorted((r for r in rows if r["next_action_date"] and r["status"] not in ("rejected", "offer")),
                     key=lambda r: r["next_action_date"])
    if pending:
        print("\nFOLLOW-UPS")
        for r in pending:
            print(f"  {due(days(r['next_action_date'])):<9} {r['next_action_date']}  "
                  f"{r['id']:<38} {r['next_action']}")

    # The reconciliation. Anything scored but never tracked, in either direction.
    orphans = [s for s in scored if s["slug"] not in tracked]
    if orphans:
        print("\nSCORED, NOT IN TRACKER")
        for s in sorted(orphans, key=lambda s: -s["score"]):
            print(f"  {s['decision']:<9} {s['score']:>3}  {s['slug']:<38} {s['verdict'][:58]}")

    print("\nHEALTH")
    ok = True
    for rel in ("profile/cv-skeleton.typ", "profile/constraints.md"):
        p = ROOT / rel
        if p.exists() and "TODO:VERIFY" in p.read_text():
            print(f"  BLOCKED   {rel} still has TODO:VERIFY, which blocks /cv")
            ok = False
    if folders and not rows:
        print(f"  DRIFT     {len(folders)} application folders but an empty tracker")
        ok = False
    for slug in sorted(folders - tracked):
        print(f"  DRIFT     applications/{slug} has no tracker row")
        ok = False
    for r in drafts:
        d = ROOT / "applications" / r["id"]
        if d.exists():
            age = (TODAY - date.fromtimestamp(d.stat().st_mtime)).days
            if age > 3:
                print(f"  STALE     {r['id']} drafted {age}d ago, tailoring already paid for")
                ok = False
    if ok:
        print("  clean     no blockers")
    return 0


if __name__ == "__main__":
    sys.exit(main())
