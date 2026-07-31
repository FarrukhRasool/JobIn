// Tailored for Kira (BJAK), Mobile Engineer - AI Finance Agent. Generated from profile/master-cv.typ.
// Track: ios-developer. Do not hand-edit, regenerate from the master.
//
// Deliberately angled away from applications/bjak-ios-developer/cv.typ (same employer,
// applied 2026-07-30). That CV led on iOS platform craft. This one leads on
// consumer-scale mobile product work and regulated insurance/fintech adjacency,
// since the posting's core ask is "shipping production apps used by real users"
// across insurance, payments, claims and renewals.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "Mobile Engineer",
  photo: "/profile/assets/cropped.png",
  sidebar: [
    #side-head("Contact")
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")
    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Swift | Objective-C",
      "SwiftUI | UIKit",
      "SDKs | SPM | Cocoa Pod",
      "Firebase | Crashlytics",
      "CI/CD Pipelines",
      "Reactive Programming | Combine",
      "Design Patterns | MVVM",
      "SOLID Principles | Unit Testing",
      "Clean Code Architecture",
      "Git | Github",
      "Scrum | Kanban",
      "Machine Learning | Deep Vision",
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
    [Shipped features on *AOK* and *BARMER*, two of Germany's largest insurance apps used by millions of people.],
    [Built *SDKs* for the identity verification flows used by enterprise clients.],
    [Built *CI/CD pipelines* that cut build times and streamlined releases.],
    [Automated *Spec-Driven Development (SDD)* for iOS across multiple LLMs, accelerating feature delivery.],
    [Migrated the *Verimi Wallet* app from *UIKit* to *SwiftUI*, focused on accessibility and user experience.],
    [Built a shared *Design Component Library* with designers that sped up delivery and kept the apps consistent.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "IOS Developer",
  bullets: (
    [Built features in *SwiftUI* and *UIKit* for a production app used by millions of people, with reactive programming and programmatic views.],
    [Ran *A/B tests* and *feature flags* in Firebase to test changes on real users before a full rollout.],
    [Cut build times by *40%* by migrating dependency management from *CocoaPods* to Swift *SPM*.],
    [Built a modular architecture for multi-target apps using *xcframeworks* and local *SDKs*.],
    [Ran peer *code reviews* and helped set the team's standards for *clean code architecture*.],
    [Worked within *Scrum* and *Kanban* frameworks in iterative sprints.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Embedded Intelligence :* Indoor Navigation Mobile App (BLE signal).],
    [*Autonomous Robot :* RosBot, maze navigation using SLAM.],
    [*Deep Vision :* Image classification using CNNs and Vision transformers.],
    [*Scene Detection :* Deep Vision application built for smart home systems.],
    [*Agentic AI :* iOS application with interacting AI agents who tell stories.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (
    [Online Hotel Reservation System : MERN stack.],
    [Scientific Calculator : Android Mobile application using JAVA.],
    [Point of Sale : Developed in .NET, using WPF.],
    [Maze Runner Game : Developed in C++ using MFC.],
  ),
)
