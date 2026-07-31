# BJAK, iOS Developer

Researched: 2026-07-29

Sources used:
- https://fintechnews.my/55863/insurtech-malaysia/bjak-ipo/
- https://builtin.com/job/ios-software-engineer-finance-super-app/10056202 (a sibling posting, removed 2026-07-05, far more detailed than the LinkedIn one)
- https://www.linkedin.com/jobs/view/4437947712/
- https://bjak.my, https://jobs.ashbyhq.com/bjakcareer
- Crunchbase, Tracxn, Dealroom company profiles

## What they do

VERIFIED. BJAK runs the largest insurance platform in Southeast Asia. It started in 2019 as a Malaysian vehicle-insurance comparison site and is now positioning itself as a **"finance super app"** covering insurance, payments, spending, saving, investing, currency exchange and travel.

The business model is straightforward: aggregate 16 insurers and takaful operators, including Allianz and Tokio Marine, into one marketplace where a customer compares and buys a policy in under five minutes. They are licensed by Bank Negara Malaysia as an approved Financial Adviser and Islamic Financial Adviser.

Roughly **7 million registered users**, and a 4.8 Google rating from over 325,000 reviews.

## Stage and size

| Fact | Value | Evidence |
|---|---|---|
| Founded | 2019, by Wei Low | VERIFIED |
| Funding | **Profitable since inception, no significant external funding** | VERIFIED |
| Headcount | 253, heading for ~400 by end of 2026 | VERIFIED, sibling posting and IPO article |
| Growth | Gross written premiums up 20 to 30% this year | VERIFIED |
| IPO | Being weighed within two years | VERIFIED |
| HQ | Petaling Jaya, Malaysia | VERIFIED |

Bootstrapped and profitable is unusual and worth noting. There is no investor runway clock, which normally means a lower blow-up risk than a VC-funded scale-up of the same size, but also tighter cost discipline.

## Vision and direction

**This is the single most important finding, and it explains the entire posting.**

VERIFIED: BJAK is **entering Spain and Germany in 2026**, its first European markets, after recent expansion into Japan, Taiwan and Thailand. The IPO is explicitly framed as funding overseas growth.

That is why a Southeast Asian company is advertising a role that requires being based in Germany. This is not a generic remote hire, it is **groundwork for a German market launch**. Anyone joining now is building for a market that does not exist yet for them.

Stated vision and observable behaviour agree here, which is not always the case. They said Europe, they are hiring in Europe, and headcount is genuinely doubling.

## Tech stack

The LinkedIn posting names only Swift, SwiftUI, UIKit, async/await. The sibling posting is far more revealing:

**Swift, Swift Package Manager, SwiftUI, SQL/NoSQL, and TensorFlow Lite for on-device inference.**

VERIFIED from the Built In posting. **TensorFlow Lite is the standout.** They are running machine learning models on the device, not just calling a cloud API. Combined with the responsibility line "build AI-assisted mobile experiences where they create meaningful value", this is a genuine on-device ML product, not AI as marketing.

## The role in context

The LinkedIn posting tags this **"Entry level"**. The sibling posting for the same job asks for **"3+ years of professional iOS development experience using Swift"**. The LinkedIn tag is simply wrong and should be ignored.

They also state: *"GitHub, App Store links or examples of shipped applications are highly preferred."*

The role exists because of the European launch, and headcount is doubling, so this is growth hiring rather than a backfill.

**Interview process**, VERIFIED from the sibling posting:
1. Online coding assessment, on fundamentals, problem-solving and code quality
2. Technical interview, on iOS engineering, architecture, API integration, debugging and UX thinking
3. **CEO interview**, on ownership, execution speed, ambition, judgement, integrity and cultural alignment

A CEO round at 253 people means the founder still interviews engineers personally.

## Location and work model

Fully remote, global engineering team, over 20 nationalities. HQ in Petaling Jaya. The LinkedIn posting requires candidates to be based in Germany, which follows from the 2026 German launch.

INFERRED: with no German entity yet established, employment is likely through an employer of record or a contractor arrangement. Worth asking early, since it changes tax, pension and notice.

## Culture and engineering practice

Thin evidence. No public engineering blog or GitHub organisation found. What can be said:

- Remote-first and genuinely distributed, 20+ nationalities
- The posting language stresses ownership, fast execution and "moving fast without lowering the bar"
- A CEO interview round on "ambition, judgement, integrity" suggests a founder-led culture where fit is judged personally
- Profitable and bootstrapped usually means pragmatic engineering over research

## For the cover letter

1. **The German launch.** They enter Germany and Spain in 2026, and this role requires being based in Germany. Opening on that shows the letter was written for them specifically. It is checkable, recent, and explains the job better than the job description does.
2. **TensorFlow Lite on device.** Their stack runs ML on the phone. That is precisely the seam where an M.Sc. in AI meets four years of production iOS, and very few candidates sit on both sides of it.
3. **Regulated financial flows.** They are a licensed financial adviser handling insurance, payments and claims. Verimi is identity verification and wallet, the same regulated-fintech problem domain.

## Concerns

- **The LinkedIn "Entry level" tag contradicts the 3+ years the sibling posting asks for.** Most likely a miscategorised listing, but confirm the seniority band and compensation early rather than after three rounds.
- **The sibling posting was removed on 2026-07-05** while the LinkedIn one stays live. Could be a repost, a duplicate, or a role already partly filled. Worth asking how long they have been searching.
- **No German entity yet.** Employment structure is unresolved and materially affects the offer.
- **No public engineering presence**, so there is no way to assess code quality or engineering culture from outside.
- Building for a market they have not launched in yet means the first year may be more ambiguous than a role at an established local employer.

## Open questions

- How is German employment structured, a local entity, an employer of record, or contracting?
- What is the actual seniority band and salary range, given the contradictory tags?
- How large is the mobile team today, and where are they located?
- What is TensorFlow Lite doing in the app right now, and what is planned?
- How far along is the German launch, and what does the first year look like before it goes live?
