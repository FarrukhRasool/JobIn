# Application notes

**Track:** ios-developer. Clean fit for the track: nothing in the posting's requirements or responsibilities names AI, ML or on-device inference, so nothing was pulled from `tracks/ai-engineer.md`. The title's "Conversational Platform" is not backed by any AI/ML line in the actual text, so the M.Sc. section stays a supporting, general-engineering section rather than a second lead.

**Location claimed:** Berlin, Germany. Matches the posting's own city per `jobs/scored/annapurna-senior-ios-mobile-engineer.md` (`location: Berlin, Germany`).

**Email used:** Default, farrukhrasool65@gmail.com. No override requested.

**Employment status shown:** Plain `iOS Developer` at Verimi, no `(Working Student)` qualifier. This is an ordinary professional posting (mid-senior, contract), not a Werkstudent, internship or dual-study one.

**Led with:** The posting's single heaviest-weighted requirement is "Proven experience building and distributing SDKs or modular mobile components", so the Verimi section opens with the identity verification SDK that AOK and BARMER each integrate separately (one API surface, two release cycles Verimi does not control), then the Design Component SDK built with Verimi's design team and adopted by both the Wallet app and AOK, then the xcframework automation in CI that halved TestFlight build time. That is three independent pieces of SDK/modular evidence before anything else. The PakWheels section opens the same way: Localization, Assets and the Component Library extracted into standalone frameworks shared across two apps, then closes with a second, distinct modular bullet (xcframeworks and local SDKs for a multi-target architecture), so both employers answer the lead requirement directly rather than once each.

"Advanced knowledge of mobile architecture patterns and App Store release processes" is answered by the two UIKit-to-SwiftUI migrations (BARMER and Verimi Wallet at Verimi, Storyboards through programmatic UIKit to SwiftUI at PakWheels), the Objective-C to Swift migration, and the Fastlane/TestFlight/App Store bullet at PakWheels. "Proficiency in mobile-specific performance optimization and debugging" is answered by the CocoaPods to SPM 40% build-time cut, the crash-free score above 99% paired with the 20% launch-time cut, and the async/await bullet on the AOK eID scanning flow, which is framed around not blocking the UI while waiting on the card reader, the closest honest match to the posting's "low latency and smooth real-time interactions" line.

**What was deliberately not led with:** AI tooling. The sidebar keeps the `Claude | Codex` and `Sub Agents | SDD` AI Tools block per the standing instruction in `cv-skeleton.typ` (it describes how he works and the Verimi SDD automation is real employment evidence), but no main-column bullet is spent on it. Nothing in the posting asks for it, and the "lead with" instruction for this posting was explicit that this is a clean iOS track.

**Experience balance:** **Verimi 6 bullets, PakWheels 7.** Was 7 and 7 as handed over, one Verimi bullet cut on the fit pass. `check-style.py` passes at this ratio. This is fuller than the skeleton's usual 4-5 / 5-6 guidance, and deliberate: this is the single strongest SDK match on the whole profile, with five independent pieces of evidence available (identity SDK, Design Component SDK, xcframework CI automation, PakWheels framework extraction, PakWheels xcframeworks/local SDKs), so both sections carry two SDK-flavoured bullets each rather than one, plus the architecture, release-process and performance bullets the posting also asks for by name.

**Cut:**
- Verimi: the SealOne SDK integration is kept (folded into the login/registration ownership bullet) but AOK's video widget work and general "new screens" bullets were left out as lower-signal filler once the SDK, migration, scanning and pinning bullets filled the section.
- PakWheels: A/B testing and feature flags through Firebase (lead conversion measurement), mentoring one junior developer, and hiring/interviewing were all left off. All three are genuine senior signals but none maps to this posting's four named requirements as directly as the modular-architecture, release-process and performance bullets that made the cut. Scrum/Kanban was cut as low-signal and duplicative of nothing this posting asks for.
- The Bachelors degree carries no bullets. The posting names none of MERN, Android/Java, .NET or C++.
- The Deep Vision variant naming TensorFlow and PyTorch was not used. The posting names no ML framework, so the plain Deep Vision line was kept instead.

## Terminology mirrored

All of the following appear in **main-column bullets**, not only the sidebar, so the CV still reads correctly if a parser drops the two-column layout.

`SDK` and `modular` answer the posting's own central line, "SDKs or modular mobile components", carried by the identity SDK, Design Component SDK and both PakWheels framework bullets. `UIKit` and `SwiftUI` are the two Apple frameworks the posting names explicitly, both appear in the Verimi and PakWheels migration bullets. `architecture` answers "mobile architecture patterns", from the PakWheels xcframeworks/local SDKs bullet. `App Store` answers "App Store release processes", from the Fastlane/TestFlight bullet. `accessibility` is Verimi's own stated migration goal, not a posting term, kept because it strengthens the UIKit-to-SwiftUI claim with a real constraint rather than a bare framework swap. `async/await` answers "low latency and smooth real-time interactions" honestly, since it is genuinely why the eID scanning flow does not block the UI, even though the posting never names the keyword itself.

