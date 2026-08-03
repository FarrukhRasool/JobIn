---
company: Chrono24
role: iOS Developer (m/f/d)
source: linkedin
url: https://www.linkedin.com/jobs/view/4443283796/?alternateChannel=search&eBP=NOT_ELIGIBLE_FOR_CHARGING&refId=o5ba6kmYTbMi4Qf1p05dlw%3D%3D&trackingId=w%2BNzXAQjtxXrj7b2GyZOcA%3D%3D
posted: 2026-07-28
imported: 2026-08-03
location: Berlin, Germany
work_model: UNKNOWN
language: english
seniority: UNKNOWN
---

## Requirements
- Swift and iOS development
- SwiftUI and Combine for reactive, declarative UIs
- Swift Concurrency (async/await, actors)
- Testing with Swift Testing and XCTest
- Foundation framework and iOS platform APIs
- GitLab for version control and CI/CD
- Fluent English required; German optional
- E-commerce or marketplace experience noted as beneficial

## Responsibilities
Building contemporary iOS features with an emphasis on performance and usability, collaborating with cross-functional teams (Product, Backend, UX, QA), maintaining code quality through code reviews, and working with the technologies listed above.

## Tech stack
Swift, SwiftUI, Combine, Swift Concurrency, Swift Testing, XCTest, GitLab

## Notes
- LinkedIn listing showed "no longer accepting applications" at time of fetch. Flag for triage; posting may be closed even though the description is intact.
- `posted` date is computed from LinkedIn's relative "6 days ago" label at fetch time, not a stated calendar date, treat as approximate.
- `seniority` marked UNKNOWN: LinkedIn tagged the listing "Associate" but that is LinkedIn's own metadata, not years-of-experience language from the posting text itself, so it was not used.
- `work_model` marked UNKNOWN at intake: no explicit onsite/hybrid/remote statement surfaced. Research resolved this to "Remote-DE, Berlin, Karlsruhe" per the company's own Personio posting.
- Requirements and responsibilities text below is an AI-generated extraction/summary from WebFetch (which processes fetched HTML through a model), not a raw copy-paste of the original HTML. The bulleted requirement phrases appear to be direct quotes from the posting; the responsibilities paragraph is a paraphrase. No raw HTML capture is available since this came from a single WebFetch pass rather than pasted text.

## Raw
<details>
Company Name: Chrono24
Job Title: iOS Developer (m/f/d)
Location: Berlin, Germany
Work Model: Not explicitly specified (HQ mentioned in Karlsruhe with kitchen benefits, suggesting an on-site option)
Seniority Level (LinkedIn tag): Associate
Language of Posting: English
Posted Date: 6 days ago (relative, at fetch time 2026-08-03)
Application Status: No longer accepting applications

Requirements/Qualifications:
- Swift and iOS development
- SwiftUI and Combine for reactive, declarative UIs
- Swift Concurrency (async/await, actors)
- Testing with Swift Testing and XCTest
- Foundation framework and iOS platform APIs
- GitLab for version control and CI/CD
- Fluent English (required); German is optional
- E-commerce or marketplace experience noted as beneficial

Responsibilities:
Key duties include building contemporary iOS features emphasizing performance and usability, collaborating with cross-functional teams (Product, Backend, UX, QA), maintaining code quality through reviews, and working with specified technologies.

Tech Stack: Swift, SwiftUI, Combine, Swift Concurrency, Swift Testing, XCTest, GitLab
</details>

## Score

**Total: 90 / 100 — APPLY, tailor hard**
Track: ios-developer

| Dimension | Score |
|---|---|
| Technical fit | 36/40 |
| Seniority fit | 18/20 |
| Track clarity | 15/15 |
| Company fit | 12/15 |
| Application quality | 9/10 |

**Why this score.**

