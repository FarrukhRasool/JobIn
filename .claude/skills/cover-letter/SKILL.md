---
name: cover-letter
description: Structure, house style, and German Anschreiben conventions for writing a cover letter for one application. Use after the tailored CV exists.
---

# Cover letter

Write to `applications/<slug>/letter.md`, then render it with `./scripts/render-letter.sh <slug>`.

Around 250 to 350 words. Nobody reads more, and the PDF must stay on one page.

**`letter.md` is the source of truth.** Many application forms want the text pasted into a textarea rather than a file upload, so the markdown has to work on its own. The PDF is derived from it by the script, so the two can never drift. Never edit the PDF, and never write a separate `.typ` by hand.

Output is `applications/<slug>/Farrukh_Rasool_Cover_Letter.pdf`. The filename carries his name because that is what a recruiter sees in their inbox.

The template pulls the company and role from the scored record, and the contact city from the tailored CV, so the letter always claims the same location the CV does.

## House style, non-negotiable

- **No em dashes. No semicolons.** Standing preference.
- Plain English. Short sentences.
- British spelling.
- Banned: thrilled, delighted, delve, leverage, passionate about, fast-paced, synergy, "I am writing to apply for", "not just X but Y", "As a highly motivated".
- No sentence that could appear in anyone else's letter.

## Structure

**Opening, 2 sentences.** Something specific about this company or this problem. Never "I am writing to apply for the position of".

Good: `You are building on-device inference for camera pipelines. I spent the last year on a robot that had to make navigation decisions from lidar and depth frames in 32 millisecond ticks, so I know what that constraint does to a design.`

**The proof, one paragraph.** One concrete technical story. Real specifics, a real problem, a real decision. This is the paragraph that gets an interview.

The RosBot stories work almost everywhere. The floating wall cross check shows systems reasoning. The phantom frontier bug shows debugging under uncertainty. Pick whichever is closer to the posting.

**The fit, one paragraph.** Connect the story to their problem. This is where the dual track gets addressed if the role touches both. Own it: the ML is what he builds, iOS is where it ships.

**The gap, one sentence, and only when the posting requires what he lacks.**

Check first. If the posting says **learn**, **eagerness to learn**, **willingness to develop**, or frames the thing as something they will teach, **it is not a gap and naming it is a mistake.** You would be answering an objection nobody raised and spending a fifth of a short letter on a negative.

The Avelios working student posting says "Learn to build production-ready software in a clinical context". A paragraph admitting he had never built clinical software was cut for exactly this reason. It was replaced with the adjacency stated plainly and turned forward: shipping to patients rather than clinicians, and clinical software as the thing he wants to learn properly. Same honesty, no apology, half the words.

Where a gap **is** real, because the posting states it as a requirement: Name it plainly and say what closes it. `Your posting asks for production Kubernetes and I have not run it in production. I have shipped containerised services with Docker and CI, and I would expect that to take weeks rather than months to bridge.` This works far better than silence.

**Close, 2 sentences.** What you want next. No begging, no "I look forward to hearing from you at your earliest convenience".

## German applications

Check `profile/constraints.md` for German level first.

**Below B2:** write in English. Note in `notes.md` why. A German letter the user cannot back up in a phone screen is worse than an English one.

**B2 or above, German-language posting:** write an Anschreiben.
- `Sehr geehrte Damen und Herren` only when no name is available. Find the name if you can.
- Formal Sie throughout.
- More restrained than an English letter. German business writing rewards precision over enthusiasm.
- Close with `Mit freundlichen Grüßen`.
- Include `Verfügbarkeit` (earliest start) and `Gehaltsvorstellung` (salary expectation) when the posting asks. German postings often do, and skipping it reads as careless.

## Recruiter outreach

Different format. Under 100 words for LinkedIn. One line on who you are, one on why this specific role, one ask. The user sends it themselves.
