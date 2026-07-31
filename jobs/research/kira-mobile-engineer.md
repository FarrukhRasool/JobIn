# Kira (BJAK), Mobile Engineer - AI Finance Agent

Researched: 2026-07-30
Sources:
- https://bjak.my/en/about-us
- https://jobs.ashbyhq.com/bjakcareer (careers board)
- https://api.ashbyhq.com/posting-api/job-board/bjakcareer (public Ashby API, full live listing pulled 2026-07-30, 1,411 jobs)
- https://jobs.ashbyhq.com/bjakcareer/fe7d3cbf-8101-4c6d-b0f2-b392e0dd1d2f (Mobile Engineer - AI Finance Agent, Germany, this exact role)
- https://jobs.ashbyhq.com/bjakcareer/d29f9c52-9cbc-4c1f-ac30-b85163d3598d (Senior Machine Learning Engineer, Germany, "A1" team)
- https://jobs.ashbyhq.com/bjakcareer/576129bb-a15a-4db0-b38e-9c6dfd53a21c (Founder's Office Lead, "About BJAK" boilerplate)
- https://www.insurancejournal.com/news/international/2025/12/16/851238.htm (Bloomberg-sourced: founder, headcount, revenue, Europe expansion)
- https://fintechnews.my/55863/insurtech-malaysia/bjak-ipo/ (headcount/IPO, corroborates Insurance Journal)
- https://www.glassdoor.com/Reviews/Bjak-Reviews-E3055055.htm (employee review aggregate)
- https://www.reveliolabs.com/companies/bjak/employees/ (headcount time series, active job posting volume)
- https://tracxn.com/d/companies/bjak (funding/investor summary)
- itunes.apple.com Search API queries (country=de, country=my, country=us) for "Kira" and "BJAK", run 2026-07-30
- LinkedIn job posting https://www.linkedin.com/jobs/view/4444892592/ (via fetch, company self-description)
- jobs/inbox/kira-mobile-engineer.md (intake record)

## Name collision, resolved

"Kira" is a common name. Candidates considered and ruled out:
- **Kira Systems** (Toronto, contract-review AI, now owned by Litera) — legal tech, no mobile consumer app, no Berlin/Germany hiring push. Not this company.
- **Kira Learning** (US edtech, AI Fund portfolio company) — education, not finance/insurance. Not this company.
- **Kira Financial AI** (kirafin.ai — payment gateway/treasury/compliance infra) — a genuine fintech named Kira, but it sells B2B infrastructure, not a consumer insurance/claims mobile app, and no evidence connects it to Germany hiring at this volume. Not this company.
- **Kira by leap in time GmbH** (German AI workplace-assistant app, Darmstadt) — different product category (enterprise AI assistant), unrelated founder/company. Not this company.
- **sendwithkira.com** (WhatsApp banking, Nigeria) — different product and market. Not this company.

**Positive identification:** "Kira" here is the AI finance/insurance product brand of **BJAK** (BJAK Sdn Bhd, Malaysia). This is confirmed with high confidence because:
1. The job posting's exact requirements/responsibilities text ("Create simple mobile flows for insurance, payments, claims, renewals and financial services", 3+ years Kotlin/Swift, "App links, GitHub, screenshots... a strong advantage") is byte-for-byte identical to the live posting on BJAK's own Ashby careers board, ID `fe7d3cbf-8101-4c6d-b0f2-b392e0dd1d2f`, titled "Mobile Engineer - AI Finance Agent", location Germany. VERIFIED.
2. That posting's "About KIRA" section states: "Our mission is to make money smart, reliable and within reach for everyone... In 2019, we built the first mobile-first, insurance platform, enabling insurance to be accessible online by millions in the region. Today, it's the leading insurance platform in Southeast Asia." This matches BJAK's own public history (founded 2019, Southeast Asia's largest online insurance platform). VERIFIED.
3. BJAK's founder publicly stated in December 2025 that the company is targeting Germany and Spain for European expansion in 2026 (Insurance Journal / Bloomberg). VERIFIED. This lines up exactly with a fresh Germany-remote posting appearing in July 2026.

## PIPELINE CONFLICT: this is the same company Farrukh has already applied to

Added at intake review on 2026-07-30, after the research above was written.

`jobs/scored/bjak-ios-developer.md` is already in this pipeline, scored **89**, and its tracker row was set to **applied on 2026-07-30**, the same day this posting was imported. That application went to **BJAK, iOS Developer**, LinkedIn job 4437947712, Germany remote, Berlin referenced.

Since the research above establishes that Kira is BJAK's product brand rather than a separate company, this posting and the already-submitted one are **the same employer**. The two roles are also close to the same job:

