// CV for PAYBACK, Mobile Engineer - iOS. Track: ios-developer.
// Assembled from profile/ sources against jobs/scored/payback-mobile-engineer-ios.md
// and jobs/research/payback-mobile-engineer-ios.md. Do not hand-edit the PDF.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "Mobile Engineer - iOS",

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
      "Combine | Swift Concurrency",
      "Jenkins | Fastlane",
      "MVVM | MVC | SPM",
      "XCTest | Clean Code",
      "Crashlytics | Firebase",
      "A/B Testing | Feature Flags",
      "Modular Architecture",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "Spec-Driven Development (SDD)",
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
    [Own the identity SDK that AOK and BARMER integrate separately, a single modular API surface serving both on release cycles outside Verimi's control.],
    [Built the eID card-scanning identity verification flow for AOK using SwiftUI and Swift Concurrency, handling the network and card-reader calls that run long.],
    [Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI, with accessibility as the stated goal on the Wallet rewrite.],
    [Automated xcframework creation in CI, cutting TestFlight build time in half.],
    [Shipped the Verimi Design Component SDK, built with the design team for consistent UI across the Wallet and AOK apps.],
    [Implemented certificate pinning for the TAK libraries in the BARMER app.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Built the Jenkins pipeline that turned every pull request into an installable staging build, delivered as an OTA QR code in the pull request and the Jira ticket.],
    [Built the used-car advanced search screen with Combine, binding 18 filter dimensions to a staged filter model that derived the selected-filter chips automatically.],
    [Held a crash-free user score above 99%, tracked through Crashlytics on a marketplace with millions of users.],
    [Ran Firebase A/B tests behind feature flags, measuring lead conversion rate to guide product decisions.],
    [Extracted Localization, Assets and the Component Library into separate frameworks that both apps now share.],
    [Migrated the project from CocoaPods to Swift Package Manager, cutting build times by 40%.],
    [Led the Objective-C to Swift migration, modernising the codebase for performance and maintainability.],
    [Ran peer code reviews and refactoring initiatives, holding the codebase to clean code architecture.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI:* iOS application with interacting AI agents who tell stories.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
