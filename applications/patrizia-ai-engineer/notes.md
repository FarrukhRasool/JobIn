# Application notes

## Track

`ai-engineer`. The posting is a named direct employer hiring specifically for agentic LLM work with Anthropic Claude, foundation models, agent orchestration and responsible AI. Nothing about the responsibilities leans iOS. The employment history is iOS, but every bullet chosen from it was picked for AI tooling, security, architecture and CI/CD, not UI features, per the ai-engineer track's instruction to keep mobile to one sidebar line.

## Location claimed

Augsburg, Germany. This is the honest location, not the usual override. Augsburg is the job's own city and is inside Bavaria, Farrukh's real base per `profile/constraints.md`.

## Employment status shown

Verimi shown as plain `iOS Developer`, no working-student qualifier. PATRIZIA is an ordinary professional posting scored `mid` seniority, not a student or Werkstudent role.

## Led with

Verimi's spec-driven development automation across Claude and Codex leads the whole CV, first bullet under the first entry. The posting names Anthropic Claude directly in both a requirement and a responsibility, and this is paid employment evidence for it rather than a hobby project, which the research brief and the scored record both flag as rare on this pipeline.

The rest of Verimi is ordered to answer the posting's own governance and security language next: the identity SDK owned across two independent insurer clients, certificate pinning on BARMER, eID scanning via the official Ausweis SDK on both AOK and the Wallet. Verimi closes on the CI/CD number, the halved TestFlight build time.

PakWheels bullets were chosen for architecture, CI/CD and measurable business value rather than app features, and led with the closest match to this specific posting: the A/B testing bullet that measures lead conversion rate and feeds business decisions, a near-literal match to "translate business processes into pragmatic technical solutions delivering measurable business value", since nothing else in PakWheels answers a named requirement this directly. Behind it, the Jenkins and Fastlane pipeline, session and auth ownership, the crash-free score, and the Objective-C to Swift migration close the section as general senior-engineering signal, since neither legacy migration nor mobile architecture is anything this posting asks for on its own terms.

Bedtime Story Teller carries the Education section on its own, expanded well beyond the pool's one-line bullet into four bullets: the MCP server with the LLM planning step and its deterministic fallback (the guardrail language, without using that word), the Python and FastAPI backend, the automated test suite, and local inference through Ollama for a children's product as a genuine privacy argument. This maps closely onto "AI agents executing complex, multi-step business tasks within defined guardrails" and "agent orchestration, tool use" without ever claiming retrieval-augmented generation.

## Experience balance

Verimi: 5 bullets. PakWheels: 5 bullets. Both employers are within the house range (Verimi 4 to 5, PakWheels 5 to 6) and exactly matched.

## Cut

Deep Vision, RosBot, Scene Detect and Indoor Navigation are all absent. None of them serve this posting's actual asks (agents, LLMs, backend, security, governance), and Deep Vision specifically carries a `TODO` on its dataset, metric and conclusion that cannot reach a CV.

Both Design Component SDKs (Verimi's own and BARMER's, integrated) are left out entirely, avoiding any risk of the two being merged. The Verimi Wallet's SealOne SDK integration and its full login and registration flow are left out, since they read as product feature work rather than security or governance evidence. AOK's video widgets and new screens, the UIKit to SwiftUI migrations at BARMER and the Wallet, PakWheels' modularisation into Localization, Assets and Component Library frameworks, mentoring, hiring, Core Data, Combine, GCD, VIPER and TDD are all real but were not the strongest available evidence against this specific posting, and the page was already at the top of the house range without them. Bachelors bullets are left out by default, since none of the four stacks (MERN, Android/Java, .NET, C++) are named in the posting.

## Terminology mirrored

Backticked terms below appear literally in a main-column bullet, verified by hand:

- `Claude` — the lead Verimi bullet, matching the posting's named requirement "Anthropic Claude".
- `backend` — the Bedtime Story Teller bullet, matching "backend development" in the requirements.
- `API` — the automated test suite bullet, matching "APIs" in the requirements.
- `CI/CD` — the closing Verimi bullet, matching "CI/CD" in the engineering-practices responsibility.

