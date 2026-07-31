# Application notes: Jobgether, Mobile Engineer (iOS)

**Track:** ios-developer, flagged PRIORITY-both
**Location claimed:** Bavaria, Germany. Fully remote role, no city to mirror
**Employment status shown:** `iOS Developer`, plain. Professional full-time posting
**Email used:** farrukhrasool65@gmail.com, the default
**Score:** 85/100
**Rendered:** both PDFs, 1 page each, `fit ok` at 3 mm free

## This CV has a Projects section, which no other application does

The posting's core ask is AI features inside a native iOS app: backend APIs, interaction patterns for streaming and retries, capturing behaviour to evaluate models. Bedtime Story Teller answers that directly and could not be shown properly as a one-line education bullet.

So the CV gains a **Projects** section between Experience and Education, carrying five bullets on it. The `Agentic AI` education bullet was removed, because it describes the same project and would have been a duplicate.

Verimi is cut to three bullets. Leading on the **SDD automation** rather than the insurance work, since AI tooling is the thread here.

Three strong Verimi bullets were **deliberately cut** as keyword-dropping for this posting: eID scanning with the Ausweis SDK, owning the identity SDK across AOK and BARMER, automating xcframework creation to halve TestFlight builds. All three are identity, SDK-ownership and build-tooling content. This posting asks for none of it. They belong on a platform role such as SumUp, not here.

PakWheels leads on **feature flags and A/B tests**, which their posting names as a bonus.

## Terminology mirrored

`SwiftUI`, `REST`, `LLM`, `MCP`, `feature flags`, `A/B tests`, `crash-free`, `App Store`, `TestFlight`, `Alamofire`. All in main-column bullets, not only the sidebar.

## Sidebar only, and the checker hole it exposed

**Sidebar only, by Farrukh's decision on 2026-07-31:** async/await, SQL and NoSQL.

He cut the `async/await` tail from the Verimi login bullet because it read as a keyword rather than a statement, and he cut the `JWT` and `SQLAlchemy` projects bullet. Both were right on craft. The cost is that three terms the posting names as requirements now survive only in the sidebar, so an ATS that drops the sidebar sees none of them. Recorded rather than argued.

Finding this exposed a hole in `check-style.py`. It verified this claim against the whole `.typ` file, so a sidebar-only term passed a claim that says "not only the sidebar". It now checks from the first `#main-head` onward. That is the same defect `profile/experience.md` line 59 records from the BJAK CV.

## Deliberately not claimed

Three items, all of them things a careless CV would have claimed:

- **CoreML and on-device inference.** Listed as advantageous. TensorFlow, PyTorch and Keras are `strong` via Deep Vision, but that is training and comparing models. Running inference on a phone is a different thing. The letter states the distinction outright.
- **Background tasks.** Named in the requirements, evidenced nowhere.
- **Streaming.** Named in the responsibilities. `StoryTeller` contains `Streaming.swift`, but that file carries HeyGen's author header per `profile/projects.md`. What is his there is the Alamofire integration layer in `BedTimeAPIs.swift`. That is what the CV claims.

## The letter has a different shape

**There is no company to open on.** Jobgether posts on behalf of unnamed partner companies, so the usual opening, something specific and checkable about the employer, is impossible. The swap test cannot be applied because there is no name to swap.

The substitute is to open on **the problem** instead. Their posting names AI interaction patterns as a requirement, which is unusual and specific enough to build on. The letter then makes an argument rather than a claim: an AI feature that hides its reasoning feels unpredictable. Surfacing the decision costs a response field and buys trust. That is a point of view, which is the next best thing to company knowledge.

It closes by asking who the company is. Worth asking, since it also signals he noticed.

## Requirements with nothing against them

Found by `/review`. None can be closed without inventing a fact.

- **Memory management and battery efficiency.** Named in the requirements and again in the responsibilities. `profile/` evidences performance work as launch time and crash-free rate, not memory or battery specifically. Nothing was written for it. If Farrukh has done profiling work of that kind, it belongs in `experience.md` first.
- **Capturing user behaviour to evaluate AI models.** Narrower than it looks. The PakWheels bullet on feature flags and A/B tests through Firebase, measuring lead conversion to decide what shipped, **is** that measurement loop. What is missing is applying it to a model rather than a feature. That is a fair thing to say in an interview and not a thing to claim on the CV.
- **Cross-functional and distributed team collaboration.** Found on the second `/review` pass. The review step inside the Verimi SDD bullet touches it but does not answer it. Nothing in `profile/` names a specific instance of him working across backend, ML or product functions at Verimi, outside the identity-SDK content already excluded from this posting. Cannot be closed without fabricating. **This is worth supplying**, since it is named in both the requirements and the responsibilities. If he has a real example it belongs in `experience.md` first.

## Review, 2026-07-30

