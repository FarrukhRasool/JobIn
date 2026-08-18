# Application notes

## Track

ai-engineer. The posting is a robotics perception role (C, C++, Python, ROS 2, computer
vision on a physical robot), scored 76 with track clarity 15/15. `tracks/ai-engineer.md`
names RosBot as the lead project for exactly this shape of role, and there is no mobile
or iOS component in the posting itself, so this is a clean single-track fit rather than
a straddle.

## Location claimed

Berlin, Germany. Grünheide is a village roughly 30 km outside Berlin, the site of
Gigafactory Berlin-Brandenburg. Berlin is the honest and sensible claim per the
tailor-cv rule for a village-sized job location near a major city.

## Employment status shown

Verimi shown as plain "iOS Developer", no Working Student qualifier. This is an
ordinary professional posting, not a student-targeted one.

## Section order

Education leads and carries the navy bar, Professional Experience follows with
`bar: false`. This inverts the house order in `cv-skeleton.typ`. Every perception, SLAM
and depth-camera claim on this profile is M.Sc. project work, not paid employment, and
the posting's core ask (perception, pose estimation, geometry) is answered entirely by
RosBot. Leading with four years of iOS would bury the only evidence that matters to this
reader before they reach it.

## Led with

RosBot is the centre of this CV, split across two education bullets rather than
compressed into one, because it is the single strongest piece of evidence on the whole
profile against this specific posting.

- **Bullet 1** leads with the floating-walls fix: the depth camera's projected upper
  band height-gated to 20 cm to catch walls the lidar sweeps beneath, then the lidar
  cross-check that demotes a wrongly flagged cell. This is the direct, close-to-verbatim
  answer to the posting's own disjunctive first requirement, "a strong depth-camera
  project that had to hold up against real-world sensor noise, lighting, and clutter."
  It opens with the Webots/Python/Husarion RosBot framing specifically so a reader never
  has to infer ROS 2 from "RosBot" alone.
- **Bullet 2** is pose estimation, named directly in the posting's responsibilities:
  pose graph loop closure combining correlative scan matching and least squares
  optimisation, then the concurrency detail the ai-engineer track calls out by name, the
  background mapping thread at 10 Hz against the 32 ms motion control loop sharing the
  grid under a lock released around the per-particle distance transform.
- **Deep Vision** gets one line, as instructed: ResNet50 CNN against a Vision
  Transformer, named frameworks only, no dataset or result claimed since both are `TODO`
  in `projects.md`.
- **The Bachelor's C++ bullet** (Maze Runner Game, MFC) is included specifically because
  C and C++ are named in "Strong C, C++, and Python proficiency" and this is the only
  honest evidence anywhere on the profile. Shown plainly as Bachelor's coursework, not
  implied as professional C++ work.
- **Professional Experience was chosen for integration, systems and API work**, per the
  instruction to answer the requirement's second half ("solid integrations against real
  APIs and systems") rather than UI features. The Verimi identity SDK bullet (one API
  surface, two independent host apps) and the PakWheels session/auth layer (token
  injection into every outbound request) are the two bullets doing that work directly.
  Everything else fills out breadth: SDD automation answers the "AI-native coding
  practices" nice-to-have, the Jenkins/Fastlane pipeline and the two quantified
  performance numbers (crash-free rate, build time) are the strongest adjacent evidence
  for the flat "3+ years writing software" bar and general engineering trust.

## Experience balance

Verimi carries 4 bullets: the identity SDK owned across AOK and BARMER, spec-driven
development automation across Claude and Codex, the CI pipeline that halved TestFlight
build time, and the Design Component SDK built with designers and adopted by two apps.

PakWheels carries 5 bullets: the session and auth layer injecting tokens into every
outbound request, the Objective-C to Swift migration across the Classified and Dealers
apps, the Jenkins pipeline calling Fastlane for per-PR staging builds, the crash-free
score above 99% with the 20% launch-time cut, and the CocoaPods to Swift Package Manager
40% build improvement.

