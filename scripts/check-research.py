#!/usr/bin/env python3
"""Provenance check on a company research brief.

    python3 scripts/check-research.py <slug>

A brief feeds three things: the score, the CV and the letter. A wrong fact in it
aims the whole application at the wrong target, and nothing downstream questions it.

This exists because a claim from a search engine's own summary was written into a
brief as though it had been read from the posting. Search results for that query
included generic job-description pages from Glassdoor and Toptal, so the detail may
have come from a template rather than from the company.

Exit code 1 on any FAIL.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# Provenance grades, most reliable first. SUMMARY is not a source.
GRADES = {
    "VERIFIED":  "read from the primary page or posting itself",
    "REPORTED":  "a named third party said it, one step removed",
    "INFERRED":  "reasoned from other facts, with the reasoning shown",
    "SUMMARY":   "a search engine's own synthesis. NOT A SOURCE. Re-verify or drop",
    "NOT FOUND": "looked, did not find",
}
DOWNSTREAM_SAFE = {"VERIFIED", "REPORTED", "INFERRED", "NOT FOUND"}

fails, warns = [], []
def fail(t, m): fails.append(f"FAIL  {t:<12} {m}")
def warn(t, m): warns.append(f"WARN  {t:<12} {m}")


def section(text, name):
    m = re.search(rf"^##\s+{re.escape(name)}\s*$(.*?)(?=^## |\Z)", text, re.S | re.M | re.I)
    return m.group(1) if m else None


def main():
    if len(sys.argv) < 2:
        sys.exit("usage: check-research.py <slug>")
    slug = sys.argv[1]
    p = ROOT / "jobs" / "research" / f"{slug}.md"
    if not p.exists():
        sys.exit(f"no research brief for {slug}")
    txt = p.read_text()

    # 1. sources must be real URLs, and the brief must say how each was obtained
    urls = re.findall(r"https?://\S+", txt)
    if not urls:
        fail("sources", "no URLs anywhere. A brief with no sources cannot be checked")
    elif len(urls) < 3:
        warn("sources", f"only {len(urls)} URLs. Thin for a brief that feeds a score")

    # 2. every provenance tag used must be one of the known grades
    used = set(re.findall(r"\b(VERIFIED|REPORTED|INFERRED|SUMMARY|NOT FOUND|NOT VERIFIED)\b", txt))
    if "NOT VERIFIED" in used:
        warn("grade", "'NOT VERIFIED' is ambiguous. Use SUMMARY, INFERRED or NOT FOUND")
    if not used:
        fail("grade", "no provenance tags at all. Every factual claim needs one")

    # 3. SUMMARY-grade material must be quarantined, never stated as fact
    for m in re.finditer(r"^(.*\bSUMMARY\b.*)$", txt, re.M):
        line = m.group(1)
        if not re.search(r"re-?verif|do not|must not|before scoring|quarantin|not a source", line, re.I):
            fail("summary", f"SUMMARY claim not quarantined: {line.strip()[:70]}")

    # 4. the cover-letter section feeds prose directly. it must be the most reliable part
    cl = section(txt, "For the cover letter")
    if cl is None:
        warn("structure", "no 'For the cover letter' section")
    else:
        if "SUMMARY" in cl:
            fail("summary", "'For the cover letter' contains SUMMARY-grade material. "
                            "A letter must never rest on an unverified claim")
        if not re.search(r"https?://", cl) and "VERIFIED" not in cl and "REPORTED" not in cl:
            warn("cl-grade", "'For the cover letter' claims carry no grade or URL")

    # 5. required sections
    for s in ["What they do", "Concerns", "Open questions"]:
        if section(txt, s) is None:
            warn("structure", f"missing section: {s}")

    # 6. an open-questions section that is empty is usually a brief that stopped early
    oq = section(txt, "Open questions")
    if oq is not None and len(oq.strip()) < 40:
        warn("depth", "Open questions is empty. Every brief should leave something unknown")

    # 7. anything the brief marks unverified must not have reached the scored record
    sc = ROOT / "jobs" / "scored" / f"{slug}.md"
    if sc.exists():
        scored = sc.read_text()
        for m in re.finditer(r"\*\*NOT VERIFIED:?\*\*\s*(.{0,80})", txt):
            frag = m.group(1)
            key = re.findall(r"\b\d\+ years|\b[A-Z][a-z]+ [A-Z][a-z]+\b", frag)
            for k in key[:2]:
                if k and k in scored:
                    warn("leak", f"'{k}' is flagged unverified in the brief but appears "
                                 f"in the scored record")

    print(f"grades used: {', '.join(sorted(used)) or 'none'}")
    print(f"sources:     {len(urls)} URLs")
    for line in fails + warns:
        print(line)
    if not fails and not warns:
        print("clean        provenance ok")
    print(f"\n{len(fails)} fail, {len(warns)} warn")
    sys.exit(1 if fails else 0)


if __name__ == "__main__":
    main()
