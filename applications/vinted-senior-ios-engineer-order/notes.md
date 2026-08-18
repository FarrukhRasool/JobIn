# Application notes

## Track

`ios-developer`. Clean single-track fit, matching the scored record's Track clarity of 15/15. The posting's Requirements and Responsibilities blocks are entirely Swift, SwiftUI, UIKit, architecture and release-process language, nothing touching AI, ML or agents. `profile/tracks/ios-developer.md` governed the summary order, project selection and skills order.

## Location claimed

Berlin, Germany, per this task's explicit instruction rather than the standing European-city rule. The role itself is Kaunas or Vilnius, Lithuania, and Vinted runs a funded relocation programme for Engineering hires, so there is nothing to hide by showing where he actually is right now.

## Employment status shown

Verimi shows plain `iOS Developer`, no Working Student qualifier. This is an ordinary senior professional posting, not a student, Werkstudent, internship or dual-study listing, and it does not require current enrolment.

## Led with

The Verimi Design Component SDK opens Professional Experience, built with Verimi's own designers and shipped into two apps, the Wallet and AOK, the direct answer to "deliver features using the shared DSKit". The identity verification SDK that AOK and BARMER each integrate on their own release schedule follows immediately, the sharpest available answer to "spot systemic risks and hidden coupling". The BARMER and Wallet UIKit-to-SwiftUI migration and the Wallet's async/await login and registration flow close the Verimi block, answering "modern concurrency (Async/Await)... while supporting UIKit transition" directly. Verimi's CI/CD automation, halving TestFlight build time, closes on a number.

PakWheels opens on the modular architecture, extracting the Component Library, Localization and Assets into separate frameworks, then the CocoaPods to Swift Package Manager migration with its 40% number, together the clearest answer to "decoupled, modular environment using Tuist and Swift Package Manager". The Storyboards through programmatic UIKit to SwiftUI arc follows, carrying "without stopping delivery" exactly where `experience.md` line 132 attaches it, never onto the Objective-C to Swift migration, which was left off this CV entirely since the posting's own UIKit-transition language points at the UI-framework arc, not the language migration. Firebase A/B testing behind feature flags answers "feature flags, staged rollouts, and metrics" and "comfortable in metrics and data-driven environments" together. The Jenkins-and-Fastlane pipeline answers "GitHub pull requests with automated workflows" with a real mechanism even though the posting's own named tools (Danger, SwiftLint, SwiftFormat, Sourcery) are not evidenced. Crash-free above 99% and launch time down 20% answer "performance" in "testing, performance, and clean architecture". Mentoring one junior developer and interviewing candidates closes the section, answering "mentor other engineers" and the "team-level decisions" language directly.

## Experience balance

**Verimi 5 bullets, PakWheels 7 bullets, 12 total professional bullets.** This is above the skill's usual 9-to-11 guideline (Verimi normally 4 to 5, PakWheels normally 5 to 6), by the same margin and for the same reason the YorTeam Senior iOS Platform Engineer CV went to 13: this posting's own responsibility lines map onto an unusually large number of distinct, well-evidenced facts (DSKit, modularisation, Tuist-adjacent build tooling, feature flags and metrics, automated PR workflows, UIKit transition, performance, mentoring), and cutting any one of them would leave a named posting requirement with nothing against it. The gap between employers is exactly 2 bullets, at the edge of the "within two bullets" rule rather than past it.

**This was assembled without a render.** The agent that wrote this CV has no shell. The bullet count and length here are comparable to the YorTeam CV, which needed several render passes and bullet-tightening to land at one page with 10mm free at 13 total bullets. Whoever runs `./scripts/render-cv.sh vinted-senior-ios-engineer-order` next should treat a first-pass overflow as likely rather than surprising, and cut from the PakWheels block first per the diagnostic table in `tailor-cv` (main-column overflow only, the sidebar sits well under its 8-to-11-row budget at 10 rows).

## Cut