9 professional bullets total, at the low end of the usual 9 to 11 range and deliberately
so. The posting's title wraps to two lines in the template (57 characters at 14pt
against a roughly 120mm column), costing extra vertical space before the body even
starts, so both employer sections were kept at the floor rather than the usual 4 to 6,
to leave room for that wrap. If the render comes back underfilled, add back PakWheels'
Firebase A/B testing bullet or the Core Data car-generation bullet before touching
anything above, since both are confirmed and simply weren't needed to clear the 9-bullet
floor.

## Cut

- **AOK's eID card scanning and the Ausweis SDK, Verimi Wallet's SealOne integration and
  login flow, BARMER's UIKit to SwiftUI migration and certificate pinning.** All real and
  strong, but UI-feature or identity-verification flows rather than the integration and
  systems work this posting's second requirement half asks for. None of it speaks to
  perception, robotics or API integration against non-Verimi systems.
- **PakWheels' Combine advanced-search screen, Core Data car-generation filter, Firebase
  A/B testing, mentoring and hiring.** All confirmed and strong, cut only because the
  five chosen bullets already clear the floor and balance requirement, and the ones kept
  map more directly onto integration, systems work and quantified engineering outcomes.
- **RosBot's frontier exploration, A* planning, B-spline smoothing, Dynamic Window
  Approach and HSV colour segmentation.** All real, all in `projects.md`, cut because the
  posting's own responsibilities and the task's stated priority order (depth camera and
  sensor noise first, then pose estimation, then concurrency) stop before geometry and
  local planning. Adding a fourth RosBot bullet risked crowding out Deep Vision and the
  Bachelor's C++ line for no clear gain against this specific posting.
- **Agent-Based Modeling.** Real and `strong`, but not perception or robotics, and the
  Education section already carries three RosBot/Deep Vision bullets plus one Bachelor's
  line.

## Terminology mirrored

`identity SDK`, `AOK`, `BARMER`, `spec-driven development (SDD)`, `TestFlight`,
`xcframework`, `pose estimation`, `depth camera`, `FastSLAM 2.0`, `Python`, `C++`,
`Jenkins`, `Fastlane`, `crash-free`, `CocoaPods`, `Swift Package Manager`, `ResNet50`,
`TensorFlow`, `PyTorch`, `Convolutional Neural Network (CNN)`, `Vision Transformer (ViT)`, `Objective-C to Swift` all sit in main-column bullets, not only the sidebar.
`pose estimation` is a direct lift of the posting's own responsibilities wording. `depth camera` mirrors the posting's own disjunctive requirement phrase, "a strong depth-camera
project." The posting's "Strong C, C++, and Python" requirement is answered as far as the profile
honestly allows: `Python` is strong and appears repeatedly, `C++` appears once as
Bachelor's coursework, and `C` does not appear anywhere because there is no evidence for
it at all.

## Metrics worth adding

- **Deep Vision's dataset, comparison metric and winner.** Flagged as a live `TODO` in
  `profile/projects.md`. Without it, "comparing a ResNet50 against a Vision Transformer"
  is a capability claim, not a result, and this is exactly the posting where a computer
  vision hiring manager would ask which one won and why.
- **RosBot, any completion or accuracy figure.** The only numbers in the whole project
  are the 30-particle count, the 10 Hz and 32 ms timings, and the 20 cm height gate. A
  maze-completion rate, a localisation error figure, or a target-detection accuracy
  number would turn the floating-walls story from a mechanism into a measured result,
  which is the single most valuable number missing from this application.
- **The identity SDK bullet has no scale figure.** "Consumed independently by AOK and
  BARMER" is strong on its own, but a number of API calls, integration duration, or
  defect rate across the two clients would sharpen it further.

## Gaps not closed

- **ROS 2.** Named as its own requirement. Deliberately absent and not implied anywhere.
  RosBot's controller is Webots in pure Python, and every bullet says so explicitly.
- **Camera and hand-eye calibration.** No evidence anywhere on the profile. Not
  gestured at.
- **Linux and real-time Linux development.** Absent from `skills.md` and
  `experience.md` entirely. No Linux entry exists at any evidence level.
- **C, as distinct from C++.** No evidence anywhere, not even coursework. The CV answers
  C++ honestly through one Bachelor's bullet and leaves C unaddressed rather than
  stretching the C++ evidence to cover it.
