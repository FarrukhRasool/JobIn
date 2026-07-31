---
name: company-brief
description: Source order and file structure for researching the company behind a job posting. Use when building jobs/research/<slug>.md, straight after intake and before scoring.
---

# Company brief

Write to `jobs/research/<slug>.md`, same slug as the job record.

## Source order

Work down this list. Do not stop at the first search.

1. **Company website**, the About and Product pages. What they build, who buys it.
2. **The careers page**, and specifically **their other open roles**. This is the highest-signal source most people skip. Other postings name the real stack, the team structure, who reports to whom, and whether they are scaling or backfilling.
3. **Engineering blog**, if any. Reveals actual technical decisions and how they think.
4. **Their GitHub organisation**, if public. Languages, activity, whether they open source anything.
5. **News from the last 12 months.** Funding, launches, acquisitions, layoffs, leadership changes.
6. **LinkedIn company page.** Headcount and its trend, where employees sit.
7. **Their product itself.** For a consumer app, the App Store or Play listing gives ratings, update cadence and recent complaints. For an iOS role this is directly relevant.
8. **Competitors**, one line on who else plays here.

## File structure

```markdown
# <Company>, <Role>

Researched: YYYY-MM-DD
Sources: list the URLs you actually used

## What they do
One paragraph. What the product is and who pays for it. If you cannot state the
business model in a sentence, say so, that is itself a finding.

## Stage and size
Founded, funding, headcount and direction of travel, ownership. Mark each fact
VERIFIED or INFERRED.

## Tech stack
What they build with. Separate what the posting states from what you found in
their other roles, GitHub, or blog. Note the source for each.

## Vision and direction
Where they say they are going, and what the evidence suggests. Recent launches,
hiring patterns, funding. Note where the stated vision and the observable
behaviour disagree, that gap is often the most useful thing in the brief.

## The role in context
Why this role exists now. New team or backfill. Who it likely reports to. How
many similar roles are open. Whether the team is growing.

## Location and work model
Office locations, remote policy, and for a foreign employer hiring into Germany,
how employment is likely structured.

## Culture and engineering practice
From the blog, talks, open source, and reviews. Evidence only, not vibes.

## For the cover letter
Two or three specific, true, checkable details worth opening with. This is what
`letter-writer` reads. Generic praise is useless here.

## Concerns
Anything that should give pause. Layoffs, reposted role, vague description,
agency listing, poor reviews, unclear business model, contradictions.

## Open questions
What you could not determine, and what to ask if it reaches interview.
NOT FOUND is a valid and useful answer.
```

## Provenance, and why binary is not enough

**Every factual claim carries one of these grades.** Not two, five. The old VERIFIED-or-INFERRED split failed in practice, because a claim taken from a search engine's own summary got written down as VERIFIED and flowed into a score.

| Grade | Means | May feed a score, CV or letter? |
|---|---|---|
| `VERIFIED` | Read from the primary page or posting itself | **Yes** |
| `REPORTED` | A named third party said it. Funding news, Crunchbase, an interview | **Yes**, attribute the source |
| `INFERRED` | Reasoned from other facts, with the reasoning written down | **Yes**, marked as inference |
| `SUMMARY` | **A search engine's own synthesis. This is not a source.** | **No. Re-verify or drop** |
| `NOT FOUND` | Looked, did not find | n/a, and saying so is useful |

### SUMMARY is the one that bites

A search tool's answer paragraph is a synthesis of whatever was in its result set. For the Avelios iOS Engineer role, that result set contained generic job-description templates from Glassdoor and Toptal alongside the real posting. The "3+ years professional experience" detail may have come from a template.

**A SUMMARY claim is a lead, not a fact.** Either open the primary page and upgrade it to VERIFIED, or write it as SUMMARY with an explicit instruction not to use it downstream. Never state it plainly.

The check enforces this: a line containing `SUMMARY` must also say re-verify, do not use, or not a source.

### The cover-letter section is the strictest

`For the cover letter` feeds prose that goes to an employer. **It may contain no SUMMARY material at all.** Every claim there should be VERIFIED or REPORTED with the URL beside it. A letter built on an unverified claim fails in the room, not on the page.

## Rules

**Every claim carries a grade.** Anything you cannot grade goes under Open questions.

**Never invent** funding rounds, customer names, headcounts, or tech choices. A cover letter built on a fabricated detail fails badly and publicly.

**Length follows evidence.** A well-documented scale-up may take two pages. A five-person startup with a one-page site may take five lines. Do not pad.

**Recruitment agencies.** If the posting is an agency advertising an unnamed client, stop and record that. There is nothing to research and the pipeline needs to know before spending effort on tailoring.

**Name collisions.** Confirm you have the right company via the posting's URL, location or industry before writing.

## What this feeds

- `triage` scores Company fit out of 15 from the Stage, Vision, Culture and Concerns sections
- `letter-writer` opens from the For the cover letter section
- `interview-prep` extends this file at step 8 rather than redoing the work
