# Application notes

## Track

ai-engineer. The posting has no mobile component anywhere, and the M.Sc. plus the personal
project work are the only places on the profile where model training, architecture comparison
and computer vision perception actually show up, so ai-engineer is the only sensible choice.
The scored record confirms this at Track clarity 15/15.

## Location claimed

Berlin, Germany. The posting names Berlin directly, so this matches the master's default
override rule without needing the USA/Canada/Australia fallback.

## Email used

Default, farrukhrasool65@gmail.com.

## Employment status shown

Verimi shown as plain "iOS Developer", no Working Student qualifier. This is an ordinary
professional posting, not a student-targeted one.

## Section order

Education leads, Professional Experience follows, reversing the house order in
`profile/cv-skeleton.typ`. The posting's first requirement is "several years of hands-on ML
and computer vision experience", and every model-training and architecture-comparison claim
on this profile is M.Sc. or project work, not paid employment. Putting four years of iOS
first would bury the one section that actually answers the posting's opening line. The navy
bar moved with it: the first main section takes the bar per the house convention, so Education
carries it and Professional Experience runs `bar: false`.

## Led with

- **Deep Vision** leads Education. It is the only place on the profile where a model was
  trained and compared against another architecture, in named frameworks. Deliberately
  stops short of a dataset, a metric or a winner, since all three are live `TODO` entries in
  `profile/projects.md`. The bullet says "comparing", never "evaluated" or "outperformed".
- **RosBot** is second, rewritten to lead with the perception work rather than the SLAM
  algorithm: Hue-Saturation-Value colour segmentation for target detection, the depth camera
  projection height-gated to 20 cm, and the lidar cross-check that catches walls sitting above
  the scan plane. The background mapping thread running at 10 Hz against the 32 ms motion
  control loop is named for the "performance optimization... in production" line, by analogy:
  it is real concurrent systems work under a hard timing budget, which is the closest thing on
  the profile to production ML deployment engineering.
- **Deployed AI** (Bedtime Story Teller) sits third, narrowly scoped to the deployed-inference
  angle only: a FastAPI backend serving local LLM inference through Ollama, layered and
  tested. No agentic routing, no "generative AI" language, nothing that could be misread as
  image or content generation. This posting is not an LLM posting, so it stays third and thin
  on purpose.
- **Verimi and PakWheels** are chosen for engineering weight rather than forced ML framing.
  Spec-Driven Development across Claude and Codex answers "research emerging technologies and
  evaluate their business suitability" directly. The Jenkins/Fastlane pipeline answers "design
  automation solutions reducing manual effort" directly. Crash-free rate, launch time, the SPM
  build improvement and the Firebase A/B testing answer "performance optimization in
  production" and "monitor model performance... identify enhancement opportunities" by honest
  analogy: production software quality and measured experimentation, not ML model monitoring.
  Nothing is worded to imply paid ML employment that did not happen.

## Experience balance

Verimi carries 4 bullets: Spec-Driven Development automation across Claude and Codex, the
xcframework CI automation that halved TestFlight build time, the identity SDK owned across
AOK and BARMER, and the Verimi Design Component SDK built with designers.

PakWheels carries 6 bullets: the Jenkins pipeline calling Fastlane for per-PR staging builds,
the crash-free score above 99% with the 20% launch time cut, the Firebase A/B testing measuring
lead conversion rate, the CocoaPods to Swift Package Manager 40% build improvement, the
Objective-C to Swift migration, and the Core Data reference model extension.

10 professional bullets total, inside the usual 9 to 11 range. The 2-bullet gap between Verimi
(4) and PakWheels (6) sits at the check-style.py balance threshold, not over it. Both employers
were chosen to look substantial on transferable engineering signal (automation, production
quality, build performance, SDK ownership) rather than on exact ML keyword matches, since none
of the paid work is ML work and dressing it up as such would be the exact failure this posting's
honesty constraints exist to prevent.

## Cut

- **Scene Detect.** Would answer "image-based products" and "creative AI tools" better than
  anything else on the profile if it existed as written content, but it is entirely `TODO` in
  `profile/projects.md`: no description of what it does, no dataset, no output. Left out rather
  than invented. This is the single most valuable gap Farrukh could close for this posting and
  for every future computer-vision posting.
