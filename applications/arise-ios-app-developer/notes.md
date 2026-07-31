# Application notes: Arise, iOS App Developer

**Track:** ios-developer
**Location claimed:** Berlin, Germany. Matches the posting's stated location. Research flags this as likely nominal, Arise appears to be fully remote under Cyprus law with no verified office, but the posting itself names Berlin so the Contact line follows the standing rule regardless.
**Email used:** farrukhrasool65@gmail.com, the default
**Employment status shown:** `iOS Developer`, plain, on both entries. This is an ordinary professional posting (4+ years required, not a student or Werkstudent role), so the Verimi line carries no Working Student qualifier.
**Score:** 84/100, APPLY. Rescored today from 79 after the Storyboards migration fact was added to the profile.
**Rendered:** not done by this agent. No shell tool available. Handing back for `./scripts/render-cv.sh arise-ios-app-developer` and a one-page check, per the standing note in MEMORY.md.

## Led with

Followed the scored record's "Lead with" section exactly.

**PakWheels bullet order, in priority order:**
1. The two-stage UI migration, Storyboards to programmatic UIKit to SwiftUI. This is the single strongest fact for this posting: the role maintains a codebase live since November 2012, and a sibling Senior iOS posting for the same app names Storyboards and MVC explicitly. He has taken that exact codebase shape forward, in a live consumer app, without a rewrite.
2. The Objective-C to Swift migration, kept as an independent bullet rather than merged with the UI migration, so it reads as two separate modernisation efforts on the same app: one at the language level, one at the UI layer.
3. CocoaPods to SPM, 40% build improvement. Near-literal answer to the posting's named tool.
4. The Fastlane pipeline to TestFlight and the App Store. The other named tool.
5. Firebase A/B testing and lead conversion, for "support monetization initiatives with measurable business impact."
6. Crash-free score above 99%, for "maintain and optimize the iOS codebase for long-term sustainability."

**Verimi kept short and secondary**, four bullets rather than the fuller six seen on other applications, because nothing in this posting asks for identity, fintech or regulated work. Kept: the UIKit to SwiftUI migration on BARMER and the Wallet (reinforces the modernisation theme and the posting's "enhancing user experience" line, since accessibility was the stated goal), the CI/CD and TestFlight build-time bullet (echoes the posting's own Fastlane ask), the Design Component SDK built with designers (the direct answer to "collaborate with design teams on usability refinement"), and the identity SDK ownership bullet (kept as a general platform/problem-solving signal even though the domain is identity, not because this posting wants identity work).

**Education bullets:** all six M.Sc. bullets included, ordered with the two most mobile-flavoured first (Embedded Intelligence, then Agentic AI) rather than leading with Agentic AI as other CVs have. This is page-fill content in a lower-scrutiny section, not a claim about relevance to this specific posting. `Agent-Based Modeling` is flagged in `education.md` as "long, costs a line" and is the first bullet to cut if the page overflows. Bachelor's bullets left at the default of none, per `education.md`, since no posting-named stack (React, Android/Java, .NET, C++) applies here.

## Cut

- **The whole AI Tools Skills sidebar block**, dropped entirely per instruction. No AI/ML content anywhere in this posting.
- **Every AI/ML skill from the sidebar pool**: Machine Learning, Deep Vision, CNN, ViT, TensorFlow, PyTorch, Keras, Agent-Based Modeling, SLAM, Ollama, Mistral, MCP Servers, Claude, Codex, SDD, Sub Agents, Plugins/Hooks.
- **eID-specific and fintech-specific skills** not put in the sidebar: Ausweis SDK, SealOne SDK, Certificate pinning, eID card scanning, async/await. All real and strong-rated, but none of them answer anything in this posting or the research brief, and per "skills relevance beats completeness" they would read as keyword padding here. async/await in particular sits underneath the identity SDK bullet, not named directly, since the posting never mentions concurrency.
- **PakWheels' 20% app launch time bullet and the xcframework/modularisation bullet.** Both real and strong, cut to keep the PakWheels section at exactly the six facts the scored record named as the priority order, rather than diluting it with a seventh and eighth bullet.
- **Git/Github and Scrum/Kanban sidebar rows.** Generic, not named by the posting, cut to keep the sidebar at 11 rows and comfortably clear of the overflow threshold now that the AI Tools block is gone.
- **MVC** was considered for the sidebar, since the research brief's sibling Senior iOS posting names it explicitly, but it is not an entry in `skills.md`'s pool. Not added. This is a gap, noted below.

