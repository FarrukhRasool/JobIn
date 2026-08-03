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

    # Step 2 token budget, added 2026-08-03. /research was the most expensive step in
    # the pipeline because the source list had no ceiling and half of it fed nothing.
    ("research-cost", ".claude/skills/company-brief/SKILL.md", r"6 WebFetch and 4 WebSearch", "step 2 has a hard fetch ceiling"),
    ("research-cost", ".claude/skills/company-brief/SKILL.md", r"Search first, then fetch", "search before fetching, to pick targets"),
    ("research-cost", ".claude/skills/company-brief/SKILL.md", r"900 words is the ceiling", "brief has a length ceiling"),
    ("research-cost", ".claude/skills/company-brief/SKILL.md", r"Deliberately not researched here", "expensive sources are named as out of scope"),
    ("research-cost", ".claude/agents/company-research.md", r"6 WebFetch and 4 WebSearch", "the agent carries the fetch ceiling"),
    ("research-cost", ".claude/commands/research.md", r"6 WebFetch and 4 WebSearch", "the command carries the fetch ceiling"),

    # The deferral only pays off if step 8 actually picks the work up. Without these
    # two, the deep sources are dropped at step 2 and never researched at all.
    ("research-defer", ".claude/skills/interview-brief/SKILL.md", r"jobs/research/<slug>\.md", "step 8 reads the step 2 brief"),
    ("research-defer", ".claude/skills/interview-brief/SKILL.md", r"Competitors", "step 8 picks up competitors, dropped at step 2"),
    ("research-defer", ".claude/commands/prep.md", r"jobs/research/<slug>\.md", "prep builds on the step 2 brief"),
    # The agent actually invoked at step 8 is a different file from the skill and the
    # command. Its own checklist went stale once, silently, when the source-list cut
    # landed everywhere except here.
    ("research-defer", ".claude/agents/interview-prep.md", r"tech stack.*engineering culture|engineering culture.*tech stack", "the step 8 agent's own checklist still asks for the deferred depth"),
    ("research-defer", ".claude/agents/interview-prep.md", r"competitors", "the step 8 agent's own checklist still asks for competitors"),

    # Orientation budget, added 2026-08-03. Working out where things stood meant
    # crawling the tree and grepping all of jobs/scored/, about 12k tokens a
    # session to rebuild facts that had not moved. scripts/status.py prints them
    # instead. The saving only holds while the no-crawl instruction survives, and
    # an instruction that quietly disappears is the exact failure this file exists
    # to catch.
    ("orientation", "CLAUDE.md", r"scripts/status\.py", "orientation goes through the status script"),
    ("orientation", "CLAUDE.md", r"[Dd]o not rebuild that picture by crawling", "the no-crawl rule is stated"),
    ("orientation", "CLAUDE.md", r"still read the full research brief", "the generating steps are exempt from the no-crawl rule"),
    ("orientation", ".claude/commands/status.md", r"python3 scripts/status\.py", "/status calls the script"),
    # Without this one the board is built from the tracker alone, and a scored
    # posting held as a fallback with no tracker row becomes invisible.
    ("orientation", ".claude/commands/status.md", r"SCORED, NOT IN TRACKER", "the reconciliation is read every time"),
    # Established 2026-08-03, reading the private PakWheels repo. It is one squashed
    # commit, so the only authorship signal is the `// Created by X` file header, and
    # a generic "Created by PakWheels" header is shared by at least one colleague and
    # spans dates both before he joined and after he left. Corroboration needs the
    # header AND a date inside his tenure AND his own account of the feature. Without
    # this sentence the next session is free to attribute 1,012 files to him on a
    # string match, which is fabrication at scale.
    ("provenance", "profile/experience.md", r"attributes nothing", "the generic-author-header guard is stated"),
]

# Files that must NOT say something. Semantic guards.
FORBIDDEN = [
    (".claude/skills/fit-score/SKILL.md", r"Demonstrable means it appears in `cv-skeleton",
     "scoring against the skeleton undercounts skills 11 vs 66"),
    # match the TABLE ROW, not the sentence documenting that these are not tracked
    ("profile/constraints.md", r"^\|\s*(Salary expectation|Needs visa sponsorship|Work authorisation)",
     "visa or salary reintroduced as a tracked constraint"),
    # match a NUMBERED SOURCE line, not the prose naming these as out of scope.
    # These four are step 8's job. Back on step 2's list, the budget is meaningless.
    (".claude/skills/company-brief/SKILL.md",
     r"^\d+\.\s+\*\*(Engineering blog|Their GitHub organisation|Competitors)\*\*",
     "an expensive source was put back on the step 2 list, which breaks the fetch budget"),
    # Added 2026-08-03 on a genuine memory that the source contradicted. UserManager
    # stores tokens in UserDefaults and a full-repo sweep found no Keychain API call
    # anywhere. Match the GRADED TABLE ROW only, so the prose recording the removal
    # and the "not the Keychain" caveat both stay legal.
    ("profile/skills.md", r"^\|\s*Keychain\s*\|\s*(strong|listed)\s*\|",
     "Keychain came back as a graded skill after the source disproved it"),
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
