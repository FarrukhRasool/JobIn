---
company: CARIAD
role: Intern/Thesis - Learning-based Radar-Camera Fusion for Simultaneous Localization and Mapping (f/m/d)
source: linkedin
url: https://www.linkedin.com/jobs/view/4446653830/
posted: 2026-08-07
imported: 2026-08-14
location: Mönsheim, Baden-Württemberg, Germany
work_model: hybrid
language: english
seniority: junior
---

## Requirements

"Excellent academic performance"

"Currently enrolled in Computer Science, Robotics, Electrical Engineering, Mathematics or equivalent field"

"Knowledge of sensors for autonomous driving and measurement technology"

"Programming proficiency in Python and/or C++"

"Confident in English in both oral and written form"

Team player mentality with passion for autonomous driving technology

First research experience (internships, projects, papers, or coding competitions) is advantageous

## Responsibilities

"Independently investigating novel approaches for radar-camera fusion"

Developing and evaluating methods for robust state estimation, localization, and/or 3D map generation

Designing experiments and comparing approaches against current methods

"Analyzing results and deriving insights for multi-modal SLAM algorithms"

## Tech stack

Python, C++, radar-camera sensor fusion, SLAM (Simultaneous Localization and Mapping)

## Notes

- This is a student internship/thesis position (3 to 6 months, 35 hours/week, hourly wage), not a standard full-time role. It explicitly requires the candidate to be currently enrolled in a degree programme. The `seniority` enum has no internship category, so the floor value `junior` was recorded here, matching the precedent set for `demodesk-ai-gtm-engineering-intern`. Downstream scoring should treat this as below junior in practice and note that Farrukh does not meet the "currently enrolled" eligibility criterion, having roughly four years of production experience plus an M.Sc. in progress rather than being an enrolled undergraduate or thesis-seeking student.
- No years-of-experience figure is stated. "First research experience" is listed as a plus, not a requirement, so there is nothing to flag against the six-year threshold.
- Language: only English is required ("Confident in English in both oral and written form"). German is not mentioned anywhere in the posting, so `language` is recorded as `english` per the skill rule. No CEFR level is stated for German because German is not required at all, distinct from "not stated."
- Work model: the posting gives a physical site (Mönsheim) but also states remote work options are available within Germany. Recorded as `hybrid` as the best fit for a role with a named site plus partial remote flexibility, rather than a fully remote listing. Not stated as a literal onsite/hybrid/remote label on the page.
- Direct employer (CARIAD, part of the Volkswagen Group), not a recruitment agency or a talent marketplace. Requirements and responsibilities are specific to CARIAD's own radar-camera fusion and SLAM work, not generic marketing copy.
- Posted date: LinkedIn showed "1 week ago" at fetch time (today 2026-08-14), giving a derived date of roughly 2026-08-07. Job ID 4446653830 sits within the 444 to 445 million cluster seen across this cycle's other recent imports (for example 4446602904 and 4446867183), which is consistent with a genuinely recent posting rather than an older requisition mislabelled. `posted` is recorded as the derived date rather than `UNKNOWN`, but the derivation basis is noted here.
- Salary is stated on the posting (€13.90/hour) but is not recorded here, per the pipeline's standing rule not to track or score on salary.
- Role is materially different in shape from the rest of the pipeline (research internship/thesis in autonomous-vehicle perception, not a shipping software engineering role), flagged here for triage's attention rather than assessed for fit.

## Raw

<details>
Extracted via WebFetch (LinkedIn fetched without a login wall):

**Company Name:** CARIAD

**Role Title:** Intern/Thesis - Learning-based Radar-Camera Fusion for Simultaneous Localization and Mapping (f/m/d)

**Location:** Mönsheim, Baden-Württemberg, Germany

**Work Model:** Remote work options within Germany available

**Employment Type:** Full-time (internship/thesis)

**Seniority Level:** Internship

**Years of Experience Required:** Not explicitly stated. First research experience noted as a plus

**Language Requirements:** "Confident in English in both oral and written form" (no German CEFR level specified)

Requirements/Qualifications

- Excellent academic performance
- Currently enrolled in Computer Science, Robotics, Electrical Engineering, Mathematics or equivalent field
- Knowledge of sensors for autonomous driving and measurement technology
- Programming proficiency in Python and/or C++
- Strong English communication skills (written and oral)
- Team player mentality with passion for autonomous driving technology
- First research experience (internships, projects, papers, or coding competitions) is advantageous

Responsibilities

- "Independently investigating novel approaches for radar-camera fusion"
- Developing and evaluating methods for robust state estimation, localization, and/or 3D map generation
- Designing experiments and comparing approaches against current methods
- "Analyzing results and deriving insights for multi-modal SLAM algorithms"

Tech Stack/Technologies

- Python and/or C++
- Radar-camera sensor fusion systems
- SLAM (Simultaneous Localization and Mapping) algorithms

Additional Details

- Duration: 3-6 months
- Hours: 35 hours/week
- Salary: €13.90/hour
- Posted: 1 week ago
- Direct Employer: Yes (CARIAD is part of Volkswagen Group)
</details>

## Score

**Total: 45 / 100 (capped from an uncapped 56). APPLY, long shot**
Track: ai-engineer
Scored 2026-08-14 against `jobs/research/cariad-radar-camera-fusion-slam-intern.md`.

| Dimension | Score |
|---|---|
| Technical fit | 22/40 |
| Seniority fit | 3/20 |
| Track clarity | 15/15 |
| Company fit | 9/15 |
| Application quality | 7/10 |

**The internship cap applies, and applies as written.** Sum before the cap is 56. This is a 3 to 6 month, 35 hour a week, EUR 13.90/hour internship/thesis requiring current enrolment, so per the rubric's over-qualification table the total is capped at 45.