Quoted without backticks, since they are paraphrased rather than lifted word for word: "AI agents executing complex, multi-step business tasks within defined guardrails" (answered by the MCP server, the LLM planning step and its deterministic fallback), "awareness of information security, data protection, regulatory, and governance requirements" (answered by certificate pinning and the two insurers' eID and identity SDK work), "translate business processes into pragmatic technical solutions delivering measurable business value" (answered by the A/B testing and lead-conversion bullet).

## Metrics worth adding

- A number for how much time or effort the Claude and Codex spec-driven development automation actually saves, such as a percentage reduction in feature turnaround. The lead bullet currently states the mechanism with no outcome number, and this is the single bullet the posting cares most about.
- A scale figure for the identity SDK, such as how many releases or how large a combined user base it has carried across AOK and BARMER, would turn "own the identity verification SDK" from a mechanism claim into a quantified one.
- Any usage or evaluation figure for Bedtime Story Teller, such as the number of story sessions the local Ollama setup has actually run, or an accuracy figure for how often the LLM planning step picks the right source, would directly answer the posting's own "model evaluation frameworks" language, which is currently a named gap rather than a strength.

## Gaps not closed

- Cloud platform experience. The posting has a dedicated requirement bullet for deployment, security, identity and access management, monitoring and scalable infrastructure on a cloud platform, ideally Azure. Nothing on the profile evidences any cloud platform and Docker sits at `ask`. This CV does not gesture at cloud anywhere.
- Retrieval-augmented generation, named directly in the requirements. Bedtime Story Teller's Gutenberg lookup is a plain API call for full texts, not vector retrieval, so nothing in this CV describes it as RAG.
- Databricks, data lakehouse architecture, data engineering, analytics. SQLAlchemy gives ORM and persistence adjacency only, and the CV does not stretch it further.
- Bizagi and UIPath, named as specific enterprise workflow and RPA products in one responsibility bullet. Absent from the profile and absent from this CV.
- Model evaluation frameworks. Neither RosBot nor Bedtime Story Teller has a documented evaluation harness, so this stays an open gap rather than a claim.

## Page count

**One page, 7mm free at the foot of the main column, fit ok.** Five render passes, the messiest fit loop in the pipeline so far.

Pass 1 was two pages, main column over by 33mm. Cut the eID bullet and the CocoaPods to Swift Package Manager bullet, both of which overlap something already on the page. The identity SDK bullet already establishes regulated identity work, and CI/CD is already carried twice.

Pass 2 overshot to 17mm underfilled. Restored eID, since "regulatory and governance" is a named requirement and government-grade identity verification answers it better than a build-time number does.

Passes 3 and 4 flipped to a **sidebar** overflow rather than a main column one, which is a different failure and the checker warns that page two has no navy panel so the text renders white on white and invisible. Merged two sidebar rows, Machine Learning with Deep Learning and SDD into the Claude and Codex row.

Pass 5 shortened the restored eID bullet from two lines to one and landed at 7mm free.

If this needs space again, cut the Objective-C to Swift migration bullet first, since it closes PakWheels and answers nothing this posting names directly. If it underfills, restore the Swift Package Manager bullet.

## Fixes applied during the fit loop

Three craft defects were corrected on the way through, none of them space related.

**"keeping data on device" became "so nothing leaves the machine".** `projects.md` says the machine. On device reads as on-device mobile inference, which is a stronger and different claim than the local backend server that was actually built. This exact error was caught by the review agent on the Branch Tech CV two applications ago, so it is now a repeat defect worth watching for.

**"Built the Jenkins and Fastlane pipeline" became "a Jenkins pipeline that calls Fastlane".** Chaining two tool names into an adjective is the keyword-stack pattern that failed `check-style.py` on an earlier CV. Naming what each tool does is both accurate and safe.

**Three repeated `*Agentic AI :*` labels removed.** All four Bedtime Story Teller bullets carried the same label. One is a project heading, four is noise.

## Fixes applied during review

**The Objective-C to Swift migration bullet claimed "without pausing feature delivery during the changeover".** `experience.md` line 132 attributes "without stopping delivery" to the Storyboards-to-programmatic-UIKit-to-SwiftUI migration specifically, then explicitly separates that from the Objective-C to Swift migration as "two independent modernisation efforts... one at the language level and one at the UI layer." The claim did not belong to this bullet. Same shape as the certificate-pinning risk this review was asked to check: a fact real for one specific piece of work, extended onto an adjacent but distinct one. Corrected to "modernising the codebase for performance and maintainability", which line 124 does support for this migration.

**PakWheels reordered to lead with the A/B testing bullet.** The Objective-C to Swift migration led the section, but nothing about legacy migration is anything this posting asks for. The A/B testing and lead-conversion bullet is the section's one near-literal match to a named requirement. Moved it first, so PakWheels now follows the same pattern as Verimi: most specific match leads, general senior-engineering signal (the migration) closes.
