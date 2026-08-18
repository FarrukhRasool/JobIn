# Application notes

## Track
ai-engineer, per `jobs/scored/branch-tech-full-stack-ai-engineer.md`. The posting's own title and first requirement ("Strong commercial experience as a Full Stack Software Engineer") sit outside what either track file was built to sell, but the responsibilities (LLMs, AI agents, production AI tooling, AI-powered workflows) point clearly at `ai-engineer` over `ios-developer`. Not a blend: iOS content was selected for architecture and delivery weight, not led with, per `tracks/ai-engineer.md`.

## Location claimed
Berlin, Germany. The posting's own city.

## Email used
Master default, farrukhrasool65@gmail.com. Unchanged.

## Employment status shown
Verimi shown as plain "iOS Developer", no Working Student qualifier. This is an ordinary professional posting, not a student, Werkstudent or dual-study role.

## Led with
Verimi's spec-driven development automation across Claude and Codex opens Professional Experience. It is paid-employment evidence of the full spec-to-implementation-to-review loop, which answers "Hands-on experience with AI technologies, LLMs or AI-assisted product development" and "Work with Large Language Models (LLMs), AI agents and production AI tooling" from a job rather than a side project.

Bedtime Story Teller carries real space in Education, four bullets: the MCP server and the LLM planning step that picks its own story source, the deterministic fallback plus local inference through Ollama and Mistral, the FastAPI layered backend with JWT auth and SQLAlchemy persistence, and the native iOS client that surfaces the routing decision to the user. Together these answer LLMs and agents, backend services, and end-to-end ownership in one project.

The Bachelor's MERN bullet (Online Hotel Reservation System) answers the frontend half honestly, kept under its own October 2018 to July 2022 dates so it reads as coursework, not commercial experience.

CI/CD and reliability are answered twice: the halved TestFlight build time at Verimi (a number, with the mechanism named as automating xcframework creation rather than tuning a build server) and the Jenkins-calls-Fastlane pipeline at PakWheels (a mechanism with a user, QA and reviewers installing via QR code). Architecture is answered through the AOK/BARMER identity SDK (one API surface, two insurers' own release cycles), the shared PakWheels authentication layer serving two apps, and the SPM migration plus Component Library extraction.

## Experience balance
Verimi: 4 bullets. PakWheels: 6 bullets. Both clear the 4-bullet floor and sit two apart, at the limit of the balance rule but inside it.

PakWheels carries the extra bullets because this posting's non-AI half is architecture, CI/CD and reliability, and PakWheels evidences all three with numbers. Verimi carries the single most important bullet on the CV, the spec-driven development loop across Claude and Codex, which is the only AI tooling evidence anywhere on the profile that comes from paid employment rather than a project.

## Cut
UIKit to SwiftUI migrations (Storyboards to programmatic UIKit to SwiftUI, and the separate BARMER migration), video widget and screen-building bullets, the Core Data car generation filter, certificate pinning, mentoring and hiring, RosBot, Deep Vision, Indoor Navigation. All are real and would strengthen a straight iOS application. This posting does not ask for iOS UI depth or robotics/vision work, and `tracks/ai-engineer.md` says mobile should not read as the centre of gravity, so none of it made the cut.

## Terminology mirrored
- `LLM`, in the M.Sc. bullet on the MCP server and planning step
- `CI/CD`, in the Verimi bullet on the halved TestFlight build time
- `MERN stack` and `Full stack`, in the Bachelor's bullet
- "AI agents" from the posting is not used verbatim anywhere in the main column. "Agentic AI" is the closest honest match and is the M.Sc. bullet's own label, since it is what the source files actually call the work

## Metrics worth adding
- The Verimi Design Component SDK bullet describes "increasing development speed and consistency" in `experience.md` with no figure attached. A real number, even an approximate one, would turn this from a description into an achievement.
- The PakWheels Jenkins-and-Fastlane pull request pipeline has no cycle-time or adoption number anywhere in `experience.md`. How much faster review got, or roughly how many pull requests a week ran through it, would sharpen that bullet.
- Bedtime Story Teller has no figure for how often the LLM routing decision actually needs the deterministic fallback. Even a rough sense of how rarely or often the fallback fires would make that bullet concrete rather than descriptive.

## Gaps not closed
"Strong commercial experience as a Full Stack Software Engineer" is only half answered, and this is the honest weak point of the whole application. The backend evidence (FastAPI, SQLAlchemy, JWT auth) comes from Bedtime Story Teller, a personal project, not paid employment. The frontend evidence (MERN, React, Node.js) comes from the Bachelor's degree, dated October 2018 to July 2022, also not commercial. Nothing on the profile evidences commercial web backend or frontend work.

No EV or automotive domain experience exists anywhere on the profile. PakWheels is a used-car classifieds marketplace, not automotive or EV engineering, and the CV does not gesture at domain overlap.

The employer is unverifiable. Per `jobs/research/branch-tech-full-stack-ai-engineer.md`, Branch Tech is a Warrington-based recruitment agency advertising an unnamed EV-sector client, confirmed independently across the posting text, the agency's own site and its LinkedIn page. Nothing about this CV's tailoring can be checked against a real company's stack, stage or culture, because no real company is named.

Cloud infrastructure and DevOps, a stated nice-to-have, has no evidence anywhere in `skills.md` (Docker and PostgreSQL sit at `ask`) and does not appear on the CV.

## Page count
**One page, 1mm free at the foot of the main column, fit ok.** Two render passes.

Pass 1 came out two pages, main column over by about 22mm. Two bullets were cut, both chosen as the least relevant to this posting rather than the weakest in absolute terms.

The Verimi Wallet login and registration bullet went first. It is real and it evidences async/await, but it is iOS interface work and this posting asks for backend, frontend and AI. The PakWheels A/B testing bullet was rewritten shorter rather than cut, since it is the only evidence on the CV for "a product mindset with the ability to balance technical excellence and delivery".

If this needs space again, the Design Component SDK bullet goes next. If it underfills, restore the Wallet login bullet.
