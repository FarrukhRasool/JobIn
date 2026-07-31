# Application notes: Kira (BJAK), Mobile Engineer - AI Finance Agent

**Track:** ios-developer. Not PRIORITY-both. Research confirms zero AI/ML content in the posting's own requirements and responsibilities despite the "AI Finance Agent" title, and the scored record fixes this track explicitly. Do not blend with AI-engineer material.

**Score:** 69/100, APPLY (overridden from an earlier SKIP; see `jobs/scored/kira-mobile-engineer.md`). This is the same employer as `bjak-ios-developer` (applied 2026-07-30), so this CV had to read as a distinct pitch rather than a duplicate.

**Location claimed:** Berlin, Germany. Posting's LinkedIn header names Berlin, the body says remote-Germany, and no other city is named. Same city as the already-submitted BJAK application, since it is the same employer.

**Employment status shown:** Verimi carries the plain `IOS Developer` line, no working-student qualifier. This is an ordinary professional posting (3+ years required), not a student role.

**Title used:** "Mobile Engineer", mirroring the posting's own title minus the "AI Finance Agent" suffix. That suffix is product branding, not a real work descriptor, and the posting itself has no AI/ML content, so keeping it off the personal tagline avoids implying an AI skills claim the CV does not otherwise support.

**Rendered:** Not rendered by this agent. No shell access in this run. Farrukh renders with `./scripts/render-cv.sh kira-mobile-engineer` and handles any one-page trim himself.

## How this differs from the BJAK, iOS Developer application

`applications/bjak-ios-developer/cv.typ` led with Verimi's regulated financial flows (onboarding, cards, payments, transfers, authentication) and framed PakWheels around crash-rate/performance ownership. It used `iOS Developer` as the title and kept all 6 Verimi bullets including the SDD/LLM automation one, plus led education with "Agentic AI".

This CV leads differently, on purpose:

- **First bullet in the whole document is now AOK/BARMER**, not the SDK bullet. It hits consumer scale ("millions of people") and insurance domain in the same sentence, since this posting's entire responsibilities section is "insurance, payments, claims, renewals and financial services" rather than BJAK's own generic "shipping iOS apps".
- **PakWheels bullet 1 is reworded to foreground "production app used by millions of people"** rather than leading with the SwiftUI/UIKit tech list, to keep "consumer-scale, shipped, real users" as the throughline the posting itself asks for.
- **Dropped the SDD/LLM automation bullet from Verimi entirely** (kept in the BJAK CV). It is the least relevant fact to a posting with zero AI content, and cutting it kept the entry tighter.
- **Education leads with Embedded Intelligence (Indoor Navigation Mobile App) and Autonomous Robot**, not Agentic AI. The BJAK CV led education with the AI-agent iOS project; this one deliberately does not, since this posting has no AI angle to sell into and leaning on it here would read as unfocused given the title-vs-content mismatch the research brief already flags.
- **Technical Skills sidebar reordered around CI/CD and reactive programming**, with Machine Learning pushed to the very bottom of the list rather than sitting mid-list as in the BJAK CV.
- Did not add "async/await" or "Fastlane" to the skills sidebar. The BJAK CV added both; neither term appears anywhere in `master-cv.typ`. Kept this CV to skills the master text actually evidences.

A reader who saw both applications side by side would see two different pitches: one leans on iOS platform depth for an iOS-only role, the other leans on consumer-scale insurance-adjacent shipping for a platform-agnostic "insurance, payments, claims" role.

## Led with

**AOK and BARMER, moved to the very first bullet in the document.** Two of Germany's largest insurance apps with millions of live users is the single strongest overlap with a posting whose entire responsibilities list is insurance/payments/claims/renewals/financial-services flows for real users at scale.

**PakWheels reframed around consumer scale and iteration.** "Production app used by millions of people" leads bullet 1. The A/B tests and feature flags bullet is reworded around testing changes on real users before a full rollout, matching the posting's "support fast product launches, experiments and iterations".

**Production quality bullets kept, not expanded.** CI/CD pipelines (Verimi) and the 40% CocoaPods to SPM build-performance number (PakWheels) are the two hardest pieces of evidence for "improve app performance, reliability" and were kept prominent. The peer code review bullet was reworded to land directly on the posting's own phrase "help set high standards for mobile product quality".

