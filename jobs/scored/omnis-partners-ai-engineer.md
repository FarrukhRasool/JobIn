---
company: Omnis Partners
role: Artificial Intelligence Engineer / AI Software Engineer
source: linkedin
url: https://www.linkedin.com/jobs/view/4453101064/
posted: 2026-08-12
imported: 2026-08-13
location: Potsdam, Germany
work_model: remote
language: english
seniority: mid
---

## Requirements

- "Production deployment of LLM-powered applications"

- "Multi-agent systems, orchestration frameworks and tool use"

- "Evaluation harnesses, benchmarking and AI quality measurement"

- "Langfuse, Braintrust or similar observability and evaluation platforms"

- "Prompt engineering, structured outputs and context management"

- "Python development and modern backend engineering practices"

- "Cloud infrastructure, containerisation and CI/CD"

- "Monitoring, debugging and operating AI systems in production"

## Responsibilities

- "Designing and building production-grade AI applications powered by large language models"

- "Developing agentic systems, tool-calling frameworks and multi-agent workflows"

- "Building scalable backend services using modern Python and cloud-native technologies"

- "Designing evaluation frameworks and testing harnesses to measure AI quality"

- "Implementing observability, monitoring and tracing across AI systems"

- "Managing challenges such as hallucinations, prompt injection, latency and model drift"

- "Building secure, reliable deployment pipelines for enterprise environments"

- "Working directly with clients and stakeholders to deliver high-impact AI solutions"

## Tech stack

Python, LLMs, multi-agent systems, orchestration frameworks, Langfuse, Braintrust, cloud infrastructure, containerisation, CI/CD.

## Notes

**Recruitment agency, end client unnamed.** Omnis Partners is a London-based Data, AI and Product recruitment agency, not the employer (confirmed via omnis.partners/about and omnis.partners/specialisms/ai). The posting itself only describes the true employer as "a disruptive European AI consulting firm" specialising in enterprise AI deployment. Client not named anywhere in the fetched extract. Recruiter contact listed as Kate McDermott, "Director - Scaling early teams across AI, engineering and product". Same pattern as Oliver Bernard and Code Compass, both already in the pipeline as agency listings with unnamed clients.

**Seniority tension, floor recorded.** LinkedIn's own tag reads "Mid-Senior level", which this pipeline treats as a band rather than a reliable read, per the standing note that the tag has understated its own postings before. Recorded `seniority: mid` as the floor. Flagging the tension rather than hiding it: the responsibilities include designing production AI systems end to end, owning evaluation frameworks, managing hallucinations/prompt injection/latency/model drift in production, and working directly with clients, which read as more senior in scope than a bare "mid" usually implies. Worth a second look at scoring time, same caveat as recorded on `sumup-ios-engineer-design-system`.

**Language, not explicitly addressed.** The fetched extract states no German language requirement anywhere in the posting, and the posting itself is written entirely in English. Recorded `language: english` on that basis. This is silence rather than an explicit "German not required" statement, and the role is anchored to Potsdam, Germany even though fully remote, so this is worth a second check if the client is ever identified. No CEFR level of any kind is stated.

**Posting age, ID checked against the cluster.** LinkedIn job ID 4453101064 sits just above the current pipeline's recent cluster (roughly 4442 million to 4450 million across postings from mid-July to early August 2026), consistent with the page's own "Posted 1 day ago" at fetch time. `posted` recorded as 2026-08-12, derived from that relative timestamp against today, 2026-08-13. No conflict flagged, unlike the SumUp design-system posting where the ID and the relative date disagreed sharply.

**Compensation stated, not a scoring input.** €70,000 to €90,000 annually, based on experience, full-time. Recorded for reference only, per `CLAUDE.md` salary is deliberately not tracked or filtered on.

**Source caveat.** This content came from a single WebFetch pass, which processes the fetched page through a model rather than returning raw HTML. The quoted fragments above are presented as verbatim by that pass rather than a raw copy-paste.

## Raw

<details>
Job Title: Artificial Intelligence Engineer / AI Software Engineer
Company: Omnis Partners (recruitment agency, end client described only as "a disruptive European AI consulting firm")
Location: Potsdam, Germany
Work Model: Fully Remote (per job description)
Seniority Level (LinkedIn tag): Mid-Senior level
Employment Type: Full-time
Posted Date: 1 day ago (relative, at fetch time 2026-08-13)
Salary: EUR 70,000 to EUR 90,000 annually, based on experience
Industries: Business Consulting and Services, Data Infrastructure and Analytics, IT Services and Consulting
Recruiter Contact: Kate McDermott, Director - Scaling early teams across AI, engineering and product

Requirements:
- Production deployment of LLM-powered applications
- Multi-agent systems, orchestration frameworks and tool use
- Evaluation harnesses, benchmarking and AI quality measurement
- Langfuse, Braintrust or similar observability and evaluation platforms
- Prompt engineering, structured outputs and context management
- Python development and modern backend engineering practices
- Cloud infrastructure, containerisation and CI/CD
- Monitoring, debugging and operating AI systems in production

