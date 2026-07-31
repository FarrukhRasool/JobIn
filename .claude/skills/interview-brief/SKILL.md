---
name: interview-brief
description: Company research and interview question preparation for one scheduled interview. Use when an interview is booked.
---

# Interview brief

Write to `applications/<slug>/interview-brief.md`.

## Research

Cover, in this order:

1. **Product.** What they build and who pays for it. If you cannot say this in one sentence after researching, say so, that itself is a finding.
2. **Stage and size.** Funding, headcount, growth or contraction.
3. **Tech stack.** From the posting, the engineering blog, their GitHub, and job ads for adjacent roles. Other openings leak more stack detail than the one being applied for.
4. **Recent news.** Last six months. Funding, launches, layoffs, leadership changes.
5. **Engineering culture.** Blog, conference talks, open source. If they publish, read one post and reference it.

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
