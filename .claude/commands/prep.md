---
description: Step 8 of 9: build the interview brief
argument-hint: <slug>
---

Run the `interview-prep` agent for: $ARGUMENTS

Read `applications/<slug>/cv.md`, `letter.md` and `notes.md`, the exact materials that were submitted, then research the company.

Load the `interview-brief` skill.

## Must contain

**Company.** Product, who pays them, stage and size, what changed in the last six months, engineering culture from their blog or open source.

**Likely technical questions**, derived from the actual posting rather than a generic list.

**The two that always come up**, both prepared properly:

1. Walking through the lead project from the CV. Two minute and ten minute versions. For RosBot, the ten minute version reaches the phantom frontier bug. For Bedtime Story Teller, it reaches the LLM story-source routing and the deterministic fallback.
2. Why AI and iOS together. This arrives as a challenge. Own it, do not apologise for it.

**Known weak points.** Read `notes.md` for the gaps `cv-tailor` flagged and prepare an honest answer for each. Being asked about a gap you have already thought through is a good outcome.

Also prepare the limitations the projects themselves carry, since volunteering them reads as senior. RosBot has no evaluation harness and unseeded RNGs. Bedtime Story Teller has hybrid mode falling back to plain generation, and no rate limiting.

**Three questions to ask them**, specific to the company.

## Attribution warning

If StoryTeller is in the submitted CV, check `profile/projects.md` for what is genuinely his. The avatar streaming and WebSocket layer came from HeyGen's sample app. Prepare him to draw that line himself before an interviewer opens the file and finds a different author in the header.

## Tone

No pep talk. Naming the hard questions is worth more than encouragement.

Finish by printing:

`/outcome <slug> <result>` once you know how it went
