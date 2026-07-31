---
company: Kira
role: Mobile Engineer - AI Finance Agent
source: linkedin
url: https://www.linkedin.com/jobs/view/4444892592/
posted: UNKNOWN
imported: 2026-07-30
location: Berlin (LinkedIn header) / Germany, remote (posting body) - see Notes
work_model: remote
language: english
seniority: mid
---

## Requirements
"3+ years of mobile development experience in Android, iOS or both. Strong experience with Kotlin and/or Swift. Experience shipping production apps used by real users. Strong product sense and attention to mobile UX. Able to work with APIs, analytics, crash logs and production feedback. Fast, practical and comfortable owning work with limited handholding. App links, GitHub, screenshots or examples of shipped work are a strong advantage."

## Responsibilities
"Build and ship mobile features for Android and/or iOS. Create simple mobile flows for insurance, payments, claims, renewals and financial services. Work with product, design and backend teams to turn complex journeys into usable mobile products. Integrate APIs and handle edge cases, loading states, errors and production issues. Improve app performance, reliability, crash rate and user experience. Support fast product launches, experiments and iterations across mobile journeys. Help set high standards for mobile product quality across the app."

## Tech stack
Kotlin, Swift, Android, iOS, APIs, GitHub, analytics, crash logs

## Notes
- **Posted date is approximate.** LinkedIn displayed "3 days ago" as of 2026-07-30, which would put the posting at roughly 2026-07-27. Recorded as `posted: UNKNOWN` per the intake rule against guessing; the approximate date is noted here instead. This is a fresh posting.
- **Seniority conflict.** LinkedIn tags this posting "Entry level" in its own metadata, but the stated requirement is "3+ years of mobile development experience", which is a mid-level bar. Recorded `seniority: mid` per the skill's instruction to read years of experience rather than the title/metadata tag.
- **Location conflict.** LinkedIn's job header lists Berlin, but the posting body describes the role as remote with a Germany-based requirement. Recorded faithfully without resolving the discrepancy; `work_model: remote` per the body text.
- **Domain.** The role sits in insurance, payments, claims, renewals and financial services, so this is fintech/insurtech and likely a regulated environment.
- **Title vs. content mismatch.** The job title is "Mobile Engineer - AI Finance Agent", but the stated Requirements and Responsibilities contain no AI, ML or on-device inference work whatsoever. They describe entirely conventional mobile product engineering (Kotlin/Swift, APIs, crash logs, UX, production feature shipping). Flagging this explicitly so downstream steps do not mistake this for a role needing combined AI and mobile skills based on the title alone.
- **Actionable prep item.** The posting asks for app links, GitHub, screenshots or examples of shipped work as "a strong advantage" for the application.

## Raw
<details>
This is a structured extraction of the LinkedIn posting as provided for intake, not a byte-for-byte copy of the original page.

Company: Kira
Title: Mobile Engineer - AI Finance Agent
Location: Germany (Berlin in the LinkedIn header, body says remote, Germany-based required)
Work model: Remote
Language of posting: English

REQUIREMENTS / QUALIFICATIONS
"3+ years of mobile development experience in Android, iOS or both. Strong experience with Kotlin and/or Swift. Experience shipping production apps used by real users. Strong product sense and attention to mobile UX. Able to work with APIs, analytics, crash logs and production feedback. Fast, practical and comfortable owning work with limited handholding. App links, GitHub, screenshots or examples of shipped work are a strong advantage."

RESPONSIBILITIES
"Build and ship mobile features for Android and/or iOS. Create simple mobile flows for insurance, payments, claims, renewals and financial services. Work with product, design and backend teams to turn complex journeys into usable mobile products. Integrate APIs and handle edge cases, loading states, errors and production issues. Improve app performance, reliability, crash rate and user experience. Support fast product launches, experiments and iterations across mobile journeys. Help set high standards for mobile product quality across the app."

TECH NAMED
Kotlin, Swift, Android, iOS, APIs, GitHub, analytics, crash logs
</details>

## Score

**Total: 69 / 100 — DECISION: APPLY**

> **Override recorded 2026-07-30.** This record originally read "DECISION OVERRIDDEN TO SKIP (duplicate employer)". Farrukh read the posting himself, judged the fit strong, and directed that it be applied to. The decision is now APPLY. Everything below is the original analysis, left unedited on purpose, because the reasoning is still worth having on file even where the conclusion was reversed.
>
> Two corrections to the original call, both in Farrukh's favour:
> 1. **69 sits in the rubric's APPLY band** (60 to 74, "apply if the day's queue is not full"). The rubric never produced a skip here. The skip was an override laid on top of it.
> 2. **The skip reasoning was internally inconsistent.** It used BJAK's 1,411 live postings as evidence the company is not running a considered process, then simultaneously assumed their recruiting is joined-up enough to notice and penalise a second application. Those two claims pull against each other.
>
> Sixteen of the thirty-one lost points sit in Company fit and Application quality, which measure BJAK, not the candidate. The only candidate-side deduction is the Kotlin and Android gap, and the posting says "Android, iOS or both", so it is cleared on paper.
>
> **Standing instruction for the application:** angle it deliberately away from `bjak-ios-developer` so the two read as two different pitches rather than the same one twice. That application led on the iOS platform craft and was flagged PRIORITY-both. This one leads on consumer-scale mobile product work and the regulated-fintech adjacency from Verimi.
>
> Original raw score retained below for calibration at `/outcome` time.
Track: ios-developer (no PRIORITY-both: research confirms zero AI/ML content in this role despite the title)

