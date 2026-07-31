# SumUp, iOS Engineer - Mobile Platform

Researched: 2026-07-30

Sources used:
- https://www.linkedin.com/jobs/view/4395840684/
- https://www.sumup.com/careers/positions/berlin-germany/ios/ios-engineer-mobile-platform/8481527002/ (their own posting, richer than LinkedIn)
- https://medium.com/sumup-engineering (SumUp Engineering publication)
- Tracxn, PitchBook, Sacra company profiles
- Their other open iOS roles

## What they do

VERIFIED. SumUp builds payment hardware and software for small and medium businesses. Card readers, terminals and point-of-sale systems, plus payment processing, business banking and merchant cash advances. Founded 2011, Berlin.

Over **4 million SMBs across 36 countries**. Revenue mix is roughly 45% hardware, 30% payment processing, 15% software subscriptions, 10% financial services. This is a hardware-plus-software company, not a pure app business, which matters: the iOS app talks to physical card readers.

## Stage and size

| Fact | Value | Evidence |
|---|---|---|
| Founded | 2011 | VERIFIED |
| Valuation | **~$8.6B** | VERIFIED |
| Headcount | **~4,300** | VERIFIED, mid-2026 |
| Funding | ~$997M equity over 17 rounds, plus **€1.5B private credit led by Goldman Sachs**, May 2024 | VERIFIED |
| Engineering sites | Berlin, Cologne, Sofia, São Paulo | VERIFIED |

A late-stage, well-capitalised European fintech. Not a startup. At 4,300 people the iOS codebase will be large and old, which is precisely why this role exists.

## The role, and why it is unusual

**This is a platform role, not a feature role.** Their own wording: the Mobile Platform Squad is "the foundational layer for SumUp's iOS engineering", maintaining "frameworks and infrastructure that feature teams depend on". Described as **"small, high-impact"**, focused on "developer experience and engineering excellence rather than direct merchant-facing features".

The job is building for the engineers who build the app. That is a narrower field of candidates than a feature role, and it is the single best match on Farrukh's profile.

**Locations.** LinkedIn says Berlin. Their own posting for the same requisition lists **Berlin, Cologne, London and Sofia**. Worth knowing before assuming a Berlin relocation is the only option. LinkedIn says office-first.

**What they actually ask for**, and how it lands:

| They want | He has |
|---|---|
| 3+ years professional iOS with Swift | 4 years, two employers |
| CI/CD pipelines, GitHub Actions, **Fastlane** | Fastlane at PakWheels through TestFlight and App Store. CI/CD at both employers. **TestFlight build time halved at Verimi** |
| Testing methodologies, architecture patterns, design principles | Unit testing, MVVM, SOLID, clean code architecture |
| Navigate and improve **complex, mature codebases** | **Led** the Objective-C to Swift migration at PakWheels, then migrated two apps from UIKit to SwiftUI at Verimi. Three codebases modernised |
| Work outside feature team boundaries, self-directed | Teams of three at both employers |
| **Nice to have: modularised codebases** | Extracted Localization, Assets and Component Library into frameworks at PakWheels. xcframeworks, multi-target |
| **Nice to have: internal tooling** | The identity SDK consumed by AOK and BARMER, the Design Component SDK adopted by two apps, five published SwiftUI packages, and the SDD automation |
| Nice to have: Ruby scripting | **Not evidenced.** Fastlane is Ruby-based so it is adjacent, but do not claim Ruby |

## Their other open iOS roles

VERIFIED, and useful as structure signal:

- **iOS Engineer, Design System** — Berlin, Cologne, Paris
- **iOS Engineer, Hardware** — Berlin
- **Android Engineer, KMP** — Berlin

Three things follow. They have a **dedicated Design System team that works closely with Mobile Platform**, and Farrukh built a Design Component SDK adopted by two apps, so that adjacency is real. A **Hardware** iOS role confirms the app drives physical card readers. And an **Android KMP** role means they are moving toward Kotlin Multiplatform for shared Android and iOS code.

**The KMP direction is worth knowing.** `skills.md` records Kotlin and Android as deliberately absent. If KMP becomes the platform team's problem, that is a gap. It is a direction signal, not a requirement in this posting.

## Tech stack

Swift, modern iOS frameworks, GitHub Actions, Fastlane, Ruby. MVVM and MVC named in their related iOS postings. C++ appears in older coverage of their stack, almost certainly on the hardware and reader side.

## Vision and direction

Moving from a payments company to a full financial platform for small businesses: processing, banking, cash advances and subscriptions alongside the hardware. Engineering is spread across four sites and moving toward Kotlin Multiplatform on mobile.

The platform squad exists because the codebase is mature enough to need one. That is a good sign for the role's longevity and a fair warning about what the work is: technical debt, tooling and consistency, not shipping visible features.

## Benefits

€2,000 annual learning budget, VSOP equity, corporate pension matched up to 20%, 30-day sabbatical after three years, relocation assistance, subsidised lunches, Urban Sports Club.

The pension match and the sabbatical are unusually good and suggest a company that expects people to stay.

## For the cover letter

1. **The identity SDK consumed by AOK and BARMER separately.** One API surface, two enterprise clients, neither of which he controlled. That is platform work under exactly the constraint this squad lives with, and it is the strongest single fact he has for this posting.
2. **Three codebases modernised.** Led Objective-C to Swift at PakWheels, then migrated BARMER and Verimi Wallet from UIKit to SwiftUI. Their posting says "navigate and improve complex, mature codebases" and asks for someone who prioritises simplicity.
3. **TestFlight build time halved.** A measured CI/CD outcome, against a posting that names CI/CD and developer tooling twice.

## Concerns

- **Office-first in Berlin**, and he is in Bavaria. Relocation assistance is offered and he has said he is open to relocating in Europe, but this is a real move. Cologne, London and Sofia are alternatives on their own posting.
- **Ruby is a nice-to-have he cannot claim.** Fastlane is Ruby-based, so the honest position is familiarity with Fastlane rather than the language.
- **Kotlin Multiplatform is where mobile is heading** and he has no Kotlin. Not required here, but ask where KMP sits in the platform team's roadmap.
- **Platform work is invisible work.** No shipped features to point at, and the reward is other engineers' velocity. Worth being sure that is the job he wants, not just the one he matches.
- He is currently a **working student** finishing a thesis. This is a full-time mid-senior role. Timing needs to work.

## Open questions

- Which of the four locations are genuinely open for this requisition?
- How large is the Mobile Platform squad, and how many feature teams depend on it?
- How old is the iOS codebase, and how much Objective-C remains?
- Where does Kotlin Multiplatform sit in the platform roadmap?
- Is German needed at all, or is engineering English-first?
