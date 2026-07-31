// Tailored for SumUp, iOS Engineer - Mobile Platform, Berlin.
// Track: ios-developer. Assembled from profile/ sources, not copied from the skeleton.
//
// This posting is a PLATFORM role, not a feature role. Their words: "the foundational
// layer for SumUp's iOS engineering", "frameworks and infrastructure that feature teams
// depend on", "developer experience and engineering excellence rather than direct
// merchant-facing features".
//
// So both employers are led by what was built FOR OTHER ENGINEERS, and by codebase
// modernisation, rather than by shipped features. That is the opposite emphasis from
// every previous application.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "iOS Engineer",
  photo: "/profile/assets/cropped.png",
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
      // Platform-first ordering. Tooling and architecture above UI work.
      "Swift | Objective-C",
      "SwiftUI | UIKit | Xcode",
      "SDKs | SPM | CocoaPods",
      "xcframeworks | Modularisation",
      "CI/CD | Fastlane",
      "TestFlight | App Store",
      "Unit Testing | Code Reviews",
      "Design Patterns | MVVM",
      "SOLID Principles",
      "Clean Code Architecture",
      "async/await | Combine",
      "Git | Github | Jira",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "Sub Agents | SDD",
      "MCP Servers",
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
    [Own the identity verification *SDK* consumed separately by *AOK* and *BARMER*, one API surface across two enterprise apps neither team controls.],
    [Built a *Design Component SDK* with designers, adopted by Verimi Wallet and AOK.],
    [Automated *xcframework* creation in the *CI/CD* pipelines, halving *TestFlight* build time.],
    [Built internal *developer tooling* that automates *Spec-Driven Development* across *Claude* and *Codex*, writing specs, implementing them and reviewing the changes.],
    [Cleared technical debt by migrating *BARMER* and Verimi Wallet from *UIKit* to *SwiftUI*.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Led the *Objective-C* to *Swift* migration on a mature production codebase, then introduced *SwiftUI* to it.],
    [Modularised the codebase into *xcframeworks*, extracting Localization, Assets and the Component Library so targets shipped independently.],
    [Cut build times by *40%* by moving dependency management from *CocoaPods* to Swift *SPM*.],
    [Automated releases with *Fastlane* through *TestFlight* to the *App Store*.],
    [Ran *code reviews*, set the team's *clean code architecture* standards and mentored a junior developer.],
    [Held a crash-free user score above *99%* while cutting app launch time by *20%*.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI :* iOS application with interacting AI agents who tell stories.],
    [*Embedded Intelligence :* Indoor Navigation Mobile App (BLE signal).],
    [*Deep Vision :* Image classification using CNNs and Vision transformers.],
    [*Scene Detection :* Deep Vision application built for smart home systems.],
    [*Agent-Based Modeling :* Multiagent system for emergent behaviour.],
    [*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (
    [*Point of Sale :* Developed in .NET, using WPF.],
    [*Maze Runner Game :* Developed in C++ using MFC.],
    [*Scientific Calculator :* Android Mobile application using JAVA.],
    [*Online Hotel Reservation System :* MERN stack.],
  ),
)
