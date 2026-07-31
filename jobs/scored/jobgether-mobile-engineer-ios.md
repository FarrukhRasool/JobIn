---
company: Jobgether (posting on behalf of an unnamed partner company)
role: Mobile Engineer (iOS)
source: linkedin
url: https://www.linkedin.com/jobs/view/4443204371/
posted: UNKNOWN
imported: 2026-07-30
location: Germany
work_model: fully remote
language: none stated, posting in English
seniority: mid-senior, 3+ years
---

## Requirements

Verbatim:

- Minimum 3 years professional iOS development using Swift
- Strong hands-on SwiftUI, async/await, concurrency, and background task experience
- Production-grade iOS application deployment and maintenance experience
- AI-powered feature integration or intelligent backend service experience
- iOS performance optimization, memory management, battery efficiency knowledge
- Mobile architectures, RESTful APIs, SQL/NoSQL databases, modern workflows familiarity
- CoreML, TensorFlow Lite or on-device ML exposure (advantageous)
- Feature flagging, remote configuration, or experimentation frameworks (bonus)
- Problem-solving abilities with user-centric AI interaction design focus
- Cross-functional and distributed team collaboration skills

## Responsibilities

- Design, develop, and maintain high-quality iOS apps using Swift and SwiftUI
- Build and integrate AI-powered features via backend APIs with seamless UX
- Design interaction patterns for AI features including streaming, loading states, retries, error handling
- Optimize performance, memory, battery efficiency across iOS device ranges
- Capture user behavior and feedback for AI model evaluation and improvements
- Collaborate with backend, ML, and product teams on APIs and production features
- Maintain stability, code quality, monitoring, and App Store readiness standards
- Troubleshoot production issues and improve reliability continuously

## Tech stack

Swift, SwiftUI, async/await, CoreML, TensorFlow Lite, RESTful APIs, SQL/NoSQL.

## Notes

**Jobgether is a job platform, not the employer.** VERIFIED: their own about page states listings are posted on behalf of partner companies who manage all applications. The actual employer is unnamed. See the research brief.

## Score

**Total: 85 / 100 — APPLY**
Track: ios-developer, flagged **PRIORITY-both**
Scored 2026-07-30 against `jobs/research/jobgether-mobile-engineer-ios.md`.

| Dimension | Score |
|---|---|
| Technical fit | 38/40 |
| Seniority fit | 19/20 |
| Track clarity | 15/15 |
| Company fit | 6/15 |
| Application quality | 7/10 |

**Technical fit is the highest of any posting so far except SumUp, and for a different reason.** SumUp matched his platform work. This matches the thing his profile is uniquely built for: **shipping AI features inside a native iOS app.**

Their core responsibility is "build and integrate AI-powered features via backend APIs with seamless UX" and "design interaction patterns for AI features including streaming, loading states, retries, error handling". Bedtime Story Teller is a SwiftUI client against a Python backend running a local LLM that chooses its own story source, and the client decodes and surfaces that routing decision to the user. That is the same problem, already built, in public.

Also landing:
- **Feature flagging and experimentation, a stated bonus.** PakWheels A/B tests and feature flags through Firebase, used to measure lead conversion
- **Performance, memory, battery.** Crash-free above 99%, app launch time cut 20%
- **async/await**, now evidenced by the eID scanning and Wallet login flows
- **RESTful APIs and SQL/NoSQL.** BedTimeAPIs.swift, FastAPI, SQLAlchemy

**Company fit is 6/15, and that is the whole cost of this posting.** There is no named employer. No stage, no funding, no culture, no codebase, no other roles to read. The letter cannot open on the company because there is no company to open on, which removes the single strongest move in the letter playbook.

**Gaps, and none of them may be blurred.**
- **On-device ML is advantageous and he does not have it.** TensorFlow, PyTorch and Keras are `strong` via Deep Vision, but that is training and comparing models, not CoreML or TensorFlow Lite running inference on a phone. Different thing. Do not imply otherwise.
- **Background tasks** are named and nothing evidences them.
- **Streaming** is named. `StoryTeller` has `Streaming.swift`, but that file carries HeyGen's author header. **Must not be claimed.** His work there is the Alamofire integration layer, typed Codable models and error handling in `BedTimeAPIs.swift`.

**Risks.**
- Applying blind to an unnamed employer. Worth asking Jobgether who the client is before investing in later rounds.
- An intermediary adds a step and slows feedback.
- Fully remote from Germany is a genuine positive given he is in Bavaria and would otherwise be relocating.

**Lead with.** Bedtime Story Teller, the full stack of it: SwiftUI client, backend LLM, agentic routing surfaced in the UI. Then PakWheels for feature flags, experimentation and production quality. Then Verimi for regulated iOS at scale.
