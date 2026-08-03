# Skill pool

**Pick from here when tailoring. Never invent a skill that is not on this page.**

**This is the only place the pool lives.** `profile/cv-skeleton.typ` shows three sample rows so it renders, and is not a second copy to keep in sync.

## How to use this file

1. Read the posting. List the skills it actually names.
2. Take the matching entries below, most relevant first.
3. Pack them onto rows by word length, per `.claude/skills/tailor-cv/SKILL.md`: long words 1 per row, ordinary 2, abbreviations 3.
4. Stop when the CV is one page. A skills list that runs long pushes `Languages` off the page, where it renders white on white and disappears.

**Relevance beats completeness.** A posting that never mentions machine learning does not need `CNN | ViT`. Twelve well-chosen rows read stronger than seventeen exhaustive ones.

## Evidence column

`strong` means a CV bullet or a project entry already demonstrates it, so it survives an interview question.
`listed` means it is real but nothing on the CV evidences it yet. Safe to list, but be ready to say where it was used.
`ask` means it has not been confirmed. **Do not put these on a CV without asking Farrukh first.**

---

## Languages

| Skill | Evidence | Notes |
|---|---|---|
| Swift | strong | Four years, both employers. **Led the Objective-C to Swift migration at PakWheels** |
| Objective-C | strong | The codebase he migrated away from at PakWheels |
| Python | strong | RosBot controller, Bedtime Story Teller backend |

## iOS frameworks and UI

| Skill | Evidence | Notes |
|---|---|---|
| SwiftUI | strong | Both employers, plus five published packages |
| UIKit | strong | PakWheels, and the Verimi Wallet migration away from it |
| Storyboards | strong | **PakWheels. He migrated them out**, to programmatic views and view controllers. Confirmed 2026-07-31 |
| Programmatic UI | strong | Same migration, the side it moved to, then on to SwiftUI. Confirmed 2026-07-31 |
| Legacy migration | strong | **Two separate arcs at PakWheels**: Objective-C to Swift, and Storyboards to programmatic UIKit to SwiftUI. The answer to any posting that names legacy code or an existing codebase |
| Combine | strong | Confirmed 2026-08-01 and **read from the source**. PakWheels used-car advanced search: 18 `@Published` filter dimensions bound through `sink` to a staged filter model, chips derived rather than hand-maintained, `dropFirst` to break the hydration loop. **Fully evidenced, survives an interview probe.** Use this instead of the Reactive Programming row |
| async/await | strong | **Verimi: the eID scanning flows and the Wallet login and registration flow** |
| GCD | listed | **Read from source 2026-08-03**, `FarrukhRasool/pakwheels`. `DispatchQueue` across 46 files, `DispatchGroup` in 6, plus `OperationQueue` and `DispatchSemaphore`. Substantial, ordinary use throughout a codebase he worked in for two and a half years. Codebase-level evidence, not proof of authorship, so be ready to name a specific place. Answers postings that separate GCD from async/await |
| Reactive Programming | strong | PakWheels bullet |
| Accessibility | strong | The Verimi Wallet migration names it as the primary focus |
| eID card scanning | strong | **AOK and Verimi Wallet, twice.** German electronic ID verification |
| Ausweis SDK | strong | AOK identity verification flow. The official German eID SDK |
| SealOne SDK | strong | Verimi Wallet integration |
| Certificate pinning | strong | BARMER, on the TAK libraries. The only concrete secure-transport evidence on the profile |
| Core Data | strong | **Read from source 2026-08-03**, `FarrukhRasool/pakwheels`. **He added the car generation selection filter**, extending the existing model with a `CarGenerations` entity keyed to model by `mid`, with a to-many into `CarVersionSpecs`. Both files dated 17/10/2023, inside his tenure. The wider layer is a seeded SQLite store with ~17 taxonomy entities. **He did not author the stack**, `CoreDataStack.swift` is dated 2016. Claim the entity and the filter, not the layer. Full note in `experience.md` |
| UI/UX | listed | Figma portfolio link supports it |

## iOS tooling and packaging

| Skill | Evidence | Notes |
|---|---|---|
| Xcode | listed | Implied by everything, rarely worth a row of its own |
| SPM | strong | The CocoaPods to SPM migration, 40% build improvement |
| CocoaPods | strong | Same migration, the side it moved from |
| xcframeworks | strong | PakWheels modular multi-target architecture. **Verimi: automated their creation in CI**, which halved TestFlight build time |
| SDKs | strong | Built at both employers. **The Verimi identity SDK was consumed by AOK and BARMER separately**, one API against two clients |
| Fastlane | strong | PakWheels deployment automation to TestFlight and the App Store |
| TestFlight | strong | Same |
| App Store releases | strong | Same. Previously claimed by the iOS track with nothing behind it |

## Architecture and quality