- **Agent-Based Modeling.** Real and `strong` in `skills.md`, but not computer vision or
  generative AI, and the M.Sc. section already carries three bullets. Cut for focus, not for
  lack of evidence.
- **PakWheels UIKit-to-SwiftUI-style mobile UI detail, mentoring, hiring, interviewing.**
  None of it maps to anything this posting asks for, and the ai-engineer track explicitly says
  not to let mobile read as the centre of gravity here.
- **Verimi eID scanning, Ausweis SDK, certificate pinning.** Strong regulated-identity evidence
  for a fintech or health posting, irrelevant to an image-based content platform.

## Terminology mirrored

`Python`, `TensorFlow` and `PyTorch` sit on the sidebar and also appear in the Deep Vision
education bullet, so a parser that drops the sidebar still sees all three against "Strong
Python development with PyTorch or TensorFlow frameworks". `computer vision` opens the Deep
Vision bullet directly, mirroring the posting's own phrase. `image classification` names the
task the comparison was run on. `production` appears in the PakWheels crash-free bullet and
the Verimi Design Component SDK bullet, answering "in production" from the deployment
requirement. `automating` in the Verimi CI/CD bullet answers "automation solutions reducing
manual effort", the responsibility line the CI/CD bullet was chosen specifically to match.

## Metrics worth adding

- **Deep Vision's dataset, comparison metric and result.** Flagged as the single most valuable
  missing number on the whole ai-engineer track, and this posting is exactly the one where it
  would matter most. Without it, "comparing a ResNet50 against a Vision Transformer" is a
  capability claim, not a result, and an ML hiring manager will ask which one won.
- **Scene Detect, any figure at all.** Even a rough description of what it detects and for whom
  would let a future version of this CV answer "image-based products" honestly, which nothing
  currently on file can do.
- **RosBot, a completion rate or accuracy figure.** The only number anywhere in the project is
  the 30-particle count and the 20 cm height-gate threshold. A maze-completion rate or target-
  detection accuracy would turn the perception story into a measured result.

## Gaps not closed

- **Diffusion models and GANs.** Named directly in the posting's requirements. No entry
  anywhere in `skills.md`, not even at `ask`. Nothing on the profile does generative computer
  vision. This is the posting's core ask and it is a real, unclosed gap, not a wording problem.
- **Docker and cloud-based infrastructure.** Docker is rated `ask` in `skills.md` with no CV
  evidence behind it, so it cannot appear without confirming with Farrukh first, and nothing
  confirms cloud infrastructure experience at all. Left off entirely.
- **"Creative AI tools and visual content workflows" and "image-based products or digital
  content platform experience."** Deep Vision and RosBot are both perception and classification
  work, not content generation or a product surface. Nothing on the profile answers this.
- **"Several years of hands-on ML and computer vision experience" in a professional sense.**
  The CV is honest that this evidence is M.Sc. coursework and personal projects running since
  March 2025, not paid ML employment. iOS is where the multi-year professional claim actually
  holds, and this CV does not blur the two.
- **No company vocabulary to mirror.** `jobs/research/code-compass-machine-learning-engineer.md`
  confirms Code Compass is a recruitment agency with the end client unnamed anywhere. This CV
  mirrors the posting's own requirements and responsibilities text, not a company's.

## Weak match

Stated directly, as scored: this is a weak match, and 59 already says so. The overlap that
exists is real, Python, PyTorch and TensorFlow are genuinely evidenced, and computer vision
shows up twice, once academically through Deep Vision and once in a systems context through
RosBot's perception work. But the posting's actual centre of gravity, generative computer
vision with diffusion models and GANs on an image-based content product, is a different
specialism with zero evidence anywhere on the profile, not an adjacent skill a stronger CV
could surface. This CV leads honestly with the strongest available evidence rather than
stretching the iOS employment history into an ML story it cannot support. Whether it is worth
sending is a volume-application call, consistent with the standing instruction not to let a
capped or long-shot score become a recommendation to skip.

## Page count

Rendered by the main thread: 1 page, -2mm free at the foot of the main column, fit ok. The
page is completely full. The RosBot bullet is the longest single bullet on the page at three
sentences, and is the first place to check if a future edit pushes this to two pages, per the
diagnose-the-column-first rule in the tailor-cv skill.
