---
company: Vinted
role: Senior iOS Engineer, Order
source: company-site
url: https://careers.vinted.com/jobs/j/4876747101?q=iOS
posted: UNKNOWN
imported: 2026-08-14
location: Kaunas / Vilnius, Lithuania
work_model: hybrid
language: english
seniority: senior
---

## Requirements

"Extensive experience building and maintaining iOS applications in Swift", with a track record of leading initiatives and making team-level decisions.

"Deeply care about testing, performance, and clean architecture"

Ability to spot systemic risks and hidden coupling while prioritising product risk.

"You drive discussions, demonstrate mature alignment, and mentor other engineers"

Comfortable in metrics and data-driven environments.

"Willing to learn and excel at new technologies and concepts"

Collaborative mindset with ability to engage in constructive conflict.

## Responsibilities

Design and implement robust, high-performance iOS capabilities using Swift with modern concurrency (Async/Await) and native UI frameworks like SwiftUI while supporting UIKit transition.

Collaborate with mobile, backend, data, and product teams to design end-to-end solutions.

Deliver features using the shared DSKit while ensuring smooth user experience and navigating privacy and performance constraints.

Develop within a decoupled, modular environment using Tuist and Swift Package Manager with MVVM or Clean Swift architectures.

Leverage feature flags, staged rollouts, and metrics for safe releases.

Apply Agile and Lean principles through GitHub pull requests with automated workflows (Danger, SwiftLint, SwiftFormat, Sourcery).

Partner across teams on decommissioning shared layers and establishing clean boundaries.

Provide impactful feedback in design reviews and RFCs.

## Tech stack

Swift, Async/Await, SwiftUI, UIKit, MVVM, Clean Swift, Tuist, Swift Package Manager, GitHub, Danger, SwiftLint, SwiftFormat, Sourcery, DSKit (internal design system kit).

## Notes

Seniority read as senior from the job title itself ("Senior iOS Engineer, Order") and from the requirements ("leading initiatives", "making team-level decisions", "mentor other engineers"). No numeric years-of-experience figure is stated anywhere in the posting, only "extensive experience".

Role sits on the Order Resolution team within Vinted's marketplace, covering the transaction lifecycle: purchase, payment, shipment, fulfilment, dispute resolution. Kept "Order" in the slug because Vinted lists multiple iOS roles across teams and the role name disambiguates.

Location is Kaunas or Vilnius, Lithuania, not Germany. Vinted is a Lithuanian company. This is inside the open regions (Europe), so it is not a hard gate failure, but it is not a Germany-based role and German is not mentioned anywhere in the posting.

Language recorded as english because the entire posting is in English and no German, Lithuanian, or other language requirement is stated anywhere. This is an inference from posting language, not an explicit statement, flagging for triage in case that distinction matters.

Work model stated as "2 days in office recommended but not enforced", recorded as hybrid.

Fetched via WebFetch from the company careers page. The Requirements section preserves the page's own quoted phrases. The Responsibilities section came back from the fetch as a single consolidated paragraph rather than a bulleted list, so it has been split into individual sentences here without quote marks. Treat these as close paraphrase rather than confirmed word-for-word original bullets, since only one fetch attempt is permitted per policy and the source did not return original bullet formatting.

Salary was stated on the page (€4,975 to €6,725 EUR gross monthly) but is not recorded as a pipeline field per CLAUDE.md, which excludes salary from tracking and scoring.

## Raw

<details>
Senior iOS Engineer, Order, Vinted

Locations: Kaunas, Vilnius, Lithuania
Work model: Hybrid (2 days in office recommended but not enforced)
Salary range: €4,975 to €6,725 EUR gross monthly

Responsibilities (as returned by fetch, consolidated paragraph):
Design and implement robust, high-performance iOS capabilities using Swift with modern concurrency (Async/Await) and native UI frameworks like SwiftUI while supporting UIKit transition. Collaborate with mobile, backend, data, and product teams to design end-to-end solutions. Deliver features using the shared DSKit while ensuring smooth user experience and navigating privacy and performance constraints. Develop within a decoupled, modular environment using Tuist and Swift Package Manager with MVVM or Clean Swift architectures. Leverage feature flags, staged rollouts, and metrics for safe releases. Apply Agile and Lean principles through GitHub pull requests with automated workflows (Danger, SwiftLint, SwiftFormat, Sourcery). Partner across teams on decommissioning shared layers and establishing clean boundaries. Provide impactful feedback in design reviews and RFCs.

Requirements (as returned by fetch):
Experience level: "Extensive experience building and maintaining iOS applications in Swift" with track record of leading initiatives and making team-level decisions.
Key qualifications:
- "Deeply care about testing, performance, and clean architecture"
- Ability to spot systemic risks and hidden coupling while prioritizing product risk
- "You drive discussions, demonstrate mature alignment, and mentor other engineers"
- Comfortable in metrics and data-driven environments
- "Willing to learn and excel at new technologies and concepts"
- Collaborative mindset with ability to engage in constructive conflict

Tech stack: Swift, Async/Await, SwiftUI, UIKit, MVVM, Clean Swift, Tuist, Swift Package Manager, GitHub, Danger, SwiftLint, SwiftFormat, Sourcery, DSKit (Design System Kit)

Domain: Order Resolution within Vinted Marketplace, managing end-to-end transaction lifecycle including purchase, payment, shipment, fulfillment, and dispute resolution.
</details>