| Skill | Evidence | Notes |
|---|---|---|
| Design Patterns | strong | Named in both employers' bullets |
| Singletons | strong | **He authored PakWheels' `UserManager`**, the user and session singleton for both apps. Confirmed and read from source 2026-08-03 |
| Dependency injection | strong | `@Injected` property wrapper for `ProfileAPIService` in `UserManager`. Read from source 2026-08-03 |
| Objective-C interop | strong | `@objc` methods on `UserManager` so surviving Objective-C code can call into Swift. **This is the Objective-C to Swift migration in practice**, not a claim about it |
| Session and auth management | strong | `UserManager` again: token injection into every request, logged-in versus anonymous credential paths, full login and logout lifecycle. See `experience.md` |
| UserDefaults | strong | Read-through caching over `UserDefaults` across roughly twenty session properties in `UserManager`. **Not secure storage**, read the caveat in `experience.md` |
| Multi-target builds | strong | `#if !DEALERS_APP` in `UserManager`, one session layer serving both the Classified and Dealers apps |
| MVVM | strong | StoryTeller iOS client |
| MVC | strong | **PakWheels.** Confirmed 2026-08-01. The Storyboards codebase he migrated out of was MVC, so the migration bullet evidences it directly. Postings pairing "MVC and MVVM" are common and he now answers both |
| SOLID Principles | listed | |
| Clean Code Architecture | strong | PakWheels code review bullet |
| Unit Testing | strong | Bedtime Story Teller has a real suite across api, services, integration |
| XCTest | strong | Confirmed 2026-08-01. Bullet in `experience.md`: "Wrote unit tests with XCTest covering business logic and view models." **Generic by design**, no employer or number attached, so it clears a keyword rather than proving depth. Read the limits note there before leaning on it |
| Code Reviews | strong | PakWheels bullet |

## Backend and APIs

| Skill | Evidence | Notes |
|---|---|---|
| FastAPI | strong | Bedtime Story Teller, layered routers over services over models |
| REST APIs | strong | BedTimeAPIs.swift integration layer |
| JWT auth | strong | Bedtime Story Teller, bcrypt, 30-day tokens |
| SQLAlchemy | strong | Bedtime Story Teller persistence |
| Alamofire | strong | BedTimeAPIs.swift. Also **the whole PakWheels networking stack**, read from source 2026-08-03: `AlamoreFireNetworkManager` behind a `NetworkManager` protocol, with `APIMediator`, interceptors and typed requestables over it |
| URLSession | listed | **Read from source 2026-08-03. Weak, use with care.** Exactly one use in PakWheels, `URLSession.shared.dataTaskPublisher` in `ComponentsKit`'s `ImageLoader`, which is URLSession bridged into Combine for async image loading. Real but thin. PakWheels networking goes through Alamofire, not raw URLSession. Do not present URLSession as the stack he worked in |
| WebSockets | ask | Present in StoryTeller but that file carries HeyGen's author header. **Do not claim it.** |
| OneSignal | listed | Push identity dispatch from `UserManager` on login, through a `PushNotificationServiceInfoDispatcherFactory`. Read from source 2026-08-03 |
| MoEngage | listed | Same dispatcher on login, plus logout event tracking from `UserManager` |

## AI and machine learning

| Skill | Evidence | Notes |
|---|---|---|
| Machine Learning | strong | M.Sc. plus Deep Vision coursework |
| Deep Vision | strong | ResNet50 versus Transformer comparison |
| Deep Learning | strong | Same |
| CNN | strong | Deep Vision project |
| ViT | strong | Deep Vision project |
| OpenCV | listed | In `tracks/ai-engineer.md`, HSV segmentation in RosBot supports it |
| Agent-Based Modeling | strong | Named M.Sc. project |
| SLAM | strong | RosBot, FastSLAM 2.0 with 30 particles |
| Ollama | strong | Bedtime Story Teller local inference |
| Mistral | strong | Same |
| MCP Servers | strong | Bedtime Story Teller, `/mcp/query` and `/mcp/tools` |
| TensorFlow | strong | Deep Vision, the ResNet50 versus Vision Transformer comparison |
| PyTorch | strong | Deep Vision, the ResNet50 versus Vision Transformer comparison |
| Keras | strong | Deep Vision, the ResNet50 versus Vision Transformer comparison |
| scikit-learn, NumPy, Pandas, Hugging Face, LangChain | ask | All from `tracks/ai-engineer.md`, none evidenced |

## AI development tooling

| Skill | Evidence | Notes |
|---|---|---|
| Claude | strong | Verimi SDD automation |
| Codex | strong | Same |
| SDD | strong | Verimi. Writes the spec, implements it, and reviews the code changes. Automated across Claude and Codex |
| Sub Agents | listed | |
| Plugins, Hooks | listed | |

## Delivery, monitoring and process

