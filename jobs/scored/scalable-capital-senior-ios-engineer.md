---
company: Scalable Capital
role: (Senior) iOS Engineer (m/f/x)
source: company-site
url: https://jobs.smartrecruiters.com/ScalableGmbH/744000099410636
posted: UNKNOWN
imported: 2026-08-01
location: Munich or Berlin, Germany
work_model: UNKNOWN
language: english
seniority: senior
---

## Requirements

Verbatim:

- "A University degree in a relevant field of study (e.g. computer science, engineering, natural sciences, ...) or a comparable qualification"
- "Profound working experience as an iOS Engineer"
- "Strong analytical thinking, both in the technical and in the product domain"
- "Passion in delivering great UX and working with custom UI, proficiency with UIKit and Auto Layout as well as interested in other technology stacks"
- "Ability to keep yourself up-to-date with respect to the latest changes in the iOS ecosystem"
- "Excellent communication skills that are clear, concise, and targeted towards your audience - engineering, product, or other stakeholders"
- "Prior Fintech experience is not a requirement, but an asset. Ideally, you're interested in investing or already a customer of Scalable Capital"
- "Excellent English communication skills, German is optional"

## Responsibilities

Verbatim:

- "Work alongside a highly motivated team of software engineers and academics implementing change in the financial industry. Design and implement user interfaces that open complex matters like investing to users"
- "Be empowered to implement, improve, fix, suggest, and change anything you see that has the potential to improve the status quo, both technically and product-wise"
- "Experiment with new technologies to get the best out of the iOS Platform"
- "Build visually rich user experiences"
- "Write clean, testable and well-documented code and treat security as first class citizen"
- "Own the full app lifecycle from ideation to delivery to the App Store"

## Tech stack

UIKit, Auto Layout. No other named language, framework, or tool appears in the posting text (Swift and SwiftUI are not explicitly named, despite this being an iOS role).

## Notes

Direct employer (Scalable Capital), not a recruitment agency. Fetched cleanly from the company's own SmartRecruiters ATS, no login wall.

**Experience requirement has no years figure.** It reads exactly "Profound working experience as an iOS Engineer", with "profound" doing the work a number would normally do. Capture this verbatim for scoring, do not translate it into an assumed years threshold.

**Work model not explicitly stated.** The posting names two office locations (Munich or Berlin), mentions "opportunity to work from abroad", and lists remote work flexibility among benefits, but does not state whether the base arrangement is onsite, hybrid, or remote. Recorded as `work_model: UNKNOWN`.

**Posted date not shown on the page.** Recorded as `posted: UNKNOWN`.

**A sibling requisition for the same company already exists in the pipeline**: `jobs/inbox/scalable-capital-junior-ios-engineer.md`, for "(Junior) iOS Engineer (m/f/x)" at the same company, a different req with a different ATS id. This is not a duplicate of that record. Farrukh has deliberately chosen to pursue the Senior req only, per the "one role per company at a time" rule in `profile/constraints.md`. The Junior record is left untouched.

## Raw

<details>
Extracted via WebFetch from the company's SmartRecruiters posting, cross-checked across multiple fetch passes for consistency. Not a byte-for-byte copy of the page HTML.

Company: Scalable GmbH (Scalable Capital)
Title: (Senior) iOS Engineer (m/f/x)
Location: Munich or Berlin, Germany
Employment type: Full-time

COMPANY DESCRIPTION
Scalable Capital operates as a leading digital investment and banking platform with a full banking licence across Europe, providing brokerage, wealth management, and banking products to over one million clients managing €50 billion in assets. Founded in 2014, 700+ staff across five European cities.

JOB DESCRIPTION
"Work alongside a highly motivated team of software engineers and academics implementing change in the financial industry. Design and implement user interfaces that open complex matters like investing to users. Be empowered to implement, improve, fix, suggest, and change anything you see that has the potential to improve the status quo, both technically and product-wise. Experiment with new technologies to get the best out of the iOS Platform. Build visually rich user experiences. Write clean, testable and well-documented code and treat security as first class citizen. Own the full app lifecycle from ideation to delivery to the App Store."

QUALIFICATIONS
"A University degree in a relevant field of study (e.g. computer science, engineering, natural sciences, ...) or a comparable qualification. Profound working experience as an iOS Engineer. Strong analytical thinking, both in the technical and in the product domain. Passion in delivering great UX and working with custom UI, proficiency with UIKit and Auto Layout as well as interested in other technology stacks. Ability to keep yourself up-to-date with respect to the latest changes in the iOS ecosystem. Excellent communication skills that are clear, concise, and targeted towards your audience - engineering, product, or other stakeholders. Prior Fintech experience is not a requirement, but an asset. Ideally, you're interested in investing or already a customer of Scalable Capital. Excellent English communication skills, German is optional."

