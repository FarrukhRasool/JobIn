# Arise, iOS App Developer

Researched: 2026-07-31
Sources:
- https://www.arise-app.com/ (home)
- https://www.arise-app.com/legal-information
- https://www.arise-app.com/open-position-senior-ios-developer
- https://www.arise-app.com/open-position-mobile-app-designer
- https://www.arise-app.com/open-position-marketing-pr-manager
- https://www.arise-app.com/open-position-performance-marketing-specialist
- https://apps.apple.com/us/app/arise-ai-food-calorie-counter/id549217094
- https://apps.apple.com/de/app/id549217094 (via https://itunes.apple.com/lookup?id=549217094&country=de)
- https://itunes.apple.com/lookup?id=549217094&country=us (structured App Store data)
- https://itunes.apple.com/us/rss/customerreviews/id=549217094/sortBy=mostRecent/json
- https://itunes.apple.com/de/rss/customerreviews/id=549217094/sortBy=mostRecent/json
- https://join.com/companies/arise (company profile + open roles)
- https://join.com/companies/arise/15819867-ios-app-developer-remote-m-f-d
- https://join.com/companies/arise/16455225-ios-app-developer-remote-m-f-d
- https://www.careers-page.com/arise/job/4R6R567V/apply (this posting's application page)
- https://app.welcometothejungle.com/companies/Arise-2
- http://web.archive.org/cdx/search/cdx?url=arise-app.com/open-position-senior-ios-developer (Wayback Machine snapshot list)
- http://web.archive.org/cdx/search/cdx?url=careers-page.com/arise* (Wayback Machine snapshot list)
- jobs/inbox/arise-ios-app-developer.md (the posting as imported)

## Which entity is actually hiring

**Established.** The App Store lists the developer/seller of the app "Arise: AI Food Calorie Counter" (bundle ID `de.abnehm-app.caloriecounter`, App Store ID 549217094) as **"A.R.I.S.E. Apps resulting in self enhancement Ltd."** This was read directly from Apple's own lookup API (`itunes.apple.com/lookup?id=549217094`), fields `sellerName` and `artistName`. VERIFIED.

The company's own website, `arise-app.com`, names the identical entity on its Legal Information page ("A.R.I.S.E. Apps resulting in self enhancement LTD") and states its content is "subject to Cyprus copyright laws," implying a Cyprus-registered entity. VERIFIED (read directly from `arise-app.com/legal-information`).