| | BJAK, iOS Developer (applied) | Kira, Mobile Engineer (this one) |
|---|---|---|
| Shipping bar | "shipping iOS apps used by real users" | "shipping production apps used by real users" |
| Product sense | "strong product sense and care for UX, not just building screens" | "strong product sense and attention to mobile UX" |
| Production work | "debug production issues and improve performance, reliability and app quality" | "improve app performance, reliability, crash rate and user experience" |
| Platform | iOS only | Android and/or iOS |
| Location | Germany, remote, Berlin referenced | Germany, remote, Berlin referenced |

The only real difference is that this one is platform-agnostic and the applied one is iOS-only.

The intake dedup rule in the `job-intake` skill treats the same company plus role as a duplicate even when the URLs differ. This was not caught at intake because the posting is branded "Kira" and the earlier one "BJAK", so the slugs did not collide. It is a duplicate in substance.

**Consequence for scoring:** a second application to the same employer one day after the first is likely to reach the same recruiter or applicant tracking system. This should weigh on the decision, and the finding below about 1,411 live postings and this exact title being posted 46 times bears on the already-submitted application too, not just this one.

Conclusion: **Kira is BJAK's product brand, not a separate legal entity as far as any source shows.** Job postings and BJAK's own site use "BJAK" and "Kira" somewhat interchangeably (BJAK = the company/legacy Malaysian insurance platform, Kira = the newer "AI Finance Agent" / neobank app brand it is building for international markets including Germany). No separate "Kira GmbH" or German legal entity was found; treat this as BJAK hiring under the Kira product name until proven otherwise.

## What they do

BJAK is a Malaysia-based online insurance comparison and financial services platform, founded in 2019 by Low Wei. It lets consumers compare and buy car/motorcycle insurance across roughly 16 insurers (including Allianz and Tokio Marine, per Insurance Journal) and handles instant policy renewal, road tax renewal, claims filing/tracking and roadside assistance. It is Southeast Asia's largest online insurance platform by BJAK's own and third-party accounts, with 6-7 million users, live in Malaysia, Thailand, Japan and Taiwan. VERIFIED (bjak.my/en/about-us; Insurance Journal).

Under the "Kira" brand, BJAK is now building an "AI Finance Agent" / "AI Neobank App" that extends the same insurance/payments/claims/renewals model into new products (spending, saving, investing, exchanging, travel) and new countries, including a first push into Germany and Spain in 2026. VERIFIED for the stated ambition (job postings, Insurance Journal); the Germany product itself is NOT yet shipped (see App Store section below), so "what it does in Germany" today is aspirational, not operating.

Revenue model: BJAK is an insurance intermediary/marketplace, monetising via commission on policies sold and adjacent financial products. For Germany specifically this would require some form of German or EU authorisation; no evidence such authorisation exists yet (see Regulatory posture).

## Stage and size

- Founded 2019 in Malaysia by Low Wei (CEO), inspired by Ant Group/Alipay's success. VERIFIED (Insurance Journal/Bloomberg, 2025-12-16).
- Licensed in its home market by Bank Negara Malaysia (BNM) as an approved Financial Adviser and Islamic Financial Adviser. VERIFIED (bjak.my/en/about-us). This is a Malaysian licence and does not extend to Germany.
- Funding: one disclosed investor, BASS Investment; no disclosed round size. Company is described (Insurance Journal, citing the founder) as profitable since inception with "very minimal" debt and no reliance on significant external venture funding. INFERRED/VERIFIED-by-report — treat the "no major VC funding" characterisation as reported, not independently confirmed against a primary filing.
- Headcount: reported at "nearly 200" employees in December 2025, with a stated plan to double to ~400 by end of 2026 to support international expansion (Insurance Journal). Third-party workforce tracker Revelio Labs put headcount at 374 as of March 2026, consistent with that growth plan. Both VERIFIED via secondary sources, not a primary company disclosure.
- Considering an IPO within two years to fund the European expansion and provide employee stock liquidity (Insurance Journal, Dec 2025). VERIFIED as a stated intention, not a filed process.
- No German legal entity, office address, or German press coverage of a launch was found. NOT FOUND.

## Tech stack

From the posting itself (matches this role exactly): Kotlin, Swift, Android, iOS, REST APIs, analytics, crash logs. VERIFIED (posting text, identical across the live Ashby listing).

From other live Android-specific Kira postings in the same job family: Jetpack, Coroutines, Flow, modern Android architecture named explicitly as requirements. VERIFIED (Android Software Engineer - AI Neobank App posting, found via search summary of the live posting; the specific role applied to here does not name these, but the sibling Android req does).

From an unrelated internal team called "A1" (its own department in the Ashby board, distinct from the "Kira" mobile team): Python, PyTorch/JAX, GPU-based training and inference systems, for a separate "proactive AI assistant" product. VERIFIED (live posting, Senior Machine Learning Engineer, Germany, A1 Engineering). This confirms BJAK does have real, production-facing ML/AI engineering work elsewhere in the company — but it sits in a different team ("A1") from the mobile "Kira" role being applied to.