Responsibilities:
- Designing and building production-grade AI applications powered by large language models
- Developing agentic systems, tool-calling frameworks and multi-agent workflows
- Building scalable backend services using modern Python and cloud-native technologies
- Designing evaluation frameworks and testing harnesses to measure AI quality
- Implementing observability, monitoring and tracing across AI systems
- Managing challenges such as hallucinations, prompt injection, latency and model drift
- Building secure, reliable deployment pipelines for enterprise environments
- Working directly with clients and stakeholders to deliver high-impact AI solutions

Language Requirements: Not stated. Posting is in English throughout, no German requirement mentioned.
Recruitment Agency: Yes, Omnis Partners. End client not named in the fetched extract.
</details>

## Score

**Total: 60 / 100. Apply, long shot**
Track: ai-engineer

| Dimension | Score |
|---|---|
| Technical fit | 20/40 |
| Seniority fit | 15/20 |
| Track clarity | 15/15 |
| Company fit | 4/15 |
| Application quality | 6/10 |

**Why this score.** Two of the eight named requirements are genuinely strong: Python/FastAPI/SQLAlchemy/JWT backend work, and prompt engineering plus structured decisioning, evidenced by Bedtime Story Teller's LLM planning step and its deterministic fallback policy. CI/CD is strong on its own but the posting bundles it with cloud infrastructure and containerisation, which are absent from the profile (Docker sits at `ask`). The posting's two headline asks, multi-agent orchestration and evaluation harnesses, are where the fit is weakest: Bedtime Story Teller is a single agent doing tool selection with a deterministic fallback, not a multi-agent system, and `projects.md` records the opposite of an evaluation harness for RosBot in its own words, no automated evaluation, unseeded RNGs, qualitative results only. Track clarity is clean, this is an AI Engineer posting with no mobile component, so no PRIORITY-both bonus applies. Company fit is genuinely weak: a seventh agency listing with an end client that two searches could not identify, and the research brief flags the posting is missing from Omnis Partners' own live AI job board entirely, which otherwise shows ten UK-only, GBP-denominated roles. No hard gate fires: the posting is entirely in English, states no German requirement, and Potsdam is within the regions he will relocate to.

**Gaps.**
- **Evaluation harnesses, benchmarking and AI quality measurement, named twice** (once in requirements, once in responsibilities as "designing evaluation frameworks and testing harnesses"), and Langfuse and Braintrust are named by product. Nothing on the profile evidences an evaluation harness. RosBot's own limitations note in `projects.md` says the opposite explicitly: "No automated evaluation harness, so results are qualitative," and unseeded RNGs mean runs are not even reproducible. This is the hardest, most specific gap on the posting.
- **Cloud infrastructure and containerisation.** CI/CD is `strong` twice over with real numbers (the Jenkins pipeline built at PakWheels, xcframework automation at Verimi), but cloud is absent from the profile entirely and Docker sits at `ask`. Score the CI/CD half as real, the cloud and container half as a genuine gap.
- **Genuine multi-agent systems.** Bedtime Story Teller is a single agent with an LLM planning step that selects its own tool or source, backed by a deterministic fallback, plus a second LLM pass for disambiguation. That is real tool-calling and structured decisioning, but it is not a multi-agent system, and the posting names multi-agent workflows twice. Do not let the single-agent evidence stand in for the multi-agent ask.
- **Observability and tracing across AI systems.** Crashlytics and the crash-free score at PakWheels are mobile crash monitoring, a different discipline. No evidence of tracing or monitoring an AI system specifically.
- **Production deployment of an LLM-powered application with real users.** Bedtime Story Teller is a personal project, not a deployed product with users. The Verimi SDD loop across Claude and Codex is genuine paid-employment LLM tooling use, which `experience.md` notes almost nobody can evidence, but it is internal developer tooling rather than a deployed LLM product, so it only partially answers this line.
- **Client-facing consulting delivery.** "Working directly with clients and stakeholders" is unevidenced as consulting work specifically. The identity SDK consumed separately by AOK and BARMER is real multi-stakeholder platform work and is worth a line in the letter, but it is not the same claim as client delivery inside a consulting engagement.

**Risks.**
- **Seventh agency listing, end client unnamed and unidentifiable.** Two WebSearch attempts in the research brief found no confident match. Nothing about the actual employer's culture, stage or engineering practice can be verified.
- **Absent from Omnis Partners' own live AI job board**, which lists ten roles, all UK-based and GBP-denominated. This posting does not appear among them. Worth carrying as a flag, not over-read: could mean newly posted and not yet indexed, or a one-off German mandate for an otherwise UK-focused agency.
- **Seniority tag reads `mid`, set as a floor at intake, but the responsibilities read more senior**: owning production LLM systems end to end, evaluation frameworks, and hallucination, prompt injection and drift handling in production, plus direct client delivery. Worth confirming scope at screening stage.
- **No German language level stated.** Recorded as silence, not a confirmed policy, and it cannot be cross-checked against an employer that is not named.
- **No information on how employment would be structured** for a Germany-based remote hire placed through a London agency.

**Lead with.** Bedtime Story Teller's backend: the MCP server exposing tools, the LLM planning step that picks its own source, the deterministic fallback when that reasoning fails, and the second LLM pass for disambiguation, on top of the FastAPI, SQLAlchemy and JWT backend. That is the honest answer to prompt engineering, tool use and Python backend engineering. Be upfront in the letter, not defensive, that evaluation tooling and cloud infrastructure are the two gaps still to close, since both are named explicitly enough that dodging them would read worse than naming them.
