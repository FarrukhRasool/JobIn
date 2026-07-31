---
description: Step 7 of 9: show what has gone quiet and draft the nudges
---

Run the `tracker` agent against `tracker/applications.csv`.

Load the `track-application` skill for the cadence.

Report only what needs action today. Seven days silent gets a first follow-up, fourteen gets the second and last, twenty one gets marked `cold`. Two follow-ups is the ceiling.

For anything due, draft the message. Three sentences, house style, no em dashes, no semicolons, and a different specific detail for each company. An identical nudge sent to twenty companies is obvious.

Do not follow up where the posting stated a review date that has not passed yet.

## Patterns

If the data shows something, say it plainly. These are worth more than any individual nudge:

- One track getting replies while the other is silent, so shift effort
- High scores getting rejected, so the `fit-score` rubric needs recalibrating
- Nothing acknowledged at all, so the CV may be failing ATS filters

Finish by printing, where an interview is booked:

`/prep <slug>`
