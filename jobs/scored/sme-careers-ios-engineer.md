---
company: SME Careers (SuperAnnotate)
role: iOS Engineer (Swift and Objective-C)
source: linkedin
url: https://www.linkedin.com/jobs/view/4424721819/?alternateChannel=search&eBP=NON_CHARGEABLE_CHANNEL&refId=m6gYlTNQ%2BH2qvxe3HpCEWw%3D%3D&trackingId=tMpiQ%2BgMyYtkWGm%2BTkroqw%3D%3D
posted: UNKNOWN
imported: 2026-08-03
location: UNKNOWN
work_model: remote
language: english
seniority: mid
---

## Requirements

**Education & Experience:**
- Bachelor's degree or higher in Computer Science, Software Engineering, or closely related technical field (or equivalent practical experience)
- 4+ years of professional experience building production iOS applications in Swift and Objective-C codebases

**Technical Skills:**
- Expert-level Swift proficiency (Swift 5+): value/reference semantics, generics, protocols, error handling, modern language features
- Strong iOS fundamentals: app lifecycle, view/controller architecture, navigation, state management, background execution constraints
- Concurrency experience: GCD, OperationQueue, async/await patterns; race condition and thread-safety reasoning
- ARC and iOS memory patterns (retain cycles, weak/unowned, leak detection via Instruments)
- Networking and data: URLSession, JSON parsing, caching, retries, offline strategies, persistence (Core Data/SQLite/Realm)
- Testing and quality: XCTest, UI testing, mocking strategies, CI/CD (Fastlane preferred), App Store release practices
- Security awareness: Keychain, transport security, auth flows, privacy permissions, sensitive data handling
- Minimum C1 English proficiency (written and spoken) with ability to write clear technical explanations

**Preferred:**
- Previous experience with AI data training, annotation, or evaluating AI-generated technical content
- Detail-oriented, systematic approach to evaluating reasoning quality and identifying subtle iOS code issues

## Responsibilities

- Develop AI training content by creating detailed prompts across iOS topics and writing high-quality reference answers to guide AI learning
- Optimize AI performance through evaluating and ranking AI responses to enhance correctness, security, performance, and maintainability
- Ensure model integrity by testing AI outputs for inaccuracies or unsafe recommendations, validating reliability across real-world iOS use cases

## Tech stack

Swift 5+, Objective-C, GCD, OperationQueue, async/await, ARC, Instruments, URLSession, Core Data, SQLite, Realm, XCTest, UI testing, Fastlane, CI/CD, Keychain

## Notes

- This is not a standard production-iOS-development job. The responsibilities describe AI training data / RLHF-style work: writing prompts about iOS topics, evaluating and ranking AI-generated responses, and testing AI outputs for correctness. It uses iOS/Swift expertise as the qualifying skill but the day-to-day is data annotation and evaluation, not shipping an app. Score and tailor with that distinction in mind.
- "SME Careers" is confirmed (via web search) to be the subject-matter-expert hiring brand of SuperAnnotate, a real AI data-annotation company (backed by NVIDIA Ventures, Databricks). This is not an agency posting for an anonymous, unnamed client, it names its own operating brand, but confirm during `/research` whether the actual engagement is a direct hire or a contractor/hourly arrangement.
- Likely hourly-paid contract work rather than a standard employment role. The posting content gives no detail on contract type, hours, or duration. Flagging for `/research` and `/score` to check before assuming this is a normal full-time role.
- `posted`: LinkedIn displayed a relative "2 weeks ago" at fetch time (2026-08-03), which would put it around 2026-07-20, but no exact date was in the fetched content, so left as UNKNOWN rather than back-calculating.
- `location`: the fetch surfaced an unsupported claim of "Germany (Berlin)" that could not be traced to any actual text in the URL or page content, so it is recorded as UNKNOWN rather than guessed. `work_model: remote` was explicitly stated and is reliable.
- Work authorisation: not mentioned anywhere in the fetched content. UNKNOWN.
- Language: explicitly English-only posting, with a stated minimum C1 English requirement. No German requirement mentioned.

## Raw

<details>
Extracted via WebFetch (page rendered without a login wall):

