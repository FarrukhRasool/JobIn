// CV for Annapurna, Senior iOS Mobile Engineer - Conversational Platform. Track: ios-developer.
// Agency posting for an unnamed client, no research brief exists (correctly refused by /research).
// Assembled from profile/cv-skeleton.typ against jobs/scored/annapurna-senior-ios-mobile-engineer.md.
//
// The posting's central ask is "Proven experience building and distributing SDKs or modular
// mobile components", so this CV leads with the identity SDK (AOK and BARMER, separately) and
// the Design Component SDK (Verimi Wallet and AOK), then release process (Fastlane, TestFlight,
// App Store) and performance/debugging (crash-free score, launch time, build time). AI is
// deliberately not led with: nothing in the requirements or responsibilities names it. See
// notes.md for full editorial decisions.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "iOS Engineer",

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
      // Every row kept under ~32 characters. Longer rows wrap to a second line,
      // which is what pushed Languages onto page two and made it render white
      // on white. Row count alone is not the constraint, rendered height is.
      "Swift | SwiftUI | UIKit",
      "SDKs | SPM | CocoaPods",
      "xcframeworks | MVVM | MVC",
      "Modularisation | XCTest",
      "Fastlane | TestFlight",
      "App Store | CI/CD | UI/UX",
      "Git | GitHub | async/await",
      "Performance Optimisation",
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
    [Maintain the identity verification SDK both AOK and BARMER integrate into their own release cycles, with no ability to change either host app.],
    [Built a Design Component SDK with Verimi's design team. It now ships inside both the Wallet app and AOK.],
    [Rebuilt the xcframework pipeline into an automated CI step that halved how long TestFlight builds take.],
    [Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI, with accessibility the stated goal on the Wallet.],
    [Built AOK's eID card scanning against the Ausweis SDK. Used async/await to keep the UI responsive during the scan.],
    [Owned the Verimi Wallet's login and registration end to end. Integrated the SealOne SDK for identity checks.],
    [Added certificate pinning to BARMER's TAK libraries to protect network traffic from interception.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Split Localization, Assets and the Component Library out into standalone frameworks shared by the Classified and Dealers apps.],
    [Replaced CocoaPods with Swift Package Manager for dependency management and cut build times by 40%.],
    [Set up the Fastlane pipeline that carries every PakWheels build through TestFlight to the App Store.],
    [Migrated the UI layer from Storyboards to programmatic UIKit, then to SwiftUI.],
    [Led the migration of the PakWheels codebase from Objective-C to Swift.],
    [Held PakWheels above a 99% crash-free user score, alongside a 20% cut in app launch time.],
    [Built the app's xcframeworks and local SDKs into a modular multi-target architecture.],
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
