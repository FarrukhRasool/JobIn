# Application notes

**Track:** ios-developer. Clean fit, no ML/AI content in the posting or research brief, so nothing pulled from the AI-engineer track. The M.Sc. bullets that remain are the most mobile-adjacent ones (Agentic AI, Embedded Intelligence, Autonomous Robot, Deep Vision), not the deep-learning-framework ones, to keep the whole document reading as an iOS craft CV that happens to hold a Masters, not an AI CV that happens to know iOS.

**Location claimed:** Munich, Germany. Matches the posting's own city (Seitzstraße, München-Altstadt-Lehel) and his actual base, so this is the one application in the pipeline with zero relocation question.

**Email used:** Default, farrukhrasool65@gmail.com. No override requested.

**Employment status shown:** Plain `iOS Developer`, no `(Working Student)` qualifier. This is an ordinary professional junior posting, not a Werkstudent, internship or dual-study one, so the plain form applies per `tailor-cv/SKILL.md`.

**Led with:** The Storyboards to programmatic UIKit and Auto Layout migration at PakWheels, then on to SwiftUI, is the first bullet under PakWheels and the first pairing in the sidebar (`Storyboards | Programmatic UI`). This is the single fact on the profile that most precisely answers "basic experience with UIKit and Auto Layout", since dropping Storyboards means writing views and constraints in code by hand. The BARMER UIKit to SwiftUI migration opens the Verimi section for the same reason, framed around accessibility as the migration's stated goal rather than as a leadership story. Certificate pinning on BARMER's TAK libraries sits second in both the sidebar and the Verimi bullets, as the direct answer to "quality and security" in the posting's own words. The identity SDK fact (AOK and BARMER integrating one API surface on release cycles Verimi does not control) closes the Verimi section as supporting depth on the regulated-fintech thread, reworded from the master's usual "own" framing to "designed" so it reads as a technical claim rather than a leadership one.

**What was deliberately de-emphasised for the seniority framing:**
- Every bullet that would normally open with `Led`, `Mentored`, `Hired` or `Own` was reworded. `Led the Objective-C to Swift migration` became `Ported the PakWheels iOS codebase from Objective-C to Swift`. The identity SDK bullet uses `Designed` rather than `Own`.
- Hiring and mentoring (interviewing candidates, university job fairs, onboarding a junior developer) are left off entirely. Both are true and both are strong senior signals, which is exactly why they do not belong on a junior-titled application per the scored record's guidance.
- No summary or profile section exists on this template regardless, so there was no header line to soften, but the same logic shaped bullet order: craft first, platform depth last, nothing framed as team leadership anywhere on the page.
- SwiftUI appears only where it supports the "motivation to learn modern iOS development practices" line honestly (the BARMER and PakWheels migration bullets). It never leads a bullet's technology list, since the company's own postings across Junior, Senior and the expired mid-level role never name SwiftUI, and over-indexing on it risks reading as "wants to leave UIKit" rather than "comfortable extending it."

**Experience balance:** **Verimi 7 bullets, PakWheels 7.** Even, and `check-style.py` passes at this ratio. The agent handed over at 5 and 6; the fit passes on 2026-08-01 added two bullets to each side and removed one, see the log at the foot of this file.

**Cut:** Hiring and mentoring at PakWheels (interviews, university job fairs, onboarding a junior developer). The Verimi Wallet's SealOne SDK integration and eID scan verification, and the BARMER Design Component SDK integration and video widget work at AOK, all genuine but lower priority than what made the cut. Design Component SDK (Verimi's own, adopted by Wallet and AOK) was cut for space, not for the seniority framing. **It was added back on the fit pass**, since it answers "contribute to the design and implementation of user interfaces" directly. The Bachelors degree carries no bullets, since the posting names none of MERN, Android/Java, .NET or C++.

## Terminology mirrored