## Score

**Total: 84 / 100. Apply, standard tailoring**
Track: ios-developer

| Dimension | Score |
|---|---|
| Technical fit | 33/40 |
| Seniority fit | 14/20 |
| Track clarity | 15/15 |
| Company fit | 14/15 |
| Application quality | 8/10 |

**Why this score.** This is a single-track, decoupled-modular iOS product role and most of its stated requirements are `strong` in `skills.md` with real employment evidence: Swift, SwiftUI, UIKit and the UIKit-to-SwiftUI transition (evidenced three times over, at BARMER, the Verimi Wallet, and the PakWheels Storyboards arc), async/await via the eID scanning and Wallet login flows, MVVM, feature flags and staged rollouts via Firebase A/B tests, and Swift Package Manager via the CocoaPods-to-SPM migration that cut build times 40%. "Deliver features using the shared DSKit" maps cleanly onto two separate facts: he **built** Verimi's own Design Component SDK with designers, adopted by the Wallet and AOK, and separately **consumed** BARMER's design system, built by their team, so both sides of "deliver features using a shared kit" are covered without conflating the two. "GitHub pull requests with automated workflows" is answered by the Jenkins and Fastlane pipeline he built at PakWheels, which posted a signed staging build as a QR code to every PR and Jira ticket, a real automated-PR-workflow mechanism even though the specific named tools (Danger, SwiftLint, SwiftFormat, Sourcery) are not evidenced. "Testing, performance, and clean architecture" is genuinely mixed: performance and architecture are strong (crash-free above 99%, launch time down 20%, Clean Code Architecture and Design Patterns both evidenced), but XCTest is keyword-clearing only per `experience.md`, with no employer, number or suite structure behind it, so it will not survive a probe if the interview leans hard on testing practice. Consumer marketplace scale is a genuine strength rather than a gap: PakWheels served millions of users on the Classified app, directly comparable to Vinted's scale. Seniority is read from the qualitative bar (leading initiatives, team-level decisions, mentoring, driving discussions) rather than from any stated years figure, which materially changes the read from a posting like `yorteam-senior-ios-platform-engineer` that named "8+ years" outright. That bar is still a real stretch against a profile with one junior mentored and no formal lead title, so it is scored as a genuine reach worth applying to rather than a clean match. Company fit draws on the strongest researched picture in the pipeline: verified 2025 GMV of €10.8bn (+47%) and revenue of €1.1bn (+38%), a 4.9-star App Store rating from roughly 91,000 reviews ranked first in Shopping, active modularisation work described in the posting's own language, and a real, funded relocation programme for Engineering hires (€3,000 base bonus plus housing support) rather than a bare line in an advert. Per `constraints.md`, the Lithuania location is not a deduction anywhere in this score.

**Gaps.** Clean Swift (VIP) specifically is unevidenced, but the requirement is disjunctive ("MVVM or Clean Swift") and MVVM is `strong`, so this is soft and does not need to be argued around. Sourcery, a code-generation tool, is genuinely more specialised than the others named and nothing on the profile suggests exposure to it. Treat it as a real, learnable gap rather than a documentation silence. Tuist sits closer to the line: it is a project-generation and module-graph tool, and while he demonstrably owns the surrounding category (SPM migration, xcframeworks, extracting Localization, Assets and the Component Library into separate frameworks, a 40% build-time cut), Tuist itself is a distinct product he has never named, not a like-for-like vendor swap inside an identical workflow. Scored as a learnable gap rather than a like-for-like substitution. Testing depth is a soft gap: the generic XCTest bullet clears the keyword but has no suite, number or employer behind it, and this posting says it "deeply cares" about testing, which is more scrutiny than most postings apply to that line.

**Risks.** SwiftLint and SwiftFormat are near-universal in professional Swift work and plausibly fall inside four years of production iOS that `skills.md` simply has not written down yet. Ask Farrukh before either goes on a CV rather than recording them as a flat gap. Danger is functionally adjacent to the Jenkins/Fastlane automated-PR pipeline he built (both post automated feedback to a PR), but Danger itself is unconfirmed and should not be claimed without asking first. The posting's own `posted` date is UNKNOWN, so freshness cannot be assessed directly, though the research brief found 137 open roles company-wide and an app update four days before research, both signs of active, ongoing hiring rather than a stale requisition. Whether this seat is new headcount or a backfill, and who it reports to, are both NOT FOUND in research. The enhanced relocation offer mentioned on Vinted's own relocation page (a time-limited €30,000 gross plus two months' housing) has no confirmed expiry or role-level eligibility, so do not rely on it in a letter, use the standard, verified €3,000 relocation bonus instead. Valuation figures (€8bn/$9bn) and headcount figures ("2,000+", "1,600+") are graded REPORTED and SUMMARY in the research brief and were not used anywhere in this score.

**Lead with.** The Verimi Design Component SDK, built with designers and adopted by the Wallet and AOK, as the direct answer to "deliver features using the shared DSKit". Pair it with the CocoaPods-to-SPM migration and the framework-extraction work (Localization, Assets, Component Library) for "decoupled, modular environment", and with the Jenkins/Fastlane PR pipeline for "GitHub pull requests with automated workflows". Close with crash-free above 99% and launch time down 20% for "testing, performance, and clean architecture", and mentoring plus technical interviewing for the mentoring and team-level-decision language in the requirements.
