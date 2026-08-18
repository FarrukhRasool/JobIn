---
company: YorTeam B.V.
role: Senior iOS Platform Engineer
source: linkedin
url: https://www.linkedin.com/jobs/view/4447016485/
posted: 2026-08-03
imported: 2026-08-10
location: Amsterdam, Netherlands
work_model: hybrid
language: english
seniority: senior
---

## Requirements
"8+ years of experience in iOS development with Swift."

"Strong experience with modular architectures, SDKs, and reusable components."

"Hands-on experience with Swift Concurrency, UIKit, SwiftUI, and CI/CD."

"Familiar with performance optimization, legacy code modernization and architectural patterns."

"Strong communication skills with a proactive, collaborative mindset."

## Responsibilities
"Build and maintain shared iOS frameworks, SDKs, and developer tools."

"Improve application architecture, modularization, and platform performance."

"Support development teams with platform adoption and codebase migrations."

"Enhance CI/CD workflows and developer productivity."

"Help define engineering standards and best practices."

## Tech stack
Swift, SwiftUI, UIKit, Swift Concurrency, CI/CD

## Notes
LinkedIn's own tag reads "Mid-Senior level", but the role title ("Senior iOS Platform Engineer") and the requirement of 8+ years of experience both point to senior, so seniority is recorded as senior rather than the platform tag.

Posted date shown as "1 week ago" on the page, viewed 2026-08-10. Back-calculated to approximately 2026-08-03. Treat as approximate, LinkedIn resurfaces old requisitions.

No German requirement stated. Posting is in English and role is based in Amsterdam, Netherlands, not Germany, so no German-speaking workplace signal either. Language recorded as english.

YorTeam B.V. is an IT staffing and recruitment agency based in Amsterdam (founded 2011, ~13 employees), not a direct employer. The posting does not name the end client. Likely an agency listing on behalf of an unnamed client.

Compensation stated: salary up to EUR 5,950 gross per month, based on 36 hours, plus 25 vacation days. Not recorded in frontmatter per pipeline convention (salary is deliberately not tracked), noted here only because it appeared on the posting.

Location is Amsterdam rather than Germany, and this is **not** a deduction. `profile/constraints.md` line 15 states plainly that location is not a gate, that Farrukh is open to roles anywhere in Europe, the USA, Canada and Australia, that he will relocate, and that a posting must not be down-ranked for being outside Germany. The Netherlands is inside that region, so the location gate is clean. Do not shave company fit or any other dimension for it.

## Raw
<details>
Company Name: YorTeam B.V.
Role Title: Senior iOS Platform Engineer
Location: Amsterdam, North Holland, Netherlands
Work Model: "Hybrid working"
Seniority Level (LinkedIn tag): Mid-Senior level
Posted Date: 1 week ago (viewed 2026-08-10)
Employment Type: Full-time

Requirements:
"8+ years of experience in iOS development with Swift. Strong experience with modular architectures, SDKs, and reusable components. Hands-on experience with Swift Concurrency, UIKit, SwiftUI, and CI/CD. Familiar with performance optimization, legacy code modernization and architectural patterns. Strong communication skills with a proactive, collaborative mindset."

Responsibilities:
- "Build and maintain shared iOS frameworks, SDKs, and developer tools."
- "Improve application architecture, modularization, and platform performance."
- "Support development teams with platform adoption and codebase migrations."
- "Enhance CI/CD workflows and developer productivity."
- "Help define engineering standards and best practices."

Tech Stack Mentioned: Swift, SwiftUI, UIKit, Swift Concurrency, CI/CD

Compensation: "Salary up to €5.950 gross per month, based on 36 hours. 25 vacation days."
</details>

## Score

**Total: 72 / 100. Apply, light tailoring**
Track: ios-developer

| Dimension | Score |
|---|---|
| Technical fit | 37/40 |
| Seniority fit | 7/20 |
| Track clarity | 15/15 |
| Company fit | 5/15 |
| Application quality | 8/10 |

