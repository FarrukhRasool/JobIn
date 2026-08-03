---
description: Step 3 of 9: score a posting against your profile, apply or skip
argument-hint: <slug, or "all" for everything in inbox>
---

Run the `triage` agent on: $ARGUMENTS

No argument, or `all`, means score every record in `jobs/inbox/`.

Load the `fit-score` skill for the rubric.

## Order of work

1. Read `profile/constraints.md` **first**. Hard gate failures score zero and skip, regardless of how good the technical fit looks. Tailoring is the expensive step and this is what protects it.
2. Read `profile/skills.md` and `profile/experience.md`, plus both files in `profile/tracks/`. **Not the skeleton**, which holds only sample rows and would under-score technical fit.
3. Score, append the score block to the record, move it to `jobs/scored/<slug>.md`.

## Score honestly, apply broadly

The number orders the queue, it does not decide whether to apply. Per the `fit-score` skill's
2026-08-03 recalibration and `profile/constraints.md`'s volume-over-fit instruction, a decent
single-track posting ordinarily lands in the 80s by construction, not by generosity, so do not chase
a high score down looking for severity that is not there. Only a hard gate failure, scoring zero, is
a genuine skip. Do not inflate a dimension to push a total over a band boundary either, that would
make the shortlist useless for ordering the day's work, which is the one job it has.

Flag `PRIORITY-both` where the role genuinely needs AI and iOS together. On-device ML, Core ML, camera or sensor pipelines, AR, robotics with a mobile component. Those are the highest value applications available and deserve harder tailoring.

## Output

Single job: the score table, the decision, the track, the gaps, the risks.

Batch: a ranked table of the applies, then the skips with one line each. Tell me which one to start on today.

Finish by printing the next command for the top-ranked apply:

`/cv <slug>`
