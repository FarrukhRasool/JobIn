# Application notes

## Track

ai-engineer. The posting is pure ML (Python, PyTorch, TensorFlow, model training/evaluation/inference pipelines, ML fundamentals), with no mobile or iOS content anywhere, so track clarity was not in question. The score record confirms this at 15/15.

## Location claimed

Berlin, Germany. The posting lists "Remote (Work from Anywhere) / Canada". Canada is on the USA/Canada/Australia list in the tailor-cv rule, so the Contact line shows Berlin rather than the master's Bavaria default.

## Email used

Default, farrukhrasool65@gmail.com.

## Employment status shown

Verimi shown as plain "iOS Developer", no Working Student qualifier. This is an ordinary professional posting, not a student-targeted one.

## Section order

**Education sits above Professional Experience on this CV**, reversing the house order in `profile/cv-skeleton.typ`. Farrukh asked for the swap on 2026-08-04 and it is the right call for this posting: the track is ai-engineer, every ML claim on the profile is M.Sc. or project work, and the employment history is iOS. Putting Education first means a reader meets Deep Vision, the agentic FastAPI backend and RosBot before they meet two iOS jobs, which is the honest order of relevance here.

The navy bar moved with it. The house convention across every CV in `applications/` is that the first main section takes the bar and the rest carry `bar: false`, so `#main-head("Education")` now takes the default and `#main-head("Professional Experience", bar: false)` does not.

**This is application-specific, not a change to the skeleton.** Any ios-developer CV should keep the standard order, since there the employment is the evidence.

## Led with

The M.Sc. and personal projects, since that is the only ML-employment-adjacent evidence on the profile. This is where the third pass added most of its content, on the coordinator's instruction that the professional-experience cuts were correct on the track's own terms and the underfill should be closed with more AI-relevant depth instead.

- Deep Vision leads the Education section, using the framework-named variant ("built in TensorFlow and PyTorch"), because it is the closest thing on the profile to the posting's actual ask: model training, evaluation and a named-framework comparison. Left untouched across all three passes: `profile/projects.md` carries a live `TODO` on the dataset and the comparison's result, so nothing was added here.
- Agentic AI (Bedtime Story Teller) is second, now rewritten to lead with the backend rather than the iOS client, per the track file's own instruction to "lead with the backend". It names the FastAPI layered architecture (routers over services over models), the Model Context Protocol (MCP) server, and the test suite spanning api, services and integration, then closes on the local inference through Ollama and Mistral that was already there. The test suite and layered architecture are the strongest new evidence that this is structured software, not a notebook, which answers "real-world ... codebases" and "production-like ... systems" more directly than the previous, thinner version did.
- Agent-Based Modeling was cut on the fifth pass to make room for the Verimi Design Component SDK bullet. See "Added, fifth pass" below.
- Autonomous Robot (RosBot) was expanded from one thin line into the strongest systems bullet on the page: a pure Python Webots controller, FastSLAM 2.0 across 30 particles, and the background mapping thread at 10 Hz running against the 32 ms motion control loop. This is the closest thing on the whole profile to "build, run, and modify ... pipelines" as real concurrent systems work, and the track file names this exact concurrency detail as what to emphasise.
- Verimi and PakWheels stay present, but every bullet was checked against the score record's explicit warning: nothing here is worded to imply ML employment. The bullets describe SDK ownership, CI/CD pipeline construction, legacy migration at the language level, quality ownership, and product experimentation, genuine transferable engineering signals framed honestly as software engineering, not machine learning.

## Experience balance

Verimi carries 4 bullets: identity SDK ownership (AOK and BARMER, integrated independently), CI/CD build-time halving via xcframework automation, spec-driven development (SDD) automation across Claude and Codex, and the Verimi Design Component SDK built with designers.

PakWheels carries 6 bullets: the Objective-C to Swift migration, the Jenkins-calls-Fastlane per-PR pipeline, the crash-free score above 99% with the 20% launch time cut, the CocoaPods to Swift Package Manager 40% build improvement, the Firebase A/B tests measuring lead conversion rate, and the Core Data reference model extension.

10 professional bullets total, inside the usual 9 to 11 range. The fourth pass shipped at 9, with Verimi at 3, which is one bullet below `scripts/check-style.py`'s thin-experience floor of 4 and left Verimi and PakWheels 3 apart, past the balance checker's threshold of 2. The fifth pass (this review) restored the Verimi Design Component SDK bullet, one of the four cut on the second pass, to fix both. The other three second-pass cuts, the two UIKit-to-SwiftUI migration bullets and the mentoring bullet, stay cut: the CV already carries one legacy-migration story (Objective-C to Swift) and the posting names no mentoring responsibility. See "Added, fifth pass" below.

## Added, third pass

The second re-render came back at one page with 39mm free at the foot. Three additions, all from confirmed material already in `experience.md` and `projects.md`, none of them touching the four bullets already cut:

