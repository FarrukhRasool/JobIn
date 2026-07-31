# dexter health GmbH, AI Engineer (LLM) - Remote

Researched: 2026-07-29
Sources:
- https://www.dexter-health.com/ (homepage, product pages, footer)
- https://www.dexter-health.com/blog/dexter-health-neue-website-launch
- https://www.dexter-health.com/blog/validierung-ki-systemen-leitfaden-fur-pflegeheime
- https://www.dexter-health.com/blog/schnittstellen-guide-spracherkennung-medifox-vivendi-myneva
- https://www.northdata.com/dexter%20health%20GmbH,%20K%C3%B6ln/HRB%20112599 (company registry)
- https://global-connect.nrw/en/organizations/dexterhealthGmbH309f02b5/317216
- https://www.startbase.com/organization/dexter-health/
- https://foundersphere.io/en/startup/dexter-health/
- https://app.welcometothejungle.com/companies/dexter
- https://www.linkedin.com/company/dexter-health/
- https://www.linkedin.com/jobs/view/4437678771/ (the posting itself)
- https://join.com/companies/dexter-health (careers page, aggregator)
- https://www.arbeitnow.com/jobs/companies/dexter-health (fuller list of open roles)
- https://join.com/companies/dexter-health/16396010-applied-ai-engineer-remote
- https://github.com/dexterhealth (GitHub org, verified via GitHub API)
- https://www.care-xpo.de/en/exhibitors/dexter-health-2523482 (trade fair exhibitor page)
- Web search results referencing Tracxn (tracxn.com/d/companies/dexterhealth) for funding status
- Web search results referencing deutsche-startups.de and Ignition accelerator (Batch #12, Düsseldorf/Rheinland)
- Web search confirming name collisions: dexter-healthcare.com (Dexter, Maine, USA), ycombinator.com/companies/dexter (Berlin, spend intelligence), Distalmotion "Dexter" surgical robot (Switzerland)

## Name collision warning

"Dexter" is heavily overloaded as a product/company name. During this research I found at least three unrelated organisations that could be confused with the target company:

1. **Dexter Health Care** (dexter-healthcare.com) - a 53-bed long-term care and skilled nursing facility in Dexter, Maine, USA. Unrelated.
2. **Dexter** (ycombinator.com/companies/dexter) - a Y Combinator-backed (Fall 2024) Berlin startup building AI agents for accounts-payable / spend intelligence, founded by Bella Wu, Caterina Kiehntopf and Vincent Garrigues, raised ~$2.5M seed. Unrelated, different sector, different founders.
3. **Dexter** the surgical robot made by Distalmotion (Switzerland), which raised $150M Series G in late 2025. Unrelated, different product entirely.

The company behind this posting is **dexter health GmbH**, registered in Cologne, Germany (HRB 112599) with a second registration in Essen (HRB 32270), founded 2021 by Marc Margulan and Eren Cirit. This is confirmed as the right company: the LinkedIn job posting itself (https://www.linkedin.com/jobs/view/4437678771/) names "dexter health" as the poster, the domain (elderly care / nursing homes, Germany) matches the posting's stated "nice-to-have: nursing homes or elderly care workflows knowledge," and the posting's tech-tool list (Python, Claude Code, Codex, Cursor, Copilot, self-hosted LLMs) matches language used verbatim across dexter health's other open roles on join.com. Everything below refers only to this company.

## What they do

dexter health GmbH builds an AI product suite for nursing homes and long-term care facilities in Germany, aimed at reducing nursing staff's administrative workload. The product has three named modules, stated consistently across the company site and product pages (VERIFIED, dexter-health.com):

- **dexter.mobile** - voice documentation. Staff dictate care notes; the system converts spoken, colloquial language into structured, professional care-documentation entries and pushes them into existing documentation systems via REST-API interfaces.
- **dexter.sis** - an "SIS assistant" that records and summarises resident conversations for the Strukturierte Informationssammlung (SIS), a standard German care-assessment framework, according to "Expertenstandards" (expert care standards).
- **dexter.qm** - AI-assisted shift/duty scheduling ("Pflegedienstplan"), marked "Neu" (new) on the site, which factors historical data, staff availability and resident needs into shift plans.

Who pays: nursing home and care-facility operators (Träger) buy the product as B2B software. The care:xpo trade-fair exhibitor listing describes the target market as "(Partially) inpatient facilities, Facilities for the disabled, Special care facilities" (VERIFIED, care-xpo.de). The company's own site lists partner/customer logos including senso, AWO, Caritas, Stella Vitalis, Diakonie, Contilia, and an image labelled "charite" (presumably Charité, the Berlin university hospital), confirmed by inspecting the image alt-text/slugs on the live homepage (VERIFIED, dexter-health.com, image asset names, not a press release). One logo is labelled "connext vivendi" - Connext Vivendi is itself a competing care-documentation platform in this market, so this logo more likely denotes an interface/integration partner than a paying customer; this is ambiguous and not resolved (see Open questions).

I found no evidence of a direct billing relationship with Pflegekassen (statutory long-term care insurance) or any other insurer - the business model reads as a straightforward SaaS sale to the care-facility operator, not a reimbursed medical service. NOT FOUND: any public pricing or contract-value information.

## Stage and size

- **Founded:** May 2021, per the Cologne commercial register (HRB 112599). VERIFIED, northdata.com.
- **Founders:** Marc Margulan (CEO) and Eren Cirit (CTO). Margulan trained as a medical doctor (Medicine degree, University of Duisburg-Essen) before co-founding the company; Cirit was previously a research engineer at FIR an der RWTH Aachen (an applied-research institute affiliated with RWTH Aachen university). VERIFIED via web search results citing Crunchbase person profile and LinkedIn company page.
- **Funding:** No institutional venture-capital round was found. A funding-database search (Tracxn) states the company "has not raised any funding rounds yet." What is documented is public/grant funding: €155,119 from the "WE! Digital Health Factory Ruhr" programme (April 2024) and €284,000 in state aid via NRW.SeedCon (May 2024), with earlier grant activity referenced in aggregate (a search summary of Northdata cited "€985,119" in public funding across 2021-2024, and a separate summary cited "€370,000" for development of a voice-assistant interaction system - these figures were not independently cross-checked against a primary Northdata screenshot and should be treated as INFERRED/approximate, not exact). Registered GmbH share capital is only €25,201 (up from €25,000 at founding), which is not itself a measure of funding raised but is consistent with a company that has not taken a large priced equity round. The company went through the Ignition accelerator programme (Batch #12, a Düsseldorf/Rheinland regional programme for early-stage startups, "idea through first customers") - INFERRED early stage classification from this programme's stated scope, per web search results.
- **Headcount:** Sources disagree. LinkedIn's own company page shows a self-reported band of "11-50 employees" with roughly 12 profiles listed; Startbase and Welcome to the Jungle show smaller bands ("1-10" and "1-20" respectively). Best read: a small team, roughly a dozen people, with some chance it is nearer 20. VERIFIED (as "disagreement exists") via linkedin.com/company/dexter-health, startbase.com, app.welcometothejungle.com/companies/dexter. Exact figure: NOT FOUND.
- **Direction of travel:** The original 2021 commercial-register purpose clause describes the company's business as "development and distribution of software and hardware in the medical field, especially voice assistance systems" (i.e. a hardware component was originally in scope). The current product, as described across the live site, is software-only (three app/service modules, no hardware device offered). This reads as a pivot away from a hardware smart-speaker concept toward a pure software integration layer, though I could not find an explicit company statement confirming a pivot - this is INFERRED from the gap between the registered purpose clause and the current product line.

## Tech stack

What the posting itself states (from jobs/inbox/dexter-health-ai-engineer.md, i.e. the LinkedIn ad): Python or a comparable backend language; building and operating both commercial and open-source LLMs "without vendor lock-in"; self-hosted model serving where useful for cost/latency/control; structured outputs, validation logic and fallback behaviour; evaluation loops and quality checks for AI outputs; daily use of AI coding tools (Claude Code, Codex, Cursor, Copilot or similar).

What I could independently verify or infer beyond the posting:

- **GitHub** (VERIFIED via GitHub API, github.com/dexterhealth, org created May 2023): the org is almost entirely private. Its only public repository is a fork of `isolate_pool_2` (github.com/maxim-saplin/isolate_pool_2), a Dart package implementing an isolate-based thread pool. This is a weak but real signal that the mobile app (dexter.mobile) is built with Flutter/Dart, since `isolate_pool_2` is a Flutter/Dart concurrency utility. INFERRED stack detail, low confidence, single data point. The org has essentially no other public open-source footprint (0 other public repos, minimal followers) - this is not a company that publishes code.
- **Other current job postings** (VERIFIED, join.com and arbeitnow.com, cross-checked): alongside this role, dexter health currently has four other near-identical AI/LLM engineering postings open simultaneously - "AI Developer (LLM Products)," "Applied AI Developer," "Applied AI Engineer," and "AI Engineer (LLM Products)" - all using near-identical must-have/nice-to-have language to this posting, all remote, all listed under a "Data team" (per LinkedIn's job categorisation) inside a broader "Development" department. Separately, three more open roles sit in a distinct "Remote Helpdesk" department: Junior Technischer Projektmanager Software, Technical Support Specialist Software, and Junior Application Support Specialist Software, all German-language (m/w/d), 100% remote. The existence of a dedicated support/helpdesk function implies a live, in-production customer base needing ongoing support, separate from the product-building "Data team."
- **Domain-specific integration standards:** a marketing blog post about AI validation in nursing homes discusses the EU AI Act's "high-risk" classification for certain health-AI use cases (e.g. fall-risk prediction) and DIN SPEC 31000 as a validation methodology, and separately a blog post title references building interfaces ("Schnittstellen") for speech recognition into MediFox, Connext Vivendi and myneva - three established German care-documentation platforms. I read these as evidence that dexter health's product integrates into incumbent SIS/documentation systems via API rather than replacing them, and that regulatory framing (EU AI Act, DIN SPEC 31000) is part of how they position the product to buyers. I did **not** find a direct, first-person technical statement from the company describing its own model architecture, hosting, or validation pipeline - the blog content reads as general industry/compliance guidance aimed at care-home administrators (PDLs, QM-Beauftragte), not an engineering disclosure. Treat any specific model/algorithm names appearing in that content (e.g. a mention of LightGBM and a stated 70-96% prediction-accuracy range for fall-risk scoring in one blog post) as **general industry context in an SEO-oriented article**, not a confirmed description of dexter health's own production system.
- **No engineering blog** was found. The blog at dexter-health.com/blog is content marketing aimed at nursing-home quality managers and administrators (e.g. "Software für Pflegedokumentation," "Beschwerdemanagement in Pflegeeinrichtungen," "Risikomanagement im Pflegealltag"), not a technical/engineering blog.

## Vision and direction

Stated mission, consistent across the site: "AI for care. From voice documentation to AI duty scheduling. We ensure that carers have more time" (translated from German site copy, VERIFIED dexter-health.com). The company repeatedly cites Germany's projected shortfall of roughly 500,000 nursing staff by 2035 as the structural problem motivating the product (VERIFIED, dexter-health.com blog).

Evidence of active growth: the product line is expanding (dexter.qm shift scheduling is marked "Neu"/new on the site), the company rebranded its visual identity and website in May 2024 alongside an app redesign (VERIFIED, dexter-health.com/blog/dexter-health-neue-website-launch), and it currently has eight concurrent open roles split across a product/AI "Data team" and a customer-facing "Remote Helpdesk" team. Running five near-identically worded AI/LLM engineering postings at once, at a company this small, is unusual - it may indicate a genuine, fast build-out of a formal AI engineering function, or it may reflect the same requirement posted under several titles to maximise reach across job boards. I could not determine which from public information (see Open questions). The LinkedIn posting for this exact role already shows "over 200 applicants," so whichever it is, competition for the role is real.

## The role in context

This posting sits inside a small, apparently newly formalised "Data team" (LinkedIn's own categorisation) within the company's Development function, alongside four other near-duplicate AI/LLM engineering openings. It is very likely a genuinely new/expanding function rather than a single backfill, given the number of simultaneous openings, though I found no statement confirming team size or growth targets. No information was found on who this role reports to; the most plausible line manager, based on title alone, is CTO Eren Cirit, but this is INFERRED, not confirmed. LinkedIn's own posting metadata tags the role "Entry level," but the actual requirements (production AI integration, evaluation/validation pipeline design, cross-stack debugging, ownership mindset) read as more senior than that tag suggests - this was already flagged at intake and is repeated here because it is a real inconsistency in the ad, not a scoring error.

## Location and work model

Legal registered addresses: Bonner Wall 126, 50677 Cologne, and a second registration (Krausstr. 9, 45147 Essen). VERIFIED, northdata.com / NRW.Global.Connect. All current open roles, including this one, are listed as remote. Sources disagree on remote scope: one job-board mirror of a near-identical posting (Applied AI Engineer, via Himalayas/join.com) describes it as "Remote, Germany-based company," while another aggregator's paraphrase of the same role described "worldwide eligibility." I could not resolve this conflict, and it may reflect different postings or an aggregator error rather than an actual company policy difference (see Open questions). I found **no evidence connecting the company to Frankfurt** beyond the LinkedIn job listing's own location header, which named Frankfurt while the job body said "remote in Germany." No Frankfurt office, address, or press mention of Frankfurt was found anywhere else. This is most likely a LinkedIn default/metro-area artefact for a Germany-wide remote listing, not an actual office - it should not be relied on for any relocation or timezone assumption.

## Culture and engineering practice

No engineering blog, no conference talks, and no meaningful open-source activity were found (see Tech stack). No employee reviews with visible content were found on Glassdoor (a company page exists showing very few reviews, but the review text itself was not accessible) or Kununu (no listing found). One job-board paraphrase of a company posting states the company favours "founder-like urgency" over formal seniority and values "speed, intelligence, and outcomes over titles" - this is the company's own self-description via a job ad, not independently verified.

One small, concrete observation: as of this research date, the company's own live marketing homepage (dexter-health.com) still contains unreplaced Lorem-ipsum placeholder text in a features/benefits section ("Neque et neque cursus sollicitudin Lorem ipsum dolor sit amet consectetur..."). This is a minor but real signal of a small team moving quickly without full QA on customer-facing material, worth being aware of rather than a dealbreaker.

## For the cover letter

- The company was founded by a doctor and an engineer together: CEO Marc Margulan trained in medicine at the University of Duisburg-Essen before co-founding the company, and CTO Eren Cirit was previously a research engineer at FIR an der RWTH Aachen. A domain-expert/engineer founding pair is a specific, checkable detail worth naming rather than generic "healthcare AI" praise.
- The product is not a vague "AI platform" - it is three named, specific modules: dexter.mobile (voice documentation), dexter.sis (AI-assisted SIS resident assessment per German care Expertenstandards), and dexter.qm (AI shift scheduling). Referencing one of these by name shows the letter was actually researched.
- Their own content repeatedly frames the mission around Germany's projected shortage of roughly 500,000 nursing staff by 2035 - a specific, sourced structural problem, useful for tying a candidate's motivation to something concrete rather than "I'm passionate about healthcare."
- Caution: named partner/customer logos (AWO, Caritas, Diakonie, Stella Vitalis, senso, Contilia, and an image that appears to say Charité) appear on their homepage, but the exact commercial relationship (paying customer vs. pilot vs. integration partner) was not confirmed for any of them - safe to mention that they work with organisations "like AWO and Caritas" if wanted, but do not state as fact that any one of them is a paying customer.

## Concerns

- No confirmed institutional funding round; documented funding is public/grant money in the low hundreds of thousands of euros, and GmbH share capital is minimal (€25,201). Financial runway and stability cannot be assessed from public data. This matters directly for the Company-fit "stage/stability" read at scoring.
- Headcount is genuinely unclear (bands ranging 1-10 to 11-50 across sources), for a company running eight concurrent open roles - proportionally a large hiring push for its apparent size.
- Five near-identical AI/LLM engineering postings open at once is unusual for a team this small; could be healthy fast growth of a real team or a scattershot recruiting approach across job boards. Not resolvable from outside.
- "Over 200 applicants" already on this specific LinkedIn posting as of intake - real competition for the role.
- LinkedIn tags the role "Entry level" while the actual requirements read as more senior; already flagged at intake, repeated here as a genuine mismatch in the ad rather than noise.
- No verified Frankfurt connection at all - do not treat the "Frankfurt" reference as meaningful.
- Regulatory posture is asserted only in marketing terms (badges for "DSGVO-konform" and "EU-KI-Verordnung" via a third party, heyData). No independent confirmation of medical-device classification (Medizinprodukt status) for any module, and no first-person description of how they validate their own AI outputs was found, despite a blog post about AI validation generally. Worth a direct question at interview if this reaches that stage.
- No engineering blog, negligible GitHub activity, no conference talks: engineering-practice claims in this brief are thin and mostly self-reported.
- Live homepage still contains placeholder Lorem-ipsum copy in a features section - minor, but a real small-team/limited-QA signal.

## Open questions

- Exact current headcount: NOT FOUND (conflicting bands across LinkedIn, Startbase, Welcome to the Jungle).
- Total funding raised beyond documented public grants, and whether any private/institutional round exists: NOT FOUND.
- Who this role reports to: NOT FOUND (CTO Eren Cirit is the most plausible line manager by title, but unconfirmed).
- Whether the five concurrent AI/LLM engineering postings represent five distinct new hires into a growing team, or the same requirement duplicated across titles/boards for reach: NOT FOUND.
- Whether this specific role is Germany-only remote or worldwide-eligible remote (two different job-board mirrors disagree): NOT FOUND.
- Any actual connection between the company and Frankfurt: NOT FOUND (none surfaced beyond the LinkedIn location header).
- Medical device classification status (if any) of dexter.sis or dexter.qm under German/EU law, and details of their own AI validation process: NOT FOUND.
- Employee reviews (Kununu, Glassdoor) with visible content: NOT FOUND.
- Exact nature of the relationship with logo'd "partners" (paying customer vs. pilot vs. integration partner), particularly Connext Vivendi, which is also a competing documentation platform: NOT FOUND, flagged as ambiguous above.
