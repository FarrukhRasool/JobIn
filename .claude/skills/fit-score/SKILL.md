---
name: fit-score
description: The rubric for scoring a job posting against the user's profile and constraints, producing an apply or skip decision. Use when triaging postings in jobs/inbox/.
---

# Fit scoring

Score out of 100. Be harsh. The purpose is to say no to most things.

## Step 1: hard gates, before any scoring

Read `profile/constraints.md`. Any failure below scores **0** and skips immediately.

| Gate | Fails when |
|---|---|
| Language | Role requires German above the user's actual level |
| Location | Outside Europe, the USA, Canada or Australia. He will relocate anywhere within those regions, so this gate rarely fires |
| Hard no list | Company or sector on the list |

A zero is not a judgement of the user. It is the pipeline refusing to spend an hour tailoring for a first-filter rejection.

If a gate field is `UNKNOWN` in the record, do not fail it. Cap the score at 70 and flag it as a risk to confirm before applying.

## Step 2: score

**Technical fit, 40 points.**
Overlap between the posting's required stack and what Farrukh can actually demonstrate.

**Score against `profile/skills.md`, not the skeleton.** `cv-skeleton.typ` holds three sample skill rows so it renders, and scoring against it would under-count badly. The pool in `skills.md` carries an evidence rating on every entry, and that rating is the weighting:

| Rating | Weight | Meaning |
|---|---|---|
| `strong` | **full** | A CV bullet or project entry already demonstrates it, so it survives an interview question |
| `listed` | **half** | Real, but nothing evidences it yet |
| `ask` | **zero** | Unconfirmed. Do not count it, and do not let it reach a CV |

Also read `profile/experience.md` for what the employment actually involved, since the skill names alone understate it.

- 35 to 40: core stack matches, has shipped it
- 25 to 34: strong overlap, one or two gaps that are learnable
- 15 to 24: adjacent, needs a real leap
- Below 15: not this person's role

**Seniority fit, 20 points.**
The user has roughly four years plus an M.Sc.

- 18 to 20: asks for three to six years
- 12 to 17: asks for six to eight, worth applying, will need the letter to work
- 5 to 11: asks eight plus, apply only if everything else is excellent
- 0 to 4: staff or principal, skip

**Over-qualification cuts both ways, and it is a hard cap not a deduction.** A role asking for far less than he has is as wrong a fit as one asking for far more, and the dimension scores above do not catch it on their own.

| Posting level | Seniority score | Effect on the total |
|---|---|---|
| Working student, Werkstudent, internship, apprenticeship | 0 to 4 | **Cap the total at 45 and decide SKIP** |
| Junior, graduate, entry level asking under 2 years | 5 to 9 | **Cap the total at 60** |

Apply the cap **after** summing, and say in the record that it was applied.

Without this, a strong company with a matching stack scores 75 plus on technical and company fit alone and reads as APPLY, when the honest answer is that a 20-hour student contract at student rates is not a job he should take while employed full time.

**Two exceptions worth checking before you skip.** First, if the same company has a professional-level opening, say so and point at that instead, which is far more useful than a bare skip. Second, ignore the posting's own seniority tag when the stated requirements contradict it, since LinkedIn tags are frequently wrong. Score the requirements, not the label.

**Track clarity, 15 points.**
Does the role map cleanly onto one track?

- 15: clean single track
- 10 to 14: clean, with the other track as a bonus the posting explicitly values
- **Bonus, score 15 and flag as PRIORITY**: the role genuinely needs both. On-device ML, Core ML, camera or sensor pipelines, AR, robotics with mobile. The dual profile stops being a dilution and becomes the reason to hire him. These are the highest value applications in the pipeline.
- 5 to 9: could go either way, tailoring will be muddy
- 0 to 4: neither track fits

**Company fit, 15 points.**
Score this from `jobs/research/<slug>.md`. Size, stage, product interest, direction of travel, and whether the work is real engineering or maintenance. Weigh the brief's Concerns section: layoffs, a role reposted for months, an unclear business model, or an agency advertising an unnamed client all pull this down hard.

If no research file exists, cap Company fit at 8 and note that `/research <slug>` was skipped. Do not invent a view of a company you have not looked at.

**Application quality signal, 10 points.**
How well the pipeline can actually compete here.

- 8 to 10: a specific project maps directly to the posting's problem
- 4 to 7: generic strong application
- 0 to 3: hundreds of applicants, nothing distinctive to say

## Step 3: decide

| Score | Decision |
|---|---|
| 75 plus | **Apply**, tailor hard, this is worth two hours |
| 60 to 74 | **Apply** if the day's queue is not full, standard tailoring |
| 45 to 59 | **Maybe**, only if volume is needed. Say plainly it is a long shot |
| Below 45 | **Skip**, one line on why |
| 0 | **Blocked**, name the gate |

## Output block

Append to the record:

```markdown
## Score

**Total: NN / 100 — DECISION**
Track: ai-engineer | ios-developer | PRIORITY-both

| Dimension | Score |
|---|---|
| Technical fit | /40 |
| Seniority fit | /20 |
| Track clarity | /15 |
| Company fit | /15 |
| Application quality | /10 |

**Why this score.** Two or three sentences. Be specific about what matched.

**Gaps.** What the posting wants that the user cannot show. The letter has to survive these.

**Risks.** UNKNOWN fields to confirm before applying.

**Lead with.** Which project, and why.
```

## Calibration

Most postings should score between 40 and 65. If everything is scoring above 75, the rubric is being applied too generously and the shortlist has stopped being a shortlist.
