#!/usr/bin/env python3
"""
Validate the Job-Hunting vault's factual claims against this repo.

The vault lives outside the repo on purpose, so a commit that changes a rule
cannot force a documentation update in the same change. That is the exact way
README.md came to claim 7 agents against 9 on disk. This makes the drift fail
loudly instead of rotting quietly.

    python3 scripts/check-docs.py                      # default vault location
    python3 scripts/check-docs.py /path/to/vault

Checks three things:
  1. Every counted claim in the vault matches the live repo
  2. Every [[wikilink]] resolves, and no two notes share a name
  3. Every repo path the vault names actually exists
"""
import os
import re
import subprocess
import sys
from collections import defaultdict
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
DEFAULT_VAULT = Path.home() / "Desktop" / "Job-Hunting"

fails, warns = [], []


def fail(tag, msg):
    fails.append((tag, msg))
    print(f"FAIL  {tag:<14} {msg}")


def warn(tag, msg):
    warns.append((tag, msg))
    print(f"WARN  {tag:<14} {msg}")


def count(pattern):
    return len(list(REPO.glob(pattern)))


def rules_enforced():
    """Ask check-pipeline.py how many rules it currently enforces."""
    out = subprocess.run(
        [sys.executable, str(REPO / "scripts" / "check-pipeline.py")],
        capture_output=True, text=True,
    ).stdout
    m = re.search(r"(\d+) rules enforced", out)
    return int(m.group(1)) if m else None


def skills_counts():
    """Count skills.md table rows and distinct skills per evidence rating."""
    rows = defaultdict(list)
    for line in (REPO / "profile" / "skills.md").read_text().splitlines():
        m = re.match(r"^\|\s*([^|]+?)\s*\|\s*(strong|listed|ask)\s*\|", line)
        if m:
            rows[m.group(2)].append(m.group(1))
    out = {}
    for rating, entries in rows.items():
        skills = sum(len([x for x in re.split(r",|\s\|\s", e) if x.strip()]) for e in entries)
        out[rating] = (len(entries), skills)
    return out


def main():
    vault = Path(sys.argv[1]).expanduser() if len(sys.argv) > 1 else DEFAULT_VAULT
    if not vault.is_dir():
        print(f"vault not found: {vault}")
        return 2

    notes = list(vault.rglob("*.md"))
    text = "\n".join(p.read_text() for p in notes)

    # ---- 1. counted claims -------------------------------------------------
    sk = skills_counts()
    expected = {
        "commands": count(".claude/commands/*.md"),
        "agents": count(".claude/agents/*.md"),
        "skills": count(".claude/skills/*/SKILL.md"),
        "scored postings": count("jobs/scored/*.md"),
        "research briefs": count("jobs/research/*.md"),
        "application folders": len([p for p in (REPO / "applications").iterdir() if p.is_dir()]),
        "tracker rows": len((REPO / "tracker" / "applications.csv").read_text().strip().splitlines()) - 1,
        "rules enforced": rules_enforced(),
        "ask-rated skills": sk.get("ask", (0, 0))[1],
    }

    # The vault states each of these as a bare number somewhere. Rather than
    # parse prose, assert the number appears and its neighbours-by-one do not
    # sit next to the same label. Cheap, and it catches the real failure mode.
    labels = {
        "commands": [r"\|\s*Commands\s*\|\s*(\d+)\s*\|"],
        "agents": [r"\|\s*Agents\s*\|\s*(\d+)\s*\|"],
        "skills": [r"\|\s*Skills\s*\|\s*(\d+)\s*\|"],
        "scored postings": [r"\|\s*Postings scored\s*\|\s*(\d+)\s*\|"],
        "application folders": [r"\|\s*Application folders\s*\|\s*(\d+)\s*\|"],
        "tracker rows": [r"\|\s*Submitted\s*\|\s*(\d+)\s*\|"],
        "rules enforced": [r"\|\s*Pipeline integrity rules\s*\|\s*(\d+)\s*\|", r"\*\*(\d+) rules\*\*"],
    }
    for key, pats in labels.items():
        found = [int(m) for p in pats for m in re.findall(p, text)]
        if not found:
            warn("unstated", f"vault never states a count for {key} (repo has {expected[key]})")
        for got in set(found):
            if got != expected[key]:
                fail("count", f"{key}: vault says {got}, repo has {expected[key]}")

    # ---- 2. links and duplicate note names ---------------------------------
    stems = defaultdict(list)
    for p in notes:
        stems[p.stem].append(str(p.relative_to(vault)))
    for stem, paths in stems.items():
        if len(paths) > 1:
            fail("duplicate", f"two notes named '{stem}': {', '.join(paths)}")

    for p in notes:
        for link in re.findall(r"\[\[([^\]|#\\]+)", p.read_text()):
            if link.strip() not in stems:
                fail("link", f"broken [[{link.strip()}]] in {p.name}")

    # ---- 3. repo paths the vault names -------------------------------------
    # Checked per line, because the Defect Register deliberately cites paths that
    # are missing. A line that says so is documenting the gap, not asserting it.
    ABSENT = re.compile(
        r"(?i)\b(not exist|never existed|no such file|neither|missing|absent|was renamed)\b")
    for p in notes:
        for line in p.read_text().splitlines():
            if ABSENT.search(line):
                continue
            for c in re.findall(r"`((?:\.claude|profile|scripts|jobs|tracker|applications)/[\w./-]+)`", line):
                if not (REPO / c).exists():
                    fail("dead-path", f"{p.name} cites `{c}`, which does not exist")

    # ---- report ------------------------------------------------------------
    print()
    if not fails and not warns:
        print(f"clean         {len(notes)} notes, no drift against {REPO.name}")
    print(f"\n{len(fails)} fail, {len(warns)} warn")
    return 1 if fails else 0


if __name__ == "__main__":
    sys.exit(main())