Company Name: SME Careers
Role Title: iOS Engineer (Swift and Objective-C)
Location: Germany (Berlin mentioned in URL) [unverified, see Notes]
Work Model: Remote
Seniority Level: Mid-Senior level
Posted Date: 2 weeks ago
Language of Posting: English

Key Responsibilities:
- Develop AI training content by creating detailed prompts across iOS topics and writing high-quality reference answers to guide AI learning
- Optimize AI performance through evaluating and ranking AI responses to enhance correctness, security, performance, and maintainability
- Ensure model integrity by testing AI outputs for inaccuracies or unsafe recommendations, validating reliability across real-world iOS use cases

Requirements:
Education & Experience:
- Bachelor's degree or higher in Computer Science, Software Engineering, or closely related technical field (or equivalent practical experience)
- 4+ years of professional experience building production iOS applications in Swift and Objective-C codebases

Technical Skills:
- Expert-level Swift proficiency (Swift 5+): value/reference semantics, generics, protocols, error handling, modern language features
- Strong iOS fundamentals: app lifecycle, view/controller architecture, navigation, state management, background execution constraints
- Concurrency experience: GCD, OperationQueue, async/await patterns; race condition and thread-safety reasoning
- ARC and iOS memory patterns (retain cycles, weak/unowned, leak detection via Instruments)
- Networking and data: URLSession, JSON parsing, caching, retries, offline strategies, persistence (Core Data/SQLite/Realm)
- Testing and quality: XCTest, UI testing, mocking strategies, CI/CD (Fastlane preferred), App Store release practices
- Security awareness: Keychain, transport security, auth flows, privacy permissions, sensitive data handling
- Minimum C1 English proficiency (written and spoken) with ability to write clear technical explanations

Preferred:
- Previous experience with AI data training, annotation, or evaluating AI-generated technical content
- Detail-oriented, systematic approach to evaluating reasoning quality and identifying subtle iOS code issues
</details>

## Score

**Re-scored 2026-08-03, replacing the 69/100 pass from earlier the same day.** The profile changed
substantially in between: `Core Data` moved to `strong`, `GCD` moved to `listed`, `URLSession` was
confirmed real but thin, `Keychain` went from an assumed gap to a source-contradicted, confirmed
gap, and `UserManager` (session/auth architecture, Objective-C interop, DI, singletons, UserDefaults,
multi-target builds) entered the profile as eight new rows. `profile/tracks/ios-developer.md` was also
rewritten to lead with paid production work. This block replaces the old one outright, nothing here
was carried forward from the 69.

**Total: 70 / 100 — Apply, light tailoring**
Track: ios-developer

| Dimension | Score |
|---|---|
| Technical fit | 33/40 |
| Seniority fit | 19/20 |
| Track clarity | 10/15 |
| Company fit | 7/15 |
| Application quality | 7/10 |

Raw sum: 76/100. **The location-`UNKNOWN` cap at 70 now actively binds**, where in the first pass it
did not (69 was already under 70). The decision band is unchanged either way: 76 and 70 both sit in
"65 to 77, Apply, light tailoring", so the cap costs 6 points but not a band. Still worth stating
plainly per the rubric: this is a capped number, not a skip.

### Before and after

| Dimension | Before | After | Moved because |
|---|---|---|---|
| Technical fit | 27/40 | 33/40 | Core Data closed from a named gap to `strong`. GCD moved from unevidenced to `listed`. URLSession moved from unevidenced to `listed`-but-explicitly-thin. `UserManager` added session/auth architecture, Objective-C interop, DI, singletons and multi-target evidence that directly answers "iOS fundamentals" and "auth flows". Keychain moved from an assumed gap to a confirmed one, no point value change but no longer ambiguous. Instruments unchanged, unverifiable by nature |
| Seniority fit | 19/20 | 19/20 | No change. Years of experience did not move |
| Track clarity | 10/15 | 10/15 | No change. This is a property of how the posting's ask maps onto a track template, not of evidence depth, and the posting's shape did not change |
| Company fit | 7/15 | 7/15 | No change. Scored from the research brief, which was not touched by this update |
| Application quality | 6/10 | 7/10 | The letter now has source-verified specifics to hang on the posting's own named topics (the `CarGenerations` entity, the exact `UserManager` mechanics, the GCD file counts) rather than generic claims. Still short of a full 8-10 because no single project maps onto "grade AI-generated iOS answers" |
| **Total (raw)** | **69** | **76** | Sum of the above |
| **Total (after cap)** | **69** | **70** | UNKNOWN-location cap at 70 now binds, where before the raw sum already sat under it |

