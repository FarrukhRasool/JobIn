// CV for PATRIZIA SE, AI Engineer (m/f/d). Track: ai-engineer.
//
// Leads with the Verimi Claude/Codex spec-driven development automation, the
// posting's own named technology, then the regulated German identity and
// security work as the answer to its governance requirement. Bedtime Story
// Teller carries the agent orchestration and guardrail argument under
// Education. Cloud, Azure, RAG, Databricks, Bizagi and UIPath are real gaps
// for this posting and are not claimed anywhere below.
//
// Assembled against profile/skills.md, profile/experience.md,
// profile/education.md and profile/projects.md. Structure from
// profile/cv-skeleton.typ, layout from profile/cv-template.typ.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "AI Engineer",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Augsburg, Germany")
    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Python | FastAPI",
      "REST APIs | JWT Auth",
      "SQLAlchemy | Unit Testing",
      "Machine Learning | Deep Learning",
      "Git | GitHub",
      "CI/CD | Jenkins",
      "Swift | SwiftUI",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex | SDD",
      "MCP Servers",
      "Ollama | Mistral",
    ))

    #side-head("Languages")
    #v(0.5mm)
    #text(font: sidebar-body, size: 10pt, fill: white)[
      English (C1) \
      German (A2)
    ]
  ],
)

#main-head("Professional Experience")

#entry(
  org: "Verimi GmbH", dates: "July 2025 - Present",
  role: "iOS Developer",
  bullets: (
    [Automated spec-driven development across Claude and Codex, turning a written spec into implementation and review before any code reaches a pull request.],
    [Own the identity verification SDK integrated separately by AOK and BARMER, one API surface running against two insurers' independent release cycles.],
    [Implemented certificate pinning on BARMER's TAK libraries, securing network transport inside a regulated German health insurance app.],
    [Built eID card scanning on AOK and the Verimi Wallet using the official German Ausweis SDK.],
    [Halved TestFlight build time by automating xcframework creation in the CI/CD pipeline, removing a manual step from every release.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Ran Firebase A/B tests measuring lead conversion rate, feeding the results directly into product and commercial decisions.],
    [Built a Jenkins pipeline that calls Fastlane to turn every pull request into a signed staging build, published over the air as a QR code.],
    [Owned the session and authentication layer shared by two production apps, injecting tokens into every request across logged-in and anonymous paths.],
    [Held a crash-free user score above 99% across two production apps with millions of combined users.],
    [Led the Objective-C to Swift migration on a marketplace app used by millions, modernising the codebase for performance and maintainability.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI :* Built a Model Context Protocol (MCP) server exposing tools to an AI storytelling app, with an LLM planning step that picks its own source and a deterministic fallback policy for when that reasoning fails.],
    [Built the Python and FastAPI backend structured as routers over services over models, with JWT auth and SQLAlchemy persistence for per-user history.],
    [Automated test suite spanning API, service and integration layers.],
    [Local LLM inference through Ollama running Mistral, so nothing leaves the machine for a children's product.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
