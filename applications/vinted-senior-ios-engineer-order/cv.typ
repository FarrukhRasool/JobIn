// Vinted, Senior iOS Engineer, Order
//
// Scored 84/100, apply with standard tailoring. Track: ios-developer.
// Technical fit 33/40, company fit 14/15, the strongest company fit in the
// pipeline to date.
//
// This is a platform-flavoured product role inside a consumer marketplace,
// so the CV opens on the same theme the posting itself opens on: a shared
// DSKit, a decoupled and modular codebase, and automated PR workflows. The
// Verimi block leads with the Design Component SDK he built with designers
// and shipped into two apps, the direct answer to "deliver features using
// the shared DSKit", then the identity SDK integrated separately by AOK and
// BARMER, the sharpest answer on the profile to hidden coupling and
// systemic risk. PakWheels leads with the modular architecture and the
// CocoaPods to Swift Package Manager migration, the Storyboards through
// UIKit to SwiftUI arc, the Firebase feature-flag and A/B testing work, and
// the Jenkins and Fastlane pipeline that turns a GitHub pull request into an
// installable build. Mentoring, crash-free rate and launch time close it
// out. Tuist, Sourcery, Clean Swift, SwiftLint, SwiftFormat and Danger are
// all named in the posting and none of them appear anywhere below, per the
// gap analysis in notes.md.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "Senior iOS Engineer, Order",
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
      "Swift | SwiftUI | UIKit",
      "async/await | MVVM",
      "SPM | CocoaPods",
      "xcframeworks | Modularisation",
      "CI/CD | Jenkins | Fastlane",
      "Feature flags | A/B testing",
      "Firebase | SDKs",
      "Clean Code Architecture",
      "Design Patterns | Code Reviews",
      "XCTest | Mentoring",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex | SDD",
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
    [Built Verimi's Design Component SDK with designers, now shipping inside the Wallet and AOK apps.],
    [Own the identity verification SDK that AOK and BARMER integrate separately, each on its own release schedule outside Verimi's control.],
    [Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI, with accessibility as the stated goal on the Wallet.],
    [Built the Verimi Wallet's login and registration flow end to end using async/await.],
    [Integrated BARMER's own Design Component SDK into their app, working inside a design system somebody else owned.],
    [Halved TestFlight build time by automating xcframework creation inside Verimi's CI/CD pipeline.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Moved PakWheels toward a modular architecture by extracting the Component Library, Localization and Assets into separate frameworks.],
    [Cut build times 40% by replacing CocoaPods with Swift Package Manager.],
    [Took the UI layer from Storyboards through programmatic UIKit to SwiftUI in stages, without stopping delivery on a product used by millions.],
    [Ran Firebase A/B tests behind feature flags, using lead conversion metrics to guide product decisions.],
    [Built a Jenkins pipeline that calls Fastlane to turn every GitHub pull request into a signed staging build, published as a QR code on the pull request and the Jira ticket.],
    [Held crash-free users above 99% while cutting app launch time 20%.],
    [Ran peer code reviews promoting knowledge sharing, plus refactoring work for code quality.],
    [Mentored one junior developer and interviewed engineering candidates for PakWheels.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.],
    [*Embedded Intelligence :* Indoor Navigation Mobile App (BLE signal).],
    [*Agentic AI :* iOS application with interacting AI agents who tell stories.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
