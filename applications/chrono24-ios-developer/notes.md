# Application notes

**Track:** ios-developer. Clean single-track fit, matching the scored record's Track clarity of 15/15: nothing in the posting or the research brief calls for ML, Core ML or on-device inference, so the AI-engineer track was not blended in. The M.Sc. section carries only Agentic AI (the one project that is itself an iOS application) and Autonomous Robot (systems/SLAM, a general engineering-rigor signal), not the pure computer-vision bullets (Deep Vision, Scene Detection), which have no iOS angle and would read as padding on a purely iOS posting.

**Location claimed:** Berlin, Germany. Matches the job record's stated location and the LinkedIn posting. The research brief resolves the actual work model to "Remote-DE, Berlin, Karlsruhe", so Berlin is also consistent with one of the two named office options.

**Email used:** Default, farrukhrasool65@gmail.com. Not overridden.

**Employment status shown:** Plain `iOS Developer` for Verimi, no `(Working Student)` qualifier. This is an ordinary professional, permanent-contract posting (the Personio listing specifies permanent contracts only), not a Werkstudent, internship or dual-study role.

**Led with:**
1. **The Combine bullet from PakWheels** (18 published filter dimensions on the used-car advanced search, a staged filter model that derives its own selected-filter chips, the `dropFirst` fix that stops saved-filter hydration from re-triggering its own listeners). This is the single closest match on the whole application: the posting names Combine by name for "reactive, declarative UIs," and this is the one bullet on the entire profile that survives a real interview probe rather than just naming the framework.
2. **The Classified/Dealers marketplace-scale bullet**, immediately after it, answering "e-commerce or marketplace experience... beneficial" with PakWheels' own consumer-and-B2B marketplace shape rather than a generic "worked at a marketplace" line.
3. **async/await, twice, on two separate Verimi features** (AOK's eID card scanning, the Verimi Wallet's login and registration flow), to show depth on Swift Concurrency rather than a single passing mention, since the posting names async/await explicitly.
4. **The identity SDK bullet**, as the broader senior signal that this is someone who builds things other engineers and other companies depend on, not just someone who ships screens.

**Experience balance:** Verimi 5 bullets, PakWheels 7 bullets, 12 total. Both employers carry substantial, distinct evidence rather than a thin "three keyword matches" section. PakWheels carries one more bullet than Verimi because the two headline matches (Combine, marketplace scale) both live there, and because PakWheels also carries the crash-free/launch-time performance number, which answers the posting's own "performance and usability" phrase directly.

