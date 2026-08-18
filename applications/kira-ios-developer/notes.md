# Application notes

## Track

`ios-developer`. This is a clean single-track fit, not a blend. The posting's Requirements and Responsibilities blocks name only Swift, SwiftUI, UIKit, async/await, iOS architecture patterns and production quality ownership, with no AI or ML skill anywhere in them. `jobs/research/kira-ios-developer.md` confirms this from the live Ashby posting's own department field, which reads "Engineering", the same flat department as every other mobile role, not BJAK's separate "A1 Engineering" AI/ML team. The title says "AI Finance Agent" and one line mentions "AI-assisted user journeys", but neither changes what the job actually asks for. `tracks/ios-developer.md` governs the summary, order and skills, not the AI track.

## Location claimed

Berlin, Germany. The posting is remote with a Germany-based requirement, and LinkedIn's own job header lists Berlin, matching the rule for a remote European posting with a company-stated city.

## Employment status shown

Verimi shows plain `iOS Developer`, no Working Student qualifier. This is an ordinary professional posting at mid seniority, not a working-student, Werkstudent or internship listing, and it does not require current enrolment.

## Led with

PakWheels' `UserManager` session and authentication layer (auth token injection into every outbound request, logged-in versus anonymous credential paths) as the direct answer to "integrate APIs, authentication, secure data handling". Paired with certificate pinning on BARMER's TAK libraries for the secure-data half, and the crash-free score above 99% plus the 20% launch time cut for "own app quality across performance, crash rate". The two migrations, Objective-C to Swift at PakWheels and UIKit to SwiftUI at both BARMER and the Verimi Wallet, answer "iOS architecture patterns" with real modernisation work rather than a keyword. The Verimi identity SDK bullet opens the Verimi section because it is the sharpest ownership claim on the whole profile: one API surface, two insurers, two release schedules Verimi does not control.

For "use production feedback, analytics and customer behaviour to improve features after launch" I led with the PakWheels Firebase A/B testing bullet, since it is the only evidenced instance of that exact loop, measuring lead conversion rate between variants and feeding results into product decisions. For "strong product sense and care for UX" I used the Combine advanced search bullet, since deriving filter chips automatically rather than hand-maintaining them is a real UX-quality decision, not just a technical one.

The M.Sc. sits in Education, after Professional Experience, with three bullets. I picked the Agentic AI bullet first because an iOS app with interacting AI agents is the one honest, non-inflated link to the posting's "AI-assisted user journeys" line, without claiming ML domain expertise the posting never asks for. Indoor Navigation and the RosBot SLAM project follow for general engineering rigor.

## Experience balance

Verimi: 6 bullets. PakWheels: 7 bullets. Total 13, above the usual 9-to-11 range, because the first render came back 26mm underfilled and the checker's instruction on underfill is to add content back rather than leave the page short. The gap between employers is 1 bullet, well inside the 2-bullet rule. PakWheels got the extra bullet because it carries the strongest, most directly evidenced answers to this posting's own centre (app quality ownership, production debugging, architecture, API/auth integration): the session and auth layer, the crash-free and launch-time numbers, and both the language and UI migrations.

## Cut

- **The Jenkins and Fastlane per-PR pipeline.** Cut on the second render pass, after the first came back 26mm underfilled. It is real and strong build-tooling evidence, and it was the longest of the three bullets added back, so it went first when the page tipped to two. The CocoaPods to Swift Package Manager migration was kept instead, since it carries a number and holds one line rather than two.
- **Verimi's Spec-Driven Development automation across Claude and Codex.** Left out of the main-column bullets deliberately, per the brief's finding that this role sits outside BJAK's AI/ML team. The AI Tools Skills sidebar block still carries Claude, Codex and SDD, which answers "AI-assisted user journeys" and "work with... AI engineers" without restructuring the CV around it.
- **PakWheels mentoring, hiring and Design Component SDK integration at BARMER.** All real senior signals, cut for space in favour of bullets that map more directly to the posting's stated requirements.
- **Core Data (the `CarGenerations` filter extension).** Genuine and defensible, but Core Data is not named or implied anywhere in this posting, so it stayed off the main column. It is on the sidebar as a skill row, since it is real and could come up.
- **Bachelors bullets.** None of the four coursework stacks (MERN, Android/Java, .NET, C++) map to anything this posting names.

## Terminology mirrored

Terms below are backticked only where they appear literally in a main-column bullet, which is the condition the style checker tests. The posting's own phrases are quoted rather than backticked, since the CV answers them with evidence instead of repeating them.

