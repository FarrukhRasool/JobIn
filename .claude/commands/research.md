---
description: Step 2 of 9: research the company behind a posting
argument-hint: <slug>
---

Run the `company-research` agent for: $ARGUMENTS

Read `jobs/inbox/<slug>.md` for the company, role and URL. If there is no record, stop and tell me to run `/intake` first.

Load the `company-brief` skill for the source order and file structure.

## Go past the careers page

The careers page is marketing. Work the full source list in the skill, and in particular **read their other open roles**. Those leak the real stack, the team structure and whether they are scaling or backfilling, far more honestly than the posting I am applying to.

Also check their GitHub organisation, engineering blog, news from the last twelve months, and for a consumer app the store listing, since ratings and update cadence are directly relevant to an iOS role.

## Grade your evidence

Five grades, not two: `VERIFIED` read from the primary page, `REPORTED` a named third party, `INFERRED` with the reasoning shown, `SUMMARY` a search engine's synthesis, `NOT FOUND`.

**SUMMARY is not a source.** A search answer paragraph blends whatever was in the result set, often including generic job-description templates. Open the primary page and upgrade it, or write it as SUMMARY with an explicit do-not-use-downstream note. Never state it plainly.

The `For the cover letter` section may contain no SUMMARY material at all.

Finish with `python3 scripts/check-research.py <slug>`.

**Do not invent funding, customers, headcount or tech choices.** A fabricated detail that reaches a cover letter fails publicly. A gap is fine, a wrong fact is not.

Stop and tell me if this is a recruitment agency advertising an unnamed client, since there is nothing to research and no point tailoring yet.

## Output

Write `jobs/research/<slug>.md`, then give me five lines: what they do, size and stage, the stack, one thing worth opening the cover letter with, and the biggest concern you found.

Finish by printing:

`/score <slug>`
