// YorTeam B.V. (agency listing, end client unnamed), Senior iOS Platform Engineer
//
// Scored 72/100, apply with light tailoring. Track: ios-developer.
//
// Technical fit scored 37/40, the strongest technical match in this pipeline
// to date, and the scorer found no genuine technical gap anywhere in the
// posting. The 72 is held down almost entirely by two things this CV cannot
// change: an 8+ years seniority ask against roughly four years of production
// iOS, and an agency listing with an unnamed end client. Dates are left as
// they are, not padded, not blurred.
//
// This is a platform role, not a feature role, so the CV argues that case
// directly rather than reading as a generic iOS developer CV. It leads with
// the Verimi identity SDK, one API surface integrated separately by AOK and
// BARMER on two release schedules Verimi does not control, the sharpest
// answer anywhere on the profile to "build and maintain shared iOS
// frameworks, SDKs, and developer tools." The rest follows the same thread:
// the Verimi Design Component SDK built with designers and adopted by two
// apps, the PakWheels Component Library, Localization and Assets
// modularisation, the three-codebase legacy modernisation arc (Objective-C
// to Swift and Storyboards to SwiftUI at PakWheels, UIKit to SwiftUI at
// BARMER and the Wallet), and two independent CI/CD stories, one with a
// mechanism and one with a number.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "Senior iOS Platform Engineer",
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
      "Swift Concurrency | SDKs",
      "Modularisation | xcframeworks",
      "CI/CD | Jenkins | Fastlane",
      "SPM | CocoaPods | TestFlight",
      "Legacy Migration | Objective-C",
      "Design Patterns | Code Reviews",
      "Performance Optimisation",
      "Combine | App Store Releases",
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
    [Own the identity verification SDK that AOK and BARMER each integrate on their own terms, one API surface against two release schedules Verimi does not set.],
    [Built the Design Component SDK with Verimi's designers, a set of reusable components the Wallet and AOK both ship.],
    [Halved TestFlight build time by automating how the xcframeworks themselves get built inside the CI/CD pipeline, rather than tuning the build server.],
    [Moved BARMER and the Verimi Wallet off UIKit onto SwiftUI, with accessibility as the stated goal on the Wallet.],
    [Built the Wallet's entire login and registration flow on Swift Concurrency. Separately integrated the SealOne SDK into the same app.],
    [One of three engineers on the iOS team, covering SDK work and release tooling with no room to specialise.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Moved PakWheels to a modular architecture by pulling the Component Library, Localization and Assets into separate frameworks.],
    [Led the Objective-C to Swift migration across the PakWheels codebase.],
    [Rebuilt the used-car advanced search on Combine, binding 18 filter dimensions into one model that derived its own filter chips.],
    [Took the UI layer from Storyboards through programmatic UIKit to SwiftUI in stages, without pausing delivery on a product used by millions.],
    [Built a Jenkins pipeline that calls Fastlane to turn every pull request into a signed staging build, posted as a QR code on the pull request and the Jira ticket.],
    [Cut build times 40% by moving from CocoaPods to Swift Package Manager.],
    [Held crash-free users above 99% while taking 20% off app launch time.],
    [Ran code reviews and refactoring work, mentored one junior developer and interviewed candidates.],
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