**Verimi's third bullet was rewritten.** It read "Build SwiftUI features against REST APIs designed with the backend team, using async/await for the network layer." That failed question 7 of `/review` twice over. It named no real feature. The "designed with the backend team" detail traced to nothing in `profile/experience.md` or `skills.md`, so it was invented rather than sourced. Replaced with a bullet that names a real, documented artefact: "Built the entire login and registration flow for the Verimi Wallet, using async/await", the same fact that already confirms async/await as `strong` in `skills.md`. This is what surfaced the third requirement gap above, since the removed phrase had been quietly standing in as the CV's only answer to cross-functional collaboration.

**That swap then dropped `SwiftUI` out of the current role**, which does not survive a posting that names SwiftUI as a core requirement. A reader checks the most recent employer first. So Verimi gains a fourth bullet, `Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI`, sourced from `experience.md` lines 63 and 90, where two apps is recorded as the stronger and more complete claim.

Paid for by cutting the PakWheels bullet on code reviews and clean code architecture. It answered "maintain code quality" only loosely. It was added as filler when the page was underfull rather than because this posting asked for it.

## Rewritten in full, 2026-07-31

Farrukh said the generated CVs were not up to the mark and that he did not feel confident sending them. He was right. The cause was in `tailor-cv`: 22 accumulated prohibitions and almost nothing describing what a good bullet looks like. The safest move had become quoting `experience.md` verbatim. The skill now opens with **You are writing, not quoting** and carries a positive craft standard.

Every bullet on this CV was then rebuilt to that standard. Same facts, composed rather than copied.

| Before | Now |
|---|---|
| Ship features into AOK and BARMER, two of Germany's largest health insurance iOS apps used by millions. | Ship SwiftUI features into AOK and BARMER, two of Germany's largest health insurance apps. |
| Built the entire login and registration flow for the Verimi Wallet, using async/await. | Own login and registration on the Verimi Wallet end to end, built on async/await for work that waits on a network and a card reader. |
| Designed, tested and shipped features in SwiftUI and UIKit to a production app used by millions. | Introduced SwiftUI to a production Objective-C codebase, then led its migration to Swift. |
| Built internal tooling automating Spec-Driven Development across Claude and Codex to write specs then review the changes. | Automated Spec-Driven Development across Claude and Codex into a loop that writes the spec, builds against it then reviews its own diff. |

**Projects carry the AI argument**, since that is what this posting is for. Two bullets now map to named responsibilities that nothing else on the CV answers: the deterministic fallback when LLM reasoning fails covers "retries, error handling". Showing which source answered covers "user-centric AI interaction design".

**Cut to fit.** `Scene Detection` was the least relevant education bullet for an AI-features posting. The LLM planning step and its fallback were merged, since they are one idea.

## Letter rewritten, 2026-07-31

Same principle as the CV. The old letter was serviceable but its fourth paragraph was a CV recap that made no argument. It also **omitted the Verimi SDD automation entirely**. For a company hiring on AI features, AI tooling done as paid work is one of the strongest things he has. The letter simply did not mention it.

**Opening.** Now names what makes the posting unusual rather than restating it. Most iOS postings ask for Swift and SwiftUI, this one asks for the interaction patterns around AI features.

**Proof.** The Bedtime Story Teller routing story, ending on the deterministic fallback so the feature degrades rather than breaks. That answers their "retries, error handling" responsibility with a design decision instead of a claim.

**The argument.** Unchanged in substance, tightened in wording. An AI feature that hides its reasoning feels arbitrary. Surfacing the decision cost one field in the response model.

**The fit paragraph now argues.** "Building that is one thing. Shipping it to people who did not volunteer for an experiment is another." That turns the production experience into the point rather than a list. It is also where the SDD automation now sits.

**Close.** Asks who the company is, then says what the answer would tell him. Wanting to know whether the hard part is the model, the interaction or the scale reads as someone assessing the work.

**The ML paragraph changed the most.** It used to be pure apology. Two sentences admitting no CoreML and no background tasks, with nothing positive around them.

It now opens with the M.Sc. and names two pieces of work, image classification with CNNs and vision transformers, and the robot that maps a maze it has never seen. Then the limit, in the same breath: the ML is real, it is training and comparing models rather than running them on a phone. Same honesty, but the reader learns he does AI before learning what he cannot do with it. This also matches the CV, which now carries four ML project bullets under the Masters.

**Paragraph three was flattened out.** It had run to six consecutive short sentences, which is the staccato tell in `human-voice`. Merged down to four with varied length.

340 words, one page.

## Gaps not closed

- **No on-device ML, no CoreML, no background tasks.** All three named honestly in the letter rather than left for them to discover.
- **No named employer**, so nothing in the application can be tailored to a company, a product or a stage.

## Before sending

- **Ask Jobgether who the partner company is** before investing in later rounds. Applying blind is acceptable once, not repeatedly.
- Fully remote from Germany, so no relocation question. This is the only application so far with no location friction.
