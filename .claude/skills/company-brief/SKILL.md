---
name: company-brief
description: Source order and file structure for researching the company behind a job posting. Use when building jobs/research/<slug>.md, straight after intake and before scoring.
---

# Company brief

Write to `jobs/research/<slug>.md`, same slug as the job record.

## Budget

**Hard ceiling: 6 WebFetch and 4 WebSearch for the whole brief.** Not a target, a limit. Stop when you hit it and write what you have.

**Search first, then fetch.** Run the searches, read the result titles and snippets to decide which three or four pages are actually worth opening, then fetch only those. Fetching a page to find out whether it was worth fetching is the main way this step gets expensive: every page you open stays in context for the rest of the run.

If you hit the ceiling with sections still thin, that is a normal outcome. Write `NOT FOUND` and move on. A brief that stopped at its budget and said so is more useful than one that spent an hour and buried the finding.

## Source order

Four sources, in this order. This is the whole list for step 2.

1. **Company website**, the About and Product pages. What they build, who buys it.
2. **The careers page**, and specifically **two or three of their other open roles**. This is the highest-signal source most people skip. Other postings name the real stack, the team structure, who reports to whom, and whether they are scaling or backfilling. Two or three is enough, do not read the whole board.
3. **News from the last 12 months.** Funding, launches, acquisitions, layoffs, leadership changes. Search, do not fetch, unless a headline changes the picture.
4. **Their product itself**, for a consumer app only. The App Store or Play listing gives ratings, update cadence and recent complaints. For an iOS role this is directly relevant.

### Deliberately not researched here

The engineering blog, their GitHub organisation, conference talks by their engineers, employee review sites (Glassdoor, Kununu), and competitors. These are the expensive sources and **nothing at step 3 or step 5 reads them.** They belong to `interview-brief` at step 8, which extends this file only for the postings that reach an interview. Do not pull them forward.

The exception is a company small enough that the site says almost nothing. If sources 1 to 4 leave you unable to state the business model, one GitHub or blog fetch inside the budget is the right call.

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
Short, 80 words at most. What the posting states, plus anything their other open
roles add. Note the source for each. Nothing scores this dimension and the letter
does not use it, so do not go hunting. `interview-brief` fills it out properly at
step 8.

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
**Triage scores this**, so it cannot be skipped. Source it from what you already
fetched: how the other open roles are written, and what the careers page commits
to. Evidence only, not vibes. Reading the blog, conference talks and employee
review sites for this is step 8's job, not yours.

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

**900 words is the ceiling.** Length follows evidence below that, so a five-person startup with a one-page site may take five lines and that is fine. But a well-documented scale-up does not earn three pages. The brief feeds one 15-point dimension and three sentences of a cover letter. Past 900 words it is serving nobody.

The best brief in the pipeline so far is `jobgether-mobile-engineer-ios.md` at 545 words. It found the one thing that decided the application, that Jobgether is not the employer, said so in the second line, and stopped. Aim for that, not for coverage.

**Recruitment agencies.** If the posting is an agency advertising an unnamed client, research the agency itself rather than stopping: its size, specialisms, and whether its other open roles or its own job listing narrow down or reveal the end client. State plainly, high in the brief, that the agency is not the employer and the client is unnamed. This is still a complete brief, not a skipped one, since a recruiter's own credibility, size and track record are real signal for whether the eventual client is worth the effort. Continue to `/score`, where the unnamed client is scored as a Company fit deduction and a Concern, and Farrukh decides whether to proceed, usually once a client is disclosed at a first call. This is the established practice, applied to Hire Feed, Code Compass and Oliver Bernard.

**Name collisions.** Confirm you have the right company via the posting's URL, location or industry before writing.

## What this feeds

Two consumers at the time you write it, and they are narrow. Write for them and nothing else.

- `triage` scores Company fit out of 15 from the **Stage, Vision, Culture and Concerns** sections. Nothing else in the file is scored
- `letter-writer` opens from the **For the cover letter** section. It needs two or three checkable details, not a company profile

A third consumer arrives much later. `interview-prep` reads this file at step 8 and researches on top of it, but only for the small number of postings that reach an interview. **Do not do step 8's work at step 2.** Depth aimed at an interview that most postings never get is the single biggest waste in this pipeline.