| Dimension | Score |
|---|---|
| Technical fit | 30/40 |
| Seniority fit | 18/20 |
| Track clarity | 12/15 |
| Company fit | 5/15 |
| Application quality | 4/10 |

**Why this score.** Swift and 3+ years of shipped production mobile work match cleanly (PakWheels, Verimi), and "3+ years" is squarely in his 4-year-plus-M.Sc. band, so technical and seniority fit are genuinely strong. Track clarity is clean iOS-developer content, not ambiguous between the two CV tracks, but the posting explicitly also wants Kotlin/Android, which sits outside both tracks and caps this below a perfect score. Company fit and application quality are where this falls apart: the research brief documents BJAK/Kira running 1,411 live postings against a reported 200-400 headcount, this exact title posted 46 times across countries, and this specific Germany role duplicated verbatim three days apart. That is the rubric's "role reposted for months" red flag in a more extreme form, and it means hundreds of applicants are plausible against a funnel rather than a considered single opening. No product exists yet in the German market, no BaFin or German insurance-intermediary authorisation was found for a regulated financial product, no German legal entity was found, and Glassdoor sentiment sits at 2.3/5 with recurring micromanagement complaints. None of that is disqualifying on its own, but together it pulls company fit down hard, consistent with the rubric's instruction to weigh the Concerns section heavily.

**The decisive issue: this is BJAK, and Farrukh already applied to BJAK yesterday.** `jobs/scored/bjak-ios-developer.md` scored 89 for BJAK, iOS Developer, and the tracker shows `status: applied` as of 2026-07-30, the same day this posting was imported. The research brief confirms "Kira" is BJAK's product brand, not a separate company: identical posting language, identical "About KIRA" boilerplate matching BJAK's own history, and the founder's public statement that BJAK is targeting Germany for 2026. The two roles are substantively the same job (shipping mobile features, product sense, debugging production issues, crash rate and reliability, same Germany-remote model) with the only real difference being that this one is Android-and/or-iOS where the applied one is iOS-only, and this one carries **no** technical differentiator over the applied role. The already-submitted application actually has a stronger case: it named TensorFlow Lite on-device inference in its own research (an on-device ML angle this posting's brief does not surface), it is scored higher (89 vs 69), and it is already in front of whatever recruiter or Ashby pipeline reviews Germany mobile hires at this company.

Submitting a second application to the same employer, for a near-identical role, one day after the first, risks reaching the same recruiter or the same ATS and reading as unfocused rather than distinctive, for no compensating benefit: it does not add a skill, a narrative, or a stronger project he could not already put in front of BJAK once. Combined with the mass-posting evidence, which suggests this specific req may not represent a distinct hiring decision at all, the honest call is to not spend a second submission here. This is a **SKIP**, not because the technical fit is weak, but because the marginal value of a second application to the same employer is close to zero and the risk to the first, better application is real.

**Gaps.** No Kotlin or Android experience anywhere in the CV; the posting's "and/or" wording covers this on paper but a true dual-platform candidate would out-compete him for the parts of this req that are Android-specific. No insurance-domain experience specifically (Verimi is identity/wallet, adjacent but not insurance, payments, claims or renewals). No demonstrated ownership of an app-level crash-rate KPI as a named responsibility, same gap already flagged on the applied BJAK role.

**Risks.** No German legal entity or BaFin/insurance-intermediary authorisation was found for a role that will eventually ship regulated financial flows. No product currently exists in the German App Store or Play Store, so "ship production apps" and "crash rate" describe a target state, not day-one reality. Employment structure (EOR vs. direct) is unresolved. Glassdoor sentiment is weak (2.3/5, 21% recommend, recurring micromanagement complaints), and the posting's own tone ("not for people who need heavy guidance") is consistent with that. Most importantly: applying here creates real risk to the already-submitted, higher-scoring BJAK iOS application by putting a second, weaker-differentiated submission in front of the same employer within 24 hours.

**Lead with.** Not applicable, this is a skip. If the calculus ever changes (for example if `bjak-ios-developer` is rejected outright and this req is confirmed to be a genuinely separate hiring line), the same material would apply: Verimi identity and wallet work for the regulated-fintech angle, PakWheels for consumer scale, both already spent on the first BJAK application.
</content>
