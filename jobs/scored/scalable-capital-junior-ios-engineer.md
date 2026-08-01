---
company: Scalable Capital
role: (Junior) iOS Engineer (m/f/x)
source: linkedin
url: https://www.linkedin.com/jobs/view/4446044516/
posted: UNKNOWN
imported: 2026-08-01
location: Munich, Bavaria, Germany
work_model: UNKNOWN
language: english
seniority: junior
---

## Requirements

Verbatim:

- "A University degree in a relevant field of study (e.g. computer science, engineering, natural sciences, etc.) or a comparable qualification"
- "Hands-on experience in iOS development, including initial experience in a professional setting"
- "Familiarity with Swift and the iOS SDK, and basic experience with UIKit and Auto Layout"
- "Motivation to learn modern iOS development practices"
- "Solid analytical thinking and an interest in understanding both technical and product-related problems"
- "Good communication skills and an openness to ask questions, give feedback, and learn"
- "Fluent in English, both in writing and reading, German is a plus"

## Responsibilities

Verbatim:

- "Work alongside a highly motivated team of software engineers and academics to help build products"
- "Contribute to the design and implementation of user interfaces and features on iOS"
- "Learn to take ownership of parts of the app and gradually grow responsibility across the full development lifecycle"
- "Write clean, testable, and well-documented code, with a strong focus on quality and security"

## Tech stack

Swift, iOS SDK, UIKit, Auto Layout.

## Notes

Direct employer (Scalable Capital), not a recruitment agency.

**Work model not explicitly stated.** The posting mentions an "opportunity to work from abroad" but does not confirm onsite, hybrid or remote as the base arrangement. Recorded as `work_model: UNKNOWN`.

**Posted date is approximate.** LinkedIn displayed "3 days ago" at fetch time (2026-08-01), which would put the posting at roughly 2026-07-29. Recorded as `posted: UNKNOWN` per the intake rule against guessing; the approximate date is noted here instead.

Title is explicitly "(Junior)" and requirements describe "initial experience in a professional setting" rather than a fixed years-of-experience threshold.

## Raw

<details>
This is a structured extraction of the LinkedIn posting as provided for intake, not a byte-for-byte copy of the original page.

Company: Scalable Capital
Title: (Junior) iOS Engineer (m/f/x)
Location: Munich, Bavaria, Germany
Work model: Not specified (opportunity to work from abroad mentioned)
Language of posting: English
Posted: "3 days ago" as displayed on LinkedIn at fetch time (2026-08-01)

REQUIREMENTS / QUALIFICATIONS
"A University degree in a relevant field of study (e.g. computer science, engineering, natural sciences, etc.) or a comparable qualification. Hands-on experience in iOS development, including initial experience in a professional setting. Familiarity with Swift and the iOS SDK, and basic experience with UIKit and Auto Layout. Motivation to learn modern iOS development practices. Solid analytical thinking and an interest in understanding both technical and product-related problems. Good communication skills and an openness to ask questions, give feedback, and learn. Fluent in English, both in writing and reading, German is a plus."

RESPONSIBILITIES
"Work alongside a highly motivated team of software engineers and academics to help build products. Contribute to the design and implementation of user interfaces and features on iOS. Learn to take ownership of parts of the app and gradually grow responsibility across the full development lifecycle. Write clean, testable, and well-documented code, with a strong focus on quality and security."

TECH NAMED
Swift, iOS SDK, UIKit, Auto Layout
</details>

## Score

**Total: 60 / 100 (capped from 81) — APPLY**
Track: ios-developer
Scored 2026-08-01 against `jobs/research/scalable-capital-junior-ios-engineer.md`.

| Dimension | Score |
|---|---|
| Technical fit | 38/40 |
| Seniority fit | 7/20 |
| Track clarity | 15/15 |
| Company fit | 12/15 |
| Application quality | 9/10 |
| **Raw sum** | **81/100** |
| **Junior/entry-level cap applied** | **60/100** |

**The cap, applied and named.** Per `.claude/skills/fit-score/SKILL.md`, a posting tagged junior/graduate/entry-level asking under two years caps the seniority score at 5-9 and the total at 60, applied *after* summing. The raw sum here was 81, which would otherwise read as one of the strongest matches in the pipeline. The cap exists because a role asking for far less than Farrukh has is as wrong a fit as one asking for far more, and the honest seniority score reflects a ~4-year engineer against a posting explicitly seeking "initial experience in a professional setting." **The 60 is the number that stays comparable across the pipeline. It is not a judgement that this is a weak application** — the raw dimensions say the opposite.

**Decision: APPLY.** Per `profile/constraints.md` ("Application strategy: volume over fit", 2026-08-01), a capped score is not a reason to skip, and Farrukh has already decided to apply to this specific posting. This record exists to give `cv-tailor` and `letter-writer` an honest read of the gap, not to re-argue the choice.

**Why the raw dimensions score this high.**

*Technical fit, 38/40.* The posting asks for exactly four things: Swift, iOS SDK, UIKit, Auto Layout. All four are `strong` or directly evidenced in `skills.md` and `experience.md`. Swift and UIKit are four years across both employers. Auto Layout is not itemised as its own row in `skills.md`, but it is the layout system underneath the "Programmatic UI" entry (`strong`, the side of the PakWheels Storyboards migration he moved to) and underneath the BARMER UIKit-to-SwiftUI migration at Verimi — docked 2 points only because it is inferred from adjacent evidence rather than named outright. Research (VERIFIED, own ATS, three separate iOS postings checked) confirms the team writes UIKit and Auto Layout, explicitly not SwiftUI, which is the harder and less common thing to match today: most iOS candidates now lean SwiftUI-only, and Farrukh has shipped both directions of that migration twice.