- **Autonomous Robot (RosBot), expanded.** Was one line naming only SLAM. Now names the pure Python Webots controller, FastSLAM 2.0 with the 30-particle count, and the background mapping thread at 10 Hz against the 32 ms motion control loop. This was the single biggest miss in the previous draft against an entry that `projects.md` treats as the reference-standard depth on the whole profile.
- **Agentic AI (Bedtime Story Teller), deepened on the backend.** Now leads with the FastAPI layered architecture and the Model Context Protocol server, and names the test suite spanning api, services and integration. The iOS client and its avatar streaming are not claimed anywhere, since `projects.md` is explicit that `WebSocketManager.swift`, `Streaming.swift` and `ApiConfig.swift` carry HeyGen's own author headers.
- **PakWheels, one new bullet on Firebase A/B testing.** "Ran Firebase A/B tests behind feature flags, measuring lead conversion rate between variants to inform product decisions." Written as product experimentation measured against a named business metric, not as model evaluation. It is the closest thing in the paid employment history to "prepare datasets, features, and metrics for ... validation" and "evaluate ... behaviour", and it is honest about what it actually is.

## Added, fourth pass

The third re-render came back at one page with 13mm free, one millimetre over the 12mm threshold in `scripts/check-fit.py`. One further bullet closed it:

- **PakWheels, the Core Data reference model.** "Extended the Core Data reference model behind the search filters, adding a car generation entity and its relationships." Chosen over the remaining Verimi material, which is all regulated-identity work with no bearing on an ML posting. It is data-modelling evidence, which is the nearest honest answer to "prepare datasets, features". Worded to the limit `experience.md` sets: he extended an existing model, he did not design the stack, which was created by another engineer in 2016.

Final render at the fourth pass: one page, 3mm free, fit ok.

## Added, fifth pass

This review (2026-08-04) ran `scripts/check-style.py` against the fourth-pass CV and it FAILed on two checks that the first four passes did not catch: `thin-experience` (Verimi GmbH had only 3 bullets, below the 4-bullet floor) and `keyword-stack` (the Jenkins/Fastlane bullet read as two tools stacked as an adjective in front of "pipeline"). A `comma` FAIL also hit the Agentic AI education bullet, which had drifted to 2 commas across its four sentences. Three fixes, all mechanical, no new facts:

- **Verimi, Design Component SDK bullet restored.** "Built the Verimi Design Component SDK with designers, adopted by the Verimi Wallet app and AOK." This is the bullet cut on the second pass (see "Cut" below), brought back specifically to clear the thin-experience floor. Chosen over the other three second-pass cuts because it continues the SDK-ownership theme the identity SDK bullet already opens, `experience.md`'s own "building for other developers" cross-cutting theme, rather than adding a second UI-migration story or reopening mentoring, which the posting does not ask for.
- **Jenkins/Fastlane bullet reworded.** "Built a Jenkins pipeline that calls Fastlane to produce a signed staging build per PR..." replaces "Built the Jenkins and Fastlane pipeline...". Same fact, same source (`experience.md`: "Jenkins orchestrates and Fastlane builds"), no longer two tool names stacked as an adjective in front of a noun.
- **Agentic AI bullet re-punctuated.** The clause after "Project Gutenberg" became its own sentence instead of running on with a comma, taking the bullet to 1 comma total.