## Metrics worth adding

- The identity SDK bullet ("no ability to change either host app") would be sharper with a number: how many client integrations beyond AOK and BARMER, how many endpoints, or a release-cadence figure showing how often the two host apps actually diverge.
- The Design Component SDK bullet has no adoption number. How many components, or a development-speed figure, would turn "now ships inside both" into a measured claim.
- The xcframework CI automation bullet already carries the one hard number available (TestFlight build time halved). No further metric needed there.
- The AOK eID card scanning bullet has no success rate, scan volume or time-to-verify figure. Given the posting explicitly asks for "low latency and smooth real-time interactions", a concrete number here would be the single most valuable addition to this CV.
- The certificate pinning bullet has no number. Anything Farrukh can attach, incidents caught, libraries covered, would help, though this is an adjacent bullet rather than a core one.
- The PakWheels framework-extraction bullet (Localization, Assets, Component Library) has no build-time figure of its own, distinct from the CocoaPods to SPM 40% figure two bullets later. If a separate number exists for the modularisation step specifically, it would strengthen the posting's single heaviest requirement even further.

## Gaps not closed

- **5+ years stated, roughly four years actual.** The posting's own headline requirement. The CV itself makes no years claim anywhere (the skeleton format never states total experience), so nothing on the page is factually wrong, but the stretch is real and the letter has to carry it honestly.
- **Employer unnamed.** Annapurna is a recruitment agency advertising an unnamed client. No product, culture or direction exists to write the letter toward, and this CV cannot compensate for that.
- **GitHub Actions** is named in the posting's tech stack but is not an entry in `skills.md` and does not appear anywhere on this CV. `CI/CD` (sidebar) and `Git`/`GitHub` (sidebar) answer the general requirement honestly; the specific tool is a real, unclosed gap.
- **Android**, listed as desirable only, is deliberately absent from the whole profile and does not appear here.
- **UI/UX design capabilities**, desirable, is listed in the sidebar (`UI/UX`) on the strength of the Figma portfolio link in Contact, which is `listed` rather than `strong` evidence in `skills.md`. Be ready to point to the portfolio if asked, not to a shipped design system.
- **6-month contract.** Not something a CV can address either way; flagged here so it is visible before submission.
- **XCTest** is now `strong` per `skills.md` (confirmed 2026-08-01) and appears in the sidebar to answer the tech-stack line, but it is a generic, unemployer-specific claim with no test suite or number behind it. It will not survive a deep interview probe on testing specifics.

**Page count:** **One page. `fit ok`, 11 mm free at the foot of the main column.** Rendered and confirmed 2026-08-01. `check-style.py` 0 fail 0 warn. `Languages` verified visible by reading the rendered PDF.

## Fit passes after the agent handed over

`cv-tailor` has no shell tool. The main thread rendered and adjusted.

1. **First render was two pages**, and `render-cv.sh` blamed the sidebar. **That diagnosis was wrong.** I trimmed the sidebar from 10 rows to 8, re-rendered, still two pages. I then ran a drop test down to **3 sidebar rows and it was still two pages**, which rules the sidebar out entirely. The real cause was the main column at 14 professional bullets. Reading page two directly showed it blank, which is the white-on-white signature and is what misled the checker.
2. **Cut three bullets** on relevance to this posting: certificate pinning (security is not named anywhere in the requirements), the Wallet login and SealOne bullet, and the Objective-C to Swift migration. That gave one page but 32 mm unused, which the fit checker treats as a defect.
3. **Restored two of the three.** The Wallet login and SealOne bullet came back because SealOne is an SDK integration and this is an SDK role. The Objective-C to Swift migration came back as architecture and modernisation evidence. **Certificate pinning stayed cut**, correctly, since nothing in this posting asks about security.
4. **`UI/UX` folded into an existing sidebar row** rather than given its own, clearing a `jd-coverage` warning that flagged it as named in the posting (desirable) but absent from the CV. It is `listed` not `strong`, supported only by the Figma link.

**A note on the checker.** `render-cv.sh` attributes any two-page render to the sidebar when page two is blank. That is a reasonable heuristic given the white-on-white failure mode, but it is not reliable. When it says SIDEBAR, verify with a drop test before cutting skills, or you will strip a good sidebar and still be on two pages.

## Originality check

The agent reported that it had read `applications/scalable-capital-junior-ios-engineer/cv.typ` for page-fit calibration and that some first-draft bullets reused its wording verbatim before being rewritten. **Verified independently on 2026-08-01** by diffing every bullet in this CV against every bullet in all seven sibling applications. No professional experience bullet is shared with any other application. The only identical lines are the four Education bullets, which come verbatim from `profile/education.md` and are supposed to be identical everywhere.
