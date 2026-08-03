# Application notes

**Track:** iOS Developer (`profile/tracks/ios-developer.md`). Not a straddle. The posting's
credentialing requirement is 100% iOS (Swift 5+, Objective-C, GCD, Core Data, Fastlane).
The AI angle is listed as "Preferred," not required, and no ML or LLM technology is named
anywhere in the posting. The scored record's own track-clarity dimension (10/15) reached
the same conclusion. The M.Sc. appears only in Education, as the track file specifies.

**Location claimed:** Berlin, Germany. The posting's `location` field is UNKNOWN. Neither the
posting nor the research brief found a country or region restriction, only `work_model: remote`
is confirmed, and SuperAnnotate/SME Careers' own HQ location was NOT FOUND in either source.
Per the skill's fallback rule for remote roles with no city named ("the company's headquarters
city if it is in Europe, otherwise Berlin, Germany"), and with no evidence the HQ is in Europe,
this defaults to Berlin, Germany.

**Email used:** default, farrukhrasool65@gmail.com. Unchanged.

**Employment status shown:** `IOS Developer`, no Working Student qualifier. This is an ordinary
professional posting (mid/senior, 4+ years required), not a student, Werkstudent, internship or
dual-study role, so the plain role line applies per the skill's rule.

**Led with:**
- Verimi: the AOK eID card-scanning flow (Ausweis SDK, async/await) and BARMER certificate
  pinning first, since they are the most direct, named matches for "auth flows," "concurrency"
  and "security awareness: transport security." The identity-SDK ownership bullet (AOK and
  BARMER integrating one API surface separately) comes third as the strongest available
  senior-architecture signal, then the UIKit-to-SwiftUI migration and the CI/CD number.
- PakWheels: `UserManager` (session and auth singleton) leads, since it is the single strongest
  authored mechanism answering "state management," "auth flows" and "app lifecycle" directly.
  The Objective-C to Swift migration follows, evidencing Objective-C fluency through the real
  `@objc`-style interop surface rather than a bare years-of-experience claim. Then the
  Storyboards-to-programmatic-UIKit-to-SwiftUI migration (view/controller architecture, MVC),
  the Combine advanced-search bullet (the single most fully-evidenced technical bullet on the
  whole profile), the `CarGenerations` Core Data entity (correctly scoped as an extension, not
  the stack), and the Jenkins/Fastlane pipeline (CI/CD, release practices).
- Given the actual work here is writing reference answers and ranking AI output "across iOS
  topics," breadth of credible, specific iOS knowledge was weighted over a single deep feature
  narrative, per the task brief. The eleven bullets chosen deliberately span languages
  (Swift, Objective-C), UI frameworks and history (UIKit, SwiftUI, Storyboards, MVC),
  concurrency (async/await, GCD via sidebar), persistence (Core Data), reactive state
  (Combine), auth/session architecture, release engineering (Fastlane, Jenkins, CI/CD) and
  transport security (certificate pinning), rather than concentrating on one theme.

**Experience balance:** Verimi 5 bullets, PakWheels 6 bullets, 11 total. Both sections are
full per the skill's "9 to 11 bullets, Verimi 4-5, PakWheels 5-6" guidance. Nothing was padded
with irrelevant technology, every bullet maps to either a named posting requirement or a
cross-cutting senior-signal theme from `experience.md`.

**Cut:**
- Verimi Wallet's own login/registration flow and the SealOne SDK integration. Real and strong,
  but the identity-SDK ownership bullet already carries the AOK/BARMER auth story, and space
  was prioritised for PakWheels given its heavier concentration of named-topic matches.
- Verimi's Design Component SDK and the Claude/Codex spec-driven-development automation as a
  dedicated bullet. SDD is still represented via the sidebar's "AI Tools Skills" block per the
  standing instruction to keep it on every iOS posting.
- PakWheels: the 40% CocoaPods-to-SPM build improvement, mentoring one junior developer, and
  A/B testing via Firebase. All are real and all trace to `experience.md`, none were needed to
  cover the posting's named topics.

**Changed at review, and this one matters.** The first draft cut the crash-free score, the code
reviews and the interviewing, and kept the PakWheels Jenkins/Fastlane pipeline bullet. That was
the wrong trade for this posting. `application-review` caught it: every bullet was architecture,
feature or CI work, and nothing showed a habit of judging whether code is good. This role's actual
day-to-day is writing reference answers on iOS topics, ranking AI-generated answers and catching
subtly wrong ones, and the scored record itself names code review, interviewing and the crash-free
record as the genuine non-generic angle for it. Carrying two CI/CD stories, Verimi's xcframework
bullet and PakWheels' Jenkins one, while carrying none on quality judgement, was a real defect.

