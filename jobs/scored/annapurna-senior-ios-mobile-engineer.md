---
company: Annapurna
role: Senior iOS Mobile Engineer - Conversational Platform
source: linkedin
url: https://www.linkedin.com/jobs/view/4442849272/
posted: UNKNOWN
imported: 2026-08-01
location: Berlin, Germany
work_model: hybrid
language: english
seniority: mid-senior, 5+ years stated
---

## Requirements

Verbatim:

- "5+ years of experience in iOS development"
- "Deep expertise in Swift and Apple frameworks such as UIKit and SwiftUI"
- "Proven experience building and distributing SDKs or modular mobile components"
- "Advanced knowledge of mobile architecture patterns and App Store release processes"
- "Proficiency in mobile-specific performance optimization and debugging"
- "Strong spoken and written communication skills in English"

Desirable: Android development; UI/UX design capabilities.

## Responsibilities

- "Design, develop, and maintain high-quality, performant iOS SDKs and plugins", integrating native mobile features with Apple ecosystem compatibility
- Optimising "mobile system performance for low latency and smooth real-time interactions"
- Leading technical initiatives spanning 3-9 months

## Tech stack

Swift, SwiftUI, UIKit, XCTest, Xcode, CocoaPods, Swift Package Manager, GitHub Actions. Desirable: Android.

## Notes

**Annapurna is a recruitment agency, not the employer.** Same shape as Computer Futures and Optimus Search already in the pipeline: a named staffing brand advertising a role without naming the client. No company to research and no company to write a letter to unless the agency discloses the client later.

Listed as a **contract role, 6 months**, per LinkedIn. The schema has no field for it, so it is flagged here. This is the first fixed-term posting in the pipeline and `profile/constraints.md` records no preference either way, so it is a genuine open question for scoring rather than something the rubric already answers.

**Posted date.** LinkedIn showed "5 days ago" at fetch time on 2026-08-01, which would be roughly 2026-07-27. Recorded as `posted: UNKNOWN` per the intake rule against guessing, matching how the Thermondo, Arise and Scalable Capital records handled the same relative timestamp.

No other Annapurna posting currently in the pipeline, and nothing in the requirements or responsibilities text ties this to any employer already tracked (Scalable Capital, SumUp, Thermondo, etc.), so this is treated as a new, distinct listing rather than a duplicate.

## Raw

<details>
Company: Annapurna (recruitment agency posting on behalf of an unnamed client)
Role Title: Senior iOS Mobile Engineer - Conversational Platform
Location: Berlin, Germany
Work Model: Hybrid
Seniority: Mid-Senior level
Employment Type: Contract (6 months)
Posted Date: 5 days ago (relative to fetch on 2026-08-01)

Responsibilities:
"Design, develop, and maintain high-quality, performant iOS SDKs and plugins" with integration of native mobile features and Apple ecosystem compatibility. Role involves optimizing "mobile system performance for low latency and smooth real-time interactions" and leading technical initiatives spanning 3-9 months.

Requirements:
Minimum "5+ years of experience in iOS development" with "Deep expertise in Swift and Apple frameworks such as UIKit and SwiftUI." Must have "Proven experience building and distributing SDKs or modular mobile components" and "Advanced knowledge of mobile architecture patterns and App Store release processes." Requires "Proficiency in mobile-specific performance optimization and debugging" plus "Strong spoken and written communication skills in English."

Technologies/Tools:
Swift, SwiftUI, UIKit, XCTest, Xcode, CocoaPods, Swift Package Manager, GitHub Actions
Desirable: Android development; UI/UX design capabilities
</details>

## Score

**Total: 73 / 100 — APPLY**
Track: ios-developer
No research brief exists. Annapurna is a recruitment agency advertising an unnamed client, `/research` correctly refused, and Company fit is capped at 8/15 per the rubric rather than scored.

| Dimension | Score |
|---|---|
| Technical fit | 31/40 |
| Seniority fit | 13/20 |
| Track clarity | 15/15 |
| Company fit | 8/15 (capped, no research file) |
| Application quality | 6/10 |

**Why this score.** The one requirement that matters most here — "proven experience building and distributing SDKs or modular mobile components" — is about as strong a match as this profile has anywhere: the Verimi identity SDK consumed separately by AOK and BARMER, the Design Component SDK adopted by both Verimi Wallet and AOK, xcframeworks automated in CI, Localization/Assets/Component Library split into frameworks at PakWheels, and five published SwiftUI packages. Swift, SwiftUI, UIKit, XCTest, CocoaPods and SPM are all named and all `strong` in `skills.md`. Fastlane, TestFlight and App Store release process are evidenced directly at PakWheels, and performance/debugging is backed by the 20% launch-time cut and the 99%+ crash-free score. That is a genuinely strong technical match, pulled down by the stated **5+ years** against roughly four actual, and by the fact that nothing here can be pointed at a real company.

**Gaps.**
- **5+ years stated, he has roughly four.** A real, honest stretch on a Senior title, not a rounding error. The letter has to carry this.
- **Employer unnamed.** No product, culture, funding stage or direction to write toward. The cover letter opens generic instead of on the company, which is the single strongest move usually available.
- **GitHub Actions** is named specifically and isn't evidenced. Fastlane and CI/CD generally are `strong`, but not this exact tool.
- **Android**, desirable only, is deliberately absent from the profile. Not a gate since it's a nice-to-have, but it's a real gap against the "desirable" line.
- **UI/UX design capabilities**, desirable, sits at `listed` (Figma portfolio link) rather than `strong`.
- **"Low latency and smooth real-time interactions"** for a "Conversational Platform" has no direct employment-level evidence. StoryTeller's WebSocket streaming is the closest thing on the profile, but it's a personal project, not paid work, and belongs to the AI track rather than this one.

**Risks.**
- **6-month contract.** First fixed-term posting in the pipeline. `constraints.md` states no preference either way, so this is scored on merit and flagged rather than penalised. Open question for Farrukh: is a 6-month contract acceptable, and does it change how hard to tailor.
- **Employer unnamed via an agency.** No way to confirm this isn't a company already elsewhere in the pipeline, and no way to check culture or stability before applying. Precedent (`jobgether-mobile-engineer-ios`, scored 85 and applied to) shows an agency posting is not disqualifying on its own, but the cost here is real and lands entirely on Company fit and Application quality.
- **German not mentioned anywhere in the posting.** The A2 gate does not fire, but Berlin-hybrid roles with no language line stated should still be treated as worth a quick confirmation before an interview.
- **`posted: UNKNOWN`** in the inbox record. Not a gate field under the rubric (only Language, Location and Hard-no list are), so no cap applied, but worth checking the listing is still live before investing tailoring time.

**Lead with.** The SDK-building story, full stack: the Verimi identity SDK maintained against two separate enterprise clients (AOK, BARMER) with different release cycles neither controlled, paired with the Design Component SDK adopted by two production apps and the five published SwiftUI packages. That answers the posting's central ask almost word for word. Follow with Fastlane/TestFlight/App Store release ownership and the crash-free and launch-time numbers for the performance and release-process lines. Do not lead with AI. Nothing in the requirements names it, and the title's "Conversational Platform" isn't backed by any AI/ML technology in the actual text — this is a clean iOS track, not PRIORITY-both.