*Seniority fit, 7/20 (within the mandated 5-9 band for this bracket).* Placed near the middle of the band rather than the floor: he is meaningfully over the ask, but this is a 4-year overshoot against "initial experience," not an 8-plus-year veteran applying to a Werkstudent post. The cap table takes over from here regardless of exact placement in the band.

*Track clarity, 15/15.* Clean UIKit/Auto Layout feature role, no ML, no on-device inference, no camera or sensor work named anywhere in the posting or research. `PRIORITY-both` does not apply, correctly, since nothing here needs the dual profile.

*Company fit, 12/15.* Research file is thorough and mostly VERIFIED/REPORTED, not SUMMARY. Real, substantial company: Munich-founded 2014, ECB banking licence September 2025, ~$1.4-1.5bn valuation, €155m Series F closed June 2025 with named investors, no layoffs found. Product signal is genuinely strong and checkable: 4.6/5 from 73,437 App Store ratings, shipped a new version roughly five days before the research date, i.e. actively maintained rather than legacy-mode. Held below 15 because culture is unverified (Glassdoor 403'd, only SUMMARY-grade numbers available), the GitHub org and engineering blog are thin, and the work model is UNKNOWN for both live iOS postings — none of these are red flags, all of them are gaps in what could be confirmed.

*Application quality, 9/10.* This is not a generic application. Two distinctive, checkable angles map directly onto this specific posting: (1) UIKit/Auto Layout depth via a live migration story (Storyboards to programmatic UIKit to SwiftUI at PakWheels, UIKit to SwiftUI at BARMER) answers "basic experience with UIKit and Auto Layout" with far more than basic evidence, without needing to claim SwiftUI expertise the posting never asked for; (2) regulated German identity and fintech work (AOK, BARMER, eID scanning via the Ausweis SDK, certificate pinning on TAK libraries) is a direct, hard-to-match bridge into a company that just became a licensed bank handling savings and credit products, not just a broker app. Held at 9, not 10, because the honest framing problem below (how a 4-year engineer explains applying to a junior req) is real work for the letter, not a free win.

**Gaps.** Almost nothing the posting asks for is missing. If there is a gap, it runs the other way: the posting wants someone with "initial experience," and Farrukh cannot credibly present as that without the framing doing real work. Minor genuine gaps: Auto Layout is not a named CV line item (inferred, not itemised, see technical fit above); XCTest is `ask`-rated in `skills.md`, unconfirmed, and should not reach the CV even though the posting does not name testing explicitly anyway.

**Risks.**
- **Overqualification is the central risk, not a skills gap.** A recruiter screening a junior req against a ~4-year candidate who led a language migration, mentored, interviewed candidates and shipped SDKs to two enterprise clients may read this as a flight risk, a salary mismatch, or a mistargeted application, independent of whether Farrukh is actually a strong fit for the day-to-day work. The letter needs to address this directly rather than let the CV imply it by omission.
- **Work model UNKNOWN** for the Junior posting specifically (research checked directly, not stated as onsite/hybrid/remote). Munich location removes the relocation question entirely, but not the commute/hybrid question. Worth confirming before or during interview, not a scoring gate since location and language both clear.
- **Culture is genuinely unverified**, not negative. Glassdoor blocked on fetch (403), GitHub org thin, engineering blog content inaccessible. Nothing to hold against the company, just nothing to lean on in a letter either.
- **A live (Senior) iOS Engineer req exists at the same company** (`jobs/inbox/scalable-capital-senior-ios-engineer.md`), asking "profound working experience" with no years figure and carrying no cap. Farrukh was shown both and chose the Junior, per the "one role per company at a time" rule in `constraints.md` (decided 2026-08-01). This is not a recommendation to switch, and that choice is not being re-argued here. Noted as the fallback on record if the Junior application goes nowhere on seniority grounds specifically, at which point the Senior req becomes fair game per the same rule.

**Lead with.**

1. **The UIKit/Auto Layout depth via the migration story**, not a generic Swift skills list. "Familiarity with Swift and the iOS SDK, and basic experience with UIKit and Auto Layout" is precisely answered by the Storyboards-to-programmatic-UIKit-to-SwiftUI migration at PakWheels and the UIKit-to-SwiftUI migration on BARMER at Verimi. This shows hands-on UIKit and Auto Layout work on two production apps with millions of users, in the exact stack the team's own postings describe (UIKit, not SwiftUI), without overclaiming architecture-lead scope the posting never asked for.
2. **The regulated identity and fintech thread**: eID card scanning on AOK and Verimi Wallet via the Ausweis SDK, certificate pinning on BARMER's TAK libraries, an identity SDK consumed by two enterprise clients separately. This is the most distinctive, least-replicable material on the profile and it maps directly onto a company that just became an ECB-licensed bank layering savings and credit products onto its brokerage app. Almost no other candidate applying to this req will have shipped German-regulated identity verification twice.
3. **Munich, no relocation, immediate availability.** The one posting in the pipeline where this is genuinely true. Say it plainly and briefly, it removes a real practical question a recruiter would otherwise have to ask.

**What the CV and letter need to do about the over-qualification, specifically.** Do not lead the summary with "led," "mentored," "interviewed," or "hired" — all true, all valuable at interview, but headlining them on a junior-titled application invites the exact mismatch read named above. Keep the summary hands-on and craft-focused (shipped UIKit features, owns the migration work personally, comfortable with Auto Layout and the iOS SDK day to day), and let the SDK/mentoring/hiring material sit lower on the CV as depth rather than as the pitch. The letter should name, in one direct sentence, why this specific junior req at this specific company rather than a role that matches his years exactly — the honest answer is the product (identity-adjacent regulated fintech, now a bank) and the location (Munich, home base), not a shortage of more senior offers. Say that plainly rather than leaving the recruiter to guess at the motive.