No GitHub organisation was found under BJAK's name. NOT FOUND. No public engineering blog was found. NOT FOUND.

BJAK's existing flagship Malaysian consumer app package name resolves to `com.newandromo.dev10680.app75961` (found via Apptopia/APKPure), a naming pattern associated with Andromo, a website-to-app wrapping tool rather than a natively built Android app. This is a single weak signal, not confirmed by inspecting the APK directly, and may be outdated or apply to a legacy/minor app rather than BJAK's main product. INFERRED, low confidence — flagged as an open question rather than a stated fact, because it would matter for how "native app experience" claims in the job ad should be read.

## Vision and direction

Stated vision: expand the BJAK insurance/financial-services model, rebranded and reframed as "Kira, an AI finance agent," from Southeast Asia into new geographies (Japan, Taiwan, Thailand already; Germany and Spain targeted for 2026) and new product lines (payments, saving, investing, exchange, travel) (Insurance Journal, job postings). The company frames this explicitly as an AI-driven push: "We believe AI will help us achieve this in our generation" (Kira job posting boilerplate).

Observable behaviour does not fully match that framing for this specific role: the Mobile Engineer posting itself contains zero AI/ML requirements or responsibilities — it is standard native mobile engineering (Kotlin/Swift, APIs, crash logs, UX). Real AI/ML engineering work does exist at the company, but in a separate "A1" team building a general AI assistant product, not in the Kira mobile team. Assessment: for this specific role, "AI Finance Agent" in the title is product/marketing branding, not a description of the engineer's day-to-day work. This matches the intake record's own flag on this point.

The clearest and most important gap between stated vision and observable behaviour: **the volume and duplication of hiring**. A full pull of BJAK's public Ashby job board on 2026-07-30 returned 1,411 open postings. The exact title "Mobile Engineer - AI Finance Agent" alone is posted 46 separate times across different countries (Germany, US, UK, Ireland, Netherlands, Spain, Sweden, Poland, Austria, Portugal, Switzerland is absent but many others present, plus most of Southeast Asia). Counting all mobile-titled variants ("iOS/Android Developer/Engineer/Software Engineer", "Mobile Application Developer", each with and without the "- AI Finance Agent" / "- AI Neobank App" suffix), there are 429 mobile-engineering postings company-wide. For Germany alone, this same underlying mobile-engineering job is posted 8 separate times under 5 different title variants, including two verbatim duplicates of this exact "Mobile Engineer - AI Finance Agent" posting three days apart (published 2026-07-24 and 2026-07-27). Engineering-tagged departments ("Engineering" + "A1 Engineering") account for 668 of the 1,411 total postings. Against a reported total headcount of roughly 200-400 employees company-wide, a live req count several times larger than the entire company is a strong signal of a mass, low-differentiation, high-volume hiring/pipeline-building approach rather than 1,400+ genuinely distinct roles about to be filled. INFERRED from the raw numbers above (all individually VERIFIED via the live Ashby API pull), reasoning is the mismatch between headcount and req count.

## The role in context

This specific requisition is one of many identical-content postings for the same underlying job ("build KIRA's AI Finance Agent across Android and/or iOS"), repeated across roughly 30+ countries and duplicated within Germany itself. It reads as new-market-entry hiring (Germany has no existing BJAK/Kira team or shipped product to backfill) rather than backfill, but the sheer duplication above means it is hard to tell whether this represents one real Germany mobile hire, several, or an open-ended funnel. INFERRED.

Given the "Engineering" department structure (flat, no named sub-team beyond "Kira" vs "A1"), and the interview process description ("Online assessment or practical task, Role-specific interview, CEO/final round," with an aim to complete the whole process and extend an offer "within 1 week" for "candidates who complete assessments quickly"), this looks like a lean, generalist-mobile hire reporting into a small or as-yet-unbuilt Germany engineering function, likely with founder/CEO involvement in final-round hiring even for individual contributor roles. VERIFIED (process description is stated directly in the posting); interpretation of team structure is INFERRED.

## Location and work model

Posting states: remote, but the candidate must already be based in Germany ("We are hiring specifically for this market, so applicants should already be based in Germany"). VERIFIED (posting text, both the inbox record and the live Ashby posting agree).

No German office address was found. No evidence of a German legal entity, Impressum, or German-registered company was found. NOT FOUND. Given the company's Malaysia base and its Ashby postings listing near-identical "remote, but must be based in [country]" roles for dozens of countries simultaneously, employment may well be structured through an Employer of Record or a not-yet-established local entity. NOT FOUND / worth asking directly if this reaches interview.

## Culture and engineering practice

No engineering blog, GitHub org, or conference talks were found for BJAK/Kira. NOT FOUND.

