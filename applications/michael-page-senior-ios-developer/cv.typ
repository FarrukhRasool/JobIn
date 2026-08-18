// CV for Michael Page, Senior iOS Developer (m/w/d) INTERIM.
// Assembled against jobs/scored/michael-page-senior-ios-developer.md.
// Track: ios-developer.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "Senior iOS Developer",

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
      "Swift | SwiftUI",
      "Combine | Swift Concurrency",
      "Swift Testing | XCTest",
      "GitLab CI/CD | Fastlane",
      "UIKit | Git",
      "Clean Code Architecture",
      "Design Patterns | SPM",
      "Code Reviews | Mentoring",
      "SOLID Principles | MVC",
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
    [Built the Verimi Wallet's login and registration flow end to end, using Swift Concurrency to manage the asynchronous network calls.],
    [Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI, with accessibility set as the primary goal on the Wallet migration.],
    [Built the eID card scanning identity flow for AOK in SwiftUI using the official Ausweis SDK, then reused the same approach on the Verimi Wallet.],
    [Built the identity verification SDK now integrated separately by AOK and BARMER, one API surface serving two insurers on release schedules Verimi does not set.],
    [Automated xcframework creation in the CI pipeline, halving TestFlight build time.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Rebuilt the used-car advanced search on Combine, wiring 18 filter controls into a single model so the filter chips updated themselves.],
    [Fixed a feedback loop on that screen where restoring a saved search re-triggered its own filter listeners.],
    [Owned the session and authentication layer serving both the Classified and Dealers apps, attaching logged-in or anonymous credentials to every outbound request.],
    [Drove code reviews and refactoring initiatives to keep the codebase clean, then mentored and onboarded one junior developer.],
    [Ran A/B tests behind Firebase feature flags, measuring lead conversion rate between variants to inform product decisions.],
    [Built the Jenkins and Fastlane pipeline producing a signed staging IPA per pull request, published over the air so reviewers and QA installed the branch by scanning a QR code.],
    [Led the Objective-C to Swift migration across both apps, then took the UI layer from Storyboards through programmatic UIKit to SwiftUI in two further stages.],
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