- `Swift`, `SwiftUI`, `UIKit`, `async/await` and `Combine` all appear in main-column bullets, not only the sidebar. The Wallet login bullet names async/await directly, matching the posting's requirements line.
- `Ausweis SDK`, `certificate pinning` and `Objective-C` carry the identity, secure-transport and legacy-migration evidence.
- "Integrate APIs, authentication, secure data handling" is answered by the PakWheels session and authentication bullet plus the certificate pinning bullet, without repeating the posting's wording back at it.
- "iOS architecture patterns" is answered by naming the patterns actually used, MVC and MVVM and dependency injection in the sidebar, and by the two migration bullets in the main column.
- No vocabulary was borrowed from BJAK's own site beyond what the research brief carries. That brief found no tech-stack terms this posting does not already name, and specifically no TensorFlow Lite, unlike the sibling bjak-ios-developer posting.

## Metrics worth adding

- **The Verimi identity SDK bullet has no number.** "AOK and BARMER each integrate it" is a strong structural claim but a count of API consumers, release cycles per year, or years the SDK has been in production would make it stronger still. Worth asking whether Farrukh can put a figure on how long the SDK has been live or how many endpoints it exposes.
- **The Combine advanced search bullet has the exact count of filter dimensions (18) but no outcome number.** If there is any measured effect on search usage, completion rate or support tickets after the rebuild, that would turn a strong technical bullet into a strong technical-plus-business bullet.
- **The BARMER certificate pinning bullet has no time or incident figure.** Even a rough sense of when it shipped relative to a security requirement or audit would sharpen it beyond "implemented".

## Gaps not closed

- **Payments, cards, transfers and rewards.** The posting names all four directly in its Responsibilities line, and `experience.md` records no evidenced ownership of payment flows anywhere on the profile. PakWheels was a marketplace with transactions but no payment-rail work, and Verimi's identity and wallet work is adjacent to payments, not the same thing. This CV does not stretch either into a payments claim. This is the single biggest honest gap against the posting and belongs in the letter as something to address directly rather than paper over.
- **Keychain / secure credential storage.** Certificate pinning is the evidenced secure-transport fact and is what this CV leads with. PakWheels' token storage goes through `UserDefaults`, not Keychain, and there is no Keychain call anywhere in that codebase. If an interview pushes further on secure data handling than certificate pinning covers, the honest answer is that Farrukh has seen the `UserDefaults` pattern in production and knows Keychain is the correct home for it, not that he has shipped Keychain himself.
- **Loading states, edge cases and responsiveness** are named individually in the posting's app-quality line. The CV answers the crash-rate and performance-number half of that line directly, but nothing on the profile evidences loading-state or edge-case handling as a named, separate piece of work, so it is covered only implicitly through the broader quality bullets.
- **Company risk, not a CV gap, but worth repeating here since it shapes how hard to push this application:** this is the third application into the BJAK/Kira employer group inside eight days. The first two, `bjak-ios-developer` (89) and `kira-mobile-engineer` (69), both applied 2026-07-30, are unanswered. The board has grown from 8 to 18 near-duplicate Germany mobile postings in five days, including two verbatim duplicates of this exact title. Worth applying regardless per the volume-over-fit standing rule, but go in expecting this may land with the same recruiter as the first two.

## Page count

**One page, 10mm free at the foot of the main column, fit ok.** Three render passes plus one post-review wording fix.

Pass 1 came back at one page with 26mm unused, an underfill rather than an overflow, which is unusual for this pipeline and meant real evidence was sitting on the floor for no reason. Added three bullets back: the Verimi TestFlight and xcframework automation, the PakWheels Jenkins and Fastlane per-PR pipeline, and the CocoaPods to Swift Package Manager migration. All three answer "release stability", which the posting names in its app-quality responsibility.

Pass 2 tipped to two pages, over by 22mm. Cut the Jenkins bullet, the longest of the three at two lines. Pass 3 landed at one page with 5mm free.

**Review pass, 2026-08-05.** The Verimi Wallet login and registration bullet originally read "...through the network call and the card scan", implying the card scan was part of that flow. `experience.md` lists the login/registration flow, the SealOne SDK integration and eID scan verification as three separate Verimi Wallet facts, not one sequence, so that relationship was not confirmed. Trimmed to "...through every network call", which shortened the line by one wrap and moved free space from 5mm to 10mm. No bullet added back, 10mm is still a normal single-page fit.

If this ever needs space again, the Swift Package Manager bullet goes next. If it underfills again, the Jenkins bullet is the one to restore, and the fourth M.Sc. bullet after that.