*Technical fit, 36/40.* Near-total overlap with `skills.md`. Swift, SwiftUI, and async/await are all `strong`. Combine is the standout match: the posting names it explicitly for "reactive, declarative UIs" and `experience.md` carries the fully evidenced PakWheels used-car advanced search bullet, 18 `@Published` filter dimensions bound through `sink` to a staged filter model, read from source and defensible under a probe. XCTest is `strong` but generic, per the caveat in `skills.md`. Docked points for three real gaps: **Swift Testing** (Apple's newer framework, distinct from XCTest and unevidenced), **actors** specifically (async/await is proven, actor isolation is not), and **GitLab** by name (Git is `strong`, but the CI/CD evidence on file is Jenkins and Fastlane, not GitLab CI).

*Seniority fit, 18/20.* No years-of-experience language appears in the posting text itself, and the LinkedIn "Associate" tag is explicitly excluded per the intake record's own notes. The responsibilities read as a standard mid-level IC role, shipping features, code review, cross-functional collaboration, which sits comfortably inside Farrukh's four years. No over-qualification cap applies: nothing in the posting text itself flags this as junior, entry-level or a working-student contract.

*Track clarity, 15/15.* Clean single-track iOS role. Nothing in the requirements calls for ML, Core ML, or on-device inference, so `PRIORITY-both` does not apply even though Chrono24 separately runs AI-adjacent product features (photo-scanner valuation, AR try-on) and has an open Senior AI Platform Engineer req. Those sit in a different role, not this one.

*Company fit, 12/15.* Real, substantial, actively maintained product: founded 2003, Series C of roughly $100-118M in 2021 (General Atlantic, LVMH's Aglaé Ventures, Insight Partners), past $1B valuation, "over 9 million monthly users" on its own careers page, 4.9 stars from ~68,000 App Store ratings, app build updated 10 days before the research date. Hiring iOS, Android and a Senior Java Developer concurrently in the same department reads as team growth, not a single backfill. Held below 15 for real gaps rather than red flags: no funding or company news verified in the last 12 months (only the 2021 round is confirmed), headcount not found, and a search-engine synthesis raised unattributed counterfeit-listing and app-bug complaints that the brief correctly marked SUMMARY-grade and did not use.

*Application quality, 9/10.* The Combine bullet is about as close a match as this pipeline produces: the posting names Combine for reactive UIs by name, and the PakWheels evidence is not a generic "used Combine" line but a specific, sourced mechanism with an exact number. The "e-commerce or marketplace experience noted as beneficial" line is also a direct hit: PakWheels' Classified and Dealers apps are a consumer and B2B marketplace at millions-of-users scale, the same shape of business as Chrono24's watch marketplace. Held at 9 rather than 10 because the letter still has to address the three named gaps (Swift Testing, actors, GitLab) rather than paper over them.

**Gaps.**
- **Swift Testing**, Apple's newer testing framework, named explicitly alongside XCTest. Nothing on file evidences it; XCTest is the only testing framework the profile can honestly claim, and per `skills.md` even that is a generic, unprobed line.
- **Actors** specifically. async/await is `strong` and evidenced (Verimi eID scanning and Wallet login flows), but actor isolation as a concurrency primitive is not named anywhere in `experience.md`.
- **GitLab** by name. Git is `strong`, but the CI/CD story on file (Jenkins at PakWheels, xcframework automation at Verimi) is GitHub- and Jenkins-centric, not GitLab CI.

**Risks.**
- **Application status.** The LinkedIn listing showed "no longer accepting applications" at intake. Per instruction this is being checked manually and was not used as a scoring input, so it does not appear in the dimensions above, but it is worth confirming the Personio posting is still live before spending tailoring time.
- **Seniority is UNKNOWN**, absent explicit years in the posting text. Scored from the responsibilities language rather than a stated number, which carries some judgement risk.
- **Team name and reporting line**: not found in research. Not a scoring input, but worth raising if this reaches a screening call.
- **Company fit softness**: funding news is stale (2021 only) and the unattributed complaint snippets, while correctly excluded from the score, are worth a second look if this reaches interview.

**Lead with.** The Combine bullet from PakWheels (18 `@Published` filter dimensions, staged filter model, `dropFirst` feedback-loop fix) against the posting's own "SwiftUI and Combine for reactive, declarative UIs" line, paired with the Classified/Dealers marketplace scale against "e-commerce or marketplace experience... beneficial." Those two are a near-exact match to the posting's own language, not a generic iOS pitch.
