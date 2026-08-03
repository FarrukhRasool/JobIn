---
description: Step 9 of 9: record the result and calibrate the scoring rubric
argument-hint: <slug> <rejected | interview | offer | cold | withdrawn>
---

Run the `tracker` agent for: $ARGUMENTS

Load the `track-application` skill.

## Do

1. Update `status` and `last_contact` for the row.
2. Clear `next_action` and `next_action_date` for terminal results, which are `rejected`, `offer`, `cold` and `withdrawn`.
3. For `interview`, set the next action to preparing, and remind me to run `/prep <slug>`.
4. Append one line to the row's `notes` recording the stage it died at, or reached.

## Calibration, the reason this step exists

Compare the outcome against the score the `fit-score` rubric gave it. Then look across all closed rows and tell me whether the rubric is holding up:

- Applications scoring 88 plus that get rejected without a screen are the ones worth digging into. Under the `fit-score` skill's 2026-08-03 recalibration a score in the 80s is ordinary, so do not treat every high-scoring rejection as a rubric problem, only rejections at the very top band. Check the skill's Calibration section first: location friction, language reality, agency-versus-direct employer and posting age are the factors it currently under-weights, not technical keyword overlap
- Applications scoring in the 40s that reach interview mean the rubric is too harsh and the shortlist is throwing away good roles
- A cluster of rejections in one track means the positioning in that track file needs work, not the individual letters

Say what you see. If a rubric weighting in `.claude/skills/fit-score/SKILL.md` should change, propose the specific change and wait for me to approve it. Do not edit the rubric on your own.

Keep the report short unless the pattern is real.