Aggregate employee reviews (Glassdoor, 177 reviews): 2.3/5 overall, 21% would recommend to a friend, 2.0/5 for work-life balance, 2.3/5 for culture and values. Recurring themes in visible review summaries: fast-paced/intense environment, complaints about micromanagement (twice-daily sync meetings reported), and inconsistent management quality; some reviews cite above-average pay and friendly colleagues. VERIFIED as reported aggregate ratings (https://www.glassdoor.com/Reviews/Bjak-Reviews-E3055055.htm); individual review text not independently re-verified beyond what the aggregator surfaces.

The posting's own language reinforces a high-intensity culture: candidate should be "Fast, practical and comfortable owning work with limited handholding," and the role is explicitly "Not For... People who need heavy guidance for every task" or "Engineers who move slowly in a high-growth environment." VERIFIED (posting text).

## For the cover letter

1. BJAK (the company behind Kira) was built by comparing insurance across roughly 16 insurers, including major names like Allianz and Tokio Marine, and became Southeast Asia's largest online insurance platform with 6-7 million users before ever entering Europe — Germany is one of its first two international launch markets (alongside Spain), targeted for 2026. This is a genuinely new-market, from-scratch mobile build, not a mature team backfill. VERIFIED (Insurance Journal, Dec 2025; bjak.my/en/about-us).
2. The founder, Low Wei, has said publicly he started the company after seeing what Ant Group/Alipay did for financial services in China, and is now pursuing the same "everything financial, in one app" model for Europe under the Kira brand. This gives a concrete, checkable reason to open a letter around the company's actual ambition rather than generic insurtech language. VERIFIED (Insurance Journal/Bloomberg).
3. The posting itself is candid that this is conventional native mobile engineering (Kotlin/Swift, APIs, crash logs, production UX) in service of insurance/payments/claims/renewal flows, not an AI/ML role, despite the "AI Finance Agent" title — worth acknowledging directly and honestly rather than pretending AI experience is what's being tested here. VERIFIED (posting text).

## Concerns

- **Hiring volume and duplication is the standout concern.** 1,411 live postings against a company with a reported ~200-400 total headcount, including 46 identical copies of this exact job title across countries and literal duplicate postings for the same Germany role three days apart. This should be flagged clearly to the pipeline: treat this less like a single considered opening and more like a high-volume funnel, and calibrate expectations (response time, personalisation from their side, role clarity) accordingly. VERIFIED numbers, INFERRED interpretation.
- **No product exists yet in Germany.** No "Kira" or "BJAK" app was found in the German App Store or Google Play (checked via direct store search, 2026-07-30). The "AI Finance Agent" app for this market is being built, not maintained — the posting's talk of "improving crash rate" and "production feedback" describes the target end-state of the job, not the day-one reality. VERIFIED (empty search results across iTunes Search API for "Kira"/"BJAK" in DE and MY storefronts).
- **No German regulatory footprint found.** Insurance and payments in Germany are BaFin-regulated activities; no BaFin registration, Versicherungsvermittler licence, or partner/appointed-representative arrangement was found for BJAK or Kira. Given the market entry appears to be pre-launch, this may simply not exist yet, but it is worth asking about directly, since a mobile engineer shipping insurance/claims flows would eventually be shipping into a regulated product. NOT FOUND.
- **Employee sentiment is weak.** 2.3/5 on Glassdoor with recurring complaints about micromanagement and intensity; the job posting's own tone ("not for people who need heavy guidance," fast one-week hiring process, CEO in the final round even for an IC mobile role) is consistent with that picture rather than contradicting it.
- **Location/seniority inconsistencies already flagged at intake stand**: LinkedIn's own header said Berlin while the body says remote-Germany, and LinkedIn tagged the role "Entry level" against a stated 3+ year requirement. Neither is a red flag on its own, but combined with the mass-posting pattern it suggests the job board metadata is not being curated carefully.

## Open questions

- Is there a German legal entity for BJAK/Kira, or is this EOR/pre-entity hiring? NOT FOUND.
- What BaFin or German insurance-intermediary authorisation, if any, is in place or planned for the Kira product? NOT FOUND.
- How many people, realistically, are being hired into this Germany mobile req versus how many of the 8 duplicate Germany mobile postings represent the same headcount? NOT FOUND — worth asking directly in interview.
- Who does this role report to in Germany — is there already a hiring manager or lead on the ground, or would the first hire be reporting remotely into Malaysia/another market? NOT FOUND.
- Is BJAK's existing Malaysian app genuinely native (Kotlin/Swift) or partly a wrapped web app, and does that carry over to how "Kira" for Germany will be built? INFERRED weak signal only (Andromo-style package name on one listed APK), not confirmed.
- Total funding raised and by whom beyond the single reported investor (BASS Investment) — amount NOT FOUND.
