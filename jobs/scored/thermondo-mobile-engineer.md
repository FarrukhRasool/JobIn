---
company: Thermondo
role: Mobile Engineer
source: linkedin
url: https://www.linkedin.com/jobs/view/4423117524/
posted: UNKNOWN
imported: 2026-07-31
location: Berlin, Germany
work_model: hybrid
language: english
seniority: mid
---

## Requirements
Verbatim / near-verbatim as returned by fetch (LinkedIn did not expose raw HTML, quoted phrases below are exact wording pulled from the posting):

- 3-5 years of hands-on native mobile development experience in product environments
- Proficiency in native Android development with Kotlin and modern Android architecture
- Willingness to learn and contribute to future iOS development
- Comfort reasoning about API interactions and system data flows
- Python knowledge noted as a "strong bonus"
- Self-driven capability to manage tasks and prioritize effectively
- Pragmatic approach focusing on "reliable, maintainable solutions"
- Strong collaboration and technical communication skills

Bonus skills:
- Prompt engineering familiarity
- CI/CD pipeline and mobile DevOps experience
- Asynchronous patterns and message queues (Kafka, SQS/SNS)
- Legacy codebase modernization experience
- Climate tech passion

## Responsibilities
- Develop native mobile features for Android/iOS applications using Kotlin Multiplatform Mobile, emphasizing "efficient UI implementation, state management, and robust data integration"
- Implement technical designs focused on performance optimization and offline/online capabilities
- Collaborate with backend and platform teams on mobile feature integration
- Own assigned features from definition through deployment
- "Implement and support patterns for integrating pre-defined LLM services and AI-native features"
- Contribute to improving mobile development workflows and participate in code reviews

## Tech stack
Kotlin, Kotlin Multiplatform Mobile (KMM), Android (native), iOS (future contribution), Python, CI/CD, Kafka, SQS/SNS, LLM service integration / prompt engineering

## Notes
- Posted timestamp on LinkedIn read "1 month ago" (relative, not an exact date), so `posted` is marked UNKNOWN rather than guessed. That would put it roughly late June 2026 against today's date of 2026-07-31, but this is not confirmed.
- Role is primarily Android-focused today (Kotlin, native Android architecture) with iOS work described as future/secondary ("willingness to learn and contribute to future iOS development"). This is a blended mobile role, not a pure iOS role, worth flagging for track selection at `/score`.
- Has a real AI-adjacent component: "implement and support patterns for integrating pre-defined LLM services and AI-native features" plus prompt-engineering as a bonus skill. Could touch the AI-engineer track too.
- Company is Thermondo, a Berlin-based climate-tech/home-heating company. Not one of the four companies already in the pipeline (BJAK/Kira, Dexter Health, Avelios) and no name overlap detected.

## Raw
<details>
LinkedIn did not return raw HTML to WebFetch; the following is the fetched summary content, retained so nothing is lost if the posting is taken down.

Company: Thermondo
Role Title: Mobile Engineer (f/m/d)
Location: Berlin, Berlin, Germany
Work Model: Hybrid (up to 3 days/week remote)
Seniority Level: Associate/Mid-level
Language: English
Posted: 1 month ago (relative timestamp, exact date not given)

Responsibilities:
- Develop native mobile features for Android/iOS applications using Kotlin Multiplatform Mobile, emphasizing "efficient UI implementation, state management, and robust data integration"
- Implement technical designs focused on performance optimization and offline/online capabilities
- Collaborate with backend and platform teams on mobile feature integration
- Own assigned features from definition through deployment
- "Implement and support patterns for integrating pre-defined LLM services and AI-native features"
- Contribute to improving mobile development workflows and participate in code reviews

Requirements/Qualifications:
Experience:
- 3-5 years of hands-on native mobile development in product environments
- Proficiency in native Android development with Kotlin and modern Android architecture
- Willingness to learn and contribute to future iOS development
- Comfort reasoning about API interactions and system data flows
- Python knowledge noted as a "strong bonus"

Competencies:
- Self-driven capability to manage tasks and prioritize effectively
- Pragmatic approach focusing on "reliable, maintainable solutions"
- Strong collaboration and technical communication skills

Bonus Skills:
- Prompt engineering familiarity
- CI/CD pipeline and mobile DevOps experience
- Asynchronous patterns and message queues (Kafka, SQS/SNS)
- Legacy codebase modernization experience
- Climate tech passion

Compensation & Benefits:
Starting salary: €70,000+
- Annual learning budget
- Choice of AI coding assistant license
- Urban Sports Club & nilo.health membership
- Job bike lease or dog-friendly day option
- 20% pension contribution

Original URL with tracking params: https://www.linkedin.com/jobs/view/4423117524/?alternateChannel=search&trk=d_flagship3_job_collections_discovery_landing&refId=TD6%2FokL5aPU64xQNEaezSg%3D%3D&trackingId=vHd8tqmR6rCM%2BzGSGTmjrg%3D%3D
</details>

