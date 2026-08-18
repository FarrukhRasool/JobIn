---
company: Tesla
role: Software Engineer, Robot Perception & Vehicle Integration
source: linkedin
url: https://www.linkedin.com/jobs/view/4440599288/
posted: 2026-07-15
imported: 2026-08-12
location: Gruenheide, Brandenburg, Germany
work_model: UNKNOWN
language: english
seniority: mid
---

## Requirements
"3+ years writing software, and genuinely both sides of this role. You have shipped perception or computer-vision work on a real robot or vehicle, or a strong depth-camera project that had to hold up against real-world sensor noise, lighting, and clutter, and you have also built solid integrations against real APIs and systems."

"Strong C, C++, and Python proficiency"

"Linux and real-time Linux development comfort"

"Computer vision and 3D/depth perception grounding"

"Camera and hand-eye calibration experience"

"Stereo or RGB-D sensor familiarity"

"ROS 2 framework experience"

"Strong English, the language the team works in."

Nice to have: stereo-depth camera experience, teleoperation and low-latency video streaming (WebRTC), warehouse or fleet-management system integration, AI-native coding practices.

## Responsibilities
"build the perception the robot depends on in the field", for pallet handling without per-SKU models, including pose estimation, geometry analysis, and fiducial reading.

Secondary duties include low-latency teleoperation client development and vehicle-to-fleet agent creation for WMS/FMS integration.

## Tech stack
C, C++, Python, Linux, ROS 2, stereo/RGB-D cameras, WebRTC

## Notes
LinkedIn tags this posting "Entry level", but the requirements state 3+ years of software experience and demand shipped perception/computer-vision work on a real robot or vehicle. Recorded as `mid` per the actual requirements text, not the LinkedIn tag, consistent with the pattern of LinkedIn understating its own postings.

No German level stated. The posting explicitly names English as the team's working language and states no German requirement, so `language: english`.

"Posted 4 weeks ago" on LinkedIn, back-calculated from import date to approximately 2026-07-15. Treat as approximate, LinkedIn resurfaces old requisitions.

Direct Tesla listing, not a recruitment agency posting.

This is a robotics/perception engineering role (C/C++/Python, ROS 2, computer vision on physical robots), not iOS development and not the LLM/agentic AI work in the ai-engineer track. Flagging for triage to judge track fit rather than deciding it at intake.

The record above reflects the text returned by a single WebFetch pass over the LinkedIn posting. LinkedIn job pages are rendered client-side, so the fetch tool returns an extracted/processed version rather than raw HTML. Quoted lines are as returned by the fetch. If exact wording matters for ATS keyword matching, verify against the live posting before tailoring.

## Raw
<details>
Company: Tesla
Role Title: Software Engineer, Robot Perception & Vehicle Integration (m/w/d)
Location: Gruenheide, Brandenburg, Germany (Gigafactory Berlin Brandenburg)
Work Model: Not specified in posting
Posted: 4 weeks ago (as shown on LinkedIn at time of import)
LinkedIn Seniority Tag: Entry level
Language: "Strong English, the language the team works in." No German proficiency level specified.

Requirements/Qualifications:
"3+ years writing software, and genuinely both sides of this role. You have shipped perception or computer-vision work on a real robot or vehicle, or a strong depth-camera project that had to hold up against real-world sensor noise, lighting, and clutter, and you have also built solid integrations against real APIs and systems."
- Strong C, C++, and Python proficiency
- Linux and real-time Linux development comfort
- Computer vision and 3D/depth perception grounding
- Camera and hand-eye calibration experience
- Stereo or RGB-D sensor familiarity
- ROS 2 framework experience

Nice-to-haves: Stereo-depth camera experience, teleoperation/low-latency video streaming (WebRTC), warehouse/fleet-management system integration, AI-native coding practices

Responsibilities:
Primary focus: "build the perception the robot depends on in the field" for pallet handling without per-SKU models, including pose estimation, geometry analysis, and fiducial reading.
Secondary duties include low-latency teleoperation client development and vehicle-to-fleet agent creation for WMS/FMS integration.

Technology Stack: C, C++, Python, Linux, ROS 2, stereo/RGB-D cameras, WebRTC (implied)

Recruiter status: Not a recruiter posting, direct Tesla job listing.
</details>

## Score

**Total: 76 / 100. APPLY, light tailoring**
Track: ai-engineer

| Dimension | Score |
|---|---|
| Technical fit | 23/40 |
| Seniority fit | 19/20 |
| Track clarity | 15/15 |
| Company fit | 11/15 |
| Application quality | 8/10 |

