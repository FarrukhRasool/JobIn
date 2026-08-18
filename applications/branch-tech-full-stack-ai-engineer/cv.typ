// CV for Branch Tech, "Full Stack AI Engineer" (agency posting for an unnamed EV-sector
// client, per jobs/research/branch-tech-full-stack-ai-engineer.md). Track: ai-engineer.
// Assembled against jobs/scored/branch-tech-full-stack-ai-engineer.md from
// profile/skills.md, profile/experience.md, profile/education.md and profile/projects.md.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "Full Stack AI Engineer",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")
    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Python | FastAPI",
      "SQLAlchemy | REST APIs",
      "JWT Auth | MongoDB",
      "React | Node.js",
      "Express | MCP Servers",
      "Ollama | Mistral",
      "CI/CD | Jenkins",
      "Design Patterns | Git",
      "Modularisation | Scrum",
      "Swift | SwiftUI",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "SDD | Sub Agents",
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
    [Automated spec-driven development across Claude and Codex, taking each feature from a written spec through implementation to a code review.],
    [Own the identity verification SDK integrated separately into AOK and BARMER, holding one API surface to two insurers' own conventions and release cycles.],
    [Halved TestFlight build time by automating xcframework creation in the CI/CD pipeline, removing a manual packaging step from every release.],
    [Built Verimi's Design Component SDK with the design team, adopted into both the Wallet app and AOK to keep the two codebases visually consistent.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Led PakWheels' migration from Objective-C to Swift, modernising the shared codebase behind both the Classified and Dealers apps.],
    [Built the shared authentication layer for both PakWheels apps, injecting tokens into every request and handling both logged-in and anonymous sessions.],
    [Built a Jenkins pipeline that calls Fastlane to turn every pull request into a signed staging build, shared as a QR code on the PR and its Jira ticket.],
    [Migrated CocoaPods to Swift Package Manager for a 40 percent build time improvement, then split the Component Library into its own framework.],
    [Held a crash-free user score above 99 percent across the Classified and Dealers apps.],
    [Ran Firebase A/B tests behind feature flags, measuring lead conversion rate between variants to inform product decisions.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI :* Built an MCP server and FastAPI backend where an LLM planning step chooses whether to generate a story, pull one from Project Gutenberg or blend both.],
    [Added a deterministic fallback for when that reasoning fails, running local inference through Ollama and Mistral so no data leaves the machine.],
    [Layered the backend into routers over services over models, with JWT authentication and SQLAlchemy persistence for each user's story history.],
    [Integrated a native iOS client with the backend, surfacing which source the LLM picked for every story it returned.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (
    [*Online Hotel Reservation System :* Full stack booking platform built with the MERN stack, React and Node.js.],
  ),
)