## Score

**Total: 57 / 100 — MAYBE**
Track: ios-developer (no PRIORITY-both: the mobile side of this role is Android-first with iOS explicitly deferred, and the AI work is API-level integration of pre-defined LLM services, not on-device ML, Core ML, or a camera/sensor pipeline. That is the bar the constraints file sets for the dual-profile bonus, and this role does not clear it)

| Dimension | Score |
|---|---|
| Technical fit | 19/40 |
| Seniority fit | 18/20 |
| Track clarity | 7/15 |
| Company fit | 9/15 |
| Application quality | 4/10 |

**Why this score.** The posting's first and headline requirement is "proficiency in native Android development with Kotlin and modern Android architecture," and `profile/skills.md` records Kotlin and Android as deliberately absent, weighted zero under the rubric, not merely unevidenced. That is a real gap against the actual day-to-day work, not a stretch. Against that, there is genuine overlap: 4 years of native mobile shipping to production (weighted full credit against "3-5 years hands-on native mobile development experience," the posting's second, platform-neutral line item), Python at `strong`, and a real, evidenced LLM/agentic stack (Bedtime Story Teller's MCP server, Ollama, Mistral) that maps cleanly onto "implement and support patterns for integrating pre-defined LLM services and AI-native features" and the prompt-engineering bonus. CI/CD is `strong` at both employers, matching the CI/CD/mobile-DevOps bonus. Kafka/SQS/SNS is unevidenced. Seniority fits comfortably in the 3-6 year band. Track clarity is genuinely muddy: the job's actual daily work (Kotlin/Android/KMM) sits outside both tracks as documented, and neither iOS-developer nor AI-engineer maps cleanly, so this scores in the "could go either way" band rather than clean. Company fit is middling: the research brief shows a real, strategically consistent business (gas-boiler exit, PV acquisition, financing product) with genuine internal AI-engineering practice (`tstack`, updated two days before research), offset by a consumer app rated 2.4/5 where users explicitly say the advertised AI "is not noticeable," PE ownership since 2020 rather than startup upside, and an Android-oriented mobile test-automation tool that was archived only months before this posting with the transition plan for the existing native apps unstated.

**Gaps.** Kotlin and native Android development: zero evidence, and `skills.md` marks this "deliberately absent" rather than merely missing, which is a stronger caveat than a normal skill gap. Kotlin Multiplatform Mobile specifically: not evidenced at all, on either track. Kafka, SQS/SNS and async message-queue patterns: unevidenced (bonus line, not core). The posting's headline requirement is a hard skill ask ("proficiency in"), not a nice-to-have, and no amount of tailoring turns an absent skill present. This is the same category of problem the rubric describes for an over-qualified or under-qualified seniority mismatch, just on the axis of platform rather than years: a candidate whose entire native-mobile track record is on the platform this role treats as secondary, applying to a role whose daily work is the platform he has never touched.

**Risks.** The posting is in English, but the consumer product and its App Store reviews are entirely in German, and the research could not establish whether day-to-day engineering communication is German or English internally; worth confirming before applying, per `constraints.md`'s guidance that German-facing postings and products are a risk flag even when the ad itself is English. Whether the new KMM initiative replaces the existing live "thermondo" iOS app (2.4/5, 34 ratings) or runs alongside it is unstated (`NOT FOUND` in the research brief) and materially changes what the "future iOS" line actually means in practice. Reporting line and the size of the existing internal "phone" team are unstated. The archived Android test-automation tool (retired March 2026, no visible iOS support) with a live but poorly-reviewed iOS app already in production is a specific, checkable thing to ask about at interview rather than assume.

**Lead with.** If this goes forward, lead with the 4-year production native-mobile record (PakWheels crash-free score above 99%, the 40% and 20% build/performance numbers, CI/CD automation at both employers) to answer "3-5 years hands-on native mobile" and "reliable, maintainable solutions," then Bedtime Story Teller's MCP server and local LLM inference work to answer "AI-native features" and the prompt-engineering bonus directly and specifically, not generically. Be upfront about Kotlin rather than implying familiarity: frame it as an experienced native-mobile engineer picking up a second native platform, backed by three prior codebase migrations (Objective-C to Swift, UIKit to SwiftUI twice), not as existing Android depth.

**Decision note.** 57 sits in the rubric's 45-59 "Maybe" band: apply only if the day's queue needs volume, and say so plainly in any cover material rather than overstating the fit. The honest read is that this is a mobile-engineering role built around a platform Farrukh does not have, wrapped in company and AI framing that make it look more relevant than the actual day-to-day work supports. Worth a look if nothing stronger is in the queue; not worth prioritising over a clean iOS or AI role at a similar or higher score.
</content>
</invoke>