**Why this score.** This is a platform role, not a feature role, and the posting's own Requirements and Responsibilities blocks line up almost point for point with `strong`-rated evidence in `skills.md` and `experience.md`. "Modular architectures, SDKs, and reusable components" is answered directly by the Verimi identity SDK integrated separately by AOK and BARMER (one API surface, two release schedules he does not control), the Verimi Design Component SDK built with designers and adopted by the Wallet and AOK, and the PakWheels Component Library, Localization and Assets extracted into their own frameworks. "Improve application architecture, modularization, and platform performance" and "enhance CI/CD workflows and developer productivity" match the Jenkins-plus-Fastlane per-PR pipeline he built at PakWheels and the xcframework automation at Verimi that halved TestFlight build time, which `experience.md` names as platform work rather than devops. "Support development teams with platform adoption and codebase migrations" and "legacy code modernization" match a genuine three-codebase modernisation arc: he led Objective-C to Swift at PakWheels, then took the UI layer from Storyboards through programmatic UIKit to SwiftUI, and separately migrated BARMER and the Verimi Wallet from UIKit to SwiftUI. "Help define engineering standards and best practices" is answered by code reviews, refactoring initiatives, mentoring one junior developer, and running technical interviews. Swift Concurrency, UIKit, SwiftUI and CI/CD are all `strong`. Technical fit is scored at 37 rather than the full 40 only because architectural-pattern breadth sits partly at `listed` (VIPER, SOLID) rather than `strong`, and because all of this was delivered inside three-person teams rather than a dedicated platform org, which is a scale question, not a stack gap. Seniority is the real constraint: the posting states "8+ years of experience in iOS development with Swift" and Farrukh has roughly four years plus an M.Sc. in progress, which lands in the rubric's 5-to-11 band for an 8-plus ask, scored honestly at 7 and isolated to this dimension only, not repeated against technical fit. Track clarity is a clean 15, this is single-track iOS platform work with no AI or ML content anywhere in the posting. Company fit is the weak dimension: this is the sixth agency listing with an unnamed end client through this pipeline, and even with a thorough research file in hand, nothing about team size, reporting line, whether this is a new function or a backfill, or whether the salary is a direct permanent placement or a YorTeam secondment could be established, so 5/15 reflects a genuinely unknowable employer rather than a bad one. Application quality is strong at 8/10 because the posting's own responsibility lines can be answered almost clause by clause with named, evidenced work, which is unusually direct for this pipeline.

**Gaps.** The 8+ years requirement is the one the letter cannot close. Farrukh has roughly four years of production iOS plus an ongoing M.Sc., not eight. This is a real gap, already scored honestly at 7/20 under seniority fit, and it should not be repeated as a technical gap since the actual work matches the role's content closely. No other genuine technical gap was found: every named requirement and responsibility maps to `strong` evidence. One precision point rather than a gap: if the letter reaches for SDK ownership, keep the two Design Component SDKs separate. Verimi's was built, with designers, and adopted by the Wallet and AOK. BARMER's was built by their own team and only integrated by him. Do not merge them.

**Risks.** Agency listing, end client unnamed. The research brief could not identify the employer behind YorTeam despite a genuine attempt, and one search returned only a SUMMARY-grade claim that the client is "in the financial sector" with no primary source, which is quarantined in the research file and must not be used or repeated in the letter or outreach. Employment structure (direct permanent placement versus YorTeam secondment) is not stated in the posting and is worth asking early. Team size, reporting line, and whether the role is new headcount or a backfill are all unknown. Separately, the 8+ years bar is likely to be the actual first-screen filter regardless of how well the work itself matches, though LinkedIn's own tag read "Mid-Senior level" rather than "Senior", which may mean the bar is softer in practice than the advert's own text.

**Lead with.** The Verimi identity SDK: one API surface consumed separately by AOK and BARMER on release schedules he did not control. It is the most direct answer available anywhere on the profile to "build and maintain shared iOS frameworks, SDKs, and developer tools" and "support development teams with platform adoption". Pair it with the PakWheels Component Library, Localization and Assets modularisation and the Jenkins-plus-Fastlane CI/CD pipeline (plus the Verimi xcframework automation that halved TestFlight build time) for the architecture, modularisation and CI/CD responsibility lines, and close with the three-codebase legacy modernisation arc for "legacy code modernization" and "codebase migrations".
