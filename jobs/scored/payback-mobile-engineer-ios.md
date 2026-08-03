---
company: PAYBACK
role: Mobile Engineer - iOS (m/w/d)
source: linkedin
url: https://www.linkedin.com/jobs/view/4393544393/
posted: 2026-03-31
imported: 2026-08-01
location: Berlin and/or Munich, Germany
work_model: hybrid
language: both
seniority: mid
---

## Requirements
This role is a great fit for you if…
- you have experience developing scalable iOS applications
- you enjoy working on a modular iOS app and care about maintainable, clean and extensible app structures
- you like turning ideas into working code and building a great product
- you enjoy working in a team where tasks are shaped by your experience and willingness to learn
- you are open to discussing technical approaches and finding the best solution together
- you enjoy working in an agile setup and collaborating with Product Owners on stories and priorities

## Responsibilities
Your day-to-day responsibilities
- You develop new features in an agile environment using modern technologies such as SwiftUI, Combine and Swift Concurrency
- You work on scalable iOS applications and contribute your experience to the ongoing development of the app
- You actively participate in code reviews and pair programming
- You explain complex technical concepts clearly to non-technical stakeholders
- You fix bugs and analyze technical issues
- You monitor Crashlytics / Firebase, investigate anomalies and derive meaningful improvements
- You continuously improve the codebase, for example through refactoring for performance and clean code
- You maintain and improve build and deployment pipelines with Jenkins

## Tech stack
Swift, UIKit, SwiftUI, Combine, Swift Concurrency, MVVM, MVC, TCA, Swift Package Manager, Unit Tests, Modular Architectures, Crashlytics, Firebase, Jenkins

## Notes
**Language corrected 2026-08-01 after research.** The LinkedIn version of this posting is English-only, which is why intake recorded `language: english`. PAYBACK's own careers page for the same req (jobs.payback.group/en_US/careers/JobDetail/1212) states "Sprache im Team: Deutsch & Englisch" in its German-language block. The primary source is the more specific one, so `language` is now `both`. Treat as a German-exposure risk to weigh at scoring, not an automatic gate failure, per `profile/constraints.md`.

Employment type: Permanent, full-time (40 hours/week). Contract start: as soon as possible. LinkedIn listed seniority level as "Associate"; requirements text does not state a specific years-of-experience threshold, so seniority here is inferred as mid from the scope of responsibilities (feature development, code review, pipeline maintenance) rather than a stated number. Work authorisation not mentioned in the fetched posting; not asserting it either way, left out of front matter as this schema has no dedicated field, but scorer should treat as UNKNOWN if relevant.

## Raw
<details>
**Company Name:** PAYBACK

**Role Title:** Mobile Engineer - iOS (m/w/d)

**Location:** Berlin and/or Munich, Germany

**Work Model:** Onsite/Hybrid (Berlin and/or Munich locations offered)

**Posting Language:** English

**Seniority Level:** Associate

**Full Requirements Text (Verbatim):**
"This role is a great fit for you if…
- you have experience developing scalable iOS applications
- you enjoy working on a modular iOS app and care about maintainable, clean and extensible app structures
- you like turning ideas into working code and building a great product
- you enjoy working in a team where tasks are shaped by your experience and willingness to learn
- you are open to discussing technical approaches and finding the best solution together
- you enjoy working in an agile setup and collaborating with Product Owners on stories and priorities"

**Full Responsibilities Text (Verbatim):**
"Your day-to-day responsibilities
- You develop new features in an agile environment using modern technologies such as SwiftUI, Combine and Swift Concurrency
- You work on scalable iOS applications and contribute your experience to the ongoing development of the app
- You actively participate in code reviews and pair programming
- You explain complex technical concepts clearly to non-technical stakeholders
- You fix bugs and analyze technical issues
- You monitor Crashlytics / Firebase, investigate anomalies and derive meaningful improvements
- You continuously improve the codebase, for example through refactoring for performance and clean code
- You maintain and improve build and deployment pipelines with Jenkins"

**Tech Stack Mentioned:**
Swift, UIKit, SwiftUI, Combine, Swift Concurrency, MVVM, MVC, TCA, Swift Package Manager, Unit Tests, Modular Architectures, Crashlytics, Firebase, Jenkins

**Employment Type:** Permanent, full-time (40 hours/week)

**Contract Start:** As soon as possible
</details>

## Score

**Total: 81 / 100 — APPLY.** Rescored 2026-08-01, up from 73.
Track: ios-developer
Band: **78 to 87, standard tailoring**, under the rubric recalibrated 2026-08-03.