The Jenkins/Fastlane bullet was therefore swapped out for two:

- *Held a crash-free user score above 99% across both apps while cutting launch time by 20%.*
- *Ran refactoring initiatives and peer code reviews, and interviewed candidates for the iOS team.*

CI/CD is still covered by Verimi's xcframework automation bullet, so nothing was lost on that
front. Interviewing is in there deliberately: assessing other people's work against a standard is
the closest evidenced analogue to what this job actually pays for.

## Terminology mirrored

In the **main-column bullets**: `Ausweis SDK`, `certificate pinning`, `async/await`, `identity SDK`,
`UIKit`, `SwiftUI`, `xcframework`, `CI`, `Objective-C`, `Swift`, `Storyboards`, `MVC`, `Combine`,
`Core Data`, `CarGenerations`, `user session layer`, `access token`, `code reviews`, `crash-free`.

## Terminology deliberately not in the main column

**Keep this out of the section above.** `check_claims()` in `scripts/check-style.py` captures every
backticked term from the "Terminology mirrored" heading until the next `##`, and asserts all of them
appear in the main column. Anything sidebar-only or absent has to live under its own heading, or the
checker fails on an accurate note. That is a checker limitation, not a rule about the CV.

Sidebar-only, not claimed above: GCD, URLSession, XCTest, Objective-C interop, and Certificate
pinning as its own row.

Absent entirely: Jenkins, pull request and QR code were main-column terms in the first draft and
left the document when the Jenkins pipeline bullet was swapped out at review. Fastlane survives as
a sidebar row only.

**Metrics worth adding:**
- The identity-SDK ownership bullet ("Own the identity SDK that AOK and BARMER each integrate
  on their own release schedule...") would be stronger with a real number: how many release
  cycles or years the SDK has been in production, or a combined user count across both host
  apps if Farrukh has one.
- The Objective-C to Swift migration bullet has no scale figure. A file count, screen count, or
  percentage of the codebase migrated would turn "led the migration" into a measured claim, the
  way the SPM migration already has its 40%.
- The Storyboards-to-SwiftUI migration bullet is in the same position: no number for how many
  screens or how long the two-stage migration took.
- The PakWheels Jenkins/Fastlane pipeline bullet has a mechanism but no outcome number, unlike
  the Verimi CI bullet's "halved." If Farrukh can recall roughly how much manual QA/review time
  the OTA-QR-code step removed per pull request, that would close the asymmetry between the two
  CI stories.

**Gaps not closed:**
- **Keychain is forbidden and correctly absent everywhere**, including the sidebar. It was
  claimed once, then directly contradicted by the source (`UserManager` stores every token in
  `UserDefaults`, and a full repo sweep found no Keychain call anywhere). If a screen asks about
  secure credential storage, the honest answer is that he has seen exactly this anti-pattern in
  production and knows why Keychain is the right home for it.
- **No evidenced AI data-training, annotation, or output-ranking experience.** This is "Preferred"
  on the posting, not required, but it is the actual day-to-day of the role, and nothing on the
  profile evidences it. The CV cannot manufacture this, and the letter is the place to make the
  honest adjacent case (code review, mentoring, technical interviewing, and a crash-free record
  above 99% all involve judging whether iOS code is good, which is the closest real analogue).
- **Instruments-based leak detection is unevidenced and, by its nature as a profiling tool, can
  never be settled from source.** Left off the CV entirely. If a screen puts memory profiling at
  the centre, this needs a direct answer from Farrukh, not an inference from years of iOS work.
- **Realm, UI testing, mocking strategies, and privacy-permissions handling** are not evidenced
  anywhere in `skills.md` and do not appear on this CV.
- **URLSession is listed but genuinely thin**: one bridging use into Combine for image loading,
  with Alamofire carrying the real networking stack. It appears in the sidebar because the
  posting names it directly and the rating is `listed` rather than `ask`, but no bullet claims
  depth in it, and an interviewer pushing on raw URLSession usage needs the honest scoping above.
- **ARC is not a named skill anywhere in `skills.md`** and does not appear as a sidebar row. The
  closest evidenced adjacent fact is the `[weak self]` discipline in the PakWheels Combine work,
  which is not surfaced as a separate claim here to avoid stretching a memory-management skill
  that was never confirmed as its own line.
- **Employment model is unresolved.** The research brief's only leads (unverified, SUMMARY grade)
  point toward hourly, project-based contractor work paid via Deel, not salaried employment. Not
  a CV content gap, but Farrukh should walk into any contact with this in mind.

**Page count:** Not rendered by this agent (no shell access). Run
`./scripts/render-cv.sh sme-careers-ios-engineer` next. If it reports `UNDERFILL` or an
overflow, use the ordered add/cut lists above before touching anything else.
