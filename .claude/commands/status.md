---
description: Any time, the whole board and what to run next
---

Show me where everything stands. Read-only, change nothing.

## Gather

- `jobs/inbox/` count, these are unscored
- `jobs/scored/` with an apply decision but no folder in `applications/`, these are packages not started
- `applications/` folders whose tracker row is still `draft`, these are written but not submitted
- `tracker/applications.csv` rows where `next_action_date` is today or earlier
- rows with status `interview`

## Report

```
INBOX          N unscored          -> /score all
SCORED         N waiting           -> /cv <slug>
DRAFTED        N not submitted     -> /submitted <slug>
FOLLOW-UP      N overdue           -> /followups
INTERVIEW      N booked            -> /prep <slug>
```

Then one line: **the single most valuable thing to do right now**, with the exact command to run.

Priority when several are pending: interviews first, then overdue follow-ups, then drafted-but-not-submitted, then new scoring. Anything already in flight beats starting something new.

## Health checks

Flag these only when true:

- `TODO:VERIFY` still present in `profile/cv-skeleton.typ` or `profile/constraints.md`, which will block `/cv`
- A drafted package sitting unsubmitted more than 3 days, since the tailoring has already been paid for
- Empty tracker while `applications/` has folders, meaning rows were never created