## Cut

- The SDD/LLM automation bullet at Verimi (kept in the BJAK CV, cut here as explained above).
- "Agent Base Modeling" academic project (also cut in the BJAK CV, no direct tie to shipped product work).
- Any mention of Kotlin or Android, anywhere, per explicit instruction. The posting says "Android, iOS or both" and "Kotlin and/or Swift", so Swift alone clears the requirement on paper, but nothing in the master or projects.md evidences Android or Kotlin work, so none was added in any form, not even as a skill list entry.

## Terminology mirrored

`production`, `insurance`, `millions of people`, `CI/CD pipelines`, `accessibility`, `user experience`, `A/B tests`, `feature flags`, `code reviews`, `mobile product quality` (via the clean-code-architecture bullet, mirroring the posting's own phrase "help set high standards for mobile product quality across the app"), `Scrum`, `Kanban`. All in main-column bullets, not just the sidebar, per the template's two-column ATS caveat.

## Metrics worth adding

None invented. These bullets would be materially stronger with a real number:

1. **AOK/BARMER** — combined user count for the two apps, if disclosable. This is the headline bullet of the whole CV and currently says only "millions".
2. **CI/CD pipelines (Verimi)** — build time or deploy frequency before and after. No number exists in the master for this one at all.
3. **A/B tests and feature flags (PakWheels)** — a real result from one experiment (a conversion lift, a rollback avoided, anything) would speak directly to the posting's "experiments and iterations" ask, which is otherwise evidenced only by activity, not outcome.
4. **Design Component Library** — number of teams or apps using it, or a concrete speed figure, rather than "sped up delivery".
5. **Identity verification SDKs** — number of enterprise clients or end users passing through those flows.

## Gaps not closed

- **No Kotlin or Android experience anywhere.** Covered on paper by the posting's "and/or" wording, not by actual dual-platform skill. A true dual-platform candidate outcompetes him on the Android-specific parts of this req.
- **No insurance-domain experience in the literal sense of claims, renewals or payments processing.** Verimi is identity verification and wallet infrastructure. AOK and BARMER are insurer-branded consumer apps Farrukh built features for, not claims or payments backend work. Adjacent, not the same, and the CV does not claim otherwise.
- **No named ownership of an app-level crash-rate KPI.** The posting asks explicitly for improving "crash rate". Nothing in the master evidences owning that metric. Same gap already flagged on the BJAK application.
- **The literal word "API" appears nowhere in the master CV.** The posting asks for comfort working with APIs, analytics, crash logs and production feedback. SDK and Firebase integration work is adjacent evidence, but the CV does not use the word "API" anywhere since it is not in the source text, so an ATS keyword match on that exact term will miss.
- **"Analytics" and "crash logs" are not literally evidenced.** Firebase A/B testing is the closest adjacent fact and is used, but the CV does not claim analytics or crash-log work directly.

## Weak match, stated directly

Technical and seniority fit are genuinely solid (Swift, 3+ years, consumer-scale production apps). Company fit is weak on the record: `jobs/research/kira-mobile-engineer.md` documents 1,411 live postings against a roughly 200-400 person company, this exact title posted 46 times across countries, no product yet live in the German App Store or Play Store, no BaFin or German insurance-intermediary authorisation found, and Glassdoor at 2.3/5 with recurring micromanagement complaints. This is also the second application to the same employer inside 24 hours, which the original scoring pass flagged as a real risk to the stronger, already-submitted BJAK application. Farrukh reviewed that reasoning directly and chose to apply anyway. The CV above is built to make this application earn its place as a distinct pitch rather than a weaker echo of the first one, but the underlying company-fit concerns in the research brief have not changed and are not resolved by better CV framing.

## Page count

Not rendered by this agent, no shell access this run. Built deliberately tighter than the BJAK CV: 5 Verimi bullets instead of 6, 11 total experience bullets instead of 12, and no bullet meaningfully longer than its counterpart in the master. Farrukh should confirm one page with `./scripts/render-cv.sh kira-mobile-engineer` and trim from the PakWheels Scrum/Kanban bullet first if a cut is needed, since it carries the least unique keyword value of the six.
