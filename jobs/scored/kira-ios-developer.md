---
company: Kira
role: iOS Developer - AI Finance Agent
source: linkedin
url: https://www.linkedin.com/jobs/view/4446602904/?alternateChannel=search&eBP=NON_CHARGEABLE_CHANNEL&refId=XehNTS1mjCwLrocrcVfzvA%3D%3D&trackingId=XS5olpmNZMmx4cTNGvz0nQ%3D%3D
posted: 2026-07-24
imported: 2026-08-04
location: Germany
work_model: remote
language: english
seniority: mid
---

## Requirements
"Strong native iOS experience using Swift"

"Experience shipping iOS apps used by real users"

"Good understanding of SwiftUI, UIKit, async/await and iOS architecture patterns"

"Strong product sense and care for UX, not just building screens"

"Able to debug production issues and improve performance, reliability and app quality"

"Comfortable working with ambiguity and moving fast without lowering the bar"

"Strong English communication is required"

## Responsibilities
"Build and ship native iOS features for onboarding, accounts, cards, payments, transfers, rewards and AI-assisted user journeys"

"Make complex financial flows feel clean, fast and simple on mobile"

"Work with product, design, backend and AI engineers to take ideas from rough concept to production release"

"Own app quality across performance, crash rate, loading states, edge cases, responsiveness and release stability"

"Use production feedback, analytics and customer behaviour to improve features after launch"

"Integrate APIs, authentication, secure data handling and financial workflows with strong attention to reliability"

## Tech stack
Swift, SwiftUI, UIKit, async/await

## Notes
- **Same employer group as two already-tracked postings.** `jobs/scored/bjak-ios-developer.md` (applied 2026-07-30) and `jobs/scored/kira-mobile-engineer.md` (applied 2026-07-30) already establish that Kira is BJAK's product brand. This posting is a distinct job ID (4446602904) titled "iOS Developer" rather than "Mobile Engineer", is iOS-only rather than Android/iOS, and describes a different product surface (onboarding, accounts, cards, payments, transfers, rewards) rather than the insurance/claims/renewals domain of the earlier Kira posting. Company plus role does not match either existing record verbatim, so this is recorded as a new file, but the employer overlap is worth weighing at scoring given two applications already sit with this same employer group.
- **Posted date corrected after research, and LinkedIn was misleading.** LinkedIn displayed "14 hours ago" at the 2026-08-04 fetch, which was first recorded as 2026-08-03. The research brief then pulled BJAK's own Ashby board and found two verbatim duplicate listings of this exact title, published 2026-07-24 and 2026-07-27. Neither matches LinkedIn's relative timestamp, so this looks like a resurfaced requisition rather than a new one. Recorded as 2026-07-24, the earliest known publication, since that is the employer's own primary source and the conservative reading. The requisition is roughly twelve days old, not fresh.
- **Seniority is `mid`, read from the requirements rather than the tag.** LinkedIn's own metadata says "Entry level" and the requirements contradict it flatly: "Strong native iOS experience using Swift", "Experience shipping iOS apps used by real users", "Able to debug production issues" and an understanding of "iOS architecture patterns". None of that is an entry-level ask. The `fit-score` skill's own rule is to ignore the posting's seniority tag when the stated requirements contradict it, since LinkedIn tags are frequently wrong. No years figure is given anywhere, so `mid` is read from the qualitative language. UNKNOWN would have been wrong here, since the posting does describe a level, and it would have imposed a false cap on what is otherwise a direct match to four years of production iOS.
- **Location conflict.** LinkedIn's job header lists Berlin, but the posting body specifies remote with a Germany-based requirement, the same pattern seen on the related kira-mobile-engineer posting. `location` records Germany and `work_model` records remote, both per the body text rather than the header.
- **Title versus content mismatch.** The role title includes "AI Finance Agent" and one responsibility line mentions "AI-assisted user journeys", but the requirements list no AI or ML skills at all, only native iOS craft (Swift, SwiftUI, UIKit, async/await). Same mismatch pattern already flagged on the related kira-mobile-engineer record, flagging it again so this is not mistaken for a role needing combined AI and mobile skills.

## Raw
<details>
This is a structured extraction of the LinkedIn posting as returned by fetch, not a byte-for-byte copy of the original page.

Company: Kira
Title: iOS Developer - AI Finance Agent
Location: Germany (Berlin in the LinkedIn header, body says remote, Germany-based required)
Work model: Remote
Language of posting: English
LinkedIn seniority tag: Entry level (see Notes on why this was not used for the seniority field)

