---
company: Demodesk
role: AI GTM Engineering Intern
source: linkedin
url: https://www.linkedin.com/jobs/view/4435976012/
posted: UNKNOWN
imported: 2026-08-14
location: Berlin, Germany
work_model: UNKNOWN
language: english
seniority: junior
---

## Requirements

"You are AI native: you already use LLMs daily to build things"

"Basic technical skills: you can write scripts (Python or JavaScript), work with APIs"

"A builder mindset: you prototype first and ask for permission later"

"Interest in how B2B companies acquire customers: sales, marketing, growth"

"Currently enrolled in or recently graduated from a Bachelor's or Master's program"

"Fluent English; German is a plus"

## Responsibilities

"Build and maintain automated prospecting workflows"

"Create custom AI agents on Demodesk's AI Crew platform"

"Wire up integrations between CRM, enrichment tools, and outbound platforms"

"Run growth experiments end to end: hypothesis, build, launch, measure, iterate"

"Automate internal GTM reporting"

"Document what works so your systems outlive your internship"

## Tech stack

LLMs (general, used daily for building), Python, JavaScript, APIs, CRM tooling, enrichment tools, outbound platforms, Demodesk's own "AI Crew" agent platform.

## Notes

- This is a paid internship (Bachelor's or Master's students, or recent graduates), not a standard full-time role. The `seniority` enum has no internship category, so the floor value `junior` was recorded here rather than `UNKNOWN`, matching the precedent set for the Siemens Werkstudent record. Downstream scoring should treat this as below junior in practice.
- Language: posting states "Fluent English; German is a plus." German is explicitly optional, not required, so `language` is recorded as `english` per the skill rule. No CEFR level is stated for German, so there is nothing to quote and no gate is triggered against the A2 constraint.
- Location and work model are inconsistent in the fetched posting. The page's location field reads "Berlin, Germany" but the body also references "Team face time in Munich," and work mode (onsite, hybrid, remote) is never stated outright. `work_model` is recorded as `UNKNOWN` rather than guessed. Confirm the actual base city before treating this as a Berlin role.
- Job ID sanity check: 4435976012 sits below the 444 to 445 million cluster seen in this cycle's other LinkedIn imports (for example 4436600222 on 2026-08-01 and 4437947712 on 2026-07-30), which points to a somewhat older requisition than the page's own "1 month ago" label, though not as extreme a gap as the six-month case flagged previously. Given the conflict between the ID and the relative label, `posted` is recorded as `UNKNOWN` rather than trusting "1 month ago."
- Direct employer listing (Demodesk itself), not a recruitment agency or a marketplace/talent-network page. Requirements and responsibilities are specific to Demodesk's own product ("AI Crew platform"), not generic marketing copy.
- Salary is stated on the posting (a monthly range) but is not recorded here, per the pipeline's standing rule not to track or score on salary.

## Raw

<details>
Extracted via WebFetch (LinkedIn fetched without a login wall):

**Company Name:** Demodesk

**Role Title:** AI GTM Engineering Intern

**Location:** Berlin, Germany

**Work Mode:** Not specified (assumed onsite based on "Team face time in Munich" mention)

**Seniority Level:** Entry level

**Employment Type:** Internship (Paid)

**Salary:** €1,500.00/month – €2,500.00/month

**Posted Date:** 1 month ago

**Direct Employer or Agency:** Direct employer

Requirements

- "You are AI native: you already use LLMs daily to build things"
- "Basic technical skills: you can write scripts (Python or JavaScript), work with APIs"
- "A builder mindset: you prototype first and ask for permission later"
- "Interest in how B2B companies acquire customers: sales, marketing, growth"
- "Currently enrolled in or recently graduated from a Bachelor's or Master's program"
- "Fluent English; German is a plus"

Language Requirements: Fluent English required. German is optional or preferred but not mandatory. No CEFR level specified.

Work Authorization: Not mentioned.

Responsibilities

- "Build and maintain automated prospecting workflows"
- "Create custom AI agents on Demodesk's AI Crew platform"
- "Wire up integrations between CRM, enrichment tools, and outbound platforms"
- "Run growth experiments end to end: hypothesis, build, launch, measure, iterate"
- "Automate internal GTM reporting"
- "Document what works so your systems outlive your internship"
</details>
