// CV tailored for Oliver Bernard, "AI Engineer", Munich.
// Assembled from profile/skills.md, profile/experience.md, profile/education.md
// and profile/projects.md against jobs/scored/oliver-bernard-ai-engineer.md.
// Track: ai-engineer.
//
// Professional Experience leads here, unlike the Hire Feed CV. The posting's first
// requirement is "Strong software engineering experience (mid to lead level)" and the
// track's whole pitch is that the AI work sits on four years of production discipline.

#import "/profile/cv-template.typ": *

#show: cv.with(
  // ---- FIXED ----
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  // ---- VARIES PER APPLICATION ----
  // title:  mirror the posting's job title.
  title: "AI Engineer",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")

    // email: farrukhrasool65@gmail.com by default. Overridable per application.
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])

    // location: the job's city for European roles, Berlin for USA/Canada/Australia.
    #contact-row("/profile/assets/icon-pin.png", "Munich, Germany")

    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Python",
      "MCP Servers",
      "Ollama | Mistral",
      "FastAPI | REST APIs",
      "SQLAlchemy | JWT Auth",
      "Machine Learning",
      "Deep Learning",
      "Git | CI/CD",
      "Swift | SwiftUI",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "Spec-Driven Development (SDD)",
    ))

    #side-head("Languages")
    #v(0.5mm)
    // FIXED. Confirmed from his own CV. Must stay visible on page one.
    #text(font: sidebar-body, size: 10pt, fill: white)[
      English (C1) \
      German (A2)
    ]
  ],
)

#main-head("Professional Experience")

#entry(
  // FIXED: employer, dates.
  org: "Verimi GmbH", dates: "July 2025 - Present",
  // VARIES: "iOS Developer (Working Student)" for student, Werkstudent,
  // internship or dual-study postings. Plain otherwise.
  role: "iOS Developer",
  bullets: (
    [Built a spec-driven development pipeline across the Large Language Model (LLM) coding assistants Claude and Codex, taking each feature from a written spec through implementation to an automated code review before it shipped.],
    [Own the identity verification SDK that AOK and BARMER integrate separately, one API surface serving two insurers on release cycles beyond Verimi's control.],
    [Automated xcframework creation in the build pipeline, halving TestFlight build time.],
    [Own SDK work and release tooling as one of three engineers on the iOS team, with no room to specialise narrowly.],
  ),
)

#entry(
  // FIXED: employer, dates, full time, blurb.
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Led the Objective-C to Swift migration, modernising the two-app codebase for performance and maintainability.],
    [Built and owned UserManager, the session and authentication singleton injecting tokens into every request across both apps.],
    [Built a Jenkins pipeline that orchestrated a Fastlane export for every pull request, posting an installable QR code to the pull request and the Jira ticket.],
    [Held a crash-free user score above 99% while cutting app launch time by 20% and build times by 40% through a CocoaPods to Swift Package Manager migration.],
    [Mentored one junior developer and ran technical interviews, representing PakWheels at university job fairs.],
  ),
)

#main-head("Education", bar: false)

#edu(
  // FIXED.
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI:* Built a Model Context Protocol (MCP) server exposing tools for a multi-step agent workflow. An LLM chooses between generating a story and pulling one from Project Gutenberg, with a deterministic policy behind it when that reasoning fails.],
    [A second LLM pass reads the retrieved text when Gutenberg returns a collection rather than one story and picks the right tale out of it.],
    [The Python backend runs on FastAPI with SQLAlchemy persistence and JWT authentication, serving per-user story history to a native iOS client through a REST API.],
    [*Autonomous Robot:* RosBot maze navigation using Simultaneous Localisation and Mapping (SLAM).],
  ),
)

#edu(
  // FIXED.
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (
    // Default to none. Coursework only, low signal
    // against four years of employment. Include only if the posting names the stack.
  ),
)
