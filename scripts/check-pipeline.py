#!/usr/bin/env python3
"""Integrity check on the pipeline itself.

    python3 scripts/check-pipeline.py

Three failure classes, all of which have actually happened:

  SILENT EDIT   A find-and-replace anchor did not match. The edit reported success
                and changed nothing. Caught three times by luck, not by process.

  SEMANTIC      An edit was textually right and meaning-wrong. Repointing
                master-cv.typ to cv-skeleton.typ left scoring reading 11 sample
                skills instead of the 66-entry pool. Nothing was broken to a
                grep, and every future job would have scored badly.

  DRIFT         A file references something that no longer exists, or two files
                that must agree stop agreeing.

RULES is the defence against silent edits. Every rule Farrukh has asked for is
listed with a pattern that proves it is present. If an edit silently fails, the
rule disappears from this list and the check fails.

Exit code 1 on any FAIL.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
fails, warns = [], []


def fail(tag, msg): fails.append(f"FAIL  {tag:<12} {msg}")
def warn(tag, msg): warns.append(f"WARN  {tag:<12} {msg}")


def read(rel):
    p = ROOT / rel
    return p.read_text() if p.exists() else None


# Every rule Farrukh has asked for, and the file that must carry it.
# Adding a rule to the project means adding a line here, or it is not enforced.
RULES = [
    ("skeleton-is-startable", ".claude/skills/tailor-cv/SKILL.md", r"Copy `profile/cv-skeleton\.typ` to",
     "tailoring starts by copying the skeleton, so no finished CV is needed as a model"),
    ("slot-guard", "scripts/check-style.py", r'"SLOT:" in typ',
     "an unfilled skeleton placeholder fails the style check"),
    ("comma-and", "scripts/check-style.py", r'", and " in',
     "`, and` fails as a raw string, not a pronoun list"),

    ("human-voice", ".claude/skills/human-voice/SKILL.md", r"No em dashes",           "no em dashes"),
    ("human-voice", ".claude/skills/human-voice/SKILL.md", r"No semicolons",          "no semicolons"),
    ("human-voice", ".claude/skills/human-voice/SKILL.md", r"British spelling",       "British spelling"),
    ("human-voice", ".claude/skills/human-voice/SKILL.md", r"Comma discipline",       "comma discipline"),
    ("human-voice", ".claude/skills/human-voice/SKILL.md", r"comma before `because`|comma before .because", "no comma before because"),
    ("critique",    ".claude/skills/letter-critique/SKILL.md", r"Comma density",      "comma check in the letter critique"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"One comma maximum per bullet", "one comma per bullet"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"Contact location line",    "location mirrors the job's city"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"IOS Developer \(Working Student\)|Working Student", "working student qualifier"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"contact email",            "per-application email override"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"Name only what the posting cares about", "no keyword dropping"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"Senior iOS engineer pass", "CV bullets get a technical credibility pass"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"Experience section balance", "paid employment sections stay substantial"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"Fitting the page",         "fit procedure"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"Every cut is provisional", "cuts get added back"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"diagnose the column|Diagnose|diagnose", "diagnose which column overflows"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"Metrics worth adding",     "surface missing numbers"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"bar: false",               "education carries no accent bar"),
    ("tailor-cv",   ".claude/skills/tailor-cv/SKILL.md", r"application-review",       "review before delivery"),
    ("cv-tailor",   ".claude/agents/cv-tailor.md", r"human-voice.*embedded mode|embedded mode.*human-voice", "cv-tailor uses human-voice on CV bullets"),
    ("cv-tailor",   ".claude/agents/cv-tailor.md", r"senior iOS engineer pass", "cv-tailor runs the senior iOS technical pass"),
    ("vault",       ".claude/agents/vault-curator.md", r"vault is the human memory", "vault-curator keeps vault and repo roles separate"),
    ("vault",       ".claude/agents/vault-curator.md", r"not a CV content source", "vault examples cannot contaminate CV content"),
    ("vault",       ".claude/commands/vault-sync.md", r"Run the `vault-curator` agent", "vault-sync command calls vault-curator"),
    ("vault",       ".claude/commands/cv.md", r"vault quality notes", "cv command reads vault quality notes"),
    ("vault",       ".claude/commands/review.md", r"vault quality notes", "review command reads vault quality notes"),
    ("style",       "scripts/check-style.py", r"thin-experience", "style check catches thin paid-employment sections"),
    ("fit",         "scripts/check-fit.py", r"UNDERFILL.*ADD CONTENT BACK", "fit check treats wasted space as a defect"),
    ("cover-letter",".claude/skills/cover-letter/SKILL.md", r"only when the posting requires what he lacks", "gap rule is conditional"),
    ("fit-score",   ".claude/skills/fit-score/SKILL.md", r"Over-qualification",       "over-qualification cap"),
    ("fit-score",   ".claude/skills/fit-score/SKILL.md", r"profile/skills.md",        "score against the pool"),
    ("constraints", "profile/constraints.md",            r"deliberately not tracked", "visa and salary not tracked"),
    ("company-brief", ".claude/skills/company-brief/SKILL.md", r"SUMMARY.*not a source|not a source", "search summaries are not sources"),
    ("company-brief", ".claude/skills/company-brief/SKILL.md", r"no SUMMARY material at all", "cover-letter section bars SUMMARY"),
    ("research",    ".claude/agents/company-research.md", r"check-research\.py",      "research runs its provenance check"),
]

# Files that must NOT say something. Semantic guards.
FORBIDDEN = [
    (".claude/skills/fit-score/SKILL.md", r"Demonstrable means it appears in `cv-skeleton",
     "scoring against the skeleton undercounts skills 11 vs 66"),
    # match the TABLE ROW, not the sentence documenting that these are not tracked
    ("profile/constraints.md", r"^\|\s*(Salary expectation|Needs visa sponsorship|Work authorisation)",
     "visa or salary reintroduced as a tracked constraint"),
]


def check_rules():
    for tag, rel, pat, desc in RULES:
        txt = read(rel)
        if txt is None:
            fail("missing", f"{rel} does not exist, rule '{desc}' cannot be enforced")
        elif not re.search(pat, txt, re.I):
            fail("rule-lost", f"{desc} is NOT in {rel}. An edit silently failed.")


def check_forbidden():
    for rel, pat, why in FORBIDDEN:
        txt = read(rel)
        if txt and re.search(pat, txt, re.I | re.M):
            fail("regression", f"{rel} still says something removed: {why}")


def check_references():
    """Every file path named in a doc must exist."""
    docs = list(ROOT.glob("*.md")) + list(ROOT.glob(".claude/**/*.md")) + list(ROOT.glob("profile/*.md"))
    pat = re.compile(r"`((?:profile|scripts|tracker|\.claude)/[A-Za-z0-9_\-./]+\.(?:md|typ|py|sh|csv|json))`")
    for d in docs:
        for m in set(pat.findall(d.read_text())):
            if not (ROOT / m).exists():
                fail("dangling", f"{d.relative_to(ROOT)} references {m}, which does not exist")


def check_wiring():
    """Commands must call agents that exist. Agents must load skills that exist."""
    agents = {p.stem for p in ROOT.glob(".claude/agents/*.md")}
    skills = {p.parent.name for p in ROOT.glob(".claude/skills/*/SKILL.md")}
    for c in ROOT.glob(".claude/commands/*.md"):
        for a in re.findall(r"Run the `([a-z\-]+)` agent", c.read_text()):
            if a not in agents:
                fail("wiring", f"/{c.stem} calls agent '{a}', which does not exist")
    for a in ROOT.glob(".claude/agents/*.md"):
        for s in re.findall(r"[Ll]oad(?:s)? the `([a-z\-]+)` skill", a.read_text()):
            if s not in skills:
                fail("wiring", f"agent {a.stem} loads skill '{s}', which does not exist")


def check_steps():
    steps, totals = [], set()
    for c in ROOT.glob(".claude/commands/*.md"):
        m = re.search(r"^description:\s*Step (\d+) of (\d+)", c.read_text(), re.M)
        if m:
            steps.append(int(m.group(1))); totals.add(int(m.group(2)))
    if steps:
        if sorted(steps) != list(range(1, len(steps) + 1)):
            fail("steps", f"gaps or duplicates in step numbers: {sorted(steps)}")
        if len(totals) != 1:
            fail("steps", f"commands disagree on the total: {totals}")
        elif max(steps) != next(iter(totals)):
            fail("steps", f"highest step is {max(steps)} but commands say 'of {next(iter(totals))}'")


def check_skeleton_is_not_a_source():
    """The skeleton holds structure and fixed facts. It must not be read as the pool."""
    sk = read("profile/cv-skeleton.typ") or ""
    rows = re.findall(r'^\s*"([^"]+)",\s*$', sk, re.M)
    n = len({p.strip() for r in rows for p in r.split("|")})
    pool = read("profile/skills.md") or ""
    m = len(re.findall(r"^\|\s*[^|]+\|\s*(strong|listed|ask)\s*\|", pool, re.M))
    if n > m * 0.5:
        warn("skeleton", f"skeleton holds {n} skills against a pool of {m}. It is meant to hold "
                         f"a few samples. If it grows into a second pool the two will drift.")
    for rel in [".claude/agents/triage.md", ".claude/commands/score.md"]:
        t = read(rel) or ""
        if "cv-skeleton" in t and "skills.md" not in t:
            fail("semantic", f"{rel} reads the skeleton for skills but not skills.md. "
                             f"It would score against {n} skills instead of {m}.")


def main():
    check_rules()
    check_forbidden()
    check_references()
    check_wiring()
    check_steps()
    check_skeleton_is_not_a_source()

    for line in fails + warns:
        print(line)
    if not fails and not warns:
        print("clean        pipeline integrity ok")
    print(f"\n{len(fails)} fail, {len(warns)} warn, {len(RULES)} rules enforced")
    sys.exit(1 if fails else 0)


if __name__ == "__main__":
    main()