**Band relabelled 2026-08-03, total unchanged.** `.claude/skills/fit-score/SKILL.md` was recalibrated
that day. The five dimensions and their weights did not change, so **81 stands and remains directly
comparable to every score in the pipeline**. Only the label moved: 81 previously read as "75 plus,
tailor hard, worth two hours" and now reads as "78 to 87, standard tailoring", because 75 plus turned
out to be the ordinary result for a decent iOS posting rather than an exceptional one.

This is retrospective bookkeeping. The application was **submitted on 2026-08-03** and the tracker row
is `applied`, so no decision depends on it. It matters only so the stored numbers stay consistent for
the outcome-calibration step.

| Dimension | Original | Now |
|---|---|---|
| Technical fit | 26/40 | **34/40** |
| Seniority fit | 17/20 | 17/20 |
| Track clarity | 15/15 | 15/15 |
| Company fit | 8/15 | 8/15 |
| Application quality | 7/10 | 7/10 |
| **Total** | **73** | **81** |

**Why it moved, and why only this dimension.** The original 26/40 was held down by three named gaps.
Two were then closed on evidence, not on assertion: Farrukh confirmed Combine and Jenkins, pointed at
his private `pakwheels` mirror, and both were **read from source**. Combine turned out to be deeply
evidenced (18 filter dimensions, derived chips, `dropFirst` to break the hydration loop) and Jenkins
turned out to be **authored, not merely used**, which answers a whole responsibility bullet on this
posting rather than a keyword. Of the fourteen technologies PAYBACK names, thirteen are now evidenced.

Technical fit stops at 34 rather than going higher because **TCA is still genuinely absent** and there
is no depth signal beyond four years. **Company fit deliberately does not move**: the four-month-open
posting, the unresolved login bug and the absent engineering culture are unchanged by anything learned
about Farrukh. Nothing here was inflated to cross a band, and the decision was already APPLY at 73, so
this changes queue order rather than the outcome.

**Original rationale is preserved below as history.** It describes the pre-2026-08-01 state and should
be read as a record of what was known then, not as a current assessment.

**Why this score.** The core stack is an unusually complete match: Swift, UIKit, SwiftUI, Swift Concurrency (async/await), MVVM, MVC, SPM and Crashlytics/Firebase are all `strong` in `skills.md`, and the "modular iOS app" ask lines up almost exactly with the identity SDK maintained separately for AOK and BARMER plus the xcframework/Component Library extraction at PakWheels, sharpened further by the sibling Android posting's disclosed "50+ module" app detail. That is a genuinely strong technical overlap. It is held down from the 35-40 band by three named, day-to-day items with real gaps: Combine is only `listed` (claimed generically as reactive programming, never evidenced by name), Jenkins is `ask` (zero evidence, and it is an explicit bullet-point responsibility, not just a tech-stack keyword), and TCA (The Composable Architecture) does not appear on the skill pool at all. Seniority is a clean match: no stated years threshold, "Associate" tag, and the responsibility scope (feature work, code review, explaining concepts to stakeholders) sits comfortably inside four years' experience. Track is unambiguous, pure iOS, no AI or ML angle anywhere in the text. Company fit is capped down from what the research brief's positives alone would suggest (stable AmEx-owned business, 20-year Top Employer streak, Berlin office purpose-built for this exact hire, active shipping including the June 2026 AI-search feature) by the Concerns section, which the rubric says to weigh hard: the posting has been open over four months, App Store reviews show a persisting unresolved login bug as of this week, and there is essentially no public engineering culture (no blog, no talks, one unrelated public repo) to verify day-to-day practice against.

**Gaps.**

> **Closed 2026-08-01, after scoring.** Farrukh confirmed he used **Jenkins and Combine daily, both at
> PakWheels**. Both are now `strong` in `profile/skills.md` with generic bullets in `experience.md`.
> **Two of the three gaps below are closed.** Both belong on the CV sidebar and both can carry their
> bullet. Neither carries a mechanism or a number, so do not build letter prose on them and do not
> imply depth. The score stays at 73 and the decision stays APPLY, since only technical fit moves and
> not far enough to change the band.