**Whether the Avelios override carries here: no, and here is the honest reasoning why.** Avelios overrode the Werkstudent cap because Farrukh is *currently* a part-time working student at Verimi while finishing his M.Sc., so a part-time Werkstudent posting matched his actual present-day status rather than stepping him down. This posting is a different shape of commitment: 35 hours a week for 3 to 6 months, which in practice means pausing or leaving the Verimi role and relocating toward Mönsheim, not adding a parallel part-time line. It is possible this could double as his actual M.Sc. thesis, since a thesis is a normal part of the degree and OTH Amberg makes him eligible on the enrolment line, but nothing on file confirms OTH Amberg requires or arranges an industry thesis placement, so that reasoning would be invented rather than sourced. Absent that confirmation, the honest read is that this is a genuine step down in engagement type from where he sits today, not a lateral move like Avelios was. The cap stands. **This is a case for asking Farrukh whether a CARIAD-style thesis placement is something his M.Sc. programme supports or requires, rather than assuming it on his behalf.**

**Per `profile/constraints.md`, the cap governs the number, not the decision.** A capped score is not a reason to skip on its own. State it, and it stands as an apply, at the long-shot end of the queue.

**Why this score.** This is the closest posting to RosBot that has come through the pipeline, and it shows in the technical fit. "Developing and evaluating methods for robust state estimation, localization, and/or 3D map generation" is answered almost point for point by RosBot's FastSLAM 2.0 with 30 particles, each refining its pose against its own log-odds occupancy grid, plus the pose graph loop closure with correlative scan matching and least squares optimisation. The floating-walls fix is genuine multi-modal sensor reconciliation: a depth camera projected and height-gated, cross-checked against lidar, with lidar allowed to demote a cell it later confirms. Python is `strong`. Deep Vision evidences the act of designing a comparison between two architectures, which speaks to "designing experiments and comparing approaches", even though its own dataset, measurement and conclusion are still `TODO` in `projects.md`.

Against that, the posting's title carries two words that RosBot does not answer. **Radar** is named in the title and in the primary responsibility, and RosBot's sensors are lidar and a depth camera, a different sensing modality with different failure modes. **Learning-based** is the posting's own qualifier for the fusion it wants, and RosBot's fusion (the floating-walls cross-check) is geometric and rule-based, not learned. Those two absences sit at the centre of the role rather than at its edge, which is why technical fit lands at 22 rather than higher despite the strong SLAM overlap. Seniority fit is scored at the internship floor since the posting explicitly wants an enrolled student, not four years of professional experience. Track clarity is a clean 15, this is squarely `ai-engineer`, pure perception research with no mobile or iOS dimension, so it does not carry the `PRIORITY-both` bonus. Company fit sits at 9: a real, direct VW Group employer with a stated ambition to keep autonomous driving development in-house even through a wider restructuring, undercut by a real, unresolved risk (below). Application quality is 7, a specific project maps to most of the problem, but not to the two words that name it.

**Gaps.**
- **Radar.** Named in the title and the lead responsibility. RosBot has no radar work of any kind. Lidar and a depth camera are not a substitute, they fail differently and the posting is explicit about the sensor.
- **Learning-based fusion.** RosBot's sensor fusion is geometric and rule-based (per-pixel height gating, a lidar cross-check), not a learned model. The posting's own word for the approach it wants is "learning-based", so this is a real method gap, not just a missing keyword.
- **C++ at any depth.** One Bachelor's coursework project (Maze Runner, MFC). Not evidenced in `skills.md` at all, and the posting accepts Python and/or C++, so this is survivable but not a strength.
- **Rigorous evaluation.** `projects.md` records RosBot has no automated evaluation harness and unseeded RNGs, so results are qualitative. A role built around designing experiments and comparing against current methods makes that gap sharper than it is elsewhere in the pipeline.
- **Research output.** "First research experience" is a plus, not a requirement, and RosBot plus Deep Vision answer the projects half of it reasonably. Papers or competitions are not on the profile.

**Risks.**
- **The posting had already expired on VW's own jobs portal when checked directly, along with its sibling Mönsheim internship, while LinkedIn showed it as freshly posted about a week earlier.** This was not resolved by the research brief. Chrono24 scored 90 and was submitted against a requisition already marked closed, so this needs a direct confirmation (call the recruiter, or re-check the VW portal) before real tailoring time goes in.
- CARIAD is mid a multi-year restructuring, moving core software architecture work to Rivian and Xpeng, per heise.de. The same reporting states autonomous driving development specifically stays in-house, which is the function this role sits in, so this cuts both ways rather than being a pure negative.
- Press leads on a group-wide 2,000-role cut and a 2026 warning strike at Mönsheim were never opened and are graded SUMMARY in the research brief with a do-not-use note. Not scored here, but worth a direct check before an interview if this gets that far.
- Whether a CARIAD thesis at Mönsheim converts to an offer, or whether the team publishes research, could not be found. Worth asking directly.
- Practical: 35 hours a week for 3 to 6 months at a Mönsheim site is a real scheduling question against the current Verimi role and the M.Sc., separate from the scoring above and his call to make.

**Lead with.** RosBot, unreservedly. The FastSLAM 2.0 particle filter, the pose graph loop closure, and above all the floating-walls story, since it is the one place on the profile that already shows two sensor modalities being reconciled against each other with a genuine engineering insight (letting lidar demote a cell it later confirms). Name radar and learning-based methods honestly as the gap to close in the letter rather than implying RosBot already covers them, and use Deep Vision as the second, smaller proof point for designing and comparing experiments.
