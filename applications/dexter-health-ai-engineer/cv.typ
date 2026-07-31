// Tailored CV for dexter health GmbH, AI Engineer (LLM) - Remote.
// Generated from /profile/master-cv.typ. Track: ai-engineer.
// Never edit /profile/master-cv.typ from here; this is the copy.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "AI Engineer (LLM)",
  photo: "/profile/assets/cropped.png",
  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Cologne, Germany")
    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Python | FastAPI",
      "Machine Learning | Deep Vision",
      "OpenCV | CNN | ViT",
      "Design Patterns | MVVM",
      "SOLID Principles | Unit Testing",
      "Clean Code Architecture",
      "Git | Github | CI/CD",
      "Scrum | Kanban",
      "Swift | SwiftUI",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "Sub Agents | SDD",
      "MCP Servers",
      "Plugins | Hooks",
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
  role: "IOS Developer",
  bullets: (
    [Automated *Spec-Driven Development (SDD)* for iOS across multiple *Large Language Models (LLMs)*, such as *Claude* and *Codex*, to speed up feature delivery.],
    [Implemented *CI/CD pipelines* for build deployments, reducing build times and streamlining the *deployment process* for releases.],
    [Developed *SDKs* powering the identity verification flows for enterprise clients.],
    [Developed features on two of the largest *German* insurance iOS apps *AOK* and *BARMER*, with millions of live users.],
    [Migrated the *Verimi Wallet* app from UIKit to SwiftUI, with a primary focus on *accessibility* and user experience.],
    [Collaborated closely with designers on a *Design Component Library*, increasing development speed and consistency across the apps.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars, covering millions of live users.],
  role: "IOS Developer",
  bullets: (
    [Migrated the dependency management system from *CocoaPods* to Swift *SPM*, improving build performance by *40%*.],
    [Designed and implemented modular architecture for multi-target applications through *xcframeworks* and local *SDKs*.],
    [Conducted peer *code reviews*, promoting knowledge sharing and technical discussion on *clean code architecture*.],
    [Implemented multiple *A/B tests* and *feature flags* using Firebase.],
    [Built new features using both *SwiftUI* and *UIKit*, combined with reactive programming and programmatic views.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [Agentic AI: *Model Context Protocol (MCP)* server running a self-hosted, *open-source LLM* (Ollama, Mistral), with an LLM planning step and deterministic *fallback logic*.],
    [Autonomous Robot: RosBot navigating an unseen maze using *SLAM (Simultaneous Localisation and Mapping)*.],
    [Deep Vision: Image classification using CNNs and Vision transformers.],
    [Agent-Based Modeling: Multiagent system for studying emergent behaviour from the interactions between agents.],
    [Scene Detection: Deep vision application built for smart home systems.],
    [Embedded Intelligence: Indoor navigation mobile app using BLE signal.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (
    [Online Hotel Reservation System : MERN stack.],
  ),
)
