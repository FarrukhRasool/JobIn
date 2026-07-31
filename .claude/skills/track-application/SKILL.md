---
name: track-application
description: Schema and follow-up cadence for tracker/applications.csv. Use when logging a submitted application, updating a status, or checking what needs chasing.
---

# Application tracking

One row per application in `tracker/applications.csv`.

## Schema

```csv
id,date_applied,company,role,track,score,source,url,status,last_contact,next_action,next_action_date,notes
```

| Field | Notes |
|---|---|
| `id` | **The slug**, `<company>-<role>`. Identical to the filename in `jobs/scored/` and the folder in `applications/`. Never a different format |
| `track` | `ai-engineer`, `ios-developer`, or `both` |
| `score` | From triage, so outcomes can be checked against predictions |
| `status` | see below |
| `last_contact` | Date of the most recent movement either way |
| `next_action` | What the user does next, in plain words |

## Status values and which command owns each

```
draft -> applied -> acknowledged -> screening -> interview -> offer / rejected / cold
```

| Status | Set by | Meaning |
|---|---|---|
| `draft` | `/letter` | Package written, not yet submitted |
| `applied` | `/submitted` | Farrukh has submitted it. Starts the follow-up clock |
| `acknowledged`, `screening` | `/outcome` | Movement from the company |
| `interview` | `/outcome` | Booked. Run `/prep <slug>` next |
| `offer`, `rejected`, `withdrawn` | `/outcome` | Terminal, clear `next_action` |
| `cold` | `/followups` | Two follow-ups sent, no reply. Stop there |

**Only `/submitted` moves a row out of `draft`.** Nothing else may, because the follow-up clock keys off `date_applied` and a row that auto-advances would start chasing a company Farrukh never actually applied to.

## Follow-up cadence

| Days silent | Action |
|---|---|
| 7 | First follow-up. Short, one specific question about the process |
| 14 | Second and final follow-up |
| 21 | Mark `cold`, stop |

Two follow-ups is the ceiling. A third reads as desperate and costs more than it gains.

Do not follow up if the posting states a review date that has not passed.

## Follow-up message

Three sentences. House style, no em dashes, no semicolons.

```
Hi [name],

I applied for [role] on [date] and wanted to check where things stand.
I am still very interested, particularly [one specific thing about the role].
Happy to send anything else that would help.

Best,
Farrukh
```

Change the specific detail every time. An identical follow-up sent to twenty companies is obvious.

## Reporting

Lead with what is actionable today, not the whole table.

Watch for patterns across rows, they are worth more than any single follow-up:

- One track getting replies while the other is silent, so shift effort
- High scores getting rejected, so the rubric is miscalibrated
- Nothing acknowledged at all, so the CV may be failing ATS filters
- Fast rejections clustered by source, so that channel may be low quality

Say these plainly when the data shows them. That feedback loop is the main reason to keep the tracker at all.
