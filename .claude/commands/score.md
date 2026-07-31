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

## Be harsh

Most postings should land between 40 and 65. If everything is scoring above 75 the rubric is being applied too generously and the shortlist has stopped being a shortlist.

Flag `PRIORITY-both` where the role genuinely needs AI and iOS together. On-device ML, Core ML, camera or sensor pipelines, AR, robotics with a mobile component. Those are the highest value applications available and deserve harder tailoring.

## Output

Single job: the score table, the decision, the track, the gaps, the risks.

Batch: a ranked table of the applies, then the skips with one line each. Tell me which one to start on today.

Finish by printing the next command for the top-ranked apply:

`/cv <slug>`
