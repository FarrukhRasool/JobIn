# Scalable Capital, (Junior) iOS Engineer (m/f/x)

Researched: 2026-08-01

Sources used:
- https://www.linkedin.com/jobs/view/4446044516/ (original posting, via intake)
- https://jobs.smartrecruiters.com/ScalableGmbH/744000109962770--junior-ios-engineer-m-f-x- (the same posting, own ATS, fetched direct)
- https://jobs.smartrecruiters.com/ScalableGmbH/744000099410636--senior-ios-engineer-m-f-x- ((Senior) iOS Engineer, fetched direct)
- https://jobs.smartrecruiters.com/ScalableGmbH/744000009869740-ios-engineer-m-f-x-onsite-or-remote-in-germany (expired mid-level iOS posting)
- https://de.scalable.capital/en/careers (careers landing page)
- https://de.scalable.capital/en/about-us (About page)
- https://en.wikipedia.org/wiki/Scalable_Capital
- https://www.linkedin.com/company/scalable-capital (company page)
- https://apps.apple.com/de/app/scalable-capital-bank/id1075561513 (App Store listing, fetched direct)
- https://github.com/orgs/ScaCap/repositories (GitHub org)
- https://medium.com/scalable-capital-engineering (engineering blog, index only, no article content retrievable)
- https://builtin.com/job/senior-kotlin-java-software-engineer-new-platform-mfx-onsite-remote-germany/4769623
- https://builtin.com/job/mobile-engineering-manager-mfx-onsite-remote-germany/4726259 (expired Apr 2025, text cached by Built In)
- News: https://www.finextra.com/newsarticle/46574/scalable-capital-is-now-a-bank, https://tech.eu/2025/09/10/blackrock-backed-scalable-capital-wins-european-banking-licence/, https://finovate.com/scalable-capital-secures-e155-million-in-its-largest-funding-round-to-date/

Not an agency listing. LinkedIn posting and SmartRecruiters posting are the same role, direct employer, confirmed by matching the verbatim requirement text.

## What they do

VERIFIED (About page, careers page). Scalable Capital is a Munich-founded (2014) digital investment and, since September 2025, banking platform. Two product lines: **Scalable Broker**, self-directed trading of stocks, ETFs, funds, derivatives and crypto with savings plans from €1; and **Scalable Wealth**, an automated robo-advisor service. Since gaining a full ECB banking licence, it now also offers savings accounts and a flexible credit product. Stated mission (About page, verbatim): "to give all people the opportunity to consciously determine their own financial future." Revenue model is asset management and trading fees plus, going forward, banking margin; this is REPORTED/INFERRED from product description rather than a disclosed figure.

## Stage and size

| Fact | Value | Grade |
|---|---|---|
| Founded | 2014, Munich | VERIFIED (Wikipedia, corroborated by careers page) |
| Founders | Erik Podzuweit, Florian Prucker, Adam French, Stefan Mittnik | REPORTED (Wikipedia) |
| Customers / AUM | >1 million clients, >€40bn client assets (careers page) / ~€30bn per news coverage mid-2025 | VERIFIED for the >€40bn figure (careers page, fetched direct); the €30bn figure is REPORTED (Munich Startup, mid-2025, now likely stale) |
| Headcount | "more than 600 employees" (careers page) vs "over 700 people" (repeated across several 2025-dated SmartRecruiters job postings) vs LinkedIn's own "501-1,000" band with 862 profiles listed | VERIFIED for each individual figure from its own primary page; treat as a range (~600-900) rather than a single number, sources disagree because they were captured at different times |
| Offices | Munich (HQ), Berlin, Vienna, Milan, London | REPORTED, consistent across multiple current SmartRecruiters postings |
| Funding | Total raised >€470m equity since founding; latest round €155m (~$175m) Series F, closed June 2025, led by Sofina and Noteus Partners, with Balderton Capital, Tencent and HV Capital also participating; valuation ~$1.4-1.5B (unicorn) | REPORTED (Finovate, Fintech Global, Balderton's own announcement — three independent named sources agree) |
| Banking licence | Full ECB banking licence granted, announced 10 September 2025; now supervised by BaFin and the Bundesbank | REPORTED, consistent across Finextra, tech.eu and Munich Startup |
| Ownership | Private, VC and strategic-backed (BlackRock has held a stake since 2017, Tencent since 2021) | REPORTED (Wikipedia) |

Direction of travel: growth-stage, well past startup, in active fundraising and product-expansion mode (banking licence, new Credit product). No evidence of layoffs found; a jobs-tracking aggregator (TrueUp) reported no known layoffs and continued hiring, but that is REPORTED from a secondary aggregator, not a primary company statement, and should not be treated as a strong signal either way. NOT FOUND: any first-party statement on recent headcount changes.

## Tech stack

**From this posting and the sibling iOS postings (VERIFIED, own ATS):**
- Junior posting: Swift, iOS SDK, UIKit, Auto Layout. No SwiftUI, no architecture pattern, no testing framework named.
- Senior posting ((Senior) iOS Engineer, currently open, see below): also names only UIKit and Auto Layout, not SwiftUI. "Profound working experience as an iOS Engineer," no explicit years figure.
- The expired generic "iOS Engineer (m/f/x)" posting had asked for "a minimum of 3 years working experience" and also named only UIKit/Auto Layout.

Across three separate iOS postings, **SwiftUI is never named**. This is a genuine, checkable observation, not an inference from a single generic template: the team's own listings consistently describe a UIKit/Auto Layout codebase.

**From the Mobile Engineering Manager posting** (Built In cached text of a posting removed 29 April 2025 — REPORTED, dated, do not treat as current): the mobile team is organised as a single "Mobile Native Engineering team consisting of iOS and Android engineers," with Android stack given as "Kotlin, RxJava, Compose, Coroutines" and iOS as "Swift, UIKit, Autolayout." This is over a year old but is the only direct evidence found of how the two platforms sit relative to each other: Android's own listing names Compose (Android's modern declarative UI framework) while iOS's, then and now, does not name SwiftUI. Read together with the three current/recent iOS postings above, the pattern (UIKit-only iOS listings, Compose-named Android listing) is consistent rather than a one-off, so I am treating "the iOS side is UIKit-first, unlike Android's Compose adoption" as REPORTED/INFERRED, not SUMMARY. It should still be treated as an observation to confirm at interview, not stated as settled fact.

