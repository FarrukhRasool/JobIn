---
description: Step 4 of 9: tailor the CV and render it to PDF
argument-hint: <slug>
---

Run the `cv-tailor` agent for: $ARGUMENTS

Read `jobs/scored/<slug>.md`. If it has no score block, stop and tell me to run `/score <slug>` first.

Also read `jobs/research/<slug>.md` and mirror the company's own vocabulary, not only the posting's. The brief routinely names technologies the posting omits.

Load the `tailor-cv` skill for structure, the Typst format, and ATS rules.

## Non-negotiable

**Reorder, reweight, reword, cut. Never invent.** Every line must trace to `profile/cv-skeleton.typ`, `profile/skills.md`, `profile/experience.md`, `profile/education.md`, or `profile/projects.md`.

**Assemble, do not copy.** The skeleton's sample lines exist so it renders. Reusing them means the CV was not tailored.

Pick the skills sidebar from `profile/skills.md`, which rates the evidence behind each one. Read `profile/experience.md` before rewording any Verimi or PakWheels bullet, since the master's one-liners are too thin to tailor from alone.

Nothing unconfirmed goes into a CV: anything rated `ask` in `skills.md`, anything marked `TODO` in `experience.md`, anything marked `TODO:VERIFY` anywhere. Stop and ask me instead. If that blocks the whole document, say so plainly rather than working around it.

## Do

1. Write `applications/<slug>/cv.typ` using the template functions.
2. Write `applications/<slug>/notes.md` with the track used, what you led with, what you cut, keywords aligned, and gaps you could not close.
3. Run `./scripts/render-cv.sh <slug>` to produce the PDF.
4. If Typst errors, fix the `.typ` and rerun. Never hand-edit the PDF.

## Then report

- The PDF path and page count
- The track you picked and why
- The gaps you could not close
- Whether this is a weak match, said directly

**Stop there.** Do not write the letter. That is `/letter <slug>` at step 4, so I can catch a wrong track choice on one document instead of two.

**Then run the `application-review` agent before showing me anything.** It runs `check-style.py` and `check-fit.py`, then checks every posting requirement has a bullet against it. Fix what it finds and re-render. I should not be the first to see a defect.

Finish by printing:

`/letter <slug>`
