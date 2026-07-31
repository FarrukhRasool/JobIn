# Employment record

**Pull from here when tailoring. This is where employment content lives.** The skeleton holds only the employer names and dates.

`projects.md` covers academic and personal work. This file covers paid employment, which is what most postings weigh heaviest.

Where a fact is not yet confirmed it is marked `TODO`. **A `TODO` must never reach a CV or a letter.** Ask Farrukh instead.

**As of 2026-07-30 there are none.** Both employers are fully documented. Any new `TODO` added here is a genuine gap, not leftover scaffolding.

## Read this before copying any line out of here

The PakWheels achievements below were supplied by Farrukh on 2026-07-30 in his own CV phrasing. **The facts are his and are authoritative. The wording is not usable as written.** It carries the exact patterns `.claude/skills/human-voice/SKILL.md` exists to remove: "Spearheaded", "Played a crucial role", "fostering their professional growth", "seamless user experience", "high-impact", and "significantly" four times over.

Take the fact, drop the packaging. "Spearheaded the development and enhancement of mobile applications, delivering high-impact features" becomes "Built features for the Classified and Dealers apps". Shorter, and it says more.

---

## Verimi GmbH, iOS Developer

**July 2025 to present.** Berlin-based identity and wallet company.

**Contract type: working student.** Per `.claude/skills/tailor-cv/SKILL.md`, the qualifier goes on the role line only for student, Werkstudent, internship or dual-study postings. Ordinary professional postings get the plain `IOS Developer` line.

**Sells** iOS Developer, regulated fintech, identity, enterprise SDK work, AI tooling

**Hook.** Ships features into two of Germany's largest health insurance apps, AOK and BARMER, both used by millions of people, while building the SDKs that carry identity verification into other companies' apps.

### Confirmed

**Enterprise identity SDKs.** Built the SDKs powering identity verification flows for enterprise clients. The strongest available evidence of working inside someone else's app rather than owning the whole stack, which is a distinct and more constrained kind of engineering.

**Consumed by AOK and BARMER, separately.** Detail supplied 2026-07-30. Both German insurers integrated the same SDK, and **maintaining one SDK against two clients was the actual difficulty.** That is the interesting engineering problem here, not the verification itself: one API surface, two host apps with different conventions, different release cycles and different demands, and no ability to change either of them.

Use this for anything mentioning SDK work, platform teams, API design, multi-tenant products, or backwards compatibility. It answers "have you built something other engineers depend on" with a concrete yes, and the constraint is what makes it worth telling.

**AOK and BARMER.** Developed features on two of the largest German insurance iOS apps, both with millions of live users. The closest thing on the profile to consumer-scale regulated product work, and the most reusable fact for any insurance, health or fintech posting.

Detail supplied by Farrukh on 2026-07-30. **This closes the longest-standing gap on the profile.** The bullet had been named the strongest available on three applications while saying only "developed features".

*AOK:*
- Built the **identity verification flow with eID card scanning**, in SwiftUI, using the **Ausweis SDK** and **async/await**
- Added video widgets across several screens
- Built new screens

*BARMER:*
- Migrated the codebase from **UIKit to SwiftUI**, one of two apps he migrated
- Integrated the **Design Component SDK built by the BARMER team**, not the one he built at Verimi
- Implemented **certificate pinning** for the TAK libraries
- Bug fixes

*Verimi Wallet:*
- Built the **entire login and registration flow**, using **async/await**
- Integrated the **SealOne SDK**
- Implemented **eID scan verification**

**The specialism worth naming.** German **eID card scanning appears twice**, on AOK and on Verimi Wallet, using the official **Ausweis SDK**. That is government-grade identity verification in a regulated German product, done twice, and almost nobody applying for a German fintech or health role can say it. Lead with it for anything touching identity, KYC, onboarding or regulated data.