**Hard gates.** Language clears: English-only posting, C1 required, confirmed C1 on file, no German requirement anywhere. Hard-no list: empty, not applicable. Location is `UNKNOWN`: no country or region restriction was found in the posting or the research brief, only `work_model: remote` is verified. Per the `fit-score` skill, an `UNKNOWN` gate field does not fail, it caps the total at 70 and gets flagged as a risk to confirm. Unlike the first pass, the raw sum this time (76) sits **above** that cap, so the cap now does real work bringing the total down to 70. The decision label does not move, since 76 was already inside the "65 to 77" band, but the number on the record is 70, not 76, and that is the cap operating as intended rather than generosity.

**This posting still does not map cleanly onto the rubric, and that is unchanged.** The stack named (Swift 5+, Objective-C, GCD, ARC, URLSession, Core Data/SQLite/Realm, XCTest, Fastlane, Keychain) is the *domain being assessed*, not the work performed. The actual job, per the Responsibilities section, is writing prompts and reference answers about iOS topics, ranking AI-generated answers, and testing AI outputs for correctness and safety. Technical fit below is scored against what that work actually needs: broad, credible iOS judgement good enough to write a reference answer and catch a subtle wrong one, not a shipped feature that matches each named framework line for line.

**Why this score.**
- **Technical fit (33/40, up from 27).** Swift and Objective-C remain `strong` (the migration he led is exactly the kind of before/after opinion this role wants). async/await, XCTest (generic), Fastlane, CI/CD and App Store release all remain `strong`, unchanged from the first pass. The real movement: **Core Data is now `strong`**, evidenced by the `CarGenerations` entity he added to ship the generation filter, dated inside his tenure. That closes the single largest named gap from the first pass outright, though the honest claim stays scoped to the entity and the filter, not the wider Core Data stack, which predates him by six years. **GCD moved from unevidenced to `listed`**: `DispatchQueue` across 46 files, `DispatchGroup` in 6, plus `OperationQueue` and a `DispatchSemaphore`, which is codebase-level evidence rather than a specific authored bullet, so it earns half credit rather than full. **URLSession is now confirmed real but thin**: exactly one use, `URLSession.shared.dataTaskPublisher` inside an image loader, with Alamofire carrying the actual networking stack. That is genuine but narrow, scored as `listed` rather than treated as depth he can defend under a probe. **`UserManager` is the other substantial addition**: session and auth management, Objective-C interop via `@objc`, dependency injection, singletons, UserDefaults and multi-target builds all move to `strong`, and together they answer the posting's "state management", "auth flows" and "app lifecycle / architecture" lines with a real authored mechanism rather than an inference from years of experience. Set against all that, real gaps remain and are now firmer rather than vaguer: **Keychain is a confirmed absence**, not an assumed one, since it was claimed and then directly contradicted by the source (`UserManager` stores tokens in `UserDefaults`, no Keychain call anywhere in a 6,850-file sweep). **Instruments-based leak detection stays unevidenced and is unverifiable by its nature.** Realm, UI testing and mocking strategies, and privacy-permissions handling are still not evidenced anywhere in `skills.md`. That is still a real, if narrower, list of specific named topics that would not survive a technical screen probing them directly.
- **Seniority fit (19/20, unchanged).** 4+ years professional iOS is the ask, Farrukh has roughly that, and it sits in the 3-6 year band the rubric scores highest. No over-qualification cap applies. Nothing in the profile update touched years of experience, so this holds.
- **Track clarity (10/15, unchanged).** The credentialing requirement is still 100% iOS, the AI side is still only "Preferred" annotation experience with no ML or LLM work named anywhere in the posting, and iOS Developer is still the honest single-track call. This dimension scores the shape of the posting against a track template, not the depth of evidence behind it, so the profile update does not move it: the role still asks him to evaluate rather than ship, and the letter still has to build that reframe rather than point at a one-line match.
- **`PRIORITY-both` does not apply, tested explicitly rather than defaulted.** Evaluating AI-generated iOS answers using iOS judgement is a real overlap, but it is not the on-device ML / Core ML / camera-pipeline kind of overlap the flag exists for, where the dual profile is what gets built. Nothing is being built here. Scored as a single iOS-track posting, same conclusion as the first pass.
- **Company fit (7/15, unchanged).** Scored from `jobs/research/sme-careers-ios-engineer.md`, which this re-score did not touch. SuperAnnotate is a real, funded company (Series B extension to $50M total, July 2025, Databricks and Canva named as customers), but this posting sits on SME Careers, the expert-marketplace arm, and the brief could not confirm scaling, roster, or reporting line since both the Lever board and sme.careers listings were unreachable. The work itself is annotation and evaluation labour, not engineering, which is exactly what the rubric weighs down under Company fit.
- **Application quality (7/10, up from 6).** The angle from the first pass still holds: code review, mentoring, technical interviewing and the crash-free score above 99% all point at someone who already spends part of his job assessing whether code is good, which is a genuine non-generic angle for a role built around judging AI-written iOS answers. What moved is the depth of material behind that angle: the letter can now point at the exact `CarGenerations` entity and the dated files behind it, the specific `UserManager` mechanics (token injection, credential-path switching, the login/logout lifecycle), and the GCD file counts from the repo sweep, rather than years-of-experience assertions. That is more defensible, source-backed specificity to work with, though still short of a single project that maps directly onto "grade this AI output," which keeps it off the 8-10 band.