## Terminology mirrored

`Swift`, `CocoaPods`, `Fastlane`, the posting's exact three named technologies, land in main-column bullets (not only the sidebar), so the CV survives a parser that drops or reorders the two-column layout. `Storyboards` and `UIKit` mirror the research brief's sibling Senior iOS posting rather than the Arise posting itself, since the brief is the strongest evidence for what the actual codebase looks like. `TestFlight` and `App Store` extend naturally from Fastlane. The Design Component SDK bullet answers "collaborate with design teams on usability refinement" without borrowing the word "usability" directly, since nothing in the source material uses that word. "Measurable business impact" is answered by naming the specific measured metric, lead conversion rate, rather than repeating the posting's own phrase back at it.

## Metrics worth adding

The guideline is explicit that a bullet without a real number should be flagged rather than guessed. These would be materially stronger with a figure Farrukh has not recorded:

1. **The Fastlane/TestFlight/App Store bullet** has no number at all, only "faster and more reliably." A release-time figure (before and after, or builds per week) would turn this from a mechanism claim into a measured one, and it is the bullet most directly answering the posting's own named tool.
2. **The Design Component SDK bullet (Verimi)** says "adopted by Verimi Wallet and AOK" with no count of screens, teams or development-time saved. A number here would sharpen the direct answer to "collaborate with design teams on usability refinement."
3. **The identity SDK bullet (Verimi)** has no client or user count. Even a rough figure, if disclosable, would strengthen it.
4. **Apple design principles / HIG depth** has no metric to add, it is a qualitative gap rather than a missing number. See Gaps not closed.

## Gaps not closed

- **"Apple design principles" is only weakly evidenced.** `UI/UX` in `skills.md` is `listed`, not `strong`, supported only by the Figma portfolio link already in Contact. Nothing on this CV concretely demonstrates HIG depth. This was flagged in the scored record as the one gap the Storyboards fact did not close, and it still stands.
- **"Ensure cross-platform consistency with Android developers"** has no Android counterpart anywhere on the profile. `Kotlin`/`Android` is deliberately absent per `skills.md`. Research separately found no Android app appears to exist at Arise despite the responsibility being stated since at least 2020, so this may be moot in practice, but the CV cannot answer it either way.
- **MVC is not a skill entry anywhere in `skills.md`.** The research brief's sibling posting names "Solid knowledge of MVC and MVVM" for the same codebase. `Design Patterns` is on the sidebar and is `strong`, and the PakWheels migration bullets evidence Storyboards and UIKit directly, but MVC itself is not claimed anywhere. If Farrukh has MVC experience to confirm (near-certain, given the Storyboards-era codebase he migrated off), it belongs in `skills.md` as a new entry, not invented here.
- **No number behind the Fastlane pipeline, the Design Component SDK's reach, or the identity SDK's scale.** See Metrics worth adding above.

## Page-fit contingency

I could not render this file. Built against the pattern in `applications/sumup-ios-mobile-platform/`, where 11 experience bullets plus 10 education bullets (all six M.Sc. plus all four Bachelor's) filled one page, and 12 experience bullets plus 10 education bullets overflowed to two. This CV carries 10 experience bullets (4 Verimi, 6 PakWheels) and 6 education bullets (all M.Sc., no Bachelor's), fewer total than either of those reference points, but several bullets here run longer per line (the two-stage migration bullet in particular), so the exact fit is uncertain without rendering.

- **If it overflows:** cut `Agent-Based Modeling` first (flagged in `education.md` as costing a line on its own), then `Scene Detection`, before touching any Professional Experience bullet. Every experience bullet here was chosen against the scored record's explicit priority order and none should be the first cut.
- **If it underfills:** add Bachelor's bullets back per `education.md`'s filler guidance, most likely `Scientific Calculator : Android Mobile application using JAVA` first, since it is the one bullet on the whole profile that at least touches the posting's "cross-platform consistency with Android developers" line, even though it is coursework rather than professional Android experience and should not be oversold as such.

## Page count

Not confirmed. Awaiting render.
