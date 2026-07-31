// Tailored for BJAK, iOS Developer. Generated from profile/master-cv.typ.
// Track: ios-developer. Do not hand-edit, regenerate from the master.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "iOS Developer",
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
      "async/await | Combine",
      "iOS Architecture | MVVM",
      "Design Patterns | SOLID Principles",
      "Unit Testing | Clean Architecture",
      "SDKs | SPM | Cocoa Pod",
      "CI/CD | Fastlane",
      "Machine Learning | Deep Vision",
      "Git | Github",
      "Scrum | Kanban",
    ))

    #side-head("AI Tools Skills")
    #side-list((
      "Claude | Codex",
      "Sub Agents | SDD",
      "MCP Servers",
      "Plugins | Hooks",
    ))

    #side-head("Languages")
    #v(0.5mm)
    #text(font: sidebar-body, size: 9pt, fill: white)[
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
    [Built the *SDKs* behind *identity verification* and onboarding for enterprise clients, covering *authentication* and *secure data handling* end to end.],
    [Migrated the *Verimi Wallet* app from *UIKit* to *SwiftUI* and improved *accessibility* across the app.],
    [Shipped features to *AOK* and *BARMER*, two of Germany's largest insurance iOS apps serving millions of *production* users.],
    [Built a shared *Design Component Library* with product and design, so teams stopped rebuilding the same screens in three places.],
    [Set up *CI/CD pipelines* that cut build and release times and made deployments repeatable.],
    [Automated *SDD* implementation for iOS across several *LLMs*, shortening the time to ship a feature.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "IOS Developer",
  bullets: (
    [Shipped features in *SwiftUI* and *UIKit* to a *production* app used by millions, using reactive programming and programmatic views.],
    [Cut build times by *40%* by moving dependency management from *CocoaPods* to Swift *SPM*.],
    [Split the app into a modular architecture with *xcframeworks* and local *SDKs*, so several targets could ship independently.],
    [Used *A/B tests* and *feature flags* in Firebase to decide what shipped next from production data.],
    [Reviewed peers' code and drove the team's *clean code architecture* standards.],
    [Worked in *Scrum* and *Kanban* sprints alongside product, design and backend.],
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
    [*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.],
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