**Gaps.**
- **Keychain is now a confirmed genuine gap, not an assumed one.** It was claimed on 2026-08-03 and then directly contradicted by the source: `UserManager` stores every token in `UserDefaults`, and a full 6,850-file repo sweep found no Keychain call anywhere. This must not reach the CV or the letter, and if a screen asks about secure credential storage, the honest answer is that he has seen this exact anti-pattern in production and knows why Keychain is the right home for it.
- **Instruments-based leak detection remains unevidenced and is unverifiable from source by its nature**, since it is a profiling tool and leaves no trace in code. If a screen puts memory profiling at the centre, ask Farrukh directly rather than assuming four years of iOS work covered it.
- Realm, UI testing, mocking strategies, and privacy-permissions handling are still not evidenced anywhere in `skills.md`.
- URLSession is real but thin: one use, bridging into Combine for image loading, with Alamofire carrying the actual networking stack. Do not let a CV or letter imply he worked in raw URLSession day to day.
- No evidenced AI data-training, annotation, or RLHF-style evaluation experience. Only "Preferred," not required, but it is the thing the job actually is.
- Objective-C evidence is strong but is now reinforced two ways: the migration away from it, and the `@objc` interop surface inside `UserManager` that let surviving Objective-C call into Swift. Both are migration-era evidence rather than recent greenfield Objective-C, worth knowing before a screen probes on "current" fluency.

**Risks.**
- **Location is `UNKNOWN`.** Neither the posting nor the research brief found a country or region restriction, only `remote` is confirmed. `profile/constraints.md` does not gate on location within Europe, the USA, Canada or Australia, but the field still needs resolving, ideally during any screening contact, before assuming this is open to him. This is also the cap that is now actively reducing the score, from 76 to 70, so confirming it is worth more here than in most records.
- **Employment model is unverified and may be hourly contractor work.** Every lead in the research brief (SUMMARY-grade only, no primary source) points to project-based gig work paid via Deel rather than salaried employment. Not a scoring input and not a hard gate, per the brief's own instruction, but a decision Farrukh should walk in with eyes open about.
- Posting age is unknown, and two of the company's own primary sources (Lever board, sme.careers listings) were unreachable during research, so there is no visibility into whether this role, or the wider SME Careers iOS cohort, is still active.

**Lead with.** iOS Developer track, unchanged. Lead with the Objective-C to Swift migration and the `UserManager` session/auth architecture, which now gives a concrete authored mechanism for "auth flows" and "state management" rather than a generic years-of-experience claim, alongside the crash-free-above-99% and code-review record. Pair with the `CarGenerations` Core Data entity to answer the persistence line directly, and the certificate-pinning and eID/Ausweis SDK work from Verimi for security awareness. Name the GCD file-count evidence if a screen pushes on concurrency, but do not claim depth on Instruments, Realm, or raw URLSession beyond what is written above, and do not let Keychain appear anywhere in the application.
