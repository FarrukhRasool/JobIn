---
description: Step 1 of 9: import a job posting from a URL or pasted text
argument-hint: <url, or paste the job description>
---

Run the `scout` agent to import this posting: $ARGUMENTS

Load the `job-intake` skill for the record schema and the slug convention.

## If the argument is a URL

1. Attempt WebFetch **once**.
2. Judge what came back. If there is no requirements or responsibilities content, the fetch failed, regardless of what status code you got.
3. On failure, stop and ask me to paste the job description text. Keep the URL for the record's `url` field. Say plainly that the fetch hit a login wall rather than producing a thin record and pretending it worked.

**LinkedIn is inconsistent.** Some job pages fetch fine, others return an auth wall, and which you get varies by posting. Always try the fetch first, then judge the content. Do not attempt browser automation when it fails, see the standing rule in `CLAUDE.md`.

Company career pages and most non-LinkedIn boards fetch fine.

## If the argument is pasted text

Go straight to normalising. No fetch needed.

## Then

Write one record to `jobs/inbox/<slug>.md` where slug is `<company>-<role>`, lowercase and hyphenated.

Check `jobs/inbox/` and `jobs/scored/` for the same slug first. If it exists, say so and stop rather than creating a duplicate.

Any field you cannot determine is `UNKNOWN`, never a guess. This matters most for `language`, since German-language postings are the one real gate.

Finish by printing the next command with the slug filled in:

`/research <slug>`
