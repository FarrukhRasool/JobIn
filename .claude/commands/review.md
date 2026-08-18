---
description: Any time: review a finished application before sending it
argument-hint: <slug>
---

Run the `application-review` agent for: $ARGUMENTS

Read the vault quality notes if available:

- `/Users/pakwheels/Desktop/Job-Hunting/Quality/Craft Standard.md`
- `/Users/pakwheels/Desktop/Job-Hunting/Quality/Writing Rules.md`
- `/Users/pakwheels/Desktop/Job-Hunting/Engineering/Defect Register.md`
- `/Users/pakwheels/Desktop/Job-Hunting/Engineering/Bug Patterns.md`

Use these as standards and defect memory only. Do not copy worked examples or past application content.

Start with both scripts, always:

```bash
python3 scripts/check-style.py <slug>
./scripts/check-fit.py <slug>
```

They decide what a machine can decide. Fix every FAIL or say why it is a deliberate exception.

Then judge what they cannot:

1. Does every posting requirement have a bullet against it? Name the bullet for each. **A requirement with nothing against it is the defect that keeps getting through.**
2. Is anything on the CV the posting never asked for?
3. Are two bullets saying one thing?
4. Does the letter's opening survive the swap test?
5. Is the emphasis right, given what this employer actually wants?
6. Does anything claim more than `profile/` supports? Check for an invented relationship between two true facts, not only an invented fact. If Farrukh wrote or supplied the content himself, its absence from `profile/` is not grounds to flag it, ask him and record it instead.

Fix what you can, re-render, re-run the scripts. Report only what changed, what needs my decision, and any exception you kept.

If it is clean, say so in one line.