**async/await is evidenced now.** Supplied 2026-07-30: used in the eID scanning flows and in the Verimi Wallet login and registration flow. It had been on the BJAK CV sidebar with no bullet behind it, which `applications/bjak-ios-developer/notes.md` flagged at the time. That gap is closed, and it is a natural fit, since card scanning and login are exactly the kind of long-running asynchronous work the feature exists for.

**Certificate pinning is the other underused fact.** It is concrete evidence of secure-transport work, and every fintech and health posting so far has asked about secure data handling while the CV could only answer in generalities.

**UIKit to SwiftUI, on two apps.** Migrated both **BARMER** and **Verimi Wallet**, with accessibility and user experience as the stated primary focus on the Wallet. Accessibility as a *deliberate* migration goal is unusual and worth naming, since most migrations are framed purely as modernisation.

Two production apps migrated, not one. Pair it with **leading the Objective-C to Swift migration at PakWheels** and there is a genuine three-app modernisation theme, which is a stronger story than any single migration.

**Design Component SDK, Verimi's own.** Built with designers, increasing development speed and consistency across the apps. **Adopted by the Verimi Wallet app and by AOK**, so it shipped in two production apps rather than staying internal. Note this is an **SDK**, not a "Library". Corrected by Farrukh on 2026-07-30. It pairs with the PakWheels Component Library framework as a consistent theme.

**Distinct from BARMER's Design Component SDK**, which their team built and he integrated. See the resolution note below. Do not merge the two.

**Automated Spec-Driven Development across multiple LLMs.** Automated SDD for iOS across Claude and Codex to accelerate feature delivery.

**What it actually does**, supplied 2026-07-30: writes the spec, implements against that plan, and reviews the resulting code changes. A full loop rather than autocomplete, and the review stage is the part most people do not have. Unusually valuable right now: postings increasingly ask for daily experience with Claude Code, Codex, Cursor or Copilot as a *requirement*, and this answers it as employment rather than as a hobby. It carried the Dexter Health application almost single-handedly.

**CI/CD pipelines. Halved TestFlight build time by automating xcframework creation.** Supplied 2026-07-30. The mechanism matters as much as the number: the saving came from automating how the frameworks themselves get built, not from tuning a build server.

That makes it **platform work rather than devops**, and it pairs directly with the xcframework architecture he built at PakWheels. Use the mechanism whenever a posting mentions build systems, developer tooling or modularisation, and the bare number when it does not.

Pair it with the PakWheels 40% build improvement and there is a build-performance theme across both employers, each with a measured outcome.

### Open questions

**None.** Every Verimi question was answered on 2026-07-30 and is written up above.


**Team of three.** Small team, supplied 2026-07-30. Worth stating plainly, because at three people the surface area per engineer is large and it explains how one person covers SDK work, two app migrations, CI/CD and the SDD automation. It answers "comfortable owning work with limited handholding" with structure rather than assertion.

### Both conflicts resolved, 2026-07-30

**The UIKit to SwiftUI migration covered two apps, BARMER and Verimi Wallet.** Nothing on the four sent CVs is wrong. `Migrated the Verimi Wallet app from UIKit to SwiftUI` was accurate, only incomplete. **Two apps is the stronger claim** and should be used from here on.

**There are two separate Design Component SDKs, and only one is his.**

| SDK | Owner | His part |
|---|---|---|
| Verimi's | Verimi | **Built it**, with designers |
| BARMER's | The BARMER team | **Integrated it** into the BARMER app |

Both are usable and they say different things. Building is the stronger claim and belongs in the Verimi bullet. Integrating someone else's design system is its own signal, since it means working inside a client's constraints rather than your own. **Never merge them into one bullet**, and never let a letter imply he built BARMER's.

### Honest limits

- Identity and wallet work is **adjacent to** payments, claims and renewals, not the same as them. Three applications have had to hedge this. Do not let a letter imply payment rails experience.
- No quality metric is evidenced at Verimi. PakWheels now has a crash-free number, which makes the absence here more noticeable, not less.

---

## PakWheels, iOS Developer

**August 2022 to March 2025.** Pakistan's biggest marketplace for buying and selling cars, covering millions of live users. **Full time**, and the role line never carries a working student qualifier.

