// CV for Wolt, Staff Mobile Engineer - Retail.
// Assembled against jobs/scored/wolt-staff-mobile-engineer.md and jobs/research/wolt-staff-mobile-engineer.md.
// Track: ios-developer. Scored 69, APPLY light tailoring. Technical fit 33/40, seniority 3/20.
// Led with the Verimi identity SDK and the Claude/Codex spec-driven development loop, the posting's
// two hardest-to-fake asks, then filled out modularity, CI/CD, performance and mentoring evidence
// from both employers. Server-driven UI is a genuine gap and does not appear anywhere below.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "Staff Mobile Engineer",

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
      "SDKs | Modularisation",
      "xcframeworks | SPM",
      "Swift | SwiftUI",
      "UIKit | Objective-C",
      "Session and auth management",
      "CI/CD | Fastlane | Git",
      "Jenkins | App Store releases",
      "Design Patterns | Code Reviews",
      "XCTest | Unit Testing",
      "Mentoring | Interviewing",
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
    [Built the identity SDK now integrated separately by AOK and BARMER, one API surface running against two release schedules Verimi does not control.],
    [Automated spec-driven development across Claude and Codex, taking a written spec through implementation to code review.],
    [Built the Verimi Design Component SDK with designers, adopted by the Verimi Wallet and AOK to keep UI components consistent across both apps.],
    [Automated xcframework creation inside the CI/CD pipeline, halving TestFlight build time.],
    [Migrated BARMER and the Verimi Wallet off UIKit onto SwiftUI, treating accessibility as the primary goal on the Wallet.],
    [Cover SDK work and release tooling as one of three engineers on the iOS team, with no room to specialise narrowly.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Improved the codebase's modularity by extracting the Component Library into its own framework, then moved from CocoaPods to Swift Package Manager for a 40% cut in build time.],
    [Built a Jenkins pipeline that calls Fastlane to turn every pull request into a signed staging build, published over the air as a QR code on the pull request and the Jira ticket.],
    [Ran Firebase A/B tests behind feature flags, measuring lead conversion rate between variants to inform product decisions.],
    [Held a crash-free user score above 99% while cutting app launch time by 20%.],
    [Owned the session and authentication layer behind the Classified and Dealers apps, switching between logged-in and anonymous credential paths on every outbound request.],
    [Led the Objective-C to Swift migration across both apps, then moved the UI layer from Storyboards through programmatic UIKit to SwiftUI.],
    [Mentored and onboarded one junior developer, then ran technical interviews and represented PakWheels at university job fairs.],
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
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
