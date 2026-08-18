---
company: Wolt
role: Staff Mobile Engineer - Retail
source: linkedin
url: https://www.linkedin.com/jobs/view/4442090418/
posted: 2026-07-22
imported: 2026-08-05
location: Berlin, Germany
work_model: UNKNOWN
language: english
seniority: lead
---

## Requirements

"Deep expertise in mobile development and particularly with the iOS ecosystem, including modern best practices, performance optimization, observability, modularity, SDK design, server-driven UI, CI/CD"

"Experience at Staff Engineer level or equivalent scope leading cross-team initiatives"

"Track record with large-scale native consumer (B2C) applications in multi-team ownership structures"

"Pragmatic, impact-oriented mindset with bias toward action"

"Ability to influence stakeholders through clear communication and technical leadership"

"Experience mentoring engineers and fostering continuous learning culture"

"Practical AI application experience in engineering workflows"

"Familiarity with Android alongside iOS considered advantageous"

## Responsibilities

"Leading complex cross-team initiatives through design, implementation, launch, and operational ownership"

"Driving native iOS and Android initiatives within shared consumer apps"

"Working within and evolving server-driven UI approaches with configurable components"

"Establishing engineering standards across architecture, testing, release processes, and incident management"

"Championing AI-enabled tooling to accelerate mobile engineer productivity"

"Communicating technical decisions to stakeholders with clear estimates and trade-offs"

"Mentoring engineers and upholding engineering culture"

## Tech stack

iOS

Android

Server-driven UI (SDUI)

App Store release processes

CI/CD

AI-enabled engineering tooling

## Notes

- `posted` is derived: LinkedIn showed "2 weeks ago" and today is 2026-08-05, so posted date is calculated as 2026-07-22.
- `seniority` is recorded as `lead` rather than LinkedIn's own "Mid-Senior level" tag. The role title is "Staff Mobile Engineer" and the requirements explicitly call for "Staff Engineer level or equivalent scope", cross-team leadership, mentoring and ownership of engineering standards. This reads as a level above individual-contributor senior, so it is mapped to the `lead` band of this schema's four-value scale, which has no separate staff tier. LinkedIn's own level tag looks understated against its own posting text.
- `location` is recorded as Berlin, Germany. The posting also lists Helsinki as an alternative location option.
- `work_model` is UNKNOWN. The posting does not state onsite, hybrid or remote.
- No German language requirement stated anywhere in the posting. Posting is in English throughout.
- This is a direct employer posting from Wolt, not a recruitment agency.
- WebFetch succeeded on this LinkedIn URL and returned full requirements and responsibilities text without hitting a login wall, consistent with the skill's note that LinkedIn fetch behaviour is inconsistent rather than uniformly blocked.

## Raw

<details>
Full original posting text was not captured verbatim by the fetch tool (WebFetch summarises rather than returning raw HTML/text). The Requirements, Responsibilities and Tech stack sections above are the direct quoted extraction returned by the fetch. Company: Wolt. Role: Staff Mobile Engineer - Retail. Location: Berlin, Germany (Helsinki also listed as an option). Posted: 2 weeks ago (as shown on LinkedIn at time of import). Employment type: Full-time. Job function: Engineering and Information Technology.
</details>

## Score

**Total: 69 / 100. APPLY, light tailoring**
Track: ios-developer

| Dimension | Score |
|---|---|
| Technical fit | 33/40 |
| Seniority fit | 3/20 |
| Track clarity | 13/15 |
| Company fit | 12/15 |
| Application quality | 8/10 |

**Why this score.** Technical fit is genuinely strong against the posting's own words. "Modularity, SDK design, CI/CD" is close to a direct list of the strongest material on the profile: the Verimi identity SDK integrated separately by AOK and BARMER, the Verimi Design Component SDK adopted by two apps, the PakWheels Component Library extracted into its own framework, xcframework work automated in CI at both employers, and the PakWheels Jenkins/Fastlane pipeline. Performance optimisation is well evidenced (crash-free above 99%, launch time down 20%, build times down 40%, TestFlight build time halved). "Practical AI application experience in engineering workflows" and "championing AI-enabled tooling" are answered directly from paid work by the Verimi spec-driven development automation across Claude and Codex, which writes the spec, implements against it and reviews the resulting code. `experience.md` is right that almost nobody can evidence that full loop from employment rather than a hobby, and this posting asks for exactly that. Large-scale native B2C is well evidenced too (Classified and Dealers at millions of users, AOK and BARMER at millions). Mentoring is real but modest: one junior, plus technical interviewing, which the record states honestly rather than inflating to "engineers" plural.

