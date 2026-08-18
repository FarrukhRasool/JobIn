// CV tailored for Hire Feed, "ML Engineer (Remote)".
// Assembled from profile/skills.md, profile/experience.md, profile/education.md
// and profile/projects.md against jobs/scored/hire-feed-ml-engineer.md.
// Track: ai-engineer.

#import "/profile/cv-template.typ": *

#show: cv.with(
  // ---- FIXED ----
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  // ---- VARIES PER APPLICATION ----
  title: "ML Engineer",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")

    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])

    // Location: Canada is on the USA/Canada/Australia list, so Berlin, Germany.
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")

    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Python",
      "PyTorch | TensorFlow | Keras",
      "Machine Learning",
      "Deep Learning | CNN | ViT",
      "Ollama | Mistral",
      "FastAPI | REST APIs | JWT auth",
      "SQLAlchemy | Unit Testing",
      "Git | GitHub | CI/CD",
      "Swift | SwiftUI",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "SDD",
    ))

    #side-head("Languages")
    #v(0.5mm)
    #text(font: sidebar-body, size: 10pt, fill: white)[
      English (C1) \
      German (A2)
    ]
  ],
)

// Education leads on this one. The track is ai-engineer and every ML claim on the
// profile is M.Sc. or project work, so the evidence the posting asks for sits here,
// not in the employment history. Bar goes on the first section, per the house
// convention in profile/cv-skeleton.typ.
#main-head("Education")

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Deep Vision:* Image classification comparing Convolutional Neural Networks (CNNs) and Vision Transformers, built in *TensorFlow* and *PyTorch*.],
    [*Agentic AI:* FastAPI backend that decides whether to generate a bedtime story or retrieve one from Project Gutenberg. Layered as routers over services over models with a Model Context Protocol (MCP) server. Test suite spans API, services and integration. Local inference runs through *Ollama* and *Mistral*.],
    [*Autonomous Robot:* RosBot maze navigation, a pure *Python* Webots controller running *FastSLAM 2.0* across 30 particles. Mapping runs on a background thread at 10 Hz against a 32 ms motion control loop.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)

#main-head("Professional Experience", bar: false)

#entry(
  org: "Verimi GmbH", dates: "July 2025 - Present",
  role: "iOS Developer",
  bullets: (
    [Own the *identity SDK* that *AOK* and *BARMER* integrate independently, one API surface against two host apps with separate release cycles.],
    [Halved *TestFlight* build time by automating *xcframework* creation in the CI pipeline.],
    [Automated *spec-driven development (SDD)* across *Claude* and *Codex*, from an implementation spec through to review of the resulting code changes.],
    [Built the *Verimi Design Component SDK* with designers, adopted by the *Verimi Wallet* app and *AOK*.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Led the *Objective-C to Swift* migration, modernising the codebase for performance and maintainability.],
    [Built a *Jenkins* pipeline that calls *Fastlane* to produce a signed staging build per PR, published over the air as a QR code on the PR and the Jira ticket.],
    [Held a crash-free user score above *99%* while cutting app launch time by *20%*.],
    [Cut build times *40%* migrating from *CocoaPods* to *Swift Package Manager*, then modularised the *Component Library* into its own framework.],
    [Ran Firebase *A/B tests* behind feature flags, measuring lead conversion rate between variants to inform product decisions.],
    [Extended the *Core Data* reference model behind the search filters, adding a car generation entity and its relationships.],
  ),
)