**Why this score.** The posting's headline requirement is disjunctive, and the second half of it is an unusually precise match: "a strong depth-camera project that had to hold up against real-world sensor noise, lighting, and clutter." RosBot's floating-walls fix, projecting the depth camera's upper band per pixel, height gating to 20 cm, and demoting a cell when lidar later contradicts it, is exactly that problem solved and documented. The phantom-frontier debugging story is a second concrete instance of the same theme. Pose estimation is named directly in the responsibilities and is strongly evidenced by RosBot's pose-graph loop closure with correlative scan matching. The requirement's other half, "solid integrations against real APIs and systems," is well covered by FastAPI, REST, SQLAlchemy and JWT on Bedtime Story Teller, and by the Verimi identity SDK integrated separately by two enterprise clients. Computer vision and 3D/depth perception grounding is strong on its own terms too: SLAM, HSV segmentation, Deep Vision's CNN/ViT comparison.

Against that, four separately named requirements have no evidence on the profile at all: ROS 2, camera and hand-eye calibration, Linux and real-time Linux, and two-thirds of "Strong C, C++, and Python" (Python is strong, C and C++ are absent from `skills.md`). That is more than "one or two gaps that are learnable," which is why technical fit sits at 23 rather than in the 25-34 band, even though the core substantive ask is unusually well matched. Seniority is a clean fit, 4 years plus an M.Sc. against a stated "3+ years," with the LinkedIn "Entry level" tag correctly overridden by the requirements text per the intake note. Track clarity is a clean single ai-engineer fit: `tracks/ai-engineer.md` names RosBot as the lead project for exactly this kind of role, and there is no mobile component, so this does not qualify for the PRIORITY-both bonus. Company fit is solid but capped by thin research: a direct Tesla listing (not an agency) at a real, large, active site with several concurrent robotics and automation openings suggesting genuine in-house investment, but every tesla.com page returned HTTP 403 this session, so most of the picture is REPORTED or INFERRED rather than VERIFIED, and the one lead on the likely parent team is quarantined as SUMMARY grade and was not used here.

**Gaps.**
- **ROS 2.** Named explicitly as its own requirement. RosBot's controller is a Webots controller written in pure Python driving a Husarion RosBot. The robot itself is a ROS platform, but the controller code is not ROS 2. This is a genuine gap, not a vendor swap inside a category he already owns, and the letter should not blur it.
- **Camera and hand-eye calibration.** Not evidenced anywhere on the profile.
- **Linux and real-time Linux development.** Absent from `skills.md` and `experience.md`. No Linux entry exists at any evidence level.
- **C and C++**, the other two-thirds of "Strong C, C++, and Python proficiency." Python is `strong`. C and C++ do not appear in `skills.md` at all, not even at `ask`. Per the evidence discipline, this should not be flatly recorded as a confirmed gap: a Bachelor's in Software Engineering typically involves more C/C++ than a single MFC-based project, so this is worth asking Farrukh directly before either claiming it or writing it off. Scored at zero weight here because nothing is currently confirmed.
- **Physical hardware.** RosBot runs in Webots, a simulation, not on a physical robot. The posting's own disjunction ("a strong depth-camera project...") covers this honestly, and it should not be blurred into "shipped on a real robot."
- **Nice-to-haves not evidenced.** Teleoperation, low-latency video streaming and warehouse/fleet-management (WMS/FMS) integration are all absent. WebRTC sits at `ask` in `skills.md`, present only in a file carrying HeyGen's author header, so it carries zero weight and must not be claimed.

**Risks.**
- `work_model` is UNKNOWN. The posting does not state onsite, hybrid or remote. The research brief's inference that perception work on a physical robot likely needs floor access is reasonable but unconfirmed.
- The research brief could not open any tesla.com page this session (HTTP 403 throughout), so the company and team picture rests heavily on REPORTED and INFERRED material rather than VERIFIED sources.
- The one detailed lead on a likely parent team, "Staff Robotics Software & Systems Architecture" owning autonomous reach-truck operation, is SUMMARY grade only, a search synthesis rather than a source, and was correctly excluded from this score. Do not use it in the letter either without re-verification.
- Whether this is a new team or a backfill, who it reports to, and current team size are all NOT FOUND.
- Site expansion is reportedly on hold with output below target. A general caution signal about the site, not evidence about this specific team's headcount plans.
- Posted date is approximate, back-calculated from LinkedIn's "4 weeks ago," and LinkedIn is known to resurface old requisitions.

**Lead with.** RosBot's floating-walls fix as the direct answer to the posting's own disjunctive first requirement: depth-camera projection, height gating to 20 cm, and the lidar cross-check that demotes a false positive. Pair it with the phantom-frontier story as a second sensor-noise narrative, and name the pose-graph loop closure work directly since pose estimation is named in the responsibilities. Follow with the FastAPI/SQLAlchemy/JWT integration work and the Verimi identity SDK, consumed separately by AOK and BARMER, for "solid integrations against real APIs and systems." This is a long shot on the infrastructure layer, ROS 2, C/C++, Linux, calibration are all real, named absences, but the core perception problem the role actually exists to solve is about as well matched as this profile gets, so it is worth applying and worth letting the letter own the gaps rather than talk around them.
