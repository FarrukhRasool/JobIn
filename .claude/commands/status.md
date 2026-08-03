---
description: Any time, the whole board and what to run next
---

Show me where everything stands. Read-only, change nothing.

## Gather

```
python3 scripts/status.py
```

That is the whole gather step. One command, and it prints every count, the follow-up queue sorted by due date, anything scored but missing from the tracker, and the health checks below.

**Do not crawl the tree to rebuild this.** Do not list `jobs/`, do not read `tracker/applications.csv`, and above all do not grep the records in `jobs/scored/`. That crawl cost roughly 12k tokens per session and produced facts the script already prints. Read the script's output and reason from it.

Read a file directly only when the board raises a specific question it cannot answer, and then read only that file.

## Report

Relay the script's output, then add one line: **the single most valuable thing to do right now**, with the exact command to run.

Priority when several are pending: interviews first, then overdue follow-ups, then drafted-but-not-submitted, then new scoring. Anything already in flight beats starting something new.

## Health checks

`scripts/status.py` runs these and prints them under HEALTH. It stays silent when they pass, so anything printed there is true and worth surfacing:

- `TODO:VERIFY` still present in `profile/cv-skeleton.typ` or `profile/constraints.md`, which will block `/cv`
- A drafted package sitting unsubmitted more than 3 days, since the tailoring has already been paid for
- An `applications/` folder with no tracker row, meaning the row was never created

## The reconciliation is not noise

SCORED, NOT IN TRACKER lists postings scored but never logged. Read it every time. `scalable-capital-senior-ios-engineer` sits there at 88, the highest unapplied score in the repo, held as a deliberate FALLBACK behind the junior requisition. A board built from the tracker alone would not show it at all.
