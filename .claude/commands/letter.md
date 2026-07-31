---
description: Step 5 of 9: write the cover letter from the approved CV
argument-hint: <slug>
---

Run the `letter-writer` agent for: $ARGUMENTS

Read `applications/<slug>/cv.typ` and `notes.md`. If the CV does not exist, stop and tell me to run `/cv <slug>` first.

The letter is written from the CV **I have already reviewed**, so match its track and its choice of lead project. Do not re-decide those.

Load the `cover-letter` skill for structure and German conventions.

## Style, non-negotiable

No em dashes. No semicolons. Plain English, short sentences, British spelling. No AI tells.

If the letter could be sent to a different company with the name swapped, it has failed. Rewrite it.

## Substance

Lead with a concrete technical story, not enthusiasm. The RosBot phantom frontier bug and the floating wall cross check both work well. So does the Bedtime Story Teller agentic routing for LLM roles.

If `notes.md` lists a real gap, address it in one honest sentence. Do not paper over it.

## Critique it before showing me

Write the draft, then load the `letter-critique` skill and review your own work against it properly. Revise from the findings, and only then write `applications/<slug>/letter.md`.

Run the swap test every time: if this letter could be sent to another company with the name changed, it has failed and needs rewriting rather than editing.

## Output

`applications/<slug>/letter.md`, then run `./scripts/render-letter.sh <slug>` for the PDF. Show me the letter in full and confirm the PDF path and page count.

Then a short **What the critique caught** note. Not the full critique. Just what changed most, and anything you could not fix because it needs a fact or a decision only I have.

Then add the tracker row as status `draft` via the `tracker` agent.

**Then run the `application-review` agent before showing me anything.** It runs `check-style.py` and `check-fit.py`, then checks every posting requirement has a bullet against it. Fix what it finds and re-render. I should not be the first to see a defect.

Finish by printing:

`/submitted <slug>` once you have actually applied
