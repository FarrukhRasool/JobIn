---
company: Oliver Bernard
role: AI Engineer
source: linkedin
url: https://www.linkedin.com/jobs/view/4443283799/?alternateChannel=search&eBP=NON_CHARGEABLE_CHANNEL&trk=d_flagship3_top_applicant_jobs_collection&refId=P2mYyqSKTmqgh9h9wL6I5Q%3D%3D&trackingId=TSA7G6nALc%2F9XZsgp9y2Mw%3D%3D
posted: 2026-07-28
imported: 2026-08-04
location: Munich, Bavaria, Germany
work_model: onsite
language: english
seniority: mid
---

## Requirements
"Strong software engineering experience (mid to lead level)"

"Strong Python background"

"Experience building with LLMs in real applications"

"Understanding of RAG, agent workflows or similar patterns"

"Experience working with APIs, data systems and backend services"

"Comfortable in early-stage environments with high ownership"

## Responsibilities
"Build and deploy LLM-powered features used in production"

"Design and implement agent workflows with tool use and multi-step reasoning"

"Work with structured and unstructured data across the system"

"Integrate AI systems into backend services and APIs"

"Improve performance, reliability and evaluation of AI systems"

Contribute to technical direction at senior and lead levels

## Tech stack
Python, LLM APIs, agent frameworks, Postgres, vector databases, cloud infrastructure. Pydantic AI exposure noted as optional.

## Notes
- **Recruitment agency listing.** Oliver Bernard is a technical recruitment agency and the end client is not named anywhere in the fetched content. `company` is set to Oliver Bernard for lack of a named employer, following the same convention used for the Michael Page record. If the client is identified later this record should be updated or re-slugged.
- End client described only as: "Early-stage AI company with existing product and paying customers, scaling ahead of seed round." Nothing to research yet.
- `seniority` set to `mid`, the floor of the band the posting itself states, "Strong software engineering experience (mid to lead level)". The level is stated rather than absent, so UNKNOWN would be wrong here. The band is wide and the responsibilities reach up to "technical direction at senior and lead levels", so the top of this role is above Farrukh's four years even though the entry point is not.
- `language` set to english: the fetched content states German is "a plus, not required", so this is a stated non-requirement rather than an unstated one.
- `work_model` set to onsite: the fetch noted an in-office, Munich-based requirement.
- `posted` derived, not stated: the source showed a relative "1 week ago" at fetch time. Back-calculated from the 2026-08-04 import date to 2026-07-28, the same convention used for the Michael Page record. Treat as accurate to within a day.
- The content below is a fetched extract (via WebFetch), not a guaranteed byte-for-byte capture of the original HTML. Structure and wording of the requirements/responsibilities blocks appear intact, but formatting (bullets, line breaks) may not exactly match the source page.

## Raw
<details>
Company Name: Oliver Bernard

Job Title: AI Engineer

Location: Munich, Bavaria, Germany

Work Model: In-office (Munich-based requirement stated)

Language: German is "a plus, not required"

Seniority Level: Mid to Lead level

Posted Date: 1 week ago (relative, per source UI at fetch time)

Responsibilities:
"Build and deploy LLM-powered features used in production"
"Design and implement agent workflows with tool use and multi-step reasoning"
"Work with structured and unstructured data across the system"
"Integrate AI systems into backend services and APIs"
"Improve performance, reliability and evaluation of AI systems"
Contribute to technical direction at senior and lead levels

Requirements:
"Strong software engineering experience (mid to lead level)"
"Strong Python background"
"Experience building with LLMs in real applications"
"Understanding of RAG, agent workflows or similar patterns"
"Experience working with APIs, data systems and backend services"
"Comfortable in early-stage environments with high ownership"

Tech Stack: Python, LLM APIs, agent frameworks, Postgres, vector databases, cloud infrastructure. Pydantic AI exposure noted as optional.

Additional Context: Early-stage AI company with existing product and paying customers, scaling ahead of seed round.
</details>

## Score

**Total: 78 / 100 — APPLY, standard tailoring**
Track: ai-engineer

| Dimension | Score |
|---|---|
| Technical fit | 34/40 |
| Seniority fit | 16/20 |
| Track clarity | 15/15 |
| Company fit | 5/15 |
| Application quality | 8/10 |

