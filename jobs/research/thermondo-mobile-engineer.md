# Thermondo, Mobile Engineer (f/m/d)

Researched: 2026-07-31
Sources:
- https://www.thermondo.de/ (company site, About/product content)
- https://www.thermondo.de/ueber-uns (About Us page)
- https://www.thermondo.de/unternehmen/jobs/ and https://www.thermondo.de/unternehmen/jobs/jobs-in-tech-product/ (careers, Tech & Product department listing)
- https://www.thermondo.de/unternehmen/jobs/zentrale-job/2455568/ (Mobile Engineer, this exact role, primary posting)
- https://www.thermondo.de/unternehmen/jobs/zentrale-job/2400490/ (Senior Full Stack Engineer, sibling posting)
- https://www.thermondo.de/unternehmen/jobs/zentrale-job/2444510/ (Staff Engineer - Full Stack, sibling posting)
- https://www.thermondo.de/unternehmen/jobs/zentrale-job/2006598/ (CRM Architect, sibling posting)
- https://www.thermondo.de/unternehmen/jobs/zentrale/ (full Headquarters job list)
- https://github.com/thermondo (GitHub organisation, repo list, languages, activity)
- https://github.com/thermondo/tstack (AI coding-agent governance tool, read fully)
- https://github.com/thermondo/thermite (archived mobile test-automation library, read fully)
- https://thermondo.github.io/hiring/onboarding.html (public engineering onboarding handbook)
- https://apps.apple.com/de/app/thermondo/id6504239494 (App Store listing, consumer app)
- https://apps.apple.com/de/app/thermondo/id6504239494?see-all=reviews&platform=iphone (App Store reviews, read directly)
- https://apps.apple.com/de/app/thermondo-installer/id6504600726?l=en-GB (App Store listing, installer app)
- https://apps.apple.com/de/developer/thermondo-gmbh/id1479533804 (developer page, full app list)
- https://play.google.com/store/apps/details?id=com.thermondo.enduser (Play Store listing, consumer app — fetch was truncated, see grading note)
- https://www.appbrain.com/app/thermondo/com.thermondo.enduser (third-party Android app stats aggregator, via search synthesis only)
- https://proptechconnect.com/berlins-thermondo-raises-e50m-to-heat-up-germanys-homes-and-bridge-affordability-gap/ (funding news, read directly)
- https://www.cleanenergywire.org/news/germanys-largest-heating-installer-terminates-sale-gas-boilers-focuses-heat-pumps (gas boiler exit, read directly)
- https://www.thermondo.de/unternehmen/presse/pressemitteilungen/ceo-wechsel-bei-thermondo-gruender-philipp-pausder-uebergibt-an-felix-plog/ (CEO transition press release, read directly)
- https://sifted.eu/articles/enpal-1komma5-zolar-solar-giants (competitor market context, read directly, does not name Thermondo)
- https://www.stuttgarter-zeitung.de/inhalt.neue-heizung-enpal-thermondo-lokaler-handwerker-wo-bekommt-man-die-waermepumpe-guenstiger.146f7ceb-a777-4a5f-b742-1960fae9811a.html (regional press, names Thermondo alongside Enpal)
- https://www.linkedin.com/company/thermondo/ (LinkedIn company page, headcount range)
- jobs/inbox/thermondo-mobile-engineer.md (intake record, LinkedIn posting text)

## What they do

Thermondo installs heat pumps and, increasingly, bundled solar/PV systems for German homeowners, positioning itself as an end-to-end alternative to hiring a local Handwerker: sales consultation, subsidy/financing paperwork, installation by in-house tradespeople, and ongoing maintenance, plus a companion app ("thermondo smart") for monitoring and controlling the installed system. VERIFIED (thermondo.de, ueber-uns page). Revenue comes from homeowners who buy or finance a heat pump/PV installation; the company also runs its own installment-financing product ("thermondo flex," a 15-year payment plan funded through a bank-backed SPV structure) rather than requiring full upfront payment. VERIFIED (proptechconnect.com, read directly). In February 2024 the company stopped selling gas boilers entirely to focus on heat pumps and PV, citing Germany's 2045 fossil-heating phase-out and demand triggered by the Building Energy Act debate. REPORTED (cleanenergywire.org, read directly).

