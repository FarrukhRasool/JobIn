# Application notes

**Track:** ios-developer. The posting is pure iOS (Swift, UIKit, SwiftUI, Combine, Swift Concurrency,
MVVM, MVC, TCA, SPM, Jenkins), no AI or ML angle anywhere in the requirements or responsibilities text,
and the research brief confirms the same. Not a blend.

**Location claimed:** Munich, Germany. The posting offers both Berlin and Munich; per
`profile/constraints.md` and the task instruction, Munich is used.

**Email used:** default, farrukhrasool65@gmail.com. Not overridden.

**Employment status shown:** Verimi carries the plain `iOS Developer` line, no Working Student
qualifier. PAYBACK's posting is an ordinary permanent, full-time, Associate-level role, not a student
or Werkstudent posting.

**Led with, in this order:**
1. **Jenkins** (PakWheels). PAYBACK gives "maintain and improve build and deployment pipelines with
   Jenkins" its own responsibility bullet. He built the `PRBuild` pipeline end to end: per-PR staging
   IPA via Fastlane, OTA manifest, QR code posted to the GitHub PR and the Jira ticket. Used the
   verbatim approved bullet from `experience.md`, only lightly trimmed.
2. **Combine** (PakWheels). Answers "SwiftUI, Combine and Swift Concurrency" with a mechanism, not a
   keyword: 18 `@Published` filter dimensions on the used-car advanced search, derived chips, staged
   filter model. Used the verbatim approved bullet from `experience.md`.
3. **The modular/SDK story**, split across both employers. Verimi: the identity SDK integrated
   separately by AOK and BARMER, one API surface on release cycles Verimi does not control, plus the
   Design Component SDK shipped into both the Wallet and AOK. PakWheels: Localization, Assets and the
   Component Library extracted into shared frameworks, and the CocoaPods to SPM migration (40% build
   improvement). This answers "modular iOS app... maintainable, clean and extensible app structures"
   and the named SPM tech-stack term directly.
4. **Crashlytics and Firebase** (PakWheels). Crash-free score above 99% and Firebase A/B tests
   measuring lead conversion rate, answering "monitor Crashlytics/Firebase, investigate anomalies and
   derive meaningful improvements" directly.
5. **SwiftUI and Swift Concurrency** (Verimi). The AOK eID card-scanning flow, built in SwiftUI using
   Swift Concurrency for the network and card-reader calls. Answers "develop new features... using
   modern technologies such as SwiftUI, Combine and Swift Concurrency" from the Verimi side, since
   Combine's evidence sits at PakWheels.

**Experience balance:** Verimi 6 bullets, PakWheels 8 bullets, 14 total. Both employers carry
substantial, distinct evidence. Every PakWheels-attributable named technology in PAYBACK's tech stack
(Jenkins, Combine, Crashlytics, Firebase, SPM) has its own bullet. Verimi carries the modular-SDK
story, the SwiftUI/Swift Concurrency feature work, the UIKit-to-SwiftUI migration and the certificate
pinning work, none of which is padding, all drawn from `experience.md`'s Verimi section.

**PakWheels deliberately carries more weight**, because nearly all of PAYBACK's named technology
evidence lives there. The gap is held at two bullets, which is the balance checker's tolerance.

**Fit history, recorded because content was cut and added back several times.** The first render came
in at one page with 21mm of dead space, so the Objective-C to Swift migration and the peer code review
bullets went back in. That overflowed. `check-fit.py` then reported a sidebar overflow, which was a
**misdiagnosis**: page two was entirely blank, and the checker reads any blank second page as a
sidebar overflow because every pixel on a white page passes its light-ink test. Two sidebar rows were
cut on that false signal before the real cause was found in the main column. See the defect note at
the foot of this file.

**Cut:**
- The 20% app launch time reduction (PakWheels). The Objective-C to Swift migration covers the
  "refactoring for performance and clean code" line on its own, and the CV already carries two build
  and performance numbers (40% build improvement, TestFlight build time halved).
- Two of the three M.Sc. project bullets, Deep Vision and Autonomous Robot. Both are pure AI and
  robotics with no iOS angle, so they were the least relevant content on the page for a pure iOS
  posting. Agentic AI stays, because it is an iOS application.
- Sidebar rows `TestFlight | Git` and a standalone `Clean Code Architecture` row. Clean code is now
  carried by a main-column bullet and merged into the `XCTest | Clean Code` row. PAYBACK names neither
  TestFlight nor Git, so nothing the posting asks for was lost. `A/B Testing | Feature Flags` was added
  in the freed space, since the research brief shows PAYBACK is a data-and-marketing platform where
  experimentation is core to the business.
- Mentoring, hiring and the "team of three" context were left out. Real seniority signals, but the
  posting's own scope reads as feature-level Associate work, not people leadership, so they did not
  win a bullet slot over direct tech-stack matches.