- **Physical hardware.** RosBot runs in Webots, a simulation. Every bullet names Webots
  explicitly so nothing reads as a shipped physical robot. The posting's own disjunctive
  first requirement covers a strong depth-camera project as an alternative to shipped
  robot/vehicle work, so this is not hidden, only accurate.
- **Stereo or RGB-D sensor naming.** `projects.md` records only "depth camera," not
  "RGB-D" or "stereo," so the CV uses the term the source actually supports rather than
  the posting's own more specific vocabulary.
- **Teleoperation, low-latency video streaming (WebRTC), warehouse or fleet-management
  system integration.** All nice-to-haves, all absent. WebRTC sits at `ask` in
  `skills.md`, evidenced only by a file carrying HeyGen's author header, and does not
  appear anywhere in this CV.
- **Scene Detect.** Would answer computer vision and applied perception directly if it
  existed as written content, but it is entirely `TODO` in `profile/projects.md`: no
  description, no dataset, no output. Left out rather than invented. This is the single
  most valuable gap Farrukh could close, for this posting and for every future computer
  vision posting.
- **Fiducial reading.** The responsibilities line names "pose estimation, geometry
  analysis, and fiducial reading" as one cluster. Pose estimation is answered directly.
  Fiducial marker reading (ArUco/AprilTag-style pose-from-marker detection) has zero
  evidence anywhere on the profile, not RosBot, not any other project, so nothing on the
  CV addresses it and nothing honestly could. Missed in the score record's own Gaps
  section, recorded here so it isn't rediscovered as a surprise.

## Weak match

Not a weak match, stated directly, and the score record already says so at 76. The
posting's core substantive ask, a depth-camera project that holds up against real
sensor noise, plus pose estimation, is about as precisely matched as this profile gets
anywhere in the pipeline: RosBot's floating-walls fix answers the posting's own
disjunctive first requirement almost word for word. Seniority fit is the best in the
pipeline at 19/20. Set against that, four named requirements have zero evidence on the
profile at any level: ROS 2, camera and hand-eye calibration, Linux and real-time Linux,
and two-thirds of "Strong C, C++, and Python" since only Python is strong. That is a real
gap on the infrastructure layer, not a wording problem a stronger bullet could close, and
this CV does not pretend otherwise. Worth sending on the strength of the perception match
alone, with the infrastructure gaps left for the letter to own rather than talk around.

## Page count

**One page, 2mm free at the foot of the main column, fit ok.** Three render passes.

Pass 1 came out two pages, main column over by 33mm, as the agent predicted from the mirrored title wrapping to two lines. Four trims rather than one big cut:

- The floating walls bullet lost its third sentence. The lidar cross-check is now a clause on the second rather than a sentence of its own.
- The pose estimation bullet lost the lock discipline detail, that the shared occupancy grid lock is deliberately released around the heavy per-particle distance transform. That is genuinely the most impressive systems line in `projects.md` and it is the least on-target for a perception posting. **Restore it first if this ever underfills.**
- "modernising the codebase for performance and maintainability" came off the Objective-C to Swift bullet. `experience.md` says explicitly to take the fact and drop that packaging rather than reuse it.
- The CocoaPods to Swift Package Manager bullet was cut, then restored in one line on pass 3.

Pass 2 landed at 7mm free but tripped two checks: a claims failure, because `notes.md` still listed CocoaPods and Swift Package Manager as main-column terms after the bullet was cut, and an `experience-balance` warning at only 8 paid bullets against a 9 to 11 guideline. Restoring the build-time bullet in short form fixed both at once.

Final: Verimi 4 bullets, PakWheels 5, 9 paid bullets total.

## Checks

`check-style.py` ends at 0 fail, 1 warn. **The warn is `jd-coverage` reporting RGB and SKU, and it is correct to leave open.**

RGB-D is a named requirement, "Stereo or RGB-D sensor familiarity". `projects.md` says depth camera and never says RGB-D, so claiming it would be an upgrade the source does not support. SKU comes from "pallet handling without per-SKU models" and there is nothing on the profile to answer it.

A claims failure on pass 2 was caused by two backticked terms in this file being split across line breaks, `Vision Transformer (ViT)` and `depth camera`. The regex captured the newline and could not match them in the CV. Worth knowing: **do not let a backticked term in the Terminology section wrap across a line.**
