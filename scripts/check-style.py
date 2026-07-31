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


def check_cv(typ):
    if "SLOT:" in typ:
        for line in typ.splitlines():
            if "SLOT:" in line:
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


def check_claims(typ, notes):
    """notes.md asserts which terms were mirrored. Verify they are actually there."""
    m = re.search(r"## Terminology mirrored\s*\n+(.+?)(?=\n##|\Z)", notes, re.S)
    if not m:
        warn("claims", "notes.md has no 'Terminology mirrored' section")
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


def check_jd_coverage(typ, scored):
    """Which technologies the posting names that the CV never mentions."""
    m = re.search(r"## Requirements\s*\n+(.+?)(?=\n## )", scored, re.S)
    r = re.search(r"## Responsibilities\s*\n+(.+?)(?=\n## )", scored, re.S)
    jd = (m.group(1) if m else "") + (r.group(1) if r else "")
    terms = set(re.findall(r"\b([A-Z][A-Za-z]*(?:UI|Kit|SDK|API)|[A-Z]{2,}(?:/[A-Z]+)?|"
                           r"Swift\w*|Fastlane|Ruby|Kotlin|Xcode|async/await)\b", jd))
    HEADINGS = {"YOUR", "AND", "THE", "FOR", "QUALIFICATIONS", "RESPONSIBILITIES",
                "REQUIREMENTS", "MUST", "HAVE", "NICE", "ABOUT", "BENEFITS", "TEAM",
                "ROLE", "WHAT", "WHO", "WE", "US", "YOU"}
    terms = {t for t in terms if len(t) > 2 and t.upper() not in HEADINGS}
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
