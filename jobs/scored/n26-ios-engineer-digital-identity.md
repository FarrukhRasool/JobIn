---
company: N26
role: iOS Engineer - Digital Identity
source: linkedin
url: https://www.linkedin.com/jobs/view/4450286726/
posted: 2026-08-07
imported: 2026-08-11
location: Vienna, Austria
work_model: hybrid
language: english
seniority: UNKNOWN
---

**This record carries no score and none should be inferred.** N26 Digital Identity ran outside the normal `/intake` to `/score` flow. Farrukh wrote the CV himself and asked for a cover letter directly. This file exists so `scripts/render-letter.sh` can pull `company` and `role` into the letter header, the same way it does for every other application. There is no `## Score` section because none was produced.

`seniority` is UNKNOWN rather than read from the requirements. LinkedIn tags the posting "Entry level" and the requirements contradict that, asking for "demonstrated knowledge and deep understanding of the iOS platform and Swift" plus architectural ownership of the identity layer. No years figure appears anywhere. Left UNKNOWN because nothing was scored off it.

**Second N26 application.** `n26-ios-engineer` was submitted on 2026-08-09 for the Berlin Cards role, first follow-up due 2026-08-16. This is a separate requisition in a different city and a different domain.

## Requirements

"Demonstrated knowledge and deep understanding of the iOS platform and Swift."

"Experience with iOS security frameworks, biometric APIs (LocalAuthentication), Keychain, or equivalent."

"The ability to showcase your experience with a variety of iOS frameworks, including networking, UI, and testing."

"Experience working in an Agile development environment, ideally on authentication, identity, or security-adjacent features."

"An excellent debugger with strong analytical skills, session and device-layer bugs require patience and rigour."

"Proficiency with tools like Jira and TestRail for issue tracking and test case management."

"Full professional proficiency in English"

## Responsibilities

"Build and maintain iOS authentication flows, including biometric login (Face ID/Touch ID), session stability, and device management, used by millions of N26 customers."

"Take co-ownership of the iOS codebase within the Digital Identity domain, working closely with the existing iOS engineer to grow shared coverage and resilience."

"Integrate and maintain third-party mobile SDKs (e.g. biometric authentication, security tooling) and own the upgrade and reliability cycle."

"Collaborate with Android and Backend engineers on cross-platform identity features, contributing to API design and shared testing infrastructure."

"Drive iOS regression testing quality, including Testrail suite maintenance and automated test coverage, as a first-class engineering concern."

"Use your platform knowledge to make architectural decisions for the iOS identity layer and tackle complex problems around security, performance, and stability."

"Work with Product and stakeholders to shape the roadmap for the iOS experience within the Digital Identity domain."

## Tech stack

Swift, Face ID, Touch ID, LocalAuthentication, Keychain, Jira, TestRail

## Notes

**Keychain must not be claimed.** The requirement is disjunctive, "LocalAuthentication, Keychain, or equivalent", and the regulated identity work answers it. `profile/experience.md` line 260 records that Keychain was claimed once and then contradicted by a full-repo sweep of the PakWheels source: every stored value goes through `UserDefaults.standard`, no Keychain call exists anywhere and no Keychain pod is in the Podfile.

**Biometric login, Face ID, Touch ID, LocalAuthentication, device management and session stability appear nowhere in `profile/`.** Farrukh's own CV for this posting claims authentication flows "including biometric login, session stability, and device management" for BARMER and AOK, wording that closely mirrors the posting's first responsibility. He is the authority on his own experience, and VIPER, TDD, MERN and React were all real despite being absent from the pool. This is flagged as unrecorded rather than doubted, and it is deliberately absent from the letter until he confirms it.

**TestRail** is named in both a requirement and a responsibility and is evidenced nowhere. Jira and Confluence are `listed` in `skills.md`.