- **The Objective-C to Swift migration.** Real, and the largest single piece of work on the profile, but the posting's own "supporting UIKit transition" language points at the UI-framework arc (Storyboards through UIKit to SwiftUI), not the language migration. Kept off this CV rather than run both migrations and dilute the one the posting actually names.
- **Certificate pinning on BARMER's TAK libraries.** The only concrete secure-transport evidence on the profile, cut because the posting names nothing about security or data handling.
- **AOK's eID card scanning through the Ausweis SDK.** Strong identity evidence and a second confirmed async/await usage, cut because this posting is a consumer marketplace with no identity, KYC or regulated-data angle, and a second identity-flavoured bullet would have read as domain mismatch on a CV already carrying two SDK-ownership bullets.
- **The PakWheels `UserManager` session and authentication singleton.** The strongest single ownership claim on the whole profile, left out here because this posting's Requirements and Responsibilities never mention authentication, sessions or token handling, and every PakWheels bullet on this CV is mapped instead to modularisation, migration, release process or quality language.
- **The Combine advanced search bullet (18 filter dimensions).** Fully evidenced and normally a strong include, cut for space against the seven other PakWheels facts that map more directly onto this posting's own responsibility lines. `Combine` does not appear on the sidebar here either; add it back first if the page underfills.
- **BARMER's own Design Component SDK, which he integrated rather than built.** Left out to avoid a second design-system bullet reading as a repeat of the Verimi one he built. If this reaches an interview, be ready to describe both: Verimi's own, built with designers, and BARMER's, built by their team and integrated into their app.
- **Team of three, at both employers.** Real and a reasonable answer to "comfortable owning work with limited handholding", cut for space in favour of bullets that map onto a named posting requirement rather than a general seniority signal.
- **Verimi's Spec-Driven Development automation across Claude and Codex.** Kept only as the AI Tools sidebar row, per the standing instruction to keep that block on every iOS posting. Not pulled into a main bullet, since this posting names no AI or agentic work.
- **Bachelors bullets.** None of the four coursework stacks (MERN, Android/Java, .NET, C++) map to anything this posting names, so the default of showing none stands.

## Terminology mirrored

Backticked only where the exact word or phrase appears in a main-column bullet, per the style checker's the claims check check.

- `async/await` appears in the Verimi Wallet bullet, matching the posting's own tech-stack line "Async/Await" (case differs, word does not).
- `SwiftUI` and `UIKit` both appear in the BARMER/Wallet migration bullet and the PakWheels Storyboards bullet, matching the posting's tech-stack line directly.
- `Swift Package Manager` appears in the CocoaPods bullet, matching the posting's own phrase exactly.
- `modular architecture` echoes the posting's "decoupled, modular environment" in the PakWheels modularisation bullet, singular rather than the posting's adjectival phrasing.
- `feature flags` appears in the Firebase A/B testing bullet, matching the posting's own phrase exactly.
- `metrics` appears in the same bullet ("lead conversion metrics"), matching the posting's own word, though the posting uses it about release safety and this bullet uses it about product decisions.
- `GitHub pull request` appears in the Jenkins bullet, matching the posting's own "GitHub pull requests" (singular here against the posting's plural).
- `mentor` is present as a substring of "Mentored" in the closing PakWheels bullet, matching the posting's "mentor other engineers".

**Not mirrored, and why.** "DSKit" is Vinted's own internal product name and does not appear on this CV. The Verimi and BARMER bullets answer the underlying idea, one built shared component kit and one integrated client-built kit, using the word `SDK` throughout instead, since that is the accurate name for what Farrukh actually built and integrated. "MVVM", "XCTest", "CI/CD" and "Fastlane" all sit on the sidebar only, not in a main-column bullet, so none of those four are claimed as a main-column match even though each answers a named posting term. "Clean architecture" and "testing" are answered in substance, the migration and modularisation bullets, the XCTest sidebar row, but neither exact phrase appears in the main column, which is an honest reflection of how thin the testing evidence actually is.

## Metrics worth adding