**Sells** iOS Developer, consumer scale, marketplace product, app quality and performance, build tooling, modular architecture, mentoring and hiring

**Hook.** Two and a half years on a consumer marketplace with millions of live users, holding a crash-free user score above 99% while cutting app launch time by 20% and build times by 40%.

### Confirmed

Detail supplied by Farrukh on 2026-07-30. Phrasing needs rewriting per the note at the top of this file.

**Two apps: Classified and Dealers.** Built features and design improvements for both. Name them. "Two production apps" is concrete where "mobile applications" is not.

**Scale, supplied 2026-07-30.** Classified has **millions** of users, Dealers has **thousands**. Worth saying both, because they are different products: Classified is the consumer marketplace, Dealers is the B2B tool the trade uses. Thousands of dealers is a large share of a national car trade, not a small number. Shipping to a consumer app and a professional one in the same role is a broader claim than either alone.

**Led the Objective-C to Swift migration.** Modernised the codebase for performance and maintainability. This is the largest single piece of work on the profile and it was not on the CV at all before today. It is *led*, not participated in, and it evidences Objective-C, which until now was listed with nothing behind it.

**Introduced SwiftUI to the codebase.** Not just used it, introduced it. Being the person who brings a framework into a production codebase is a different and stronger claim than having worked with it.

**Migrated the UI layer in two stages: Storyboards to programmatic UIKit, then UIKit to SwiftUI.** Supplied by Farrukh on 2026-07-31. This is the detail behind "introduced SwiftUI", and it is stronger than the summary line suggests. He did not arrive at a SwiftUI codebase, he moved one there from Storyboards, replacing them with programmatic views and view controllers first, then migrating those to SwiftUI.

Two things make this worth leading with. It evidences **Storyboards** and **programmatic UIKit** as hands-on experience, neither of which was anywhere on the profile before. And it is a complete modernisation arc on a live consumer app, done in stages rather than a rewrite, which is the pattern any long-lived UIKit codebase actually needs.

**Use this for any posting that names Storyboards, MVC, legacy code, or "maintaining an existing codebase".** Those postings usually read as a warning about the work. This is the direct answer to them: he has taken that exact codebase shape forward twice, on a product with millions of users, without stopping delivery. Paired with the Objective-C to Swift migration it is two independent modernisation efforts on the same app, one at the language level and one at the UI layer.

**Fastlane, TestFlight and App Store.** Streamlined deployment with Fastlane integration for faster, more reliable releases. This evidences Fastlane, which was previously unconfirmed, and it evidences App Store release ownership, which `tracks/ios-developer.md` was claiming without support.

**20% reduction in app launch time.** A performance number on a consumer app.

**Crash-free user score above 99%.** *This closes the single most-flagged gap on the profile.* Application quality ownership was named as missing on the BJAK, Kira and Dexter applications. It is the exact evidence postings ask for when they say "improve crash rate, reliability and app quality". Lead with it for any posting that mentions production quality, stability or crash rate.

**Modularised the project into frameworks.** Extracted Localization, Assets and the Component Library into separate frameworks, reducing build times. Together with the SPM migration this is a genuine build-performance theme, not a one-off.

**CocoaPods to Swift Package Manager, 40% build performance improvement.** The most quotable single fact on the CV, because it pairs a concrete action with a measured outcome.

**Modular architecture for multi-target applications** through xcframeworks and local SDKs.

**A/B tests and feature flags via Firebase.** Maps onto any posting mentioning experiments, iteration or staged rollout.

**What they were actually for**, supplied 2026-07-30: shipping features safely behind a flag, and measuring **lead conversion rate** between variants. The results fed business discussions rather than staying inside engineering.

That last part is the valuable half. Lead conversion is the core metric of a car marketplace, so this is not "we ran experiments", it is measuring the thing the business is judged on and taking the answer into the room where decisions get made. Use it whenever a posting mentions data-informed product work, experimentation, or working with product and commercial teams.

