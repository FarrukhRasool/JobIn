# Tesla, Software Engineer, Robot Perception & Vehicle Integration

Researched: 2026-08-12
Sources:
- https://www.linkedin.com/jobs/view/4440599288/ (the posting itself, via jobs/inbox)
- https://en.wikipedia.org/wiki/Gigafactory_Berlin-Brandenburg
- https://www.electrive.net/2026/07/22/mein-kollege-der-roboter-optimus-lernt-von-tesla-mitarbeitern-in-gruenheide/
- Six tesla.com/careers job URLs found via search index, titles only (see note)

**Access note**: every tesla.com page attempted this session (giga-berlin, the careers search, two individual job pages) returned HTTP 403 to the fetch tool. Nothing on tesla.com could be read directly. Job titles and URLs below came from the search index only, so they are graded REPORTED (a live posting exists at that URL) rather than VERIFIED (body read).

## What they do
Tesla builds electric vehicles, batteries and energy products. Gigafactory Berlin-Brandenburg in Grünheide is its first European manufacturing site, producing the Model Y.

## Stage and size
Public company (NASDAQ: TSLA). The Grünheide site employed roughly 11,500 people as of October 2023 (**REPORTED**, Wikipedia, over two years stale). Annual capacity target is 500,000 vehicles. As of August 2025 output was still around half that (**REPORTED**, Wikipedia). Further site expansion was on hold as of 2024-2025 pending market conditions (**REPORTED**, Wikipedia).

## Tech stack
From the posting: C, C++, Python, Linux/real-time Linux, ROS 2, stereo/RGB-D cameras, camera and hand-eye calibration, WebRTC for teleoperation (**VERIFIED**, the posting). A separate open req at the same site is titled "Software Engineer – Golang," so Go is used somewhere on campus, not necessarily on this team (**REPORTED**, title only).

## Vision and direction
The posting describes a warehouse/intralogistics function: perception for pallet handling without per-SKU models, pose estimation, fiducial reading, teleoperation, and vehicle-to-fleet agents for WMS/FMS (**VERIFIED**, the posting). A search-engine answer paragraph, not a page I could open, described a separate, more senior opening at the same site, "Staff Robotics Software & Systems Architecture," as owning "the autonomy for a reach truck to operate unmanned across warehouse operations." **SUMMARY grade, a search synthesis, not a source. Do not use downstream.** If true, this posting likely sits inside a small internal team building autonomous reach trucks for in-plant material handling, but that reading needs re-checking before it reaches a score or letter.

Very unlikely to be Optimus. Recent reporting (**REPORTED**, electrive.net, 22 July 2026) describes Optimus at Grünheide as a separate, early-stage effort: employees wearing body cameras to capture movement data, no deployment schedule set, units still in pilot production in California. Nothing ties Optimus to warehouse pallet handling or fiducial perception.

## The role in context
Whether this is a new team or a backfill could not be confirmed, tesla.com was unreachable. The site has several other open automation/robotics roles: two "Automation & Robotics Engineer, General Assembly" postings, a "Senior Robotics Engineer," a German-language "Robot Programmer/Automation Technician" role in the paint shop, an electrician/automation technician maintenance role in the body shop, and a Staff Software QA Engineer (**REPORTED**, titles and live URLs only, bodies unread). This spread suggests Tesla runs automation engineering in-house at this site rather than outsourcing it (**INFERRED**, from the number and spread of concurrent postings).

## Location and work model
Grünheide, Brandenburg, at the Gigafactory site (**VERIFIED**, the posting). Work model not stated. Perception work on a physical robot typically needs floor access, so on-site is likely (**INFERRED**, not stated in the posting).

## Culture and engineering practice
English is stated explicitly as the team's working language (**VERIFIED**, the posting), contrasting with the German-language title of the paint-shop robot programmer role, suggesting shop-floor roles run in German while this engineering role does not (**INFERRED**, comparing titles). Nothing else about engineering practice could be verified without tesla.com, inaccessible this session.

## For the cover letter
**Only the second bullet below is usable. Read the warning on the first.**

- **DO NOT USE.** The half-capacity and expansion-on-hold figures are recorded in Stage and size above for context, and they are not letter material. Opening a cover letter by telling an employer their plant is underused reads as tone deaf, and the source is Wikipedia rather than Tesla. Left here only so nobody rediscovers it and reaches for it.
- Tesla has multiple concurrent automation/robotics openings at this one site right now, spanning General Assembly, Paint Shop and body-shop maintenance alongside this perception role, consistent with active in-house automation investment rather than one isolated hire (**REPORTED**, live tesla.com URLs found via search index).
- Optimus is a **separate programme** and is not what this role is. Per recent German reporting it is still confined to employee movement-data collection at this site with no deployment date (**REPORTED**, electrive.net, 22 July 2026). This is context for Farrukh rather than a line for the letter. Its value is negative: it stops a letter congratulating Tesla on humanoid robots when the job is factory logistics perception.

## Concerns
- tesla.com returned 403 on every page attempted this session, so the "programme" picture here is thin, none of Tesla's own pages could be read.
- The one detailed description of the likely parent team (Staff Robotics Software & Systems Architecture) is SUMMARY grade only and must be re-verified before use in scoring or the letter.
- Site expansion is reportedly on hold and output sits below target, a general caution signal, though it says nothing specific about this team's headcount plans.

## Open questions
- Is this role part of the same team as the Staff Robotics Software & Systems Architecture posting, and is that team new or existing? Not confirmed.
- Who does this role report to and how many people are on the team today? NOT FOUND.
- Is ROS 2 genuinely central to Tesla's in-house robotics stack, or a thin interop layer? Only the posting confirms ROS 2 (**VERIFIED**). No second Tesla source could be fetched this session to corroborate or contradict it, so treat broader ROS 2 usage as **NOT FOUND**.
- What is "the vehicle" in the role title, an autonomous reach truck/forklift fleet or something else? SUMMARY grade, not a source, must be re-verified before use.
- Work model (on-site/hybrid) and the exact employing legal entity: NOT FOUND, posting is silent.