The posting names exactly four technologies: Swift, the iOS SDK, UIKit and Auto Layout. Three of
them are carried into **main-column bullets**, not just the sidebar, so the CV survives a parser that
drops the two-column layout: `Swift`, `UIKit`, `Auto Layout`.

"UIKit" and "Auto Layout" from the posting's own tech stack line, answered directly by the Storyboards/Programmatic UI sidebar pairing and the PakWheels lead bullet's explicit "Auto Layout" mention. "Quality and security" from the responsibilities line, answered by the certificate pinning bullet (security) and the clean-architecture/code-review closing bullet (quality). "iOS Engineer" as the header title, matching the posting's and the company's own job title (both Junior and Senior postings use "Engineer", never "Developer", per the research brief). "Modern iOS development practices" answered honestly by the two UIKit-to-SwiftUI migration bullets, framed as extending an established codebase rather than as a personal preference for SwiftUI.

## Metrics worth adding

- The AOK eID card scanning bullet and the BARMER certificate pinning bullet have no number behind them. Anything Farrukh can attach, screens shipped, verification success rate, time saved versus a prior manual identity check, would strengthen the strongest match on this posting's own terms (quality and security).
- The identity SDK bullet ("one API against two release cycles outside Verimi's control") would be sharper with a number: how many endpoints, how many client integrations beyond AOK and BARMER, or a maintenance-burden figure such as release cadence.
- The BARMER UIKit to SwiftUI migration has no scale or time figure. A screen count or a migration duration would turn "migrated the app" into a measured achievement, same shape as the PakWheels Storyboards migration currently lacks one too.

**Gaps not closed:**
- Auto Layout is not an itemised row anywhere in `skills.md`, only inferred from the Storyboards and Programmatic UI entries, per the scored record's own technical-fit note. The word appears explicitly in the PakWheels lead bullet's prose instead of the sidebar, which is the honest way to close this without inventing a skill row.
- XCTest is `ask`-rated in `skills.md` and does not appear anywhere on this CV, even though "testable" is in the posting's own responsibilities line. `Unit Testing` (strong, evidenced by the Bedtime Story Teller suite) is on the sidebar as the closest honest substitute, but it is a personal project, not iOS-employer evidence, and the letter or an interview answer should be ready to say so plainly if asked what testing framework he uses day to day.
- The core tension named in the scored record, a roughly four-year engineer applying to a posting asking for "initial experience in a professional setting", is a framing problem for the letter, not something the CV alone can resolve. The CV leads with craft and quality rather than leadership throughout, but the crash-free score, the SPM build number and the two migrations are still evidence of someone well past entry level to any reader who looks closely. That is a deliberate trade: dropping them would have made the CV thin and generic, which fails harder than looking slightly senior for a well-matched, quality-driven team.

**Page count:** **One page. `fit ok`, 11 mm free at the foot of the main column.** Rendered and confirmed 2026-08-01. `check-style.py` 0 fail 0 warn.

## Fit passes after the agent handed over

`cv-tailor` has no shell tool and could not render. The main thread did, and adjusted three times.

1. **First render was one page with 37 mm unused**, which the fit checker treats as a defect. Added the CI/CD and xcframework bullet (Verimi) and the Firebase A/B testing bullet (PakWheels). The A/B testing one earns its place: "an interest in understanding both technical and product-related problems" is a stated requirement, and lead conversion rate is the product metric that work measured.
2. **Still 21 mm short.** Added the Design Component SDK bullet (Verimi) and the Fastlane, TestFlight and App Store bullet (PakWheels), the latter answering "gradually grow responsibility across the full development lifecycle".
3. **That overflowed to two pages**, reported as a sidebar overflow, which is the failure mode where `Languages` lands on page two with no navy panel behind it and renders white on white. Removed the PakWheels clean-architecture and code-review bullet, the most generic of the set and already covered by the `Clean Code Architecture` and `Code Reviews` sidebar rows.

Net effect on the seniority framing: **none of the added bullets reintroduce leadership language.** Hiring, mentoring and interviewing stay off this CV entirely, as intended.