- The Verimi SDD automation (Claude, Codex, spec-driven development) is not in the professional
  experience bullets. PAYBACK's posting has no AI-tooling ask, so it stays as a two-row sidebar block
  only, per the standing instruction to keep that block on every iOS application without expanding it
  into bullet space it has not earned here.
- Bachelors bullets: none shown. PAYBACK never names React, Android/Java, .NET or C++, so the default
  (no Bachelors bullets) applies.
- TCA (The Composable Architecture) does not appear anywhere on the CV. It is not on the skill pool at
  all, and it was not added even as a sidebar row.

## Terminology mirrored

All present in the main-column bullets, not only the sidebar:
`Jenkins`, `Combine`, `Crashlytics`, `Firebase`, `modular`, `SwiftUI`, `UIKit`, `Swift Concurrency`,
`Swift Package Manager`, `code reviews`, `clean code architecture`.

MVVM, MVC, SPM (as an abbreviation), Fastlane and XCTest are named on the sidebar only. If a parser
drops or reorders the sidebar, those specific terms are lost, though the underlying achievements (the
Jenkins/Fastlane pipeline, the CocoaPods to SPM migration, the migrations that evidence MVC) still read
clearly in the bullets. TestFlight, code reviews and clean code architecture are already in the main
column (the Verimi CI bullet and the PakWheels code-review bullet), not sidebar-only as an earlier draft
of this note said, so they survive even if the sidebar is dropped.

## Metrics worth adding
- The Verimi Design Component SDK bullet has no adoption number. "Shipped... across the Wallet and AOK
  apps" is true but a count of screens, components, or a development-speed figure would make it
  compete with the Combine and SPM bullets, which both carry real numbers.
- The Firebase A/B testing bullet names "lead conversion rate" as the metric measured but has no
  percentage or delta. If Farrukh has an actual uplift figure from any PakWheels experiment, that
  single number would be the strongest addition to the whole CV, since Firebase/A-B testing is one of
  PAYBACK's named responsibilities.
- The crash-free bullet states "above 99%" without a more precise figure (99.1%, 99.5%, etc). A tighter
  number would read as more measured and less rounded.

**Gaps not closed:**
- **TCA (The Composable Architecture)** is named in PAYBACK's tech stack and is not evidenced anywhere
  on the profile. This is the one real architectural gap on an otherwise unusually strong match. If
  asked directly at interview, the honest answer is "not yet, but I have shipped MVVM and MVC at scale
  and would expect to pick it up quickly."
- No stated years-of-experience threshold on the posting, so the seniority match is inferred from
  scope (feature work, code review, pipeline maintenance) rather than confirmed against a number.
- Team language is German and English per PAYBACK's own primary source, not English-only as the
  imported posting implied. Nothing on the CV overstates German ability. The Languages block still
  correctly shows German at A2.
- **Pair programming.** PAYBACK's responsibilities name "code reviews and pair programming" as one
  bullet. The CV answers code reviews (PakWheels bullet 8) but nothing on the profile evidences pair
  programming specifically, so it is silently unanswered rather than covered. Ask Farrukh whether he
  paired regularly at either job before adding a claim.
- **Explaining technical concepts to non-technical stakeholders.** Named as its own responsibility
  bullet. Nothing on the CV states this directly. The closest thing is the Firebase A/B testing bullet
  ("guide product decisions"), which is about feeding a business metric into a decision, not about
  explaining technical work to a non-technical audience. Treat this as unanswered, not just weakly
  answered, unless Farrukh has a concrete instance to supply.
- **Bug fixing.** Named as its own responsibility bullet ("fix bugs and analyze technical issues").
  `experience.md` records "Bug fixes" under BARMER but with no detail behind it, so it was never
  turned into a bullet and nothing on the CV states it directly. The crash-free score is adjacent but
  is a quality metric, not a bug-fixing claim. Ask Farrukh for one concrete bug or issue class he
  fixed at either job if this needs a dedicated bullet.

**Page count:** one page, 10mm free at the foot, `fit ok`. Rendered and verified 2026-08-03.

## Defect worth carrying back to the pipeline

`scripts/check-fit.py` cannot tell a genuinely overflowing sidebar from a blank second page. Its
sidebar probe calls `last_ink_row(..., 0.02, dark=False)`, which counts any pixel brighter than 120
starting from 2% of the page width. Page two has no navy panel, so it is pure white, and every pixel
passes. The result is that **any** blank second page reports as `SIDEBAR overflows ... WHITE ON WHITE`
with the instruction `Do NOT cut main-column content`, which points the fix at exactly the wrong
column.

That cost two sidebar rows on this CV before the real cause was found by rendering page two to PNG and
looking at it. A truer probe would test for light ink only inside the sidebar's own x-range and would
first confirm page two carries any content at all. Worth raising through `/vault-sync` or a
`pipeline-integrity` pass rather than fixing quietly here, since the checker is shared by every
application.