**Cut:**
- **Certificate pinning on BARMER's TAK libraries.** Real and strong secure-transport evidence, but this posting names nothing about security or data handling, unlike several previous fintech-flavoured applications where it was the lead. Left off rather than forced in.
- **Fastlane/TestFlight/App Store release ownership at PakWheels** as its own bullet. Folded into the Jenkins/Fastlane CI bullet instead of given a separate line, since the posting's own tech stack names GitLab for CI/CD rather than calling out release automation as a distinct responsibility.
- **Mentoring, hiring and university job-fair interviewing at PakWheels.** True senior signals, but the posting reads as a standard mid-level IC role (per the scored record's seniority note) with no people-leadership language, so they lost out to bullets answering the named tech stack directly.
- **Modularisation into Localization/Assets/Component Library frameworks, and the CocoaPods to SPM 40% build improvement**, as standalone bullets. Both are genuine and strong, but the CI/CD, migration and performance bullets already carry the build-and-platform-engineering theme, and 13 professional bullets was judged full enough without them. Good candidates to add back if the render underfills the page.
- **Deep Vision, Scene Detection and Embedded Intelligence** M.Sc. bullets. Pure computer-vision or sensor-fusion content with no iOS angle, cut for the same reason the scored record gave Track clarity a full 15/15: this posting has no ML surface to speak to.
- **Bachelor's degree bullets.** None shown. The posting names none of MERN, Android/Java, .NET or C++.

**Cut at render time (main thread), to reach one page:**
- **The Design Component SDK bullet** (Verimi). Genuine, but design-system work is the weakest of the Verimi set against a posting that names Swift, SwiftUI, Combine, Swift Concurrency and CI/CD and says nothing about design systems.
- **The Storyboards to programmatic UIKit to SwiftUI two-stage migration bullet** (PakWheels). Cut for redundancy rather than weakness: the Objective-C to Swift migration bullet directly above it already carries the large-scale-migration theme, and Verimi's UIKit to SwiftUI bullet already carries the SwiftUI-migration theme.
- **The Objective-C to Swift migration bullet** (PakWheels) and **the Firebase A/B testing bullet** (PakWheels). Both cut in the review round to make room for the code-review and XCTest bullets, which answer requirements the posting names directly where these two answer nothing it asks for.
- **The modularisation clause** was trimmed off the SPM bullet, which now carries only the CocoaPods to Swift Package Manager migration and its 40% figure. `experience.md` calls that number the most quotable single fact on the CV, so the number stayed and the second clause went.
- **The Verimi Wallet login/registration bullet was cut, then restored and shortened.** Removing it left 15 mm of underfill and dropped async/await to a single evidence point, which weakened the Swift Concurrency match. It was restored with the clause "for identity checks that depend on a card reader and a live network call" tightened to "across a card reader and a live network call". Every fact survives the trim: ownership, SealOne SDK, async/await, card reader, live network call.

## Terminology mirrored

Present in the **main-column bullets**, not only the sidebar, so the CV survives a parser that drops or reorders the two-column layout:
`Combine`, `SwiftUI`, `UIKit`, `async/await`, `XCTest`, `Swift Package Manager`, `CocoaPods`, `Jenkins`, `Fastlane`, `TestFlight`, `code reviews`, `Ausweis SDK`, `SealOne SDK`. `Marketplace` appears twice in prose (the PakWheels blurb and the Classified/Dealers bullet), directly answering the posting's "e-commerce or marketplace experience... beneficial" line and echoing the research brief's own description of Chrono24 as a "global online marketplace."

Sidebar-only: `MVC`, `MVVM`, `SPM` (the abbreviation, though `Swift Package Manager` is spelled out in a bullet), `Git`, `Crashlytics`, `Firebase`, `Storyboards`, `Programmatic UI`, `Design Patterns`. If a parser drops the sidebar, those terms are lost, though the underlying achievements still read clearly in the bullets themselves.

`Objective-C` is **absent from the document entirely**. It has no sidebar row, and the Objective-C to Swift migration bullet was cut at render time. This posting names nothing about legacy code, so the loss is acceptable, but it is a real reduction in stated language coverage and worth restoring for any posting that mentions maintaining an existing codebase.

`Accessibility` is not a sidebar row, but the word itself appears in the Verimi migration bullet's prose ("making accessibility the explicit goal on the Wallet"), so it survives even without a dedicated sidebar entry.

## Metrics worth adding

- **The identity SDK bullet** ("a single API surface shipped into two insurers' apps") would be sharper with a number: how many endpoints, how many integrating clients beyond AOK and BARMER, or a release-cadence figure.
- **The crash-free bullet** states "above 99%" rather than a precise figure. A tighter number (99.2%, 99.6%, whatever the real figure is) would read as measured rather than rounded.
- **The eID card-scanning and Wallet login bullets** have no completion-time or adoption number behind them. Any real figure Farrukh can supply, verification success rate, screens shipped, users onboarded through the flow, would strengthen the two bullets doing the heaviest lifting for the Swift Concurrency match.

## Defect caught in review, and fixed

**The Verimi Wallet bullet attributed the card read to the wrong SDK.** The draft read "integrating the SealOne SDK with async/await across a card reader and a live network call." Two problems, both caught by `application-review` and confirmed against source:

1. `experience.md:57` states that eID card scanning happens twice, on AOK and on Verimi Wallet, **using the Ausweis SDK**. `skills.md:47` evidences the SealOne SDK only as "Verimi Wallet integration", with no statement of what it touches. So the bullet attributed a specific technical function to the SDK the sources do not connect it to.
2. The phrase "card reader" appears **nowhere** in `profile/`. It was an inferred detail, which is exactly the fabrication the house rule forbids.

The bullet now reads "integrating the SealOne SDK and using async/await for the long-running identity checks the flow depends on." Every clause traces: ownership of the flow and async/await to `experience.md:59`, the SealOne integration to `experience.md:54`, and "long-running asynchronous work" to `experience.md:59`'s own wording. The card-read claim stays where it is evidenced, in the AOK bullet, correctly attributed to the Ausweis SDK.

**Worth confirming with Farrukh before this ships:** what the SealOne SDK actually does in the Wallet. The sources never say. The bullet is now safe because it no longer claims, but a precise answer would make it stronger.

## Requirements now answered that were not in the first draft

Two of the posting's named requirements had a sidebar keyword and no bullet behind them. Both are now answered in the main column:

- **"Maintaining code quality through code reviews"** is a named responsibility line, not a soft nice-to-have. Answered by the PakWheels refactoring and peer-code-review bullet, sourced from `experience.md:214`.
- **"Testing with Swift Testing and XCTest"**, the XCTest half. Answered by the sanctioned generic bullet at `experience.md:259`, used verbatim. Read the limits note at `experience.md:261` before leaning on it in an interview: it carries no employer, no number and no suite structure by Farrukh's own choice, so it clears a keyword rather than proving depth.

## Gaps not closed

- **Swift Testing.** Named explicitly alongside XCTest in the posting and the research brief's own tech-stack line. Nothing on the profile evidences it. XCTest is the only testing framework the CV can honestly claim, and per `skills.md` even that bullet is generic and unprobed (no employer, no number, no suite structure).
- **Actors, specifically.** async/await is strong and evidenced twice at Verimi. Actor isolation as a Swift Concurrency primitive is not named anywhere in `experience.md`, so the CV says "async/await," never "Swift Concurrency" or "actors," to avoid overclaiming the half of the posting's own parenthetical that isn't backed.
- **GitLab, by name.** Git itself is strong, but the CI/CD evidence on file is Jenkins (PakWheels, built from scratch) and xcframework automation in CI (Verimi), not GitLab CI. The CV names the tools it can defend rather than the tool the posting asks for, and the letter should address this gap honestly rather than let the CV imply GitLab experience it doesn't have.
- **Seniority is inferred, not confirmed.** The posting carries no explicit years-of-experience language, and LinkedIn's own "Associate" tag was excluded from scoring per the intake record's note. The CV is written at the level the responsibilities imply (a standard mid-level IC role), which sits comfortably inside four years, but this is a judgement call rather than a stated number.

**Page count:** one page, `fit ok`, 5 mm free at the foot of the main column. Rendered on the main thread with `./scripts/render-cv.sh chrono24-ios-developer`.

**Render note for next time:** the first render came out two pages with the main column over by ~33 mm. Worth knowing that once this template spills to a second page the failure changes shape: the sidebar continues onto page two, which has no navy panel, so the sidebar text renders white on white and vanishes. The render script catches it, but a two-page CV here is not merely long, it is silently broken.
