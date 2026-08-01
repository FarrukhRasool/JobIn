# Application notes: Arise, iOS App Developer

**Track:** ios-developer
**Location claimed:** Berlin, Germany. Matches the posting's stated location. Research flags this as likely nominal, Arise appears to be fully remote under Cyprus law with no verified office, but the posting itself names Berlin so the Contact line follows the standing rule regardless.
**Email used:** farrukhrasool65@gmail.com, the default
**Employment status shown:** `iOS Developer`, plain, on both entries. This is an ordinary professional posting (4+ years required, not a student or Werkstudent role), so the Verimi line carries no Working Student qualifier.
**Score:** 84/100, APPLY. Rescored today from 79 after the Storyboards migration fact was added to the profile.
**Rendered:** yes, 2026-08-01. One page, `fit ok`, 6 mm free. `check-style.py` 0 fail 0 warn. See "What changed after the agent handed over" at the foot of this file.

## Led with

Followed the scored record's "Lead with" section exactly.

**PakWheels bullet order, in priority order:**
1. The two-stage UI migration, Storyboards to programmatic UIKit to SwiftUI. This is the single strongest fact for this posting: the role maintains a codebase live since November 2012, and a sibling Senior iOS posting for the same app names Storyboards and MVC explicitly. He has taken that exact codebase shape forward, in a live consumer app, without a rewrite.
2. The Objective-C to Swift migration, kept as an independent bullet rather than merged with the UI migration, so it reads as two separate modernisation efforts on the same app: one at the language level, one at the UI layer.
3. CocoaPods to SPM, 40% build improvement. Near-literal answer to the posting's named tool.
4. The Fastlane pipeline to TestFlight and the App Store. The other named tool.
5. Firebase A/B testing and lead conversion, for "support monetization initiatives with measurable business impact."
6. Crash-free score above 99%, for "maintain and optimize the iOS codebase for long-term sustainability."

**Verimi kept secondary**, six bullets against PakWheels' eight, because nothing in this posting asks for identity, fintech or regulated work. Kept: the UIKit to SwiftUI migration on BARMER and the Wallet (reinforces the modernisation theme and the posting's "enhancing user experience" line, since accessibility was the stated goal), the CI/CD and TestFlight build-time bullet (echoes the posting's own Fastlane ask), the Design Component SDK built with designers (the direct answer to "collaborate with design teams on usability refinement"), and the identity SDK ownership bullet (kept as a general platform/problem-solving signal even though the domain is identity, not because this posting wants identity work).

**Education bullets:** five of the six M.Sc. bullets included, `Agent-Based Modeling` cut on the final pass, ordered with the two most mobile-flavoured first (Embedded Intelligence, then Agentic AI) rather than leading with Agentic AI as other CVs have. This is page-fill content in a lower-scrutiny section, not a claim about relevance to this specific posting. `Agent-Based Modeling` is flagged in `education.md` as "long, costs a line", which is exactly why it went on the overflow pass. Bachelor's bullets left at the default of none, per `education.md`, since no posting-named stack (React, Android/Java, .NET, C++) applies here.

## Cut

- ~~**The whole AI Tools Skills sidebar block**, dropped entirely per instruction.~~ **Reversed 2026-08-01, on Farrukh's catch.** The instruction to drop AI content conflated two different things. `CNN | ViT`, `Deep Vision` and the rest are domain claims and stay cut, because this posting has no AI angle. `Claude | Codex` and `Sub Agents | SDD` are *how he works*, backed by the Verimi SDD automation, which is employment evidence rather than a project. Every other iOS application in the pipeline carries this block: BJAK, SumUp, Jobgether, Kira and Avelios. Arise was the sole exception and that was a defect, not a judgement.
  Paid for out of the sidebar, which was already at the 11-row ceiling: cut `Unit Testing | CI/CD`, and merged `Design Patterns | Code Reviews` and `Clean Code Architecture` into one row as `Design Patterns | Clean Code`. `Code Reviews` went because the code review bullet had already been cut from the main column, so nothing evidenced it. `CI/CD` still appears in the Verimi xcframework bullet, which is the copy a parser reads anyway.
- **Every AI/ML skill from the sidebar pool**: Machine Learning, Deep Vision, CNN, ViT, TensorFlow, PyTorch, Keras, Agent-Based Modeling, SLAM, Ollama, Mistral, MCP Servers, Claude, Codex, SDD, Sub Agents, Plugins/Hooks.
- **eID-specific and fintech-specific skills kept out of the sidebar**: Ausweis SDK, SealOne SDK, Certificate pinning, eID card scanning, async/await. All real and strong-rated, but none answer anything in this posting, and per "skills relevance beats completeness" they would read as keyword padding in a skills list. **Corrected 2026-08-01:** async/await and the Ausweis and SealOne SDKs are now named in Verimi *bullets*, added on the fit passes to fill the page and rebalance the two employers. The sidebar still excludes them. Certificate pinning and eID card scanning appear nowhere.
- ~~**PakWheels' 20% app launch time bullet and the xcframework/modularisation bullet**, cut to keep the section at the six facts the scored record named.~~ **Reversed 2026-08-01.** Both are back. The six-bullet version rendered one page with 33 mm unused, which the fit checker treats as a defect, and these two were the strongest available fill: the 20% answers "optimize", the frameworks split answers "long-term sustainability".
- **Git/Github and Scrum/Kanban sidebar rows.** Generic, not named by the posting, cut to keep the sidebar clear of the overflow threshold. Final sidebar: 9 Technical Skills rows plus 2 AI Tools rows. `Languages` confirmed visible on page one by reading the rendered PDF, which the fit checker cannot verify since it measures only the main column.
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

## Experience balance

**Verimi 6 bullets, PakWheels 8.** PakWheels leads on count because it is the longer tenure (2 years 8 months full time against 1 year part time) and because the posting's core ask, maintaining and optimising a long-lived codebase, is entirely a PakWheels story. `scripts/check-style.py` passes at this ratio; it warned at 9 against 5.

## Page count

**One page. `fit ok`, 6 mm free at the foot of the main column.** Rendered and confirmed 2026-08-01.

## What changed after the agent handed over

The `cv-tailor` agent hit the session limit after writing both files and could not render. The main thread rendered, hit the fit and style checkers, and adjusted. Recorded here so the file is not read as the agent left it.

1. **First render came out one page with 33 mm unused**, which `render-cv.sh` flags as underfill. Added four bullets: `async/await` on the eID and Wallet flows (Verimi), the 20% launch time cut, the frameworks split, and a code review and refactoring line (all PakWheels).
2. **That overflowed to two pages by 22 mm.** Cut the code review bullet, which was the weakest and most generic of the four, and cut `Agent-Based Modeling` from Education, following this file's own contingency order and on the reasoning that a posting with zero AI content does not need the longest pure-AI research bullet.
3. **`scripts/check-style.py` then failed three times on comma rules** the agent had not applied: maximum one comma per bullet, and no comma before `and`. Rewrote the frameworks bullet and dropped the hiring and mentoring bullet that carried both faults.
4. **The checker also warned on experience balance at 9 against 5.** Added the Ausweis and SealOne SDK integration bullet to Verimi, bringing it to 6 against 8, which passes.

Final: **0 fail, 0 warn** on `check-style.py`, `fit ok` on `render-cv.sh`.

The hiring, mentoring and code review material is therefore **not** on this CV. It is real and confirmed in `profile/experience.md`, it simply lost on space against material that answers this posting more directly. It is the first thing to add back if a later draft needs a seniority signal.