| Skill | Evidence | Notes |
|---|---|---|
| CI/CD | strong | **Two independent stories.** Verimi: halved TestFlight build time by automating xcframework creation, a number. PakWheels: **built the Jenkins and Fastlane pipeline** giving every PR an installable OTA build via QR code, a mechanism with a user. Lead with PakWheels when CI/CD is a responsibility, Verimi when it wants an outcome |
| Jenkins | strong | Confirmed 2026-08-01, up from `ask` in one step. **He built the PakWheels `PRBuild` pipeline**: per-PR staging IPA via Fastlane, OTA manifest, QR code posted to the GitHub PR and the Jira ticket. Authorship confirmed by Farrukh, so the verb is **built**, not used. Second CI story alongside Verimi. **Jenkins orchestrates, Fastlane builds**, verified from source |
| Firebase | strong | PakWheels A/B tests and feature flags |
| Crashlytics | strong | PakWheels held a crash-free user score above 99% |
| App stability / crash rate | strong | **Crash-free above 99% at PakWheels.** The most-requested evidence across postings so far |
| Performance optimisation | strong | 20% app launch time reduction at PakWheels |
| Modularisation | strong | Localization, Assets and Component Library extracted into frameworks |
| Mentoring | strong | Mentored and onboarded **one** junior developer at PakWheels. Say one, not several |
| Technical interviewing | strong | Conducted interviews and represented PakWheels at university job fairs |
| A/B testing | strong | PakWheels. Measured **lead conversion rate** between variants, and the results fed business decisions |
| Feature flags | strong | PakWheels |
| Git, Github | strong | |
| Jira, Confluence | listed | Added by Farrukh |
| Scrum, Kanban | strong | PakWheels bullet |
| SDLC | listed | Generic, low signal. Use only when a posting names it |
| Docker, PostgreSQL | ask | From `tracks/ai-engineer.md` only |

---

## Worth adding, pending confirmation

These come up repeatedly in postings and would be genuinely useful if true. **Ask before using any of them.**

- **Kotlin, Android.** Deliberately absent. The Kira posting said "Android, iOS or both", and it was cleared on the iOS side alone. Do not add without confirmation.
**async/await was confirmed on 2026-07-30** and is now `strong`, evidenced by the eID scanning and Wallet login flows at Verimi. It had been withheld from CVs for exactly the right reason.

**TensorFlow, PyTorch and Keras were confirmed by Farrukh on 2026-07-30** and moved from `ask` to `listed`. All three are evidenced by the Deep Vision project and are therefore `strong`. They pack onto one sidebar row as `TensorFlow | PyTorch | Keras`, 28 characters, which fits the roughly 32-character limit. TensorFlow had been withheld once already, on the BJAK application, where TensorFlow Lite was in their stack. That withholding was correct at the time and would not happen now.

**XCTest and MVC were confirmed by Farrukh on 2026-08-01.** XCTest moved from `ask` to `strong`, via
a deliberately generic bullet he asked for in `experience.md`. MVC is new to this file and goes straight in at `strong`, because the
PakWheels Storyboards codebase he migrated out of was MVC and the migration bullet already carries it.

Both had cost him something. XCTest was withheld from the Scalable Capital Senior record, which asks
for "testable" code, and MVC was withheld from the Arise CV even though their sibling Senior posting
asks for "solid knowledge of MVC and MVVM". Neither withholding would happen now.

**What XCTest is and is not.** The bullet is generic on purpose, with no employer, number or suite
structure behind it, because none was supplied. It answers a posting that asks for "testable code"
and it is true. It will not survive an interviewer asking what he tested or how it ran in CI. If a
posting puts testing at the centre, ask him for specifics rather than leaning on the generic line.

**Jenkins and Combine were confirmed by Farrukh on 2026-08-01**, both as daily development use, while
scoring the PAYBACK iOS posting that names Jenkins as its own responsibility bullet and Combine as a
daily-use technology. Jenkins moved from `ask` to `listed`. Combine was already `listed` and stays there.

He then confirmed **both were at PakWheels**, and pointed at the source in his private `pakwheels`
mirror rather than leaving the bullets generic. Both were read directly, so both are `strong` on real
evidence, not on a placeholder line.

**Combine is now one of the best-evidenced entries in this file**, better than several older `strong`
rows, because the mechanism is documented down to the `dropFirst` decision. **Jenkins is verified as a
pipeline but not as his authorship**, and the two must not be conflated.

**The lesson worth keeping: ask for the source before writing a generic bullet.** The first pass here
produced "Used Combine for reactive data flows in day-to-day feature work", which was true, weak and
would not have survived a follow-up question. Reading one file turned it into an exact, defensible
claim with a number in it. Where a repo exists, read it.

The cost of the old grades is on record: the PAYBACK score at 73 was held down partly by Jenkins
sitting at `ask` with "zero evidence" and Combine at `listed`. Jenkins in particular would have been
withheld from that CV entirely despite being real.

**Two entries were removed from this list on 2026-07-30, both now confirmed.** App Store release ownership is evidenced by the PakWheels Fastlane and TestFlight work. Crash rate ownership is evidenced by the crash-free score above 99%, which had been flagged as missing on three separate applications.
