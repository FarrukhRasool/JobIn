---
name: fit-score
description: The rubric for scoring a job posting against the user's profile and constraints, producing an apply or skip decision. Use when triaging postings in jobs/inbox/.
---

# Fit scoring

Score out of 100. **The number orders the queue. It does not decide whether to apply.**

That decision belongs to the hard gates in Step 1 and to `profile/constraints.md`, which as of
2026-08-01 states volume over fit: apply broadly, and never let a low or capped score become a
recommendation to skip. Score honestly, then recommend broadly. Those are not in conflict.

**What the number is for:** deciding what to spend the next hour on when several postings are open at
once, and how hard to tailor each. Nothing else reads it.

## Step 1: hard gates, before any scoring

Read `profile/constraints.md`. Any failure below scores **0** and skips immediately.

| Gate | Fails when |
|---|---|
| Language | Role requires German above the user's actual level |
| Location | Outside Europe, the USA, Canada or Australia. He will relocate anywhere within those regions, so this gate rarely fires |
| Hard no list | Company or sector on the list |

A zero is not a judgement of the user. It is the pipeline refusing to spend an hour tailoring for a first-filter rejection.

If a gate field is `UNKNOWN` in the record, do not fail it. Cap the score at 70 and flag it as a risk to confirm before applying.

**The 70 cap was left unchanged in the 2026-08-03 recalibration** and still does its job. Under the new
bands it lands in "apply, light tailoring", which is the right reading: an unconfirmed gate is a reason
not to spend two hours tailoring, not a reason to skip.

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

**A different vendor inside a category he owns is not a gap.** Added 2026-08-03. GitLab CI against Jenkins and GitHub Actions, Swift Testing against XCTest, Bitrise against Fastlane, SwiftData against Core Data: these are the same competence with a different logo on it. Where `skills.md` shows he owns the category on real evidence, score the requirement at or near the `strong` weight, and put the specific product under **Risks** as a familiarisation item rather than under **Gaps**. Reserve Gaps for competences he genuinely lacks, not for products he has not happened to type the name of.

**Absence from `skills.md` is not evidence of absence.** That file records what has been written down and confirmed. It is not the full inventory of what four years of production iOS work covers. When a posting names something plausibly inside that ground and the pool is silent, **ask before recording it as a gap**. The file's own history is the argument: XCTest, MVC, Jenkins, Combine, TensorFlow, async/await and App Store release ownership were each missing or `ask` at some point, each was real, and each cost a real application before it was confirmed.

**Score the posting's own words, not an expansion of them.** A fetched record's `Tech stack` line is often the fetch model's gloss rather than the advert's text. Before scoring a gap against a named technology, check it appears in the verbatim Requirements or Responsibilities block. Michael Page, 2026-08-03: the advert said "Nutzung von Swift Concurrency" and the record's stack line expanded it to "Swift Concurrency (async/await, Actors)". Actors was scored as a gap and the advert never asked for it.

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
| Working student, Werkstudent, internship, apprenticeship | 0 to 4 | **Cap the total at 45** |
| Junior, graduate, entry level asking under 2 years | 5 to 9 | **Cap the total at 60** |

Apply the cap **after** summing, and say in the record that it was applied.

**A cap never decides SKIP.** Corrected 2026-08-03. This table previously read "cap the total at 45 and
decide SKIP" for Werkstudent postings, which directly contradicted `profile/constraints.md`: "The
over-qualification caps still apply to the number, but not to the decision. A capped score is not a
reason to skip on its own. Say the cap was applied, say what it means, and let him decide."
`constraints.md` governs. The cap exists to keep the number comparable across the pipeline, nothing
more.

**Cap values were left unchanged in the 2026-08-03 recalibration**, deliberately. Moving them would
break comparability with records already scored under them, such as Scalable Capital Junior at a
capped 60 from a raw 81. A capped score now lands in the "below 65, long shot" band by construction.
That is the intended reading and not a reason to skip.

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

**Recalibrated 2026-08-03.** The old bands were set before the volume-over-fit decision and before
there was any real score data. They treated 75 plus as exceptional when it is the ordinary result for
a decent iOS posting. See Calibration below for why. **The dimensions and their weights did not
change**, so scores recorded under the old bands remain directly comparable. Only the labels moved.

| Score | Decision |
|---|---|
| 88 plus | **Apply**, tailor hard, this is worth two hours |
| 78 to 87 | **Apply**, standard tailoring |
| 65 to 77 | **Apply**, light tailoring |
| Below 65 | **Apply** if volume is needed. Say plainly it is a long shot, and say why |
| 0 | **Blocked**, name the gate. The only genuine no |

**Only a zero is a skip.** Every other band applies. The bands set effort, not permission. If a
posting looks weak, the honest output is a low number with a plain sentence on why, not a
recommendation to skip.

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

**Rewritten 2026-08-03 against the first thirteen scored records.** The previous note said most
postings should land between 40 and 65, and that anything above 75 meant the rubric was being applied
too generously. That was wrong, and blaming the scorer for it sent every triage pass looking for
severity it could not honestly find.

The observed spread across the thirteen scored records:

| Dimension | Observed range | Discriminating? |
|---|---|---|
| Technical fit | 18 to 39 | **Yes.** The main signal |
| Company fit | 5 to 14 | **Yes** |
| Application quality | 4 to 10 | **Yes** |
| Seniority fit | 17 to 19 on 9 of 13 | Barely. Only moves on genuine mismatch |
| Track clarity | 15/15 on 10 of 13 | **No.** Near-constant |

Track clarity and seniority fit together hand an ordinary single-track iOS posting about 33 points
before technical fit is assessed. **40 to 65 was arithmetically unreachable for the postings this
pipeline actually sees.** A decent iOS role lands near 85 by construction, not by generosity.

**So do not chase a low number.** If a score comes out high, check the dimensions are honest and move
on. The bands above already account for the real distribution.

**What a genuinely weak posting looks like now:** technical fit below 25, or company fit below 7, or
both. Those are the numbers that carry information. A total in the 80s is unremarkable.

### What this recalibration did not fix

Two structural issues were identified on 2026-08-03 and **deliberately left alone**, because the
chosen fix was recalibration only. Worth revisiting if the rubric stops being useful for ordering:

- **Track clarity is worth 15 points and predicts nothing.** It is a property of the posting, not of
  fit. It reads as a scored dimension while behaving as a label.
- **The factors that actually end applications are barely weighted.** SumUp scored 93, the highest in
  the pipeline, and was rejected without a screen on 2026-08-03. Its scored record had already flagged
  the likely cause, office-first Berlin against a candidate in Bavaria, and that flag cost 2 points out
  of 15. Location friction, language reality, agency-versus-direct employer and posting age have no
  dimension of their own and surface only as small deductions inside Company fit.

One rejection is not a pattern. Revisit when more rows close.