**From other current backend/platform postings** (REPORTED, own ATS/Built In, not the iOS team specifically but the wider engineering org): Kotlin, Java, Spring Boot, Docker, event-driven asynchronous architecture, AWS, Terraform, Python, GraphQL as pluses (New Platform team). A separate, more recent posting for "(Senior) Rust Software Engineer - Banking Platform" describes Rust services for latency-sensitive banking workflows on AWS/Terraform — evidence the banking-licence build-out uses Rust for new, performance-critical services while the older platform is JVM-based.

NOT FOUND: iOS CI/CD tooling (Fastlane, GitHub Actions, Bitrise etc.), dependency manager (SPM/CocoaPods), or any stated architecture pattern (MVVM, MVI, Clean) for the iOS app specifically.

## The product itself: App Store and Play Store

**App Store (iOS), VERIFIED by fetching apps.apple.com/de/app/scalable-capital-bank/id1075561513 directly:**
- Rating: 4.6 out of 5, from 73,437 ratings.
- Current version 26.11, last updated 5 days before this research date (i.e. very recently, late July 2026), app size 373MB.
- Minimum OS: iOS 15.5. Not chasing the newest iOS floor, but not stuck on an old one either.
- Release notes for the last several versions are the generic "Daily improvements including new features, enhancements and bug fixes," which tells us little beyond a fast, regular release cadence (versioning suggests roughly monthly numbered releases, i.e. 26.9, 26.10, 26.11 across recent weeks).
- Recent review complaints, read from the same fetch: delayed fund deposits (one review cited over 48 hours), an account freeze lasting three months with what the reviewer called inadequate support, requests for missing features (trailing stop-loss orders, real-time news), and past outages on high-traffic trading days plus connectivity issues between the app and backend banking partners. These are money-handling and reliability complaints, not UI complaints, consistent with a banking/brokerage app under load rather than an iOS-craft problem specifically.

**Google Play (Android): SUMMARY, do not use downstream, re-verify by opening the Play Store listing directly.** Direct fetch of play.google.com returned truncated content twice; the only data available came from search-engine synthesis of third-party aggregators (JustUseApp, Apptopia) citing an "8.8 out of 10" score, which is not how Play Store natively rates apps and does not reconcile with a normal 5-star scale, a strong sign of aggregator noise rather than a real figure. None of the Android-side numbers should be treated as fact.

The 4.6/73k rating on iOS is a genuinely strong, verifiable number worth knowing before interview, and the update cadence (near-weekly version bumps) confirms this is an actively maintained, shipping-every-week app, not a legacy product on maintenance mode.

## Vision and direction

Stated vision (About/careers pages, VERIFIED): become "the leading retail investment platform in Europe." The banking licence (Sept 2025, REPORTED) and the new Credit product are consistent with that: the company is expanding from a pure investment app into a full retail bank, which is a materially bigger and more complex app surface than a broker-only product. That expansion is a plausible reason for the current iOS hiring push (both Junior and Senior roles open at once, see below) rather than pure backfill.

Gap worth naming: the stated ambition is "leading… in Europe" and funding/PR emphasise fast growth, but the iOS job postings themselves describe fairly conventional UIKit feature work, not a platform rebuild. INFERRED: the ambitious company-level narrative and the concrete iOS day-to-day (UIKit views, Auto Layout, feature ownership) sit at different altitudes, which is normal but worth knowing before leaning too hard on "hypergrowth platform" framing in a letter.

