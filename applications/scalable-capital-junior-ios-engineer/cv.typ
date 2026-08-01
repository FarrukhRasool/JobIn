// CV for Scalable Capital, (Junior) iOS Engineer (m/f/x). Track: ios-developer.
// Assembled from profile/cv-skeleton.typ against jobs/scored/scalable-capital-junior-ios-engineer.md
// and jobs/research/scalable-capital-junior-ios-engineer.md. See notes.md for editorial decisions.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "iOS Engineer",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")

    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])

    #contact-row("/profile/assets/icon-pin.png", "Munich, Germany")

    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Swift | UIKit | SwiftUI",
      "Storyboards | Programmatic UI",
      "Certificate pinning | Git",
      "Clean Code Architecture",
      "Design Patterns | Unit Testing",
      "Code Reviews | Accessibility",
      "Legacy migration | SPM",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "Sub Agents | SDD",
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
    [Migrated the BARMER app from UIKit to SwiftUI, with accessibility as the primary goal rather than a side effect.],
    [Implemented certificate pinning on BARMER's TAK libraries to secure network traffic against interception.],
    [Built the eID card scanning verification flow for AOK's iOS app, using the official German Ausweis SDK.],
    [Delivered the Verimi Wallet's login and registration flow end to end, using async/await to handle waits on the network and the card reader.],
    [Designed the identity verification SDK that AOK and BARMER each integrate separately, one API against two release cycles outside Verimi's control.],
    [Automated xcframework creation in CI/CD, halving TestFlight build time.],
    [Built a Design Component SDK with the design team, adopted by Verimi Wallet and AOK.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Migrated the UI layer from Storyboards to programmatic UIKit and Auto Layout, then moved it again to SwiftUI.],
    [Shipped features across two production apps: Classified for consumers and Dealers for the trade.],
    [Ported the PakWheels iOS codebase from Objective-C to Swift, modernising it for performance and maintainability.],
    [Held a crash-free user score above 99% while cutting app launch time by 20%.],
    [Switched dependency management from CocoaPods to Swift Package Manager, cutting build times by 40%.],
    [Ran A/B tests and feature flags through Firebase, measuring lead conversion rate between variants.],
    [Automated releases with Fastlane, shipping builds through TestFlight to the App Store.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI :* iOS application with interacting AI agents who tell stories.],
    [*Embedded Intelligence :* Indoor Navigation Mobile App (BLE signal).],
    [*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.],
    [*Deep Vision :* Image classification using CNNs and Vision transformers.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