Seniority is the one dimension that carries the honest cost, deliberately not spread across the others. The posting asks for Staff Engineer scope leading cross-team initiatives, a level the rubric's own bands treat as a real stretch above the roughly four years plus M.Sc. on file, scoring 0 to 4 by design. Track clarity lands as a clean iOS Developer fit with the AI angle as a bonus the posting explicitly values (spec-driven development and AI tooling for engineer productivity), not as an on-device ML or camera-pipeline blend, so it does not qualify for the PRIORITY-both bonus described in `profile/constraints.md`. Company fit is solid: a direct employer posting (not an agency), an established consumer platform with a 4.8-star app rating and no disqualifying concerns in the research brief, just open questions about platform consolidation and team growth that would pull it down further if confirmed negative.

**Gaps.**
- **Server-driven UI.** Named twice in the posting, once in Requirements and once in Responsibilities. The research brief tried to corroborate it against Wolt's engineering page and other Germany postings and could not find it anywhere outside this one listing, which makes it a genuine requirement rather than boilerplate copied from a template. Nothing in `profile/` evidences it, as an architectural approach rather than a vendor, so it does not get the benefit of the doubt a product name would. This is real and the letter has to survive it, most likely by naming the modularity and component-library work as the adjacent skill rather than claiming SDUI itself.
- **Observability, partial.** Crashlytics and the crash-free score above 99% are real, `strong` evidence of crash-rate monitoring, which is one slice of what "observability" means at staff level. Nothing on the profile evidences the wider practice: structured logging, tracing, dashboards, alerting. Treat the current evidence as a partial answer, not a full one.
- **Staff-level scope.** Leading cross-team initiatives and setting engineering standards across multiple teams asking Wolt's own bar ("strong technical judgment... to create consistency across teams") is a different signal than owning a feature, a singleton, or an SDK consumed by two named clients. Mentoring one junior and running technical interviews are real senior-IC signals. They are not staff-scope signals, and the letter should not pretend otherwise.

**Risks.**
- `work_model` is UNKNOWN. This does not cap the score, since work model is not one of the three gate fields, but confirm before assuming onsite, hybrid or remote.
- The research brief's note on DoorDash's reported 2025 platform consolidation (Wolt, DoorDash and Deliveroo merging onto one tech stack) is SUMMARY only, not independently verified. If accurate it signals technical churn this role would likely sit inside. Re-verify before an interview rather than raising it unprompted.
- "Multi-team ownership structure" is the posting's specific framing, distinct from large scale on its own. PakWheels and Verimi both evidence millions-of-users B2C products, but neither is quite the same shape as owning a slice of one shared app that many teams contribute to concurrently, which is closer to what the Retail line across Wolt, DoorDash and Deliveroo implies. Worth a question to Farrukh on how honestly to frame this in the letter, since the underlying scale evidence is genuinely strong even if the ownership structure differs.
- Only one mobile opening is currently listed for Wolt Germany, so whether the mobile team is growing or this is a single senior backfill is unconfirmed.
- Android is listed as "advantageous", not required. Kotlin/Android is deliberately absent from the profile per `skills.md`. Not scored as a gap since it is not a stated requirement, but do not let a letter imply Android experience he does not have.

**Lead with.** The Verimi identity SDK, one API surface integrated separately by AOK and BARMER, paired with the Verimi spec-driven development automation across Claude and Codex. Together they answer the posting's two most staff-flavoured, hardest-to-fake asks, SDK design and practical AI application experience in engineering workflows, directly from paid employment rather than a side project or a course. Follow with the PakWheels Jenkins/Fastlane pipeline and the xcframework/modularity story, since "modularity, SDK design, CI/CD" appears almost verbatim in the posting's own requirements line. Given the seniority stretch, the letter should own the gap rather than talk around it: name the scope he has led (an Objective-C to Swift migration, an SDK carrying two enterprise clients, mentoring and hiring) and let Wolt judge the leap, rather than implying staff-level cross-team ownership he has not yet had the title for.