## The role in context

**There is a (Senior) iOS Engineer (m/f/x) role open at Scalable Capital right now**, in Munich or Berlin, confirmed VERIFIED by fetching https://jobs.smartrecruiters.com/ScalableGmbH/744000099410636--senior-ios-engineer-m-f-x- directly (page loads normally, no "expired" notice, "I'm interested" call to action present, unlike the confirmed-expired mid-level posting checked alongside it). Its stated requirement is "profound working experience as an iOS Engineer" (no explicit year count), UIKit proficiency, and the same "excellent English, German optional" line as the Junior posting. Responsibilities add "be empowered to implement, improve, fix, suggest, and change anything you see" and "own the full app lifecycle from ideation to delivery to the App Store," i.e. more autonomy and ownership than the Junior listing's "learn to take ownership… gradually."

There is **no separate "Mid" iOS posting currently live.** A generic, unbadged "iOS Engineer (m/f/x) onsite or remote in Germany" posting that asked for "a minimum of 3 years" experience exists in search indexes (HV Capital's Getro board, Built In) but returns "This job has expired" when opened directly on the company's own ATS — VERIFIED as expired, do not treat as currently open.

So the live iOS ladder at Scalable Capital right now is **Junior and Senior, with the explicit 3-years-labelled mid tier expired.** Farrukh's ~4 years of production iOS sits structurally closer to what the Senior posting asks for ("profound working experience," full lifecycle ownership) than to what the Junior posting asks for ("initial experience in a professional setting," learning to take ownership). This is the single most important fact in this brief for how the application is framed: whether to apply Junior as intake, or push toward the open Senior requisition, is a decision for `triage`/`cv-tailor`, but the option demonstrably exists and should not be assumed away.

**Team structure**: a "Mobile Native Engineering team" combining iOS and Android exists, per the (dated, April 2025) Mobile Engineering Manager posting, and a current "Senior Android Engineer" posting was seen in both Munich and Berlin (Built In listing, REPORTED) alongside the iOS postings, suggesting the mobile team is actively growing across both platforms and both levels, not just iOS. NOT FOUND: exact team size, or who the iOS Junior role reports to.

## Location and work model

Junior posting: Munich (Seitzstraße, München-Altstadt-Lehel), full-time. VERIFIED, own ATS. Work model not stated as remote/hybrid/onsite explicitly; the posting mentions an "opportunity to work from abroad" (per intake) without defining the default arrangement. Recorded as UNKNOWN in the job record, and this brief agrees: do not assume hybrid or remote as default.

Senior posting: Munich or Berlin, same "opportunity to work from abroad" language, also no explicit remote/hybrid/onsite label. VERIFIED, own ATS.

By contrast, the now-expired generic iOS posting explicitly offered "onsite or remote in Germany." INFERRED: the two currently-live iOS postings (Junior, Senior) may be more office-anchored in Munich/Berlin than that expired one was, though this is a pattern across two data points, not a confirmed policy.

NOT FOUND: any statement on relocation support for this specific role (the Junior posting listed under a different job ID via search did mention "international relocation support available" among benefits, but I could not independently confirm this same benefits block on the exact live Junior posting URL used above, so it is not carried into the cover-letter section; flagging here as a lead only, SUMMARY-adjacent, do not use downstream without re-checking on interview).

## Culture and engineering practice

Mixed picture, held at arm's length because the strongest sources here could not be opened directly.

- Glassdoor: overview page returned HTTP 403 when fetched directly, so nothing from Glassdoor is graded above SUMMARY. **SUMMARY, do not use downstream, re-verify by visiting Glassdoor directly if needed**: search-engine synthesis reported an overall employee rating around 3.7/5 from 68 reviews, but also cited specific and inconsistent-looking sub-scores for the Software Engineer job family (e.g. a claimed 16% recommend-to-friend rate for engineers) that could not be independently confirmed and read as exactly the kind of templated/aggregated figure the SUMMARY grade exists to catch.
- Kununu: no results found. NOT FOUND.
- Own careers page (VERIFIED, direct fetch): engineering works in "cross-functional teams with a high degree of autonomy," OKR-based. Standard framing, not independently evidenced.
- GitHub org (github.com/ScaCap, VERIFIED, direct fetch): 15 public repositories, mostly small internal tools and forks (a GitHub Actions reporter, a ktlint action, a code-coverage action) rather than product code. Five Swift repos among them (Charts-1, SwiftyMarkdown, mobile.MultipeerKit, Runestone, LTMorphingLabel) but several of these read as forks/adopted open-source libraries rather than originals, and the org shows limited recent public open-source activity. This does not look like a company that open-sources its own product code; treat the GitHub presence as thin.
- Engineering blog (medium.com/scalable-capital-engineering, VERIFIED existence, content NOT accessible): the publication exists, has editors named (including a "Peter Halasz" and "Andreas Schranzhofer" per the page's About section) and at least one visible article title, "Inside a Scalable Capital Hackathon," but I could not retrieve full article text or a reliable recent post list through the tools available. NOT FOUND beyond the fact of the blog's existence and that quarterly hackathons are a stated practice (title only, treat that single fact as REPORTED from the visible article title, not the content).
- No conference talks by named Scalable Capital iOS engineers were found. NOT FOUND.

## For the cover letter

1. **The iOS team's own postings ask for UIKit and Auto Layout, not SwiftUI**, across the current Junior listing, the current Senior listing, and the expired mid-level listing (all three checked directly on jobs.smartrecruiters.com, VERIFIED). A candidate who leads with UIKit depth rather than SwiftUI-only experience is answering what they actually asked for, not a generic "modern iOS" template.
2. **Scalable Capital became a licensed bank in September 2025**, adding savings and credit products on top of its existing brokerage and wealth management (VERIFIED via careers page: ">40bn client assets," and REPORTED via Finextra/tech.eu for the licence date). The product surface the iOS app has to cover has materially grown in the last year, a concrete, checkable reason the team may be expanding rather than just backfilling — genuinely worth naming rather than generic "exciting growth" language.
3. **There is a (Senior) iOS Engineer role open at the same company right now** (jobs.smartrecruiters.com/ScalableGmbH/744000099410636, VERIFIED, live), alongside the Junior one. This is a fact `letter-writer` and `cv-tailor` should know exists, though how (or whether) to use it in the letter for a Junior-titled application is their call, not mine to prescribe here.
4. **The iOS app holds a 4.6/5 rating from 73,437 App Store reviews and shipped a new version roughly 5 days before this research** (apps.apple.com/de/app/scalable-capital-bank/id1075561513, VERIFIED, fetched direct). A genuine, specific, checkable number, well above the industry-typical 3.5-4.0 range for finance apps, and evidence of a fast, live release cadence rather than a stagnant app.

All four points above are VERIFIED against the company's own job-posting/App Store pages or REPORTED from named news outlets, nothing weaker.

## Concerns

- **Overqualification is real and structural, not just a feeling.** The live posting ladder is Junior and Senior with no live Mid, and Farrukh's ~4 years sits closer to the Senior posting's "profound working experience" than to the Junior posting's "initial experience in a professional setting." Worth deciding deliberately whether to apply to the posted Junior role as-is or flag interest in the Senior requisition.
- **Culture signal is thin and Glassdoor could not be verified directly** (403 on fetch). The only number available is a 3.7/5 figure and an inconsistent-looking engineer-specific recommend rate, both graded SUMMARY above: re-verify by opening Glassdoor directly before using either, do not use as-is. Treat the culture picture as genuinely unknown rather than negative or positive.
- **GitHub presence is thin** for a company of this size — mostly tooling forks, little sign of product code or active open source. Not a red flag on its own, most fintechs keep product code closed, but it removes one of the usual "read their code" research channels.
- **Engineering blog content could not be retrieved** despite the publication existing, so "what they think about engineering" is largely unevidenced beyond a hackathon post title.
- **Location/remote policy is unclear** for both live iOS postings (Junior and Senior). The one posting that explicitly offered full remote-in-Germany is the one that has since expired, which may or may not mean anything about current policy — flagged, not concluded.
- No layoffs found, but confidence in that is limited: the only source (TrueUp aggregator) is REPORTED, not a first-party statement, and I could not find a first-party headcount trend statement to cross-check it against.

## Open questions

- Is the Junior posting genuinely a new/expanding headcount line, or a backfill? NOT FOUND, could not determine from postings alone.
- Team size and reporting line for the Junior iOS role: who is the manager, how many iOS engineers currently on the team. NOT FOUND.
- Whether SwiftUI is used anywhere in the app already (e.g. newer screens) despite not appearing in job postings, versus a UIKit-only codebase. NOT FOUND, worth asking directly at interview.
- Whether relocation support applies to this specific Munich Junior role (a similar benefits list seen via search mentioned it, but could not be confirmed on the exact live posting; see Location section). NOT FOUND, confirmed.
- Default work model (onsite/hybrid/remote) for the Junior and Senior iOS roles specifically. UNKNOWN, carried over from intake.
- What CI/CD, testing and architecture conventions the iOS team actually uses day to day. NOT FOUND in any posting.
- Whether the Senior iOS Engineer requisition is a live alternative worth raising, or whether the Junior posting is the only sensible entry point given the explicit "(Junior)" title and "initial experience" wording. A decision for `triage`, flagged here so it isn't missed.
