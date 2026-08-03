---
description: Step 2 of 9: research the company behind a posting
argument-hint: <slug>
---

Run the `company-research` agent for: $ARGUMENTS

Read `jobs/inbox/<slug>.md` for the company, role and URL. If there is no record, stop and tell me to run `/intake` first.

Load the `company-brief` skill for the source order and file structure.

## Stay inside the budget

**6 WebFetch and 4 WebSearch, maximum.** Search first, read the snippets, then open only the pages worth opening. Hitting the ceiling with thin sections is a normal outcome, write `NOT FOUND` and stop.

The careers page is marketing, so go past it to **two or three of their other open roles**. Those leak the real stack, the team structure and whether they are scaling or backfilling, far more honestly than the posting I am applying to. Then news from the last twelve months, and for a consumer app the store listing, since ratings and update cadence are directly relevant to an iOS role.

**Do not read their GitHub, their engineering blog, conference talks, employee review sites (Glassdoor, Kununu) or competitors.** Nothing in `/score` or `/letter` reads those sections, and `/prep` covers them properly at step 8 for the roles that reach an interview.

**900 words is the ceiling.** This brief feeds one 15-point dimension and three sentences of a cover letter.

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
