---
description: Step 6 of 9: mark an application as submitted and start the follow-up clock
argument-hint: <slug>
---

Run the `tracker` agent for: $ARGUMENTS

I have submitted this application myself. Record it.

Load the `track-application` skill.

## Do

1. Find the row for `<slug>` in `tracker/applications.csv`. If there is no row, create one from `applications/<slug>/notes.md` and the scored record.
2. Set `status` to `applied`.
3. Set `date_applied` and `last_contact` to today.
4. Set `next_action` to `first follow-up` and `next_action_date` to today plus 7 days.

Confirm the row back to me in one line. Nothing more, this is bookkeeping.

If the posting stated a review date later than the 7 day mark, use that date instead and say why.

Finish by printing:

`/followups` to check what is due