- **TCA (The Composable Architecture)** is named in the tech stack and is not on the skill pool at all, not even at `ask`. A real architectural framework gap, not a keyword-matching one; if asked about it directly, the honest answer is "not yet." **This is now the only untouched gap of the three.**
- ~~**Jenkins**~~ **CLOSED, and it is now the strongest answer on the posting.** PAYBACK's bullet reads "maintain and improve build and deployment pipelines with Jenkins". Farrukh **built** the PakWheels `PRBuild` pipeline, confirmed 2026-08-01: per-PR staging IPA via Fastlane, OTA manifest, QR code posted into the GitHub PR and the Jira ticket. He does not merely maintain a Jenkins pipeline, he has written one end to end. This went from the most exposed gap in the score to a lead-with fact in a single exchange.
- ~~**Combine**~~ **CLOSED, and now a strength rather than a patch.** Named as one of the "modern technologies" used daily here. Read from source on 2026-08-01: the PakWheels used-car advanced search binds 18 `@Published` filter dimensions through Combine to a staged filter model, derives the chips instead of hand-maintaining them, and uses `dropFirst` to stop hydration retriggering its own listeners. **This is a lead-with fact for PAYBACK specifically**, since their app is a coupon and partner browser whose whole surface is filtering and selection. Name Combine, not "Reactive Programming".
- No stated years-of-experience threshold means the seniority match is inferred from scope, not confirmed against a number.

**Risks.**
- **Team language is German and English, per the primary source, not English-only as LinkedIn's version implies.** This is the single judgement call that matters most here. It is **not** treated as a hard gate failure, for three reasons: the actual requirements, responsibilities and tech-stack text is written entirely in English on both LinkedIn and PAYBACK's own careers page (the research brief confirms it is "identical text to the LinkedIn import"); the line itself says "Deutsch **und** Englisch," a genuinely bilingual team language, not a German-only posting; and no specific German proficiency level is stated anywhere. Per `profile/constraints.md`, postings *written* in German signal a German-speaking workplace and should be flagged; this posting is written in English throughout, with only the German-language rendering of the page carrying that one line about team language. That said, it is a real risk, not a formality to wave away: an explicit "German and English" team-language statement (as opposed to boilerplate "English is our working language") suggests German may surface in meetings, Slack, or code-review comments with colleagues who default to it. Flag this directly if a screening call happens; do not claim comfort beyond A2.
- **Persistent, unresolved iOS login bug** reported in multiple 1-star App Store reviews dated 31 July 2026, roughly seven weeks unresolved as of this research. A real, current production issue on the exact platform this role owns.
- **Posting open since 31 March 2026, over four months.** Somewhat mitigated by a near-identical Android req opened the same day (reads as planned team growth rather than a single hard-to-fill seat), but still worth asking about directly at interview.
- **No engineering blog, no conference talks, effectively no open-source output.** Claims about day-to-day engineering practice beyond the posting text itself are thin and unverifiable.
- **"Digital Sales Trinity" org structure and a wider Java/Spring/GCP/React stack could not be verified** (source page returns expired) and must not be used as fact in the CV or letter.

**Lead with, revised 2026-08-01.** Three facts now answer this posting almost line for line, and the
order matters:

1. **The Jenkins pipeline he built.** PAYBACK gives "maintain and improve build and deployment pipelines with Jenkins" its own responsibility bullet, and almost no iOS candidate can answer it with authorship. Per-PR staging IPA via Fastlane, OTA manifest, QR code into the GitHub PR and the Jira ticket.
2. **The Combine filter work.** Answers "modern technologies such as SwiftUI, Combine and Swift Concurrency" with a mechanism instead of a keyword, and it is unusually on-point for PAYBACK, whose app is a coupon and partner browser built almost entirely on filtering and selection.
3. **The modular-architecture and SDK story**, below, for "modular iOS app... maintainable, clean, extensible".

**Lead with.** The modular-architecture and SDK story: the Verimi identity SDK maintained separately for AOK and BARMER (one API surface, two enterprise clients, neither controlled), paired with the xcframeworks, Localization/Assets/Component Library extraction and the CocoaPods-to-SPM migration (40% build improvement) at PakWheels. That answers "modular iOS app... maintainable, clean, extensible app structures" directly, and it lines up sharply with the sibling Android posting's disclosed "50+ module" detail even though this iOS posting only says "modular architectures." Follow with the 99%+ crash-free score and Firebase A/B testing for the "monitor Crashlytics/Firebase, investigate anomalies" line. Do not overreach on TCA, now the only real gap. Jenkins and Combine were confirmed on 2026-08-01 and both belong on the sidebar with their bullets, but both bullets are deliberately generic, so keep them out of the letter prose where a claim of depth would be implied.
