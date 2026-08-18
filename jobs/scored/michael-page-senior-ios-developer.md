---
company: Michael Page
role: Senior iOS Developer (m/w/d) INTERIM
source: linkedin
url: https://www.linkedin.com/jobs/view/4446867183/?alternateChannel=search&trk=d_flagship3_search_srp_jobs&refId=iMEANShWf0tYG1KKeWjAGA%3D%3D&trackingId=uOb1ia%2F3HR5XbL%2BsjbkGsA%3D%3D
posted: 2026-07-29
imported: 2026-08-03
location: Berlin, Germany
work_model: remote
language: german
seniority: UNKNOWN
---

## Requirements
Entwicklung von iOS-Anwendungen mit Swift; Erstellung reaktiver und deklarativer Benutzeroberflächen mit SwiftUI und Combine; Nutzung von Swift Concurrency; Testautomatisierung mit Swift Testing und XCTest; Arbeit mit dem Foundation Framework und den iOS-Plattform-APIs; Versionsverwaltung sowie CI/CD-Prozesse mit GitLab; Sehr gute Englischkenntnisse; Deutschkenntnisse von Vorteil; idealerweise erste Erfahrungen im E-Commerce- oder Marktplatzumfeld (optional)

## Responsibilities
Arbeit mit modernen Technologien und Frameworks; fachliche Weiterentwicklung und Verantwortung für wichtige technische Entscheidungen; enge Zusammenarbeit mit funktionsübergreifenden Teams; Fokus auf Clean Code und hohe Qualitätsstandards durch Code-Reviews

## Tech stack
Swift, SwiftUI, Combine, Swift Concurrency (async/await, Actors), Swift Testing, XCTest, Foundation Framework, iOS platform APIs, GitLab (CI/CD)

## Notes
- **Recruitment agency listing.** Michael Page is a staffing agency and the end client is not named anywhere in the fetched content. `company` is set to Michael Page for lack of a named employer; if the client is identified later this record should be updated or re-slugged.
- Interim/contract role: approximately 4-6 months, full-time, starting immediately. Not a permanent position.
- Posting is written entirely in German, so `language: german` per the intake rule even though the requirements text itself says "Sehr gute Englischkenntnisse; Deutschkenntnisse von Vorteil" (very good English required, German only a plus).
- `seniority` set to UNKNOWN: the title says "Senior" and LinkedIn tags it "Mid-Senior level," but the requirements text states no explicit years-of-experience threshold. Per the intake rule, seniority is judged on demanded experience, not title, so there is no basis in the text itself to set this field.
- `posted` derived, not stated: LinkedIn showed a relative "5 days ago" at fetch time. Back-calculated from the 2026-08-03 import date to 2026-07-29, the same convention used for the Almedia record. Treat as accurate to within a day.
- The content below is a fetched extract (via WebFetch), not a guaranteed byte-for-byte capture of the original HTML. Structure and wording of the requirements/responsibilities blocks appear intact, but formatting (bullets, line breaks) may not exactly match the source page.

## Raw
<details>
Company Name: Michael Page

Job Title: Senior iOS Developer (m/w/d) INTERIM

Location: Berlin, Germany

Work Model: 100% Remote

Language: German

Seniority Level: Mid-Senior level (LinkedIn tag)

Years of Experience: Not explicitly stated

Posted Date: 5 days ago (relative, per LinkedIn UI at fetch time)

Tech Stack: Swift, SwiftUI, Combine, Swift Concurrency (async/await, Actors), Swift Testing, XCTest, Foundation Framework, iOS platform APIs, GitLab (CI/CD)

Requirements/Qualifications:
"Entwicklung von iOS-Anwendungen mit Swift; Erstellung reaktiver und deklarativer Benutzeroberflächen mit SwiftUI und Combine; Nutzung von Swift Concurrency; Testautomatisierung mit Swift Testing und XCTest; Arbeit mit dem Foundation Framework und den iOS-Plattform-APIs; Versionsverwaltung sowie CI/CD-Prozesse mit GitLab; Sehr gute Englischkenntnisse; Deutschkenntnisse von Vorteil; idealerweise erste Erfahrungen im E-Commerce- oder Marktplatzumfeld (optional)"

Responsibilities:
"Arbeit mit modernen Technologien und Frameworks; fachliche Weiterentwicklung und Verantwortung für wichtige technische Entscheidungen; enge Zusammenarbeit mit funktionsübergreifenden Teams; Fokus auf Clean Code und hohe Qualitätsstandards durch Code-Reviews"

Duration: Approximately 4-6 months, full-time, starting immediately
</details>

## Score