The job posting text (responsibilities, requirements, wording) matches near-verbatim across the LinkedIn posting (this record's source), `careers-page.com/arise`, and `join.com/companies/arise` — all pointing to the same "Arise" weight-loss/calorie app. VERIFIED by direct comparison of posting text.

**A precise registered office address (a Cyprus address in Kouklia, Paphos) appeared only in search-engine summaries, never on a primary page I could open.** SUMMARY, do not use downstream, re-verify if it matters (e.g. at contract stage).

**Name collisions found and explicitly ruled out** — do not use any of the following for this brief:
- **Arise Virtual Solutions** — a large unrelated US call-centre/BPO company. It dominates Glassdoor's "Arise" results (479 reviews, 3.3★). Not this company.
- **Arise Health** — an unrelated US eating-disorder treatment startup (co-founders Amanda D'Ambra and Joan Zhang).
- **App-Arise GmbH** — an unrelated German company based in Aschaffenburg (Schwalbenrainweg 24), also app-related, which made this collision easy to make by accident.
- **we-arise.de** — a further unrelated entity with its own imprint.

## What they do

Arise ("Arise: AI Food Calorie Counter", also listed on the German storefront as "Kalorien Zähler Abnehmen Arise") is a consumer iOS calorie-counting and weight-loss app. Users log meals via an AI photo food-scanner, barcode scanner or voice, track calories/macros/water/steps against a weight goal, and can upgrade to a paid "Arise PRO" tier. VERIFIED from the app's own App Store description and screenshots (read via the App Store product page).

Revenue model: freemium with a paid subscription tier (App Store shows an in-app purchase / subscription offering). VERIFIED (App Store listing shows both a free download and a "PRO" upsell in its own description text); exact current price NOT independently verified. One AI-summarised fetch reported "$32.99/year" but I never opened a primary page confirming it, so that figure is SUMMARY-grade, is not a source, and is excluded from this brief.

The app was first released on the App Store on **3 November 2012** (`releaseDate` field, VERIFIED via Apple's lookup API) and its bundle ID, `de.abnehm-app.caloriecounter` ("Abnehm-App" = German for "weight-loss app"), suggests German-market origins that predate the current "Arise" branding. INFERRED from the bundle ID; I could not verify an explicit rebrand history.

## Stage and size

- **Headcount:** self-reported as **1-10 employees** on join.com's company profile and **1-20 employees** on Welcome to the Jungle's company profile. Both are third-party job-board fields on the company's own listings, so REPORTED, but the two platforms disagree on the exact band; treat as "very small, roughly single-to-low-double-digit team."
- **Funding:** NOT FOUND. No funding round, investor or acquisition news turned up in searches covering the last 12 months or the company's history. Crunchbase has a listing for "Arise App" but the page returned HTTP 403 and I could not read it, so I have nothing verifiable from it.
- **Ownership/structure:** described consistently across postings as founder-led ("close collaboration with founders and management," "close collaboration with the CEO"). No individual founder or CTO name was found on any page I could access. NOT FOUND.
- **Direction of travel:** the app itself is under active, frequent development (see Tech stack and App Store detail below) even though the company's headcount signals and recruiting pages look static or stale in places (see Concerns). This is a genuine tension, not a clean growth or decline story.

## Tech stack

**What the posting for this role states:** Swift, CocoaPods, Fastlane. No mention of SwiftUI or Swift Package Manager. VERIFIED (read from the posting itself, `jobs/inbox/arise-ios-app-developer.md`, and confirmed identical on `careers-page.com/arise/job/4R6R567V/apply` and the join.com mirror).

**What a concurrently-open, more detailed posting for the same codebase says:** a "Senior iOS Developer Mobile App" role, live on Arise's own site at `arise-app.com/open-position-senior-ios-developer`, explicitly requires "Good knowledge of Swift & Storyboards," CocoaPods, Fastlane, "Solid knowledge of MVC and MVVM," and unit-testing experience. VERIFIED (read directly from the page). This is the strongest direct evidence available that **the app's UI layer is built with UIKit and Storyboards, not SwiftUI**, and that Swift Package Manager is not part of the stated toolchain (CocoaPods is named explicitly instead).

**Wayback Machine snapshots** (`web.archive.org/cdx/search/cdx?url=arise-app.com/open-position-senior-ios-developer`) show this Senior iOS posting live and materially unchanged since at least **August 2020**, with identical content hashes recurring in 2022, 2024 and June 2025. VERIFIED via the Internet Archive's own index. So the "Storyboards" detail is not a one-off typo, it is a description of the same codebase that has held for five-plus years.

**Design tooling:** the concurrently-open UI/UX Designer posting requires "Sketch in combination with the Abstract versioning tool," not Figma. VERIFIED (read directly from `arise-app.com/open-position-mobile-app-designer`). This corroborates the picture of an older toolchain across the product, not just iOS.

**Is the app itself stale or actively maintained?** Actively maintained, based on primary App Store data:
- Current version **45.4.1**, released **22 July 2026** (nine days before this research), per Apple's lookup API (`currentVersionReleaseDate`). VERIFIED.
- Release notes for that version describe adding **Live Activities for the Lock Screen and Dynamic Island** ("Meet Live Activities!... Your progress updates throughout the day, with your Arise mascot cheering you on"). VERIFIED, read from Apple's own `releaseNotes` field.
- Live Activities/Dynamic Island widgets are built with WidgetKit and are conventionally written in SwiftUI (Apple does not support UIKit for widget extensions). This means the codebase very likely mixes an older UIKit/Storyboards main app with newer, SwiftUI-based widget/extension code, even though neither SwiftUI nor WidgetKit is named in any posting. INFERRED, reasoning shown; worth confirming directly at interview.
- German App Store reviews arrive at a rate of several per week through July 2026 (checked via Apple's review RSS feed), and version numbers climbed steadily from 43.1.1 in January to 45.4.1 in July, a cadence of roughly one release every two to three weeks. VERIFIED.
- Minimum supported OS: **iOS 15.0** (VERIFIED, lookup API `minimumOsVersion`), a reasonable floor for a broad consumer audience, not evidence of neglect either way.

**No Android app was found.** The app's own App Store description states it is available on iOS; a Google Play search for the app turned up nothing, and the company's own copy elsewhere ("The Arise app is currently exclusive to iOS") confirms this. VERIFIED (absence confirmed by a direct Play Store lookup attempt returning "Not Found," plus the app's own marketing copy). This matters because the posting's responsibility "Ensure cross-platform consistency with Android developers" implies an existing Android codebase or team that I could not find any evidence of. The 2020-era Senior iOS posting also says the hire would be "Leading our Android development team in the future" — future tense, and apparently still future six years later.

**No public GitHub organisation and no engineering blog were found.** NOT FOUND, searched directly.

## Vision and direction

Stated vision, consistent across every posting and the homepage: "We want to improve the world and help as many people as possible to feel better and healthier," positioning Arise as "one of the most popular weight loss apps in the German-speaking world... rapidly growing across the globe," now in 13 languages (VERIFIED, App Store `languageCodesISO2A` lists 13 codes) up from the "10 languages" figure quoted in some postings and search summaries.

Observable behaviour mostly supports the growth story on the product side: frequent releases, a modern Live Activities feature shipped in July 2026, deep and current engagement in the German market (56,512 ratings on the DE storefront alone, VERIFIED via Apple's lookup API for country=de). It does not support the growth story on the platform side: no Android app has appeared despite that ambition being stated at least as far back as 2020.

The clearest gap between stated vision and observable behaviour: **"cross-platform" and "Android" language recurs across job ads and years, but no Android product exists.** This is the single most useful finding to raise at interview, framed as a genuine question rather than an accusation.

## The role in context

**Why this role exists now:** unclear. Two distinct job listings for what reads as the same "iOS App Developer (Remote - M/F/D)" role exist on join.com under different IDs (`15819867` and `16455225`), both with matching text. This is consistent with either a repost after the role went unfilled, or the same ad syndicated twice. NOT FOUND as to which, but worth asking.

**Reports to:** no named engineering lead, CTO or manager was found anywhere. Every posting describes "direct collaboration with founders and management," consistent with a very flat, founder-adjacent structure. INFERRED that this role reports directly to a co-founder rather than to a dedicated engineering manager, given the company's stated size and structure.

**How many similar roles are open:** including this one, Arise currently has at least six open postings visible across its own site and job boards: this iOS App Developer role (mid, 4+ years), a Senior iOS Developer, a UI/UX Mobile App Designer, a CMO/Head of Monetization, a Mobile Performance Marketing & Paid Acquisition Specialist, and an App Project Coordinator. VERIFIED by direct page reads. For a company self-reporting 1-10 to 1-20 employees, six simultaneous openings is disproportionate, unless several are evergreen listings not being actively pursued (see Concerns — the Senior iOS, Designer, CMO and Performance Marketing postings have Wayback Machine histories going back to 2020-2022 and appear largely unchanged).

## Location and work model

The posting lists Berlin, Germany as the location with a fully remote work model. No evidence of a physical Berlin (or any) office was found on the company's site or elsewhere; the company describes itself as "100% remote" with a team "from different parts of the world," and its own legal terms reference Cyprus law. INFERRED that "Berlin, Germany" in the posting is a nominal or applicant-pool location rather than an actual office, given the absence of any office address and the company's stated fully-remote model.

## Culture and engineering practice

Values stated on the homepage: "Ownership, Quality, Efficiency, Joy," and a customer-first framing, alongside "sustainable changes happen in the mind." VERIFIED (read from the homepage).

Recurring, consistent language across postings: "high autonomy," "minimal bureaucracy," "flat hierarchies and short decision paths," "close collaboration with founders." VERIFIED, appears near-identically in at least four separate postings spanning both the current LinkedIn ad and older native postings.

A real, concrete screening bar shows up twice independently: both the iOS and Designer postings state that CV-only applications without a portfolio/GitHub links or worked examples "won't be considered." VERIFIED, read directly from `arise-app.com/open-position-senior-ios-developer` and the Designer posting. This is a genuine, checkable practice, not boilerplate.

Some engineering discipline signals despite the older UI framework choice: the Senior iOS posting explicitly asks for unit-testing experience and "very well documented code." VERIFIED, same source.

## For the cover letter

Every claim below is VERIFIED or REPORTED, read from a primary page, with the URL given. Nothing here rests on a search engine's synthesis.

1. **Arise shipped Live Activities and Dynamic Island support on 22 July 2026** (version 45.4.1), letting users see their daily calorie progress on the Lock Screen without opening the app. Source: Apple's App Store lookup API for app ID 549217094, `currentVersionReleaseDate` and `releaseNotes` fields (https://itunes.apple.com/lookup?id=549217094&country=us). A specific, very recent, checkable detail about the actual product this role maintains.
2. **The app has been live on the App Store since 3 November 2012 and is now at version 45.4.1**, with releases arriving roughly every two to three weeks through 2026 (versions climbed from 43.1.1 in January to 45.4.1 in July). Source: same lookup API, plus Apple's customer-review RSS feed (https://itunes.apple.com/de/rss/customerreviews/id=549217094/sortBy=mostRecent/json). Speaks directly to the posting's framing of "maintain and optimize the iOS codebase for long-term sustainability" — this is a genuinely long-lived, actively-shipped codebase.
3. **On the German App Store, where the app is titled "Kalorien Zähler Abnehmen Arise," it holds 56,512 ratings at a 4.6 average** (https://itunes.apple.com/lookup?id=549217094&country=de). Grounds the posting's "globally active... 4.7 rating" claim in an actual, checkable figure specific to Arise's strongest market, without repeating the unverified marketing line.

## Concerns

- **The posting's own numbers don't quite match the App Store.** The posting claims "over 8 million downloads and a 4.7 rating." The app's current App Store description (self-reported by the developer, VERIFIED read) instead says "over 10 million downloads... Rated 4.6 stars," and both the US (4.6, 3,281 ratings) and DE (4.558≈4.6, 56,512 ratings) storefronts I queried directly show 4.6, not 4.7. Not fabrication, but the posting appears to use rounded-up or stale marketing figures rather than the live numbers.
- **No Android app exists**, despite the posting's "Ensure cross-platform consistency with Android developers" responsibility and a related, older Arise posting's promise of "Leading our Android development team in the future," a promise that appears to have gone unfulfilled since at least 2020. Worth a direct question at interview about what this responsibility means in practice today.
- **Several other Arise job postings are years-old and effectively evergreen.** Wayback Machine snapshots show the Senior iOS Developer listing live and essentially unchanged since August 2020 (also seen in 2022, 2024, June 2025). The Designer, CMO and Performance Marketing listings read in the same dated, informal style. This makes six simultaneously "open" roles hard to read as a genuine current hiring signal for a company that self-reports 1-10 to 1-20 employees; some may simply never come down.
- **Two near-identical join.com listings** exist for what appears to be the same "iOS App Developer" role, under different IDs. Possible repost after the role went unfilled; not confirmed either way.
- **The stack described in this posting (Swift, CocoaPods, Fastlane) is almost certainly the newer face of an older UIKit/Storyboards codebase**, based on a companion Senior iOS posting that names Storyboards and MVC/MVVM explicitly. Neither SwiftUI nor SPM appears anywhere across any Arise posting I found. Candidates expecting a modern SwiftUI/SPM greenfield environment should recalibrate expectations; this looks like maintenance-and-modernisation work on a mature codebase, which matches the posting's own "maintain and optimize... for long-term sustainability" framing.
- **No verifiable funding, founder names, or registered address.** I could not confirm who runs the company, how it is financed, or exactly where it is registered beyond "Cyprus" (from its own legal terms). A precise Cyprus street address appeared only in search-engine summaries and was not opened on a primary page, so I have not recorded it as fact.
- **Heavy name-collision risk.** "Arise" collides with at least three unrelated companies (Arise Virtual Solutions, Arise Health, App-Arise GmbH), and Glassdoor's "Arise" reviews (3.3★, 479 reviews) belong to the unrelated Arise Virtual Solutions. None of that should leak into scoring, the CV, or the letter.

## Open questions

- Exact current headcount, and how many of the six concurrently-listed roles are genuinely active searches right now versus evergreen listings. NOT FOUND, worth asking directly.
- Who founded and runs the company; no name was found anywhere I could access. NOT FOUND.
- Whether SwiftUI/WidgetKit is used for the new Live Activities feature (very likely, per the reasoning in Tech stack) and, if so, whether that work was done in-house or by a contractor/agency. INFERRED only, not confirmed.
- Why two near-duplicate join.com postings exist for this role. NOT FOUND.
- Whether an Android app is genuinely on the roadmap, and what "cross-platform consistency" concretely means today given none exists. NOT FOUND.
- Who this role reports to day to day (a founder, a lead developer, someone else). INFERRED only ("founders/management," no name).
- Exact registered office address. Only found via search-engine summary (Kouklia, Paphos, Cyprus); not opened on a primary source, so not recorded as fact here. SUMMARY-grade, re-verify before relying on it for anything.

## Do-not-use downstream

The following appeared only as search-engine summaries and must not be treated as fact in scoring, CV or letter: an exact Cyprus street address for the company; a claim that the company was "founded in 2012... based in London, United Kingdom" (this conflicts with the primary site's own reference to Cyprus law and was not corroborated anywhere else); an "Arise PRO" subscription price of "$32.99 annually." Re-verify any of these against a primary source before using them.