REQUIREMENTS / QUALIFICATIONS
"Strong native iOS experience using Swift"
"Experience shipping iOS apps used by real users"
"Good understanding of SwiftUI, UIKit, async/await and iOS architecture patterns"
"Strong product sense and care for UX, not just building screens"
"Able to debug production issues and improve performance, reliability and app quality"
"Comfortable working with ambiguity and moving fast without lowering the bar"
"Strong English communication is required"

RESPONSIBILITIES
"Build and ship native iOS features for onboarding, accounts, cards, payments, transfers, rewards and AI-assisted user journeys"
"Make complex financial flows feel clean, fast and simple on mobile"
"Work with product, design, backend and AI engineers to take ideas from rough concept to production release"
"Own app quality across performance, crash rate, loading states, edge cases, responsiveness and release stability"
"Use production feedback, analytics and customer behaviour to improve features after launch"
"Integrate APIs, authentication, secure data handling and financial workflows with strong attention to reliability"

TECH NAMED
Swift, SwiftUI, UIKit, async/await
</details>

## Score

**Total: 86 / 100. Apply, standard tailoring**
Track: ios-developer

| Dimension | Score |
|---|---|
| Technical fit | 37/40 |
| Seniority fit | 19/20 |
| Track clarity | 15/15 |
| Company fit | 7/15 |
| Application quality | 8/10 |

**Why this score.** The posting's own Requirements and Responsibilities blocks are Swift, SwiftUI, UIKit, async/await, iOS architecture patterns, production debugging, performance and crash-rate ownership, and API/authentication/secure-data integration, and nearly every one of those is `strong` in `skills.md` with real employment evidence behind it: the `UserManager` session and auth layer, certificate pinning on BARMER's TAK libraries, crash-free above 99% and a 20% launch time cut at PakWheels, and eID scanning plus the Wallet login flow at Verimi. This is a genuinely clean single-track iOS role, not a blended one. The department field on the live Ashby posting reads "Engineering", the same as every other mobile role, not BJAK's separate "A1 Engineering" AI/ML team, so this scores as `ios-developer`, not `PRIORITY-both`. Seniority is read from the qualitative bar in the requirements rather than LinkedIn's contradicted "Entry level" tag, per the explicit instruction not to apply the over-qualification cap here, and that bar matches four years plus an M.Sc. cleanly. Company fit is the one dimension pulled down, and deliberately not any of the others: this is a real, profitable, growing company entering a new market, which is genuinely attractive, but it is also Farrukh's third application to this employer group in eight days, the first two (`bjak-ios-developer`, 89, and `kira-mobile-engineer`, 69, both applied 2026-07-30) are unanswered, and BJAK's own board now carries 18 near-duplicate Germany mobile postings against 8 five days ago, including two verbatim duplicates of this exact title, alongside weak Glassdoor sentiment, no German legal entity and no BaFin footprint.

**Gaps.** The Responsibilities line names "cards, payments, transfers, rewards" and "financial workflows" specifically. `experience.md` records as an honest limit that PakWheels involved marketplace transactions but no evidenced ownership of payment flows, claims or renewals, and Verimi's identity and wallet work is adjacent to payments rather than the same thing. That is a real, named gap the letter should not paper over. Secure credential storage is a related soft spot: certificate pinning on BARMER is the evidenced secure-transport fact and is the one to lead with, but token storage at PakWheels went through `UserDefaults`, not Keychain, so do not reach for Keychain if the letter or an interview pushes on secure data handling.

**Risks.** Company-side, not technical, per the research brief: third application into the same employer group inside eight days with two already unanswered, a board that grew from 8 to 18 near-duplicate Germany mobile postings in five days including two verbatim duplicates of this exact title (reads as a resurfaced requisition or a funnel rather than a distinct opening), 2.3/5 Glassdoor with micromanagement complaints, no German legal entity found, and no BaFin footprint for a role that touches financial workflows. LinkedIn's posted date does not match either of Ashby's own publish dates for this listing (2026-07-24 or 2026-07-27), so treat the requisition as roughly a fortnight old rather than fresh. Worth applying regardless, per the volume-over-fit instruction, but go in with eyes open that this may reach the same recruiter as the first two.

**Lead with.** The `UserManager` session and authentication layer at PakWheels: auth injection into every outbound request, the logged-in versus anonymous credential paths, the full login and logout lifecycle, and `@Injected` dependency injection. It is the direct, evidenced answer to "integrate APIs, authentication, secure data handling", pair it with certificate pinning on BARMER for the secure-data half and with crash-free above 99% plus the 20% launch time cut for "own app quality across performance, crash rate, loading states, edge cases, responsiveness and release stability".