**Why this score.** The central asks are well covered: Python is `strong`, "experience building with LLMs in real applications" is evidenced twice over by Bedtime Story Teller (Ollama and Mistral local inference, a real production LLM application) and the Verimi SDD automation across Claude and Codex (paid, production use, not a hobby), and "agent workflows with tool use" is evidenced by Bedtime Story Teller's MCP server exposing tools with an LLM planning step and a deterministic fallback. Backend and API experience is `strong` via FastAPI, JWT auth and SQLAlchemy. Five of the six verbatim requirements are answered on `strong` evidence, which is why this dimension sits at the top of the "strong overlap" band. It is held below 35 for two honest reasons rather than one invented one. RAG is named in the requirements and is not evidenced anywhere on the profile, and while the requirement reads "RAG, agent workflows or similar patterns" and the agent-workflow half is genuinely strong, the retrieval half is absent. Separately, "work with structured and unstructured data across the system" asks for a data-engineering breadth the profile does not show, and "comfortable in early-stage environments" is unevidenced, since PakWheels and Verimi are both established companies.

**Postgres, vector databases and cloud infrastructure were not scored as gaps, deliberately.** None of the three appears in the verbatim Requirements or Responsibilities blocks. All three come from the record's `Tech stack` line, which is the fetch model's gloss on the advert rather than the advert's own text. The rubric's "score the posting's own words, not an expansion of them" rule exists for exactly this, and the Michael Page Actors defect on 2026-08-03 was the same mistake. They are recorded under Risks as familiarisation items instead. Company fit is scored low deliberately: this is an agency listing and, despite a thorough research file, the end client is genuinely unnamed and unverifiable beyond one paragraph, so there is nothing real to weigh here regardless of how good the technical match is.

**Gaps.** RAG, named in the requirements and absent from the profile. The requirement is disjunctive, "RAG, agent workflows or similar patterns", and the agent-workflow half is strongly evidenced, so this is the one genuine technical gap and it is a soft one. Beyond that, "work with structured and unstructured data across the system" reaches for a data-engineering breadth nothing on the profile demonstrates. Early-stage experience is the third: both employers are established companies, so "comfortable in early-stage environments with high ownership" has to be argued from ownership evidence rather than from having worked at a startup.

**Risks.**
- **Wide seniority band.** The posting's own floor is mid, which matches, but responsibilities reach "technical direction at senior and lead levels" and the research brief flags this explicitly as above Farrukh's four years. A process that screens toward the top of the band is a real risk.
- **Agency listing, end client entirely unnamed.** Two targeted searches in the research file failed to identify the employer. Nothing to tailor a letter to beyond the one paragraph the posting itself gives, and no way to assess funding stability, culture or team structure before applying.
- **Two other Munich roles surfaced in research are unverifiable** and, per the research brief, must not be used for anything downstream. Not used here.
- **Early-stage company, pre-seed-round scaling.** Ordinary early-stage risk (funding runway, product-market direction), not a gate, but worth naming since nothing beyond "existing product and paying customers" is known.
- **Named in the stack line, not in the requirements.** Postgres sits at `ask` in `skills.md` and the database behind Bedtime Story Teller's SQLAlchemy persistence is not confirmed. Vector databases and cloud infrastructure are absent from the profile. LangChain and Hugging Face, the obvious answers to "agent frameworks", are both `ask`. None of these were scored as gaps, since none appears in the advert's own words, but they are worth being ready to talk about in a first call.
- Munich onsite is not a deduction per `constraints.md`. German "a plus, not required" does not touch the hard gate. Neither is scored as a risk here.

**Lead with.** Bedtime Story Teller: the MCP server with exposed tools, the LLM planning step that selects its own story source, and the deterministic fallback when that reasoning fails. It maps almost directly onto "design and implement agent workflows with tool use and multi-step reasoning" and "build and deploy LLM-powered features used in production". Pair it with the FastAPI/SQLAlchemy/JWT backend for "APIs, data systems and backend services", and use the Verimi Claude/Codex SDD automation as second, independent evidence that LLM tooling is something he has shipped at work, not experimented with alone.