- **The Design Component SDK bullet has no adoption number.** A component count, or a measured consistency or delivery-speed gain across the Wallet and AOK, would turn a structural claim into a measured one.
- **The identity SDK bullet has no number.** How long it has been live, or how many release cycles it has survived across AOK and BARMER, would strengthen it.
- **The Wallet login and registration bullet has no outcome number.** Login completion time or drop-off rate, if ever measured, would help.
- **The PakWheels modular architecture bullet has no build-time figure of its own.** The 40% number belongs to the separate CocoaPods-to-SPM bullet. If the Component Library, Localization and Assets extraction produced its own measurable build-time or app-size improvement, that number would make this bullet as strong as the one next to it.
- **The A/B testing bullet has no lift number.** "Using lead conversion metrics to guide product decisions" is honest but has no magnitude. A real conversion-rate delta between variants would be a strong, near-literal answer to "comfortable in metrics and data-driven environments".
- **The Jenkins and Fastlane pipeline bullet has no adoption or time-saved figure.** How many pull requests a week used it, or how much manual QA time it removed, would move it from mechanism to measured outcome.

## Gaps not closed

- **Tuist and Sourcery.** Named in the posting's tech stack and nowhere on the profile. Tuist sits closer to a learnable gap than a hard miss, since the surrounding category (SPM migration, xcframeworks, framework extraction, a 40% build-time cut) is demonstrably owned, but Tuist itself is a distinct product never named on the profile. Sourcery is more specialised and a genuine, unhedged gap.
- **SwiftLint, SwiftFormat and Danger.** All three are named in the posting and none appears in `skills.md`, but per the scored record these are open questions rather than confirmed absences, near-universal in professional Swift work and plausibly inside four years of production iOS that simply has not been written down. Worth asking Farrukh directly before the next application that names any of them, rather than carrying the gap forward silently again.
- **Clean Swift (VIP).** Unevidenced, but the requirement is disjunctive ("MVVM or Clean Swift") and MVVM is `strong`, so this is not argued around, it simply does not need to be.
- **Testing depth.** XCTest sits on the sidebar only. `experience.md` records it as keyword-clearing, with no employer, number or suite structure behind it, and this posting says it "deeply cares" about testing. If an interview leans on testing practice, he needs his own specific answer, not this CV's generic line.
- **The seniority bar itself.** "Leading initiatives", "making team-level decisions" and "mentor other engineers" are read from qualitative language rather than a stated years figure, which is a real stretch against one junior mentored and no formal lead title. The scored record treats this as a genuine reach worth applying to, not a clean match, and this CV does not oversell it.

## Page count

**One page, 10mm free at the foot of the main column, fit ok.** Three render passes.

Pass 1 came back one page with **32mm unused**, an underfill rather than the overflow the agent expected. Three bullets went in, each answering a posting line nothing on the page covered:

- **Integrating BARMER's own Design Component SDK.** The posting is about consuming a shared DSKit as well as contributing to one, and `experience.md` records that working inside a design system somebody else owns is its own signal, distinct from having built Verimi's.
- **Peer code reviews and refactoring**, against "provide impactful feedback in design reviews and RFCs", which had nothing against it at all.
- The Verimi three-engineer line, added then cut again on pass 3.

Pass 2 tipped to two pages. The checker reported a **sidebar** overflow, but the sidebar had not changed since it fitted at 32mm free, and the checker's own output says the diagnosis "cannot be fully certain from pixels alone" and that the main column may be the real cause. It was. Cutting one main-column bullet fixed it.

The three-engineer bullet was the one cut. It argues scope, which matters against a stated years requirement, and this posting states no years figure anywhere. If this ever underfills again, restore it first.

Final: Verimi 6 bullets, PakWheels 8, 14 paid bullets.

## Checks

`check-style.py` ends at 0 fail, 1 warn. **The warn is `jd-coverage` reporting RFCs and it is correct to leave open.** The responsibility reads "provide impactful feedback in design reviews and RFCs". Code reviews are evidenced and now on the page. RFCs as a written-proposal process are not, and claiming them would be an upgrade the source does not support.

A claims failure on pass 1 came from this file backticking the checker's own name and the name of one of its checks, which the regex then hunted for in the CV. Backtick only terms that genuinely appear in a main-column bullet.
