# Application notes

**Track:** ai-engineer. The posting's own first requirement is "Strong software engineering experience (mid to lead level)", and the responsibilities are LLM features, agent workflows with tool use and multi-step reasoning, and backend/API integration. That is the AI Engineer track's whole positioning: the AI work sits on four years of production software discipline. The iOS track would have led with UI and mobile delivery, which argues against the posting's own emphasis.

**Location claimed:** Munich, Germany (the posting's own city, per the standing instruction to portray the same city as the job).

**Email used:** default, farrukhrasool65@gmail.com.

**Employment status shown:** Verimi carries the plain `iOS Developer` role line, no Working Student qualifier. This is an ordinary professional posting for a mid-to-lead engineer at an early-stage company, not a student or internship role.

## Led with

- **Bedtime Story Teller**, under the M.Sc. entry: the Model Context Protocol server exposing tools, the LLM planning step choosing between generation and a Project Gutenberg source, the deterministic fallback when that reasoning fails, and a second LLM pass that picks the right story out of a multi-story collection. This is the closest thing on the profile to "design and implement agent workflows with tool use and multi-step reasoning". Paired directly with a bullet naming the Python, FastAPI, SQLAlchemy and JWT backend for "APIs, data systems and backend services".
- **Verimi's spec-driven development automation across Claude and Codex**, as the lead Verimi bullet. This is the second, independent piece of evidence the scored record calls for, and it is the stronger one in one sense: it is LLM tooling shipped in paid production work, not a personal project.
- A short bullet stating Verimi's three-person team size, to answer "comfortable in early-stage environments with high ownership" directly rather than by assertion. Both employers are established companies, so this leans on genuine ownership evidence (small surface area per engineer) rather than claiming startup employment history that does not exist.

## Experience balance

Verimi 4 bullets, PakWheels 5 bullets. Both clear the 4-bullet floor and sit one apart, inside the "within two bullets of each other" rule.

Verimi's 4: the SDD pipeline (direct LLM match), the identity SDK owned across AOK and BARMER (APIs and backend ownership), the xcframework CI automation with a real number (halved TestFlight build time), and the three-person team line (direct match to "early-stage... high ownership"). None of these lean on UI work.

The AOK eID scanning flow was drafted as a fifth Verimi bullet and cut on the first render, which came out two pages and about 33mm over. It is the strongest thing on the profile for a German fintech or health posting, four separate pieces of regulated identity evidence sit behind it, and it argues nothing at all for an LLM and agent-workflow role. First thing to restore if this CV is ever repurposed.

PakWheels' 5, chosen for engineering weight rather than UI: the Objective-C to Swift migration (led, architecture-level), the UserManager session and auth singleton (session/API architecture, dependency injection, Objective-C interop), the Jenkins/Fastlane CI pipeline (a second, independent CI story with a mechanism), a combined reliability and performance bullet (crash-free score above 99%, 20% launch time cut, 40% build time cut), and mentoring plus technical interviewing (the clearest "senior and lead" signal on the profile). SwiftUI, UIKit migrations, Combine, Core Data and A/B testing were all left out deliberately, since none of them argue the posting's case as well as architecture, CI/CD and leadership do.

## Cut

- UIKit to SwiftUI migrations at Verimi (BARMER, Wallet) and the two-stage Storyboards to SwiftUI migration at PakWheels. Real and strong, but UI-flavoured, and the track guideline says iOS gets one line, no more, on this CV.
- Verimi's Design Component SDK (built with designers, adopted by two apps). Genuinely a platform-work story, but reads closer to UI tooling than the SDK-ownership story already told through the identity SDK bullet.
- Combine advanced search (18 filter dimensions, `dropFirst`) and Core Data (`CarGenerations` entity). Both excellent, both UI-adjacent feature work with no direct line to this posting.
- A/B testing and feature flags at PakWheels. Good "data-informed product work" evidence but weaker than the bullets used.
- Deep Vision (ResNet50 vs Vision Transformer) as an Education bullet. Left out to keep the M.Sc. section focused on Bedtime Story Teller and to leave the page room for the CV's actual centre. `Machine Learning` and `Deep Learning` still appear in the sidebar, honestly, since the M.Sc. itself and Deep Vision remain real evidence for them even without a dedicated bullet in this particular CV.
- Scene Detect, Indoor Navigation, SwiftUI component packages. All `TODO` narrative depth in `projects.md` or too far from this posting to earn space.
- Bachelor's degree bullets. None of the four stacks (MERN, Android/Java, .NET, C++) appear anywhere in this posting.

## Terminology mirrored

All present in the main-column bullets (Professional Experience and Education), not only the sidebar. The style checker verifies every backticked term below against the main column only, which is how a sidebar-only claim reached the BJAK CV once. Keep this section's headings as H2, since the check reads from one H2 to the next and bold headings let it swallow the whole file.
- `Python` — named directly in the Bedtime Story Teller backend bullet, answering "Strong Python background" in running prose, not only the sidebar.
- `LLM` and `Large Language Model` — the Verimi SDD bullet and both Bedtime Story Teller bullets.
- `Model Context Protocol (MCP)` — the lead Education bullet, spelled out on first use.
- `agent workflow` and `multi-step` — the same bullet, describing the real tool-selection and fallback mechanism rather than quoting the posting's sentence directly.
- `FastAPI`, `SQLAlchemy`, `JWT`, `REST API` — the backend bullet, answering "APIs, data systems and backend services".
- `Jenkins`, `Fastlane` — both CI/CD bullets, answering "Strong software engineering experience" with a concrete delivery pipeline rather than a keyword.

## Metrics worth adding

- The Verimi SDD bullet has no number behind it. If Farrukh can say how many features shipped through the pipeline, or roughly how much time it saved per feature, that turns "taking each feature from a written spec through implementation to review" into an outcome rather than a mechanism.
- The Bedtime Story Teller agent bullet has no usage or accuracy figure. Something like how often the deterministic fallback actually fires, or how many stories the backend has served, would turn the strongest project on the CV into a bullet with a real outcome instead of only a capability claim.
- Team of three at Verimi is stated as a fact but never turned into an outcome. If there is a concrete thing that size made possible on a deadline, that would sharpen the "high ownership" bullet.

## Gaps not closed

- **RAG.** Named directly in the posting's requirements ("RAG, agent workflows or similar patterns") and absent from the profile. The agent-workflow half is answered strongly through Bedtime Story Teller. Retrieval from Project Gutenberg is a plain API call for full texts, not vector-based retrieval, so it is not presented as RAG anywhere on this CV. This is a genuine, disjunctive-requirement soft gap, not a hard fail, per the scored record's own reading.
- **"Work with structured and unstructured data across the system."** No data-engineering breadth is evidenced anywhere on the profile. The SQLAlchemy persistence bullet shows structured relational data in one small app, which is not the same claim.
- **Postgres, vector databases, cloud infrastructure, agent frameworks (LangChain, Hugging Face).** All named only in the posting's `Tech stack` gloss, not its verbatim Requirements or Responsibilities, and all sit at `ask` in `skills.md`. None appear anywhere on this CV.
- **"Comfortable in early-stage environments."** Both employers are established companies. Answered through ownership evidence (three-person team, SDK ownership, a led migration) rather than through startup employment history, which does not exist on the profile.
- **The end client is unnamed.** This is an agency listing (Oliver Bernard) and the actual employer was never identified in research. Nothing about this affects the CV directly, but there is no company name to tailor toward, which matters more for the letter.
- **Wide seniority band.** The posting's own floor is mid, which matches, but responsibilities reach "technical direction at senior and lead levels", above Farrukh's four years. Worth being ready for in a screening call.

## Page count

**One page, 2mm free at the foot of the main column, fit ok.** Three render passes.

Pass 1 came out two pages, main column over by about 33mm. Cut the AOK eID scanning bullet from Verimi and folded the multi-story collection detail into the lead MCP bullet. Pass 2 landed on one page with 12mm free, which is exactly the threshold where the checker calls a page effectively full, so there was room for one short bullet. Pass 3 restored the second LLM pass as its own line, tightened, because it is the only thing on the CV that makes "multi-step" literally true rather than asserted. That is the bullet to cut first if this ever needs space again.

The skeleton's own header comment block was left at the top of `cv.typ` on pass 1 and tripped three `unfilled-slot` failures. Replaced with a header describing this application.