**Rescored 2026-08-03**, against the corrected `fit-score` rubric (transferable-vendor rule, absence-is-not-evidence rule, score-the-advert's-own-words rule) and the updated `profile/skills.md` (Swift Testing and GitLab CI/CD now `listed`, Swift Concurrency `strong`, Actors held at `ask` as conceptual only). Only **Technical fit** changed. The other four dimensions were reviewed and left as previously scored.

The Actors grade moved from `listed` to `ask` after this score was written, and the number is unaffected: the advert's verbatim text asks only for "Nutzung von Swift Concurrency", which the `strong` Swift Concurrency row answers on its own.

**Total: 80 / 100 — APPLY, standard tailoring**
Track: ios-developer

| Dimension | Score |
|---|---|
| Technical fit | 38/40 |
| Seniority fit | 17/20 |
| Track clarity | 15/15 |
| Company fit | 4/15 |
| Application quality | 6/10 |

**Why this score.** Core stack is a strong, well-evidenced match: Swift, SwiftUI, Combine and XCTest are `strong` on the profile, and the Combine entry (18 `@Published` filter dimensions, staged model, `dropFirst` to break the hydration loop) answers the posting's own phrase "reaktive und deklarative Benutzeroberflächen mit SwiftUI und Combine" almost exactly. Swift Concurrency is `strong`, evidenced through the Verimi eID scanning and Wallet login/registration flows, and the advert's own requirement text asks only for "Nutzung von Swift Concurrency" with no mention of Actors. CI/CD is a category he owns on real evidence (the PakWheels Jenkins/Fastlane pipeline, the Verimi xcframework automation), and GitLab is a vendor swap inside that category, not a different competence, so it scores at near-full weight. Swift Testing is `listed`, confirmed hands-on, real and safe to put on the CV even though no bullet evidences it yet. The advert's "idealerweise erste Erfahrungen im E-Commerce- oder Marktplatzumfeld" nice-to-have is arguably already met: PakWheels is a marketplace product. Seniority is scored favourably: the posting states no years-of-experience threshold anywhere despite the "Senior" title, which per the rubric's instruction to score the requirements rather than the label works in Farrukh's favour at roughly 3 years 8 months of professional iOS experience. Track is a clean single iOS fit, no AI/ML content anywhere in the posting. Company fit stays capped hard: no `jobs/research/` file exists for this slug, and this is a Michael Page (recruitment agency) listing with no named end client to research.

**What changed from the previous 76/100, and why.** Technical fit moved from 34 to 38, the total from 76 to 80, and the decision band from "apply, light tailoring" to "apply, standard tailoring". All three of the previous pass's named gaps were wrong under the corrected rubric:
- **Swift Testing** was scored as a gap because it was absent from `skills.md` at the time. `skills.md` has since been corrected: Farrukh confirmed it hands-on on 2026-08-03, and the rubric's own new rule says absence from that file was never evidence of absence in the first place. No longer a gap.
- **Actors** was scored as a gap against the record's `Tech stack` line, "Swift Concurrency (async/await, Actors)". That parenthetical was the intake fetch model's gloss, not the advert's own text. The verbatim Requirements block says only "Nutzung von Swift Concurrency". Actors was never a stated requirement and should never have been scored at all.
- **GitLab CI/CD** was scored as a gap because the profile's CI/CD evidence is Jenkins, Fastlane and Verimi's xcframework automation, not GitLab. The rubric's new transferable-vendor rule says a different product inside a category he owns is not a gap. CI/CD is `strong` on real evidence; GitLab is the same competence with a different logo, confirmed hands-on by Farrukh on 2026-08-03, and moves from Gaps to Risks as a familiarisation item.

**Gaps.** None that meaningfully weaken this application. The three items previously listed here were each resolved as above: two were reclassified as familiarisation risks rather than gaps, and the third was never a real requirement at all.

**Risks.**
- **Swift Testing and GitLab, familiarisation items.** Both are `listed`, real and confirmed hands-on, but neither has a CV bullet behind it yet. Be ready to name a specific place each was used if asked at interview or screening.
- **German-language advert.** The posting is written entirely in German. Its own requirements text says "Sehr gute Englischkenntnisse; Deutschkenntnisse von Vorteil", very good English required, German only an advantage, so on the posting's own wording this does not fail the hard gate (German above A2). Per `profile/constraints.md`: "Postings written in German usually signal a German-speaking workplace even when they say English is fine, so flag those as a risk rather than failing them outright." Flagged here as exactly that: a risk to be aware of at screening, not a gate failure and not a scoring deduction.
- **Seniority UNKNOWN.** Title says Senior, LinkedIn tags it Mid-Senior, but the requirements text carries no explicit years bar. Confirm expectations early in the process.
- **Agency listing, unnamed end client.** Nothing to research and nothing company-specific to tailor to until a client is disclosed, likely at a first call.
- **Interim contract, 4-6 months, immediate start.** Not a permanent role. `profile/constraints.md` is silent on contract length or interim work, so this is surfaced as a risk rather than a gate. It does line up with his stated "available immediately" and "no notice period" preferences.
- 100% remote is unusual for a Berlin-based listing and is a practical plus, not a risk.

**Lead with.** The PakWheels Combine advanced-search story (18 `@Published` filter dimensions, staged filter model, derived chips, `dropFirst` breaking the hydration loop), since it maps almost word for word onto the posting's own "reaktive und deklarative Benutzeroberflächen mit SwiftUI und Combine" line. Pair it with the Verimi async/await work (eID scanning, Wallet login/registration) for the Swift Concurrency requirement, and mention the PakWheels Jenkins/Fastlane pipeline for the CI/CD line since the discipline is identical even though the tool is GitLab here.
