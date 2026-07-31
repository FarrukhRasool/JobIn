// Tailored for Avelios Medical, Working Student iOS Developer, Munich.
// Track: ios-developer. Assembled from profile/ sources.
//
// Regenerated 2026-07-30 after experience.md, skills.md and education.md were written.
// The first version predated them and could not show the security, accessibility or
// product-quality evidence this posting actually asks for.
//
// JD signals driving this: SwiftUI is the ONLY technology named. "Design, test, deploy
// and maintain components". "Secure, high-performance engineering". "UX, accessibility
// and overall product quality". "Clinical context". "GitHub contributions are a plus".

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "iOS Developer",
  photo: "/profile/assets/cropped.png",
  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool816@gmail.com")[farrukhrasool816\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Munich, Germany")
    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      // SwiftUI first: the only technology the posting names.
      "SwiftUI | Swift",
      "UIKit | Objective-C",
      "Accessibility | UI/UX",
      "Unit Testing | Code Reviews",
      "Secure Data | Cert Pinning",
      "Design Patterns | MVVM",
      "SOLID | Clean Architecture",
      "CI/CD | Fastlane | TestFlight",
      "Crashlytics | Firebase",
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
  role: "iOS Developer (Working Student)",
  bullets: (
    [Ship features into *AOK* and *BARMER*, two of Germany's largest health insurance iOS apps used by millions.],
    [Migrated *BARMER* and Verimi Wallet from *UIKit* to *SwiftUI*, with *accessibility* and usability as the stated goals.],
    [Built eID card scanning for identity verification using the *Ausweis SDK* and *SwiftUI*.],
    [Implemented *certificate pinning* on BARMER's TAK libraries, and handle *secure data* across the identity *SDKs*.],
    [Built a *Design Component SDK* with designers, adopted by the Verimi Wallet app and AOK.],
    [Automated *xcframework* creation in the *CI/CD* pipelines, halving *TestFlight* build time.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Held a crash-free user score above *99%* while cutting app launch time by *20%*.],
    [Designed, tested and shipped features in *SwiftUI* and *UIKit* to a production app used by millions.],
    [Automated releases with *Fastlane* through *TestFlight* to the *App Store*.],
    [Shipped safely behind *feature flags* and used *A/B tests* in Firebase to measure lead conversion.],
    [Ran *code reviews*, set the team's *clean code architecture* standards and mentored a junior developer.],
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
    [*Scientific Calculator :* Android Mobile application using JAVA.],
    [*Online Hotel Reservation System :* MERN stack.],
    [*Point of Sale :* Developed in .NET, using WPF.],
    [*Maze Runner Game :* Developed in C++ using MFC.],
  ),
)
