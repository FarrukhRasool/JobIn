---
name: interview-brief
description: Company research and interview question preparation for one scheduled interview. Use when an interview is booked.
---

# Interview brief

Write to `applications/<slug>/interview-brief.md`.

## Research

**Start by reading `jobs/research/<slug>.md`.** It already exists, it was written at step 2, and it covers the product, the stage and size, the location and work model, and the concerns. Do not research those again. Carry them across, and re-check only what could have changed since the date at the top of that file.

That brief is deliberately shallow in two places, because at step 2 nothing read them and the research was not worth paying for. **This is where that depth gets added**, now that there is a booked interview to justify it:

1. **Tech stack.** The step 2 brief caps this at 80 words from the posting and adjacent openings. Go properly now: their engineering blog, their GitHub organisation, and more of their open roles. Other openings leak more stack detail than the one being applied for.
2. **Engineering culture.** The step 2 brief sources this from job ads and the careers page only. Go to the blog, conference talks, open source and employee review sites (Glassdoor, Kununu). If they publish, read one post and be able to reference it by name in the room.
3. **Competitors.** Not covered at step 2 at all. Who else plays here, and how this company positions against them. Interviewers ask.

Then re-check, briefly:

4. **Recent news**, last six months, against what the step 2 brief recorded. Funding, launches, layoffs, leadership changes.

**Carry the provenance grades across.** The five grades in `company-brief` apply here too, and `SUMMARY` is still not a source. A claim you cannot verify must not become something said out loud in an interview.

## Questions they will ask

Derive from the actual posting, not a generic list. For each: the question, what they are really testing, and the shape of a strong answer drawn from the user's real experience.

Cover technical, system design where the seniority warrants it, and behavioural.

## The two that always come up

**1. Walk me through the RosBot project.**

Prepare two versions.

*Two minutes.* Problem, approach, outcome. A robot in an unknown maze, no ground truth, had to map and find targets and avoid forbidden ground. Built SLAM, exploration, planning, and control end to end.

*Ten minutes.* Reach the phantom frontier bug. The exploration scorer divides utility by distance, the disc under the robot is inside the lidar's minimum range so it stays permanently unknown, its boundary satisfies the frontier definition, and a frontier at distance zero always wins. The robot chased a hole in its own map it could never fill. That story shows debugging under uncertainty, which is worth more than reciting an algorithm any interviewer can look up.

Prepare for the follow-ups: why FastSLAM 2.0 rather than 1.0 or a graph SLAM approach, why 30 particles, what the background mapping thread does to the lock, and what you would change.

**2. Why AI and iOS both?**

This arrives as a challenge and needs a confident answer, not a defence. The ML is what he builds, iOS is where it ships. On-device inference is exactly where the two meet, and very few candidates can work both sides of that line. For roles touching Core ML, camera pipelines, or sensor data, this is the reason to hire him rather than a reason to doubt him.

## Known weak points

Read `notes.md` from the application for the gaps `cv-tailor` flagged. Prepare an honest answer for each. Also pre-empt the ones the user's own project README admits: no evaluation harness, unseeded RNGs, so results are qualitative. If asked how he validated the system, the strong answer names the limitation and says what he would build to fix it. Claiming rigour that is not there falls apart in one follow-up.

## Questions for them

Three, specific to this company. Nothing answerable from the careers page.

Good shapes: what does the first ninety days look like, what is the hardest technical problem the team is on now, how does work get from idea to production.

## Tone

No pep talk. A brief that names the hard questions is worth more than encouragement.
