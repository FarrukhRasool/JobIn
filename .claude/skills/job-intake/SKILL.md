---
name: job-intake
description: Normalises a raw job posting into the pipeline's structured record format. Use when importing any posting into jobs/inbox/, whether pasted, fetched from a URL, or read from a job alert email.
---

# Job intake

Turn any posting into one file at `jobs/inbox/<slug>.md`.

## The slug

`<company>-<role>`, lowercase, hyphenated, no spaces. Strip legal suffixes and seniority noise where it does not disambiguate.

```
Acme GmbH, Machine Learning Engineer (m/w/d)   ->  acme-machine-learning-engineer
Verimi, Senior iOS Developer                    ->  verimi-senior-ios-developer
```

**This one slug is used everywhere:** `jobs/inbox/<slug>.md`, `jobs/scored/<slug>.md`, `applications/<slug>/`, and the tracker `id` column. Every command after step 1 takes it as the argument, so keep it short enough to type.

No date prefix. Dates live in the `posted` and `imported` fields and in the tracker.

## Getting the posting in

**Pasted text.** Normalise directly, no fetch.

**A URL.** Attempt WebFetch once, then judge the result on content, not status code. If there is no requirements or responsibilities text, the fetch failed.

On failure, stop and ask for the pasted description. Keep the URL for the `url` field. Say the fetch hit a login wall. Never write a thin record from a failed fetch and let it flow downstream, because the scorer will then rate a job it cannot actually see.

**LinkedIn is inconsistent.** Verified 2026-07-28: a LinkedIn job URL fetched full requirements and responsibilities without a login. Others return an auth wall. Always attempt the fetch and judge on content rather than assuming either way. Company career pages and most other boards fetch fine. Do not work around a failure with browser automation, see `CLAUDE.md`.

## Record format

```markdown
---
company:
role:
source:          # linkedin | stepstone | xing | indeed | company-site | referral
url:
posted:          # YYYY-MM-DD or UNKNOWN
imported:        # YYYY-MM-DD
location:
work_model:      # onsite | hybrid | remote | UNKNOWN
language:        # english | german | both | UNKNOWN
seniority:       # junior | mid | senior | lead | UNKNOWN
---

## Requirements
Verbatim from the posting. Do not paraphrase, the scorer needs the real wording.

## Responsibilities
Verbatim.

## Tech stack
Every named language, framework, tool, cloud.

## Notes
Anything odd. Vague description, obvious agency listing, reposted for months.

## Raw
<details>
Full original text, so nothing is lost if the posting is taken down.
</details>
```

## Rules

**UNKNOWN is a real value.** Never guess. Write `UNKNOWN` and let the scorer treat it as a risk. This matters most for `language`.

**Keep requirements verbatim.** Paraphrasing loses the exact keywords the ATS matches on, and the tailoring step needs them.

**Language detection.** A posting written in German usually signals a German-speaking workplace even when it says English is fine. Set `language: german` and note it.

**Seniority.** Read years of experience demanded, not the title. "Senior" means different things at a fifteen person startup and at Siemens.

## Deduplication

Before writing, check `jobs/inbox/` and `jobs/scored/` for the same company plus role. If found, do not create a duplicate. If the posting changed materially, update the existing record and note what changed.

Agencies repost the same role across several boards. Same company plus role is a duplicate even when the URLs differ.