## Stage and size

- Founded 2013 in Berlin. VERIFIED (thermondo.de/ueber-uns).
- Ownership: Brookfield (infrastructure investor) became majority stakeholder in June 2020. Other named investors: Future Energy Ventures, HV Capital, Vorwerk, Rocket Internet, 10x. VERIFIED (thermondo.de press release, CEO-transition announcement, read directly). This is not an independent startup; it has been Brookfield-controlled for six years.
- July 2025: secured a €50m debt facility (not an equity round) from an unnamed international partner bank to fund the "thermondo flex" customer-financing product, structured through SPVs to keep the loan off the core balance sheet, expected to help ~1,600 households. REPORTED (proptechconnect.com, read directly, dated 22 July 2025). This is financing infrastructure for the sales product, not primary growth capital for the company — worth being precise about downstream, since "raised €50m" reads very differently from "secured a €50m lending facility for a financing product."
- April 2024: acquired FEBESOL, a southwest-German photovoltaic installer, to build out the solar/PV side of the business. REPORTED (proptechconnect.com; corroborated independently by the thermondo.de CEO-transition press release, both read directly).
- CEO change, May 2024: founder Philipp Pausder handed the CEO role to Felix Plog (previously CRO from August 2023, and before that founder of foodpanda). VERIFIED (thermondo.de press release, read directly). This is over a year before the research window's "last 12 months" but is the most recent leadership change found and materially shapes "why now" — a founder-to-professional-CEO transition explicitly framed around "sustainable profitability."
- Headcount: company states "over 1,200 employees," including 600+ full-time tradespeople/installers. VERIFIED (thermondo.de/ueber-uns and LinkedIn company page, both state this). A separate Senior Full Stack Engineer posting on the company's own site states "approximately 1,000 employees" for the same group. VERIFIED (same source, so the company itself is inconsistent by ~200 across two of its own pages, not a research error). A third-party aggregator (via search synthesis, not opened directly) put headcount at 498 as of June 2026 — this conflicts sharply with the company's own 1,000-1,200 figures and most likely reflects a narrower slice (e.g. LinkedIn-tracked office/corporate staff, excluding field tradespeople) rather than total workforce. SUMMARY — re-verify before using downstream, do not state a single headcount number as fact; use the company's own "1,000+" range instead.
- No layoffs found in the last 12 months in any source checked. NOT FOUND (absence of evidence, not evidence of absence — only a moderate amount of press coverage exists for this company).
- Employee sentiment: a search synthesis reported a Glassdoor aggregate of 3.9/5 from 33 reviews, 77% would recommend. SUMMARY — the primary Glassdoor page returned HTTP 403 to direct fetch and could not be independently opened; do not use this number downstream, treat only as a lead that the general sentiment is not obviously negative.

## Tech stack