TECH NAMED
UIKit, Auto Layout. iOS Platform and App Store referenced generically; no specific language or framework beyond UIKit and Auto Layout is named.
</details>

## Score

**Total: 88 / 100 — would read APPLY on the rubric, held as FALLBACK**

> **Rescored 2026-08-01, from 87.** Farrukh confirmed `XCTest`, which had been rated `ask` and cost
> Technical fit one point. It is now `strong` in `profile/skills.md`, backed by a generic bullet in
> `experience.md`, and usable on a CV, so the point is recovered. He also confirmed `MVC`, now
> `strong`, which this posting does not ask for and so does not move the number. **The fallback
> framing is unchanged.**
Track: ios-developer
Scored 2026-08-01, reusing `jobs/research/scalable-capital-junior-ios-engineer.md` (the same company, and that brief directly investigates this Senior requisition too). Any line in that brief graded SUMMARY was not used below.

| Dimension | Score |
|---|---|
| Technical fit | 38/40 | was 37 |
| Seniority fit | 14/20 |
| Track clarity | 15/15 |
| Company fit | 12/15 |
| Application quality | 9/10 |
| **Raw sum / Total** | **87/100** |

**No cap applied.** The junior/entry-level over-qualification cap table only fires for postings tagged Werkstudent/junior/graduate asking under two years. This posting is titled Senior and states no years figure at all ("profound working experience"), so that table does not trigger, per the instruction not to invent a threshold it never asked for. The `work_model: UNKNOWN` field also does not trigger the rubric's separate 70-point cap, because that cap is scoped to the three hard-gate fields (language, location, hard-no list), none of which is UNKNOWN here: language is stated ("English, German optional") and location is stated (Munich or Berlin). Work model UNKNOWN is carried below as a risk, not a cap.

**Gate check.** Language: "Excellent English communication skills, German is optional" is explicit, so the German A2 gate does not fire. Location: Munich or Berlin, both inside the open regions and Munich is his stated base, so no relocation question either. Hard-no list: empty. All three gates pass cleanly.

**Why this score.** The posting names only two concrete technologies, UIKit and Auto Layout, and both are strongly evidenced: UIKit across four years at both employers, Auto Layout as the layout system underneath the "Programmatic UI" migration entry. The responsibilities go further than the Junior req's and land squarely on evidence that exists but was under-used there: "own the full app lifecycle from ideation to delivery to the App Store" is answered almost verbatim by the Fastlane/TestFlight/App Store release work at PakWheels, and "treat security as first class citizen" is answered by certificate pinning on BARMER's TAK libraries plus eID scanning via the Ausweis SDK, twice. Track is clean, no AI or ML content anywhere in the posting, so `ios-developer` with no PRIORITY-both bonus. Company fit is unchanged from the Junior read, same company, same unresolved culture and work-model unknowns.

*Technical fit, 37/40.* Docked 2 points because Auto Layout is not an itemised row in `skills.md`, only inferred from the "Programmatic UI" (`strong`) and BARMER UIKit-to-SwiftUI migration entries, same deduction applied to the Junior req for the same reason. ~~Docked 1 further point because "write clean, testable... code" implies automated iOS testing, and `XCTest` is rated `ask`.~~ **Point restored 2026-08-01**, XCTest confirmed and now `strong`, evidenced by a generic bullet in `experience.md` ("Wrote unit tests with XCTest covering business logic and view models."). The bullet carries no employer or number, so it clears the "testable code" line as real CV evidence without proving depth. Everything else the posting asks for, UIKit depth, security-first engineering, full release ownership, is `strong`.

*Seniority fit, 14/20.* No years figure to map onto the rubric's bands, so this is a judgement call rather than arithmetic, per the instruction not to invent a threshold. "Profound working experience" plus "be empowered to implement, improve, fix, suggest, and change anything" and "own the full app lifecycle" read as a genuine senior bar, not a title inflated over a mid-level job. Farrukh's real total is roughly four years, one of which is formally a working-student contract at Verimi even though ordinary professional postings present it as plain "iOS Developer." Placed in the same range the rubric gives an explicit "six to eight years" ask (12 to 17), not the top band, because the tenure composition is thinner than "profound" ideally wants even though the seniority signals are real. Those signals, led the Objective-C to Swift migration, built an SDK consumed separately by AOK and BARMER, mentored one junior developer, conducted hiring interviews, are genuine and were deliberately kept off the Junior CV to avoid an over-qualification read there. Here they are exactly what "profound working experience" needs to hear, which is why this lands mid-band rather than low.

*Track clarity, 15/15.* Clean UIKit/Auto Layout feature and platform-ownership role. Nothing in the posting or research names on-device ML, Core ML, camera or sensor work, so the dual AI/iOS profile is not the reason to hire here and `PRIORITY-both` correctly does not apply.