**Code refactoring initiatives** to improve code quality and maintainability, plus **peer code reviews** promoting knowledge sharing and clean code architecture.

**Hiring.** Conducted interviews and represented PakWheels at university job fairs.

**Mentoring.** Mentored and onboarded **one junior developer**. Supplied 2026-07-30. State it as one, not "developers". It is still real mentoring evidence and inflating it is the kind of thing that unravels when someone asks how many.

Hiring and mentoring are the two clearest seniority signals available anywhere on this profile, and neither appeared on any CV before today. For any posting mentioning ownership, standards, or working with limited handholding, these are direct evidence.

**Team of three.** Supplied 2026-07-30. The same size as the Verimi team, which makes a consistent picture: small teams, broad surface area per engineer, no room to specialise narrowly. Two apps, a migration he led, build tooling and hiring, all from a team of three.

**Why he left: to start the M.Sc.** PakWheels ended March 2025 and the degree began March 2025, so the timeline is clean and the reason is a good one. Not for the CV, but it is the answer to a question every interview asks, and "I left to do a Masters in AI" is a far better answer than most people have.

**Scrum and Kanban** in iterative sprints. Low signal on its own, duplicates the sidebar, and was the first bullet cut when the Dexter CV ran long.

### Open questions

**None.** Everything was answered on 2026-07-30.

**Decision, 2026-07-30: build and launch times stay as percentages.** Farrukh chose not to convert 40% and 20% into absolute numbers. Do not ask again and do not invent absolutes. Percentages are perfectly usable, and a percentage travels better across contexts than a figure that depends on the machine it was measured on.

### Honest limits

- No payments, claims or insurance processing work. A car marketplace involves transactions but nothing evidences owning payment flows.

---

## Cross-cutting themes worth leading with

The through-lines that make the two roles read as one coherent engineer rather than two unrelated jobs.

**Building for other developers.** The identity SDK **consumed by AOK and BARMER separately**, and the Design Component SDK **adopted by Verimi Wallet and AOK**. xcframeworks, local SDKs, and Localization, Assets and Component Library extracted into frameworks at PakWheels. Five published SwiftUI packages in `projects.md`. This is the strongest senior signal available, and the sharpest version of it is the identity SDK: one API surface, two enterprise clients, neither of which he controlled. That is platform work.

**Build and runtime performance as a deliberate practice.** TestFlight build time **halved** at Verimi. **40%** build improvement from the SPM migration at PakWheels, further reduction from modularisation, and **20%** off app launch time. Three numbers across two employers, plus CI/CD at both.

**Owning quality, not just shipping features.** Crash-free above 99%, code reviews, refactoring initiatives, A/B tests and feature flags. Use this whenever a posting names reliability, crash rate or production quality.

**Consumer scale under constraint.** AOK, BARMER, Classified and Dealers are all millions-of-users products. Few candidates at this level can say that four times.

**Leading, not only doing.** Led the Objective-C to Swift migration, introduced SwiftUI, mentored and onboarded juniors, interviewed candidates, represented the company at job fairs. Directly answers "ownership mindset" and "comfortable owning work with limited handholding", which both the Dexter and Kira postings asked for and neither application could evidence.

**AI tooling as employment, not hobby.** The Verimi SDD automation across Claude and Codex writes specs, implements against them, and reviews the resulting code. Postings increasingly ask for this as a requirement, and almost nobody can evidence the full loop from paid work.

**Modernising legacy codebases.** Led Objective-C to Swift at PakWheels, then migrated **two** apps from UIKit to SwiftUI at Verimi, BARMER and the Wallet. Three codebases moved onto current frameworks, one of them led. Use this for any posting mentioning legacy code, technical debt or migration.

**Regulated German identity work.** eID card scanning on AOK and Verimi Wallet using the Ausweis SDK, SealOne integration, certificate pinning on BARMER's TAK libraries, and the identity SDK behind all of it. Four distinct pieces of evidence in a narrow and well-paid speciality. Nothing else on the profile is this hard to substitute.
