# Application notes

## Track

ios-developer. Clean fit per the scored record (track clarity 13/15), not a PRIORITY-both case. The AI angle rides along as the answer to two specific posting requirements, practical AI application experience and AI-enabled tooling, rather than driving the CV. The ai-engineer track was never in contention.

## Location claimed

Berlin, Germany. The posting's own city (Helsinki is offered as an alternative, but Berlin is Farrukh's actual base and matches `constraints.md` for a European role).

## Email used

Default, farrukhrasool65@gmail.com.

## Employment status shown

Verimi carries the plain `IOS Developer` line, no Working Student qualifier. This is an ordinary professional posting, not a student or dual-study role.

## Led with

The Verimi identity SDK (integrated separately by AOK and BARMER, one API surface against two release schedules Verimi does not control) paired immediately with the Claude/Codex spec-driven development automation. Those two answer the posting's hardest-to-fake, most staff-flavoured asks, SDK design and practical AI application experience in engineering workflows, directly from paid employment. Followed by the Verimi Design Component SDK, a second and distinct SDK adopted by two apps, and the CI/CD xcframework automation that halved TestFlight build time, since "modularity, SDK design, CI/CD" appears almost verbatim in the posting's own requirements line.

PakWheels leads with the Component Library modularisation and the 40% SPM build improvement, then the Jenkins and Fastlane pipeline, both direct matches to "modularity" and "CI/CD". The crash-free score and launch time reduction answer "performance optimization". The session and authentication layer (`UserManager`) and the Objective-C to Swift plus Storyboards to SwiftUI migration carry the broader senior-ownership case. Mentoring and technical interviewing close the section, answering "mentoring engineers" directly and stated honestly as one junior developer.

## Experience balance

Verimi 6 bullets, PakWheels 7 bullets, 13 professional bullets total. Above the usual 9 to 11 target, and deliberately so: the first render came back one page with 26mm unused, and the checker's instruction on underfill is to add content back rather than leave the page short. The gap between employers is 1 bullet, inside the 2-bullet rule.

Added on the fit pass: the Verimi three-engineer team line, which answers the posting's scope language with structure rather than assertion, and the PakWheels Firebase A/B testing bullet, which answers "pragmatic, impact-oriented mindset" and stakeholder-facing product decisions.

## Cut

The Combine advanced-search bullet (18 filter dimensions), since Combine and reactive programming are not named or implied anywhere in this posting and the bullet slot was better spent on modularity and mentoring evidence. The XCTest bullet, since it is generic by design per `skills.md` and the posting's "testing" mention sits inside a broader "engineering standards" line this CV cannot fully answer anyway. The eID card scanning and Ausweis SDK material, strong for a fintech or health posting but not relevant to Wolt's own requirements. The Bachelor's Android coursework bullet, deliberately, per the task brief: Android is "advantageous" not required, the only evidence is a single JAVA coursework project, and using it would misrepresent a hobby-level fact as professional Android experience.

## Reviewer fix, application-review pass

Responsibility 4, "Establishing engineering standards across architecture, testing, release processes, and incident management", had architecture and release processes answered but nothing against the word "testing". `XCTest` is `strong` evidence in `skills.md` and was cut from the main column for space, but it costs nothing to carry in the sidebar. Added `XCTest | Unit Testing` to the Technical Skills list. Re-rendered, still one page, 5mm free, `check-style.py` and `check-fit.py` both clean.

## Terminology mirrored

`SDK` (both the identity SDK and the Design Component SDK bullets), `modularity` (the PakWheels Component Library bullet, matching the posting's Requirements line word for word), `CI/CD` (the Verimi xcframework bullet), `spec-driven development` (the Verimi AI tooling bullet), `mentored` (the PakWheels mentoring bullet). These are the posting's own words from its Requirements and Responsibilities text, placed in main-column bullets rather than only the sidebar, since two-column layouts can get parsed out of order.

## Metrics worth adding

- The Claude/Codex spec-driven development bullet has no time or cycle figure behind it. `experience.md` describes it only as accelerating feature delivery, with no number. A rough figure, features per sprint, hours saved on a typical ticket, or cycle time before and after, would turn the strongest AI-tooling evidence on the profile into a measured one, which is exactly what this posting is filtering for.
- The Verimi Design Component SDK bullet says only that it increased development speed and consistency. `experience.md` confirms this qualitatively but has no percentage or before/after comparison. A real number here would strengthen the second SDK claim, which currently reads softer than the identity SDK bullet next to it.
- The PakWheels mentoring bullet has no count behind "technical interviews". A rough number of candidates interviewed would turn a generic activity into a real hiring-scope figure, useful for any posting that asks for mentoring and engineering culture specifically.

## Gaps not closed

- **Server-driven UI.** Named twice in the posting and could not be corroborated anywhere else in the research brief. Nothing in `profile/` evidences it as an architectural approach. It does not appear anywhere in this CV, not even adjacent to the Component Library or configurable-components material, because configurable components and feature flags are not the same thing and dressing them up as adjacent would be the stretch the brief specifically warned against.
- **Staff-level, cross-team scope.** The posting wants someone leading initiatives across multiple teams and setting standards other teams inherit. Everything on this CV is senior-IC scope: one SDK with two external clients, one team's session architecture, one junior mentored. Real and strong signals, but not the same shape as staff-level cross-team ownership, and the CV does not pretend otherwise.
- **Observability, beyond crash rate.** Crashlytics and the crash-free score are genuine and are on the CV, but they cover crash monitoring only. Nothing evidences logging, tracing, dashboards or alerting, so the word "observability" does not appear anywhere on the CV, to avoid implying a wider practice than the evidence supports.
- **Incident management.** Named once in the Responsibilities line about engineering standards. Nothing in `profile/` evidences on-call work, postmortems or incident response, so it is absent rather than gestured at.
- **Android.** Listed as "advantageous", not required. The only Android evidence anywhere on the profile is a Bachelor's JAVA coursework project, which the task brief explicitly ruled out as a basis for claiming Android familiarity. Left out entirely rather than stretched.

## Page count

**One page, 5mm free at the foot of the main column, fit ok.** Two render passes.

Pass 1 came back at one page with 26mm unused. An underfill, not an overflow, meaning real evidence was sitting on the floor for no reason. Added two bullets, the Verimi three-engineer team line and the PakWheels Firebase A/B testing bullet. Pass 2 landed at 5mm free.

One craft fix on the same pass. The PakWheels CI bullet read "Built the Jenkins and Fastlane pipeline", which chains two tool names into an adjective. That exact pattern failed `check-style.py` as a keyword-stack on an earlier CV in this pipeline, so it was rewritten to "a Jenkins pipeline that calls Fastlane", naming what each tool actually does.

If this needs space again, the A/B testing bullet goes first. If it underfills again, the Verimi eID and Ausweis SDK line is the next one back.