*Company fit, 12/15.* Unchanged from the Junior req's score, same research file, same company. Real, well-funded, growth-stage business (ECB banking licence Sept 2025, €155m Series F, 4.6/5 App Store rating from 73k reviews with an active weekly release cadence), held below 15 because culture is genuinely unverified (Glassdoor 403'd, GitHub thin, engineering blog inaccessible) and work model is UNKNOWN for this exact posting.

*Application quality, 9/10.* Distinctive material maps directly onto this specific posting, arguably more directly than onto the Junior one: the full-lifecycle release story (Fastlane, TestFlight, App Store, CI/CD) answers "own the full app lifecycle... to the App Store" almost word for word, and the security thread (certificate pinning, eID scanning via Ausweis SDK) answers "treat security as first class citizen" directly. Held at 9, not 10, because bridging roughly four years, one of them a working-student contract, into a confident claim of "profound working experience" is real work the letter has to do, not a free win.

**Comparison with the Junior req's 60.** The 27-point gap between 87 here and 60 there is entirely the seniority dimension and the cap it triggers, not a difference in the underlying candidate. The Junior req's raw sum was actually higher before its cap (81), because that posting names more explicit technologies (Swift, iOS SDK, UIKit, Auto Layout) that all match cleanly. But the Junior/entry-level cap table forced that 81 down to 60 specifically because Farrukh is over-qualified for "initial experience in a professional setting." The Senior req has no such cap because it states no years figure to trigger one, and because the same seniority signals that had to be hidden from the Junior application (SDK ownership, mentoring, hiring, migration leadership) are exactly what this posting is asking for. Read together, the two records say the same thing from opposite directions: the Junior req undersells him and the Senior req is close to an honest match.

**Decision: FALLBACK, not a live application.** On the rubric alone, 87 sits in the 75-plus "Apply, tailor hard" band. It is not being recommended for application now. Per `profile/constraints.md` ("One role per company at a time", decided 2026-08-01), Farrukh applied to the Junior req at this company today, 2026-08-01, and the rule is one role per company at a time regardless of which one scores better on paper. This record exists specifically as the fallback named in that rule. **It becomes live only if the Junior application comes back rejected specifically on seniority grounds** ("we're looking for someone earlier-career", "over-qualified", or equivalent), at which point `/cv` and `/letter` can run against this record without re-scoring it. Do not treat this score as licence to apply now, and do not use it to argue the Junior choice was wrong. That choice is on record in `constraints.md` and is not being re-argued here.

**Gaps.** ~~iOS-specific automated testing (`XCTest`) is unconfirmed.~~ **Closed 2026-08-01.** XCTest is confirmed and `strong`. A generic bullet now covers it in `experience.md`, which answers the posting's "testable code" line. It carries no employer or number, so it clears the keyword rather than proving depth. Worth having a concrete example ready for interview. No architecture pattern (MVVM, Clean, etc.) is named in the posting, so none is being scored for or against. Beyond that, almost nothing the posting names is missing, the same as the Junior read.

**Risks.**
- **Work model is UNKNOWN** for this exact posting, own ATS checked directly. Munich removes the relocation question but not the commute/hybrid question. Confirm before or during interview, not a scoring gate.
- **Culture is genuinely unverified**, not negative. Glassdoor blocked on fetch (403), GitHub org thin, engineering blog content inaccessible. Carried over unchanged from the Junior req's research.
- **The seniority claim rests on framing, not a number.** "Profound working experience" has no year count to point to, so the letter has to make the case with the SDK, mentoring and hiring evidence rather than lean on tenure alone.
- **This record must stay dormant while the Junior application is active.** Applying here now, or before a seniority-specific rejection on the Junior req, breaks the "one role per company at a time" rule and reads to the same recruiting team as not knowing his own level.

**Lead with, if and when this record goes live.**
1. **Full app lifecycle ownership**: Fastlane, TestFlight and App Store release automation at PakWheels, plus the Verimi CI/CD work that halved TestFlight build time by automating xcframework creation. Answers "own the full app lifecycle from ideation to delivery to the App Store" almost verbatim.
2. **Security as first class citizen**: certificate pinning on BARMER's TAK libraries, eID card scanning via the Ausweis SDK on both AOK and Verimi Wallet. The most literal, hardest-to-match answer to a named responsibility anywhere in this posting.
3. **The seniority signals withheld from the Junior application**: leading the Objective-C to Swift migration, building the identity SDK consumed separately by AOK and BARMER, mentoring one junior developer, conducting hiring interviews. These were deliberately kept low on the Junior CV to avoid an over-qualification read. Here, they are the direct evidence for "profound working experience" and belong in the summary, not buried.
4. **The UIKit/Auto Layout depth via the migration story**, same evidence as the Junior application (Storyboards to programmatic UIKit to SwiftUI at PakWheels, UIKit to SwiftUI at BARMER), reframed here as "experiment with new technologies to get the best out of the iOS Platform" rather than as basic familiarity.