**What the Mobile Engineer posting itself states** (read directly from the company's own site, matching the LinkedIn text near-verbatim): Kotlin, Kotlin Multiplatform Mobile (KMM) for shared Android/iOS logic, native Android development with "modern Android architecture," Python as a bonus, and "patterns for integrating pre-defined LLM services and AI-native features." VERIFIED (thermondo.de/unternehmen/jobs/zentrale-job/2455568/).

**What sibling postings on the same careers page leak about the wider stack**, all VERIFIED by reading each posting directly:
- Senior Full Stack Engineer / Staff Engineer - Full Stack (both Berlin HQ): Python and/or Node.js backend, TypeScript, Vue.js frontend, AWS or GCP, Terraform, Kubernetes, TDD/SOLID/Clean Code practice. The Staff Engineer posting adds event-driven messaging via RabbitMQ, Google Pub/Sub or Kafka, and explicitly names hands-on LLM/production-AI work as a core, not bonus, responsibility, reporting to a "Domain Lead."
- CRM Architect (reports to VP of Engineering): Salesforce multi-cloud (Sales, Service, Revenue Cloud, Field Service), SFDX, n8n and Make for integration, event-driven/API-first architecture.
- Note the message-queue technology named differs slightly across postings — the Mobile Engineer/LinkedIn text says "Kafka, SQS/SNS" (implying AWS), the Staff Engineer posting says "RabbitMQ, Google Pub/Sub, Kafka" (implying GCP or a mixed cloud). This is either genuine multi-cloud/multi-team reality or just loosely-maintained job-ad copy; flagged as a minor inconsistency rather than resolved.

**GitHub organisation** (github.com/thermondo, 59 public repos, VERIFIED by direct read): activity is current, with commits as recent as 29 July 2026. Dominant language across tooling repos is Python (matches the Django/Heroku backend implied by the public onboarding handbook). Other languages present in the org's language mix: Shell, Rust, TypeScript, Java, Kotlin, Elixir, and Apex (the last confirming real Salesforce/Apex development, consistent with the CRM Architect posting). No public repo under the org is the actual consumer mobile app or its KMM codebase — the two Kotlin-tagged repos are **Funlin** (a small Kotlin compiler plugin, 4 stars, last updated Sept 2025) and **Thermite** (an Appium/Selenide-based mobile test-automation library, archived 23 March 2026). Thermite's documentation and example code reference Android testing explicitly (UIAutomator2 automation engine, an `Android` platform-type constant) but do not show equivalent iOS-specific examples. VERIFIED (github.com/thermondo/thermite, read directly). This is a real, if partial, signal that the company's existing mobile test tooling has been Android-oriented, and that this tool was archived (i.e. retired) only a few months before this Mobile Engineer role was posted — consistent with, but not proof of, a fresh start on the mobile stack.
- Public onboarding handbook (thermondo.github.io/hiring/onboarding.html, VERIFIED by direct read): confirms Python/Django, Heroku Enterprise, AWS, Google Cloud, GitHub, Sentry as core tooling, and mentions distinct "backend" and "phone" engineering teams alongside a general developer group — a small, direct piece of evidence that a dedicated mobile ("phone") function already exists internally, separate from backend.
- **tstack** (github.com/thermondo/tstack, VERIFIED by direct read, updated 29 July 2026 — two days before this research): a real, working internal tool that embeds engineering standards, architecture decisions and team-ownership knowledge directly into Claude Code via "auras" that activate passively. This is genuine, current, hands-on evidence that Thermondo's engineering org is actively building with AI coding agents, not just listing "AI-native features" as a job-ad buzzphrase — it directly corroborates the posting's own "AI coding assistant license" benefit and the "AI-native features" responsibility.

## The iOS question — this is the decision-relevant fact

The posting frames the role as Android-first, KMM-based, with iOS as future/secondary ("willingness to learn and contribute to future iOS development"). **This does not mean no iOS app exists.** A live consumer iOS app does exist today:

- **"thermondo"** (the consumer/smart-home-energy app), on the App Store at id6504239494, requiring iOS 15.0+, version 1.24.0, most recently updated 8 June (year not shown by the store page, but the app is actively maintained, not abandoned). VERIFIED (apps.apple.com, read directly).
- Rated **2.4 out of 5 stars from 34 ratings**. VERIFIED (App Store reviews page, read directly). Reviews (quoted directly from the App Store, VERIFIED) describe real problems: one reviewer wrote "Von der viel beworbenen KI ist nichts zu spüren" (nothing of the heavily-advertised AI is noticeable) and reported dynamic-pricing display failures and unreliable solar forecasts; another reported the app overwriting device settings without consent; another asked why standard features like dark mode, data export and Matter/smart-meter support are missing or paywalled.
- A second, separate app, **"thermondo Installer"** (for field technicians, id6504600726), is also live on both the App Store and Google Play, same 1.24.0 version and 8 June update date. VERIFIED (apps.apple.com, read directly). Rating shown as 5.0 from a single review — not a meaningful sample. VERIFIED but low-confidence given the n=1.
- On Android, the same consumer app (package com.thermondo.enduser) shows a much thinner footprint: a third-party aggregator (via search synthesis, not opened directly due to a 403 on direct fetch) reported version 1.19.0, last updated 15 December 2025, and effectively no user ratings. SUMMARY — re-verify before using downstream; do not state a precise Android version/date/rating as fact. The directionally interesting point — that the iOS listing shows more review activity and a more recent update than the Android listing appears to — is also only SUMMARY-supported and should not be treated as settled.

**What this means for the role, stated as inference, not fact:** a live, real, but poorly-reviewed consumer iOS app already exists, alongside a live Android app. Both plausibly predate this KMM initiative. The most likely reading is that the new Mobile Engineer role is building a fresh, shared (KMM) codebase — starting on Android — that will eventually replace or absorb the existing native app(s), rather than iOS being genuinely greenfield with no prior product. INFERRED, moderate confidence, from the combination of: (a) the job posting's own "future iOS" framing, (b) the archived Thermite test-automation tool being Android-oriented and retired only months before this posting, (c) a live but low-rated iOS app already existing. **This should be asked about directly at interview** — specifically, whether the KMM rewrite targets the existing "thermondo" consumer app, and what happens to the current native iOS codebase and its 2.4-star baseline in the meantime.

## Vision and direction

Stated vision: "every home can become climate-neutral" (ueber-uns page), pursued via heat pump + PV bundling, in-house installation at scale, and now embedded AI features and financing products layered on top of the installed base. VERIFIED (thermondo.de).

Observable behaviour mostly supports this: the gas-boiler exit (Feb 2024), the FEBESOL/PV acquisition (April 2024), and the thermondo flex financing facility (July 2025) are all concrete moves toward "electrify and make it affordable," not just messaging. REPORTED (cleanenergywire.org; proptechconnect.com, both read directly).

Where stated vision and observable behaviour diverge: the company markets AI heavily in its consumer app copy ("viel beworbene KI"), but its own App Store reviews (VERIFIED, read directly) say those AI features are not perceptible or reliable to real users. At the same time, the internal `tstack` tool (VERIFIED, read directly, updated two days before this research) shows genuine, current investment in AI-assisted engineering practice. The gap is specifically in **customer-facing** AI, not engineering-facing AI — worth knowing for interview framing, since a Mobile Engineer implementing "AI-native features" and "LLM service integration" would be working on exactly the surface area current users say is under-delivering.

## The role in context

This is one of five open Tech-department roles on the company's own careers page as of this research (Mobile Engineer, Senior Full Stack Engineer, Staff Engineer - Full Stack, CRM Architect, Business Systems Engineer), all based at the Berlin HQ ("Zentrale") in Kreuzberg ("Xberg"). VERIFIED (thermondo.de/unternehmen/jobs/jobs-in-tech-product/ and the individual postings). This is a small, senior-leaning tech hiring slate, not a large team build-out: three of the five roles (Staff Engineer, CRM Architect, Senior Full Stack) explicitly require 6-10+ years and report to a Domain Lead or the VP of Engineering. The Mobile Engineer role, at 3-5 years, is the most junior of the five and the only dedicated mobile hire currently open. VERIFIED (each posting read directly).

Given the public onboarding handbook's mention of an existing "phone" team distinct from "backend" (VERIFIED), this reads as a genuine, singular mobile hire into an existing but small mobile function, likely to work closely with or under a Domain Lead structure similar to the Staff Engineer posting's reporting line, rather than a brand-new team being spun up from zero. INFERRED. No listing states who this specific role reports to; the posting itself does not name a manager or team lead. NOT FOUND.

## Location and work model

Berlin HQ (Kreuzberg/"Xberg"), hybrid, up to 3 days/week remote. VERIFIED (posting, read directly, and corroborated by every sibling posting on the same careers page using identical wording). No indication of a fully remote or outside-Germany option for this role.

## Culture and engineering practice

- Public GitHub org is active and current (commits within the last 2 days of this research), open-sources genuinely useful tooling (a Django-Salesforce integration library with 19 stars, a coding-agent governance framework), and runs a public backend coding-challenge repo. VERIFIED (github.com/thermondo).
- A public onboarding handbook exists and is written candidly, including a stated norm that new hires' "first duty is to update this guide" after onboarding — a small but real signal of a documentation-oriented, non-hierarchical engineering culture. VERIFIED (thermondo.github.io/hiring/onboarding.html, read directly).
- No public engineering blog was found. NOT FOUND.
- No conference talks by Thermondo engineers were found (searched specifically for KMM/Kotlin Multiplatform talks). NOT FOUND.
- Consumer product quality, as visible through App Store reviews, is mixed to poor (2.4/5, specific complaints about reliability and overstated AI capability) — this is evidence about product/QA outcomes, not engineering process directly, but is the most concrete external signal of day-to-day execution quality available. VERIFIED (App Store reviews, read directly).

## For the cover letter

1. Thermondo runs a working, actively-maintained internal tool (`tstack`, github.com/thermondo/tstack) that embeds architecture decisions and engineering standards directly into Claude Code as passive "auras" — last updated 29 July 2026, two days before this research. This is a specific, checkable, current fact that shows the "AI coding assistant license" benefit and "AI-native features" line in the job posting reflect a real internal practice, not just job-ad language. VERIFIED (github.com/thermondo/tstack, read directly).
2. The company's own careers page lists this Mobile Engineer role as the only dedicated mobile hire among five open Tech roles at its Berlin HQ, alongside two Staff/Senior full-stack roles and a CRM Architect — all explicitly reporting to a Domain Lead or the VP of Engineering. This is a specific, checkable detail about the shape of the team being joined, useful for demonstrating the candidate looked past the single posting. VERIFIED (thermondo.de/unternehmen/jobs/jobs-in-tech-product/, read directly).
3. Thermondo stopped selling gas boilers entirely in February 2024 to focus solely on heat pumps and solar, ahead of Germany's 2045 fossil-heating phase-out — a concrete strategic commitment, not just marketing language about being "climate-focused." REPORTED (cleanenergywire.org, read directly).

## Concerns

- **The consumer iOS/Android app that already exists is poorly rated (2.4/5, 34 ratings) with specific, credible complaints that the advertised AI features don't work.** A Mobile Engineer joining to build "AI-native features" would be walking into a product surface where the company's own marketing has already outpaced what shipped. VERIFIED (App Store, read directly).
- **Headcount reporting is internally inconsistent.** The company's own pages state both "over 1,200" and "approximately 1,000" employees; a third-party figure of 498 could not be verified directly and should not be used. This is a minor but real data-quality flag about how carefully the company's own public materials are maintained.
- **The €50m July 2025 headline is customer-financing debt, not company growth capital**, and should not be characterised in a letter or elsewhere as "Thermondo raised €50m" without that distinction — doing so would be a factual overstatement.
- **Company is majority-owned by Brookfield (an infrastructure investor) since 2020, with a CEO change in 2024 explicitly framed around "sustainable profitability."** This is a maturing, PE/infrastructure-backed installer business, not an early-stage venture-funded startup — worth calibrating expectations (process, autonomy, equity upside) accordingly. VERIFIED (company's own press release).
- **The archived Thermite mobile-testing tool (retired March 2026) was Android-oriented with no visible iOS support**, and a real iOS app already exists separately — the exact relationship between the "new KMM initiative" this role is hired into and the existing native app(s) is not stated anywhere public and should be asked about directly at interview.
- No public engineering blog and no conference talks were found, so most of the "how they actually work" picture above rests on GitHub artefacts and job-ad text rather than first-person engineering writing. This is a real gap, not a red flag, but it limits how much can be independently corroborated.

## Open questions

- Does the new KMM mobile initiative replace the existing native "thermondo" consumer app, or run alongside it? NOT FOUND — ask directly at interview.
- Who does the Mobile Engineer role report to (a named Domain Lead, an Engineering Manager, or someone else)? NOT FOUND.
- How large is the existing "phone"/mobile team referenced in the internal onboarding handbook — is this role a first dedicated mobile hire, or an addition to an existing small team? NOT FOUND (the handbook confirms a "phone" team exists but not its size).
- True current company-wide headcount: company's own pages disagree (1,000 vs 1,200+); NOT FOUND as a single reliable number.
- Exact posting date: LinkedIn showed a relative "1 month ago" only; the company's own site does not show a posted date either. NOT FOUND.
- Android app's actual current rating/review volume/update cadence could not be verified directly (Play Store fetch was truncated, third-party aggregator data is SUMMARY grade, do not use downstream). Worth checking directly on a phone before interview.
- Whether the current live iOS/Android apps are Kotlin/Swift-native today, or built some other way (e.g. hybrid), was not established beyond the Thermite tool's Android-only test-automation evidence. NOT FOUND.