Restoring the Verimi bullet pushed the page to 2, overflowing by roughly the height of the BSc entry. Closed by cutting the Agent-Based Modeling education bullet (the lowest-priority bullet on the page: not in `tracks/ai-engineer.md`'s lead-project list, and `education.md` flags it as "long, costs a line") and trimming two bullets that were wrapping to a near-empty third line: the identity SDK bullet dropped its closing "and conventions" clause, keeping "separate release cycles"; the Jenkins/Fastlane bullet now says "per PR" instead of "per pull request", since "PR" is already used later in the same sentence. No fact was removed from either trimmed bullet, only repeated or secondary wording.

Final render: one page, 7mm free, fit ok. `scripts/check-style.py`: 0 fail, 1 warn. The `claims` warn was closed by adding backticked terms to "Terminology mirrored" below, so it can actually be verified. The remaining `jd-coverage` warn on "MLE" stays: that is the name of a benchmark (MLE Bench), not a skill to add, and it is already recorded under "Gaps not closed".

## Cut

Four bullets were cut on the second pass to fix a main-column overflow. Three stay cut. The fourth, the Verimi Design Component SDK bullet, was restored on the fifth pass, see above.

- **Verimi, "Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI."** Pure iOS UI migration. Nothing in it speaks to ML codebases, pipelines or evaluation, and the CV already carries one legacy-migration story, Objective-C to Swift, that better answers "debug, refactor and improve production-like systems".
- **PakWheels, "Introduced SwiftUI to the codebase, having first migrated the UI layer from Storyboards."** Same problem, and it partly duplicated the Objective-C to Swift bullet directly above it in the same entry.
- **PakWheels, "Mentored one junior developer and conducted technical interviews."** The posting names no mentoring, leadership or hiring responsibility anywhere.

Also cut on the fifth pass: the Agent-Based Modeling education bullet, to make room for the restored Verimi bullet. See "Added, fifth pass" above.

Also cut before the first draft was reviewed: Scene Detection and Indoor Navigation (weaker or less relevant projects, no direct posting tie). The BSc bullets (none of the four stacks in that table is named in the posting). Verimi's eID/Ausweis SDK and certificate pinning bullets, since regulated German identity work has no bearing on this posting. PakWheels' Combine advanced-search bullet, UI-implementation detail the ai-engineer track explicitly says to downplay.

## Terminology mirrored

`Python`, `PyTorch`, `TensorFlow` sit on the sidebar and also appear in main-column bullets: the Deep Vision bullet names `TensorFlow` and `PyTorch` directly, the RosBot bullet names `Python`, so a parser that drops the sidebar still sees all three. "Machine Learning" and "Deep Learning" (sidebar only) answer "machine learning fundamentals". `inference` appears in the main column in the Agentic AI bullet's Ollama and Mistral line, answering "inference pipelines". "Build, run, and modify ... pipelines" is answered two ways: honestly through the `Jenkins`, `Fastlane` and `xcframework` CI bullets as build pipelines, and more directly through the RosBot bullet's background mapping thread and control loop as real concurrent systems work. "Debug, refactor, and improve production-like systems" is answered through the `Objective-C to Swift` migration bullet, framed as engineering rather than restated as ML. The posting's own phrase "real-world ... codebases" is answered by the `identity SDK` bullet, working inside two clients' constraints, and by the `FastAPI` backend bullet's layered architecture and `Model Context Protocol (MCP)` server, which is structured software rather than a script. "Prepare datasets, features, and metrics for ... validation" is answered, honestly and partially, from two directions: the Firebase A/B testing bullet supplies the metric half through lead conversion rate, and the `Core Data` bullet supplies the data-modelling half through extending a reference model with a new entity and its relationships. Neither is ML benchmark data preparation and the CV does not imply otherwise.

## Metrics worth adding

- The Deep Vision bullet would be far stronger with the dataset used and which architecture won the comparison. `profile/projects.md` flags this as an open `TODO`: "Which dataset, what the comparison measured, and what you concluded. Without the conclusion this is a capability claim rather than a result." This is the single most valuable number missing from the whole ai-engineer track, not just this application.
- No number exists anywhere for Agent-Based Modeling or RosBot beyond the 30-particle count (accuracy, task success rate, maze-completion rate). If either project gets a concrete result in future, it would strengthen every AI Engineer application, not just this one.
- The Firebase A/B testing bullet has no percentage lift or conversion-rate delta recorded anywhere in `experience.md`, only that lead conversion rate was the metric measured. A real number here would turn it from a methodology claim into a result.

## Gaps not closed

- Paid, professional ML engineering experience. Everything ML on this CV is M.Sc. coursework or personal projects. Every professional bullet is honest iOS/software engineering, deliberately not reworded to sound like ML work.
- MLE Bench-style benchmarking or evaluation-harness experience. Nothing on the profile evidences building or operating a benchmarking harness, only running one project-level model comparison (Deep Vision).
- "Prepare datasets, features, and metrics for ML benchmarking and validation" is only partially answered, by the Firebase A/B testing bullet's business-metric framing and the Core Data bullet's data modelling, not by anything resembling ML benchmark data preparation.
- "Evaluate model behavior, failure modes, and edge cases" is only loosely touched by RosBot's own honestly-stated limitations (unseeded RNGs, map-mediated green avoidance) and Deep Vision's evaluation metrics. Neither is evidence of evaluating someone else's model for benchmark tasks.
- No company vocabulary exists to mirror. `jobs/research/hire-feed-ml-engineer.md` confirms Hire Feed is a job aggregator with no named end client, so this CV mirrors the posting's own verbatim requirements and responsibilities text only.

## Weak match

This is a weak match, stated directly. The keyword overlap on paper is real (Python, PyTorch, TensorFlow, ML fundamentals are all genuinely evidenced), which is why the score sits at 63/100 rather than lower. But the actual day-to-day ask, working inside someone else's ML codebase, running benchmarking pipelines, debugging model behaviour at the level of failure modes, is not something this profile has done professionally. This CV is honest about that: it leads with the M.Sc. and projects because that is where the real evidence lives, and it does not dress the iOS employment up as ML work to close the gap. Whether it is worth sending is a volume-application call, not a strong-fit one.

## Page count

One page, 7mm free at the foot of the main column, `fit ok`. Six render passes in total: 2 pages with a 22mm overflow, then 39mm underfill after the cuts, then 13mm after the third-pass additions, then 3mm once the Core Data bullet was added (fourth pass), then back to 2 pages when the fifth-pass review restored the Verimi Design Component SDK bullet, settling at 7mm once the Agent-Based Modeling bullet was cut and two other bullets were trimmed of secondary wording.
