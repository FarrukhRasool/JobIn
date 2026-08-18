#!/usr/bin/env python3
"""Deterministic checks on a finished application. Craft failures only.

    python3 scripts/check-style.py <slug>

Every check here exists because a real defect reached Farrukh before it was caught.
Anything a machine can decide is decided here, so the review agent spends its
judgement on the things that actually need judgement.

Exit code 1 if any FAIL. Warnings do not fail.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# Words that mark AI-written prose. From .claude/skills/human-voice/SKILL.md
AI_WORDS = [
    "thrilled", "delve", "leverage", "passionate about", "fast-paced", "showcase",
    "enhance", "underscore", "testament", "vibrant", "pivotal", "robust", "seamless",
    "cutting-edge", "not just", "excited to", "spearhead", "foster", "in today's",
    "landscape", "intricate", "garner", "interplay", "tapestry", "crucial",
    "high-impact", "significantly",
]

# Phrases that mean the posting will TEACH this, so it is not a gap worth naming.
TEACHING_MARKERS = ["learn", "eagerness to learn", "willingness", "we will teach",
                    "opportunity to develop", "grow into"]

fails, warns = [], []


def fail(tag, msg):
    fails.append(f"FAIL  {tag:<14} {msg}")


def warn(tag, msg):
    warns.append(f"WARN  {tag:<14} {msg}")


def sentences(text):
    body = [l for l in text.split("\n")
            if l.strip() and not l.startswith(("Dear", "Best regards", "Farrukh Rasool"))]
    return [s.strip() for s in re.split(r"(?<=[.!?])\s+", " ".join(body)) if s.strip()]


def cv_bullets(typ):
    return [re.sub(r"\*([^*]+)\*", r"\1", b)
            for b in re.findall(r"^\s*\[(.+?)\],\s*$", typ, re.M)]


def entry_bullet_counts(typ):
    entries = []
    for m in re.finditer(r"#entry\((.*?)(?=\n#entry\(|\n#main-head\(|\Z)", typ, re.S):
        block = m.group(1)
        org = re.search(r'org:\s*"([^"]+)"', block)
        if not org:
            continue
        count = len(re.findall(r"^\s*\[.+?\],\s*$", block, re.M))
        entries.append((org.group(1), count))
    return entries


def check_letter(text):
    for s in sentences(text):
        if s.count(",") > 1:
            warn("comma", f"{s.count(',')} commas: {s[:62]}")
        if ", and " in s:
            fail("comma", f"comma before 'and'. Split the sentence: {s[:56]}")
        if re.search(r",\s+because\b", s):
            fail("comma", f"comma before 'because': {s[:56]}")
    for w in AI_WORDS:
        if w in text.lower():
            fail("ai-vocab", f"'{w}'")
    if "—" in text or "–" in text:
        fail("dash", "em or en dash present")
    if ";" in text:
        fail("semicolon", "semicolon present")
    n = len(re.findall(r"[A-Za-z']+", text))
    if n > 350:
        warn("length", f"{n} words. Target 250 to 350")


SLOT_RE = re.compile(r'^\s*(?:"SLOT:|\[SLOT:)')


def check_cv(typ):
    # A real placeholder is always `"SLOT: ...` (a side-list string) or
    # `[SLOT: ...` (a bullet). The skeleton's own header comment also says
    # the word "SLOT:" three times, in plain prose describing the mechanism,
    # and a bare substring match flagged that prose as an unfilled slot even
    # when every real slot had been replaced. Vault Defect Register, finding 6.
    for line in typ.splitlines():
        if SLOT_RE.match(line):
            fail("unfilled-slot", f"skeleton placeholder left in: {line.strip()[:52]}")
    for raw in re.findall(r"^\s*\[(.+?)\],\s*$", typ, re.M):
        m = re.search(r"\*([^*]+)\* and \*([^*]+)\*\s+(client|app|layer|stack|code|pipeline|service)\b", raw)
        if m:
            fail("keyword-stack", f"'{m.group(1)} and {m.group(2)} {m.group(3)}' stacks tools as an adjective: {raw[:44]}")
        for vague in (" agreed with", " leveraged ", " involved in ", " worked across "):
            if vague in raw:
                fail("vague-verb", f"'{vague.strip()}' hides the work: {raw[:48]}")
    for b in cv_bullets(typ):
        if ", and " in b:
            fail("comma", f"comma before 'and' in a bullet: {b[:56]}")
        if b.count(",") > 1:
            fail("comma", f"bullet has {b.count(',')} commas: {b[:56]}")
        for w in AI_WORDS:
            if w in b.lower():
                fail("ai-vocab", f"'{w}' in bullet: {b[:48]}")
        if re.search(r"^\s*(Developed|Worked on|Participated in|Contributed to|Responsible for)\b", b, re.I):
            warn("weak-verb", f"bullet starts like a responsibility, not an achievement: {b[:54]}")
    # near-duplicate bullets, the PakWheels modularisation defect
    bl = [b for b in cv_bullets(typ) if len(b) > 45]
    boiler = {"developed", "using", "built", "application", "system", "features"}
    for i in range(len(bl)):
        for j in range(i + 1, len(bl)):
            a = set(re.findall(r"[a-z]{5,}", bl[i].lower())) - boiler
            b = set(re.findall(r"[a-z]{5,}", bl[j].lower())) - boiler
            shared = a & b
            if len(shared) >= 4 and len(shared) / min(len(a), len(b)) > 0.55:
                warn("duplicate", f"same fact twice? '{bl[i][:32]}' / '{bl[j][:32]}'")

    counts = entry_bullet_counts(typ)
    paid = [(org, n) for org, n in counts if org in {"Verimi GmbH", "PakWheels"}]
    for org, n in paid:
        if n < 4:
            fail("thin-experience", f"{org} has only {n} bullets. Use adjacent achievements before leaving paid work this thin")
    total = sum(n for _, n in paid)
    if paid and total < 9:
        warn("experience-balance", f"only {total} paid-experience bullets. A strong CV usually carries 9 to 11")
    if len(paid) == 2 and abs(paid[0][1] - paid[1][1]) > 2:
        warn("experience-balance", f"paid sections look unbalanced: {paid[0][0]} {paid[0][1]}, {paid[1][0]} {paid[1][1]}")


def check_claims(typ, notes):
    """notes.md asserts which terms were mirrored. Verify they are actually there.

    tailor-cv's own notes.md template showed this field as a bold label,
    `**Terminology mirrored:**`, not an H2 heading, even though most real
    notes.md files use `## Terminology mirrored` in practice. Matching only
    the H2 form let a bold-labelled file skip this check entirely. Accept
    both, and accept a bold label with extra words before the colon, since
    at least one real file reads `**Terminology mirrored from the posting
    and research brief:**`.
    """
    m = re.search(r"^##\s*Terminology mirrored\s*\n+(.+?)(?=\n##\s|\Z)", notes, re.S | re.M)
    if not m:
        m = re.search(r"\*\*Terminology mirrored[^*\n]*\*\*:?\s*(.+?)(?=\n\*\*[A-Za-z]|\Z)", notes, re.S)
    if not m:
        warn("claims", "notes.md has no 'Terminology mirrored' section (## heading or **bold** label)")
        return
    claimed = re.findall(r"`([^`]+)`", m.group(1))
    if not claimed:
        warn("claims", "no terms listed in backticks, cannot verify")
        return
    # The claim says "in main-column bullets, not only the sidebar", so only the
    # main column may satisfy it. Searching the whole file let sidebar-only terms
    # pass, which is how async/await reached the BJAK CV with no bullet behind it.
    i = typ.find("#main-head")
    main = (typ[i:] if i != -1 else typ).lower()
    missing = [c for c in claimed if c.lower() not in main]
    if missing:
        fail("claims", f"notes claims these are in main-column bullets, they are sidebar-only or absent: {missing}")


def skill_pool_terms():
    """Every skill name in profile/skills.md, as a growing, domain-agnostic
    vocabulary rather than a hand-maintained per-track list. A row can name
    several skills separated by commas, e.g. 'scikit-learn, NumPy, Pandas'."""
    pool = ROOT / "profile" / "skills.md"
    if not pool.exists():
        return set()
    text = pool.read_text()
    names = set()
    for row in re.findall(r"^\|\s*([^|]+?)\s*\|\s*(?:strong|listed|ask)\s*\|", text, re.M):
        for part in row.split(","):
            part = part.strip()
            if len(part) > 2:
                names.add(part)
    return names


def check_jd_coverage(typ, scored):
    """Which technologies the posting names that the CV never mentions.

    Two term sources, unioned. Syntactic patterns catch technology-shaped
    words (CamelCase, all-caps acronyms including plurals, a short iOS
    list). The skill pool catches everything else Farrukh has actually
    confirmed, in any domain, that the pattern cannot shape-match on its
    own, such as 'Docker' or 'Kubernetes', which are ordinary-looking
    capitalised words.

    Before this, the pattern was iOS-shaped only and a `len(t) > 2` filter
    dropped 'ML' and 'AI' outright. On an ML posting it caught nothing:
    'GANs' failed the all-caps pattern over its trailing lowercase 's',
    and 'Docker', 'PyTorch' and 'TensorFlow' matched no branch at all. It
    reported clean on a CV missing diffusion models, GANs and Docker, all
    named requirements. This does not claim full coverage either, free-text
    term extraction by regex cannot be complete, which is exactly why
    `application-review` question 1 checks every requirement by hand. This
    is a mechanical pre-filter for that judgement, not a replacement for it.
    """
    m = re.search(r"## Requirements\s*\n+(.+?)(?=\n## )", scored, re.S)
    r = re.search(r"## Responsibilities\s*\n+(.+?)(?=\n## )", scored, re.S)
    jd = (m.group(1) if m else "") + (r.group(1) if r else "")

    SYNTACTIC = re.compile(
        r"\b([A-Z][A-Za-z]*(?:UI|Kit|SDK|API)s?"          # SwiftUI, UIKit, SDKs, APIs
        r"|[A-Z][a-z]+(?:[A-Z][A-Za-z0-9]*)+"              # PyTorch, TensorFlow, GraphQL
        r"|[A-Z]{2,}s?(?:/[A-Z]+)?"                         # ML, AI, GANs, CI/CD
        r"|Swift\w*|Fastlane|Ruby|Kotlin|Xcode|async/await)\b"
    )
    HEADINGS = {"YOUR", "AND", "THE", "FOR", "QUALIFICATIONS", "RESPONSIBILITIES",
                "REQUIREMENTS", "MUST", "HAVE", "NICE", "ABOUT", "BENEFITS", "TEAM",
                "ROLE", "WHAT", "WHO", "WE", "US", "YOU", "OUR", "ARE", "CAN", "ALL",
                "NEW", "ANY", "ITS", "PER", "GET", "TOP", "OWN", "JOIN", "OFFER"}
    terms = {t for t in SYNTACTIC.findall(jd) if len(t) > 1 and t.upper() not in HEADINGS}

    jd_low = jd.lower()
    for name in skill_pool_terms():
        if re.search(r"\b" + re.escape(name.lower()) + r"\b", jd_low):
            terms.add(name)

    low = typ.lower()
    absent = sorted(t for t in terms if t.lower() not in low)
    if absent:
        warn("jd-coverage", f"posting names, CV does not: {absent}")


def check_gap_paragraph(letter, scored):
    """Naming a gap the posting offers to teach is a self-inflicted wound."""
    admits = re.search(r"(I have never|I have not built|straight about|I do not have)", letter, re.I)
    m = re.search(r"## Responsibilities\s*\n+(.+?)(?=\n## )", scored, re.S)
    resp = m.group(1).lower() if m else ""
    teaches = any(re.search(r"\b" + re.escape(t) + r"\b", resp) for t in TEACHING_MARKERS)
    if admits and teaches:
        warn("gap", "letter admits a gap while the posting says it will TEACH this. "
                    "Check it is a stated requirement, not something they offer to develop")


def main():
    if len(sys.argv) < 2:
        sys.exit("usage: check-style.py <slug>")
    slug = sys.argv[1]
    app = ROOT / "applications" / slug
    typ = (app / "cv.typ").read_text() if (app / "cv.typ").exists() else ""
    letter = (app / "letter.md").read_text() if (app / "letter.md").exists() else ""
    notes = (app / "notes.md").read_text() if (app / "notes.md").exists() else ""
    sc = ROOT / "jobs" / "scored" / f"{slug}.md"
    scored = sc.read_text() if sc.exists() else ""

    if not typ:
        sys.exit(f"no cv.typ for {slug}")
    check_cv(typ)
    if letter:
        check_letter(letter)
        if scored:
            check_gap_paragraph(letter, scored)
    if notes:
        check_claims(typ, notes)
        if "Experience balance" not in notes:
            warn("notes", "notes.md should record 'Experience balance' with Verimi and PakWheels bullet counts")
    if scored:
        check_jd_coverage(typ, scored)

    for line in fails + warns:
        print(line)
    if not fails and not warns:
        print("clean         no craft defects found")
    print(f"\n{len(fails)} fail, {len(warns)} warn")
    sys.exit(1 if fails else 0)


if __name__ == "__main__":
    main()
