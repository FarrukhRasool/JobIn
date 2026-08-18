# Track: iOS Developer

Use for iOS Engineer, Mobile Engineer, Swift Developer, and any role where shipping to the App Store is the job.

## Positioning

A production iOS engineer who owns shared architecture rather than one-off screens. Four years across two employers, in codebases other engineers and other companies depend on: a session and authentication layer serving two apps, an identity SDK integrated by two insurers, and five published packages. Underneath that sits an M.Sc. in Artificial Intelligence, which is a differentiator on the postings that want it and one line everywhere else.

## Summary template

> iOS Engineer with four years shipping production applications in Swift and SwiftUI, owning shared architecture across multiple apps rather than isolated features. Built the session and authentication layer behind a marketplace serving millions of users, and an identity SDK now integrated by two separate insurers. M.Sc. in Artificial Intelligence. Comfortable owning a feature from architecture through App Store release.

## Lead with paid production work

**This is the change that matters. Earlier versions of this file led with side projects, which undersold four years of production engineering.** Personal work is the fallback, not the opening.

1. **`UserManager` at PakWheels**, the user and session singleton behind both the Classified and Dealers apps. Auth injection into every outbound request, switching between logged-in and anonymous credential paths, read-through caching, the full login and logout lifecycle, dependency injection, and `@objc` interop so surviving Objective-C could call into it. **The strongest single ownership claim on the profile.** Lead with it for anything naming authentication, sessions, API layers, singletons or shared architecture.
2. **The Combine advanced search at PakWheels.** 18 `@Published` filter dimensions publishing into a staged model that derives its own chips, with a single `dropFirst` breaking the hydration loop. Fully evidenced and it survives a real interview probe. Lead with it for anything naming Combine or reactive programming.

   **Write the bullet in plain words.** That vocabulary is for the interview, not for the page. `@Published`, "filter dimensions", "staged filter model" and `dropFirst()` read as noise to the recruiter who screens the CV first, and a bullet nobody finishes cannot help. Name Combine and keep the 18. Drop the rest.

   > Wrong: Built the used-car advanced search screen on Combine, binding 18 `@Published` filter dimensions to a staged filter model that derives its own selected-filter chips.
   > Right: Rebuilt the used-car advanced search on Combine, wiring 18 filter controls into a single model so the filter chips updated themselves.

   The evidence is unchanged either way. It lives in `profile/experience.md` and comes out under questioning, which is where the detail earns its keep.
3. **The Verimi identity work.** German eID card scanning on AOK and the Wallet through the official Ausweis SDK, and the identity SDK that AOK and BARMER integrate separately on release schedules Verimi does not set. Lead with it for identity, KYC, onboarding, fintech, health or regulated data.
4. **The measured engineering numbers.** Crash-free above 99% and launch time down 20% at PakWheels, 40% build improvement from the SPM migration, TestFlight build time halved at Verimi. Use these whenever a posting names reliability, performance or build tooling.

## Then personal work, as supporting evidence

5. **The SwiftUI package set.** Five published, reusable, documented components. API design and writing for other developers.
6. **StoryTeller**, the iOS client for the Bedtime Story Teller backend. SwiftUI with MVVM, a typed API layer, and streamed LLM responses. Carries the AI differentiator without argument. **Write its README before using it.** The repo still opens on an empty README and an Xcode project called `InteractiveAvatarDemo`, which works against you.
7. **Dolidroid**, framework design for enterprise use.
8. **TodoPharma**, commercial delivery, if you can disclose it.

## Skills order

Swift, SwiftUI, UIKit, Combine, async/await, Core Data, Objective-C and `@objc` interop, session and authentication architecture, Swift Package Manager, Fastlane, XCTest, CI/CD, Git, clean architecture and design patterns.

Then a single ML line: Python, PyTorch, Core ML, OpenCV.

## What to emphasise

- Four years of production, App Store shipped work
- Shared architecture used across multiple apps and by external companies, not just feature work
- Legacy migration as a practised skill: Objective-C to Swift, and Storyboards through programmatic UIKit to SwiftUI
- Release engineering, Fastlane and CI/CD
- ML depth as a differentiator, one or two sentences, not a section

## Where this track is strongest

Postings mentioning Core ML, on-device inference, camera pipelines, AR, or health and sensor data. There the dual profile stops being "unfocused" and becomes the exact hire. Score those higher and tailor them harder.

Also strong on anything naming authentication, session handling, SDK or framework authoring, or maintaining an existing Objective-C codebase, all of which are now directly evidenced.

## Watch for

Interviewers reading the dual profile as indecision. Pre-empt it in the letter with one line: the ML is what he builds with, iOS is where he ships it. Own the combination rather than apologising for it.

**Three claims this track must never make**, all established 2026-08-03 by reading the source:

- He did **not** build PakWheels' Core Data stack, which is dated 2016 and predates him. He extended the model with the `CarGenerations` entity to ship the generation filter.
- He did **not** create the filter feature. `ChipsFilter`, `ChipsFilterCell` and `PillsFiltersHelper` are all 2021. He substantially extended an existing filter system.
- **Keychain is not on this profile.** `UserManager` stores tokens in `UserDefaults`, and a full-repo sweep found no Keychain call anywhere. If a posting asks about secure credential storage, the honest answer is that he has seen this pattern in production and knows why the Keychain is the right home for it.
