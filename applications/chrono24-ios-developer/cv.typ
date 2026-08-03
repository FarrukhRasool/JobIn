// CV for Chrono24, iOS Developer (m/f/d). Track: ios-developer.
// Assembled from profile/ sources against jobs/scored/chrono24-ios-developer.md
// and jobs/research/chrono24-ios-developer.md. Do not hand-edit the PDF.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "iOS Developer",

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
      "Combine | async/await",
      "Storyboards | Programmatic UI",
      "XCTest | MVC | MVVM",
      "SPM | CocoaPods | Git",
      "Fastlane | TestFlight",
      "CI/CD | Jenkins | Firebase",
      "Crashlytics | XCFrameworks",
      "Design Patterns | Code Reviews",
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
    [Built AOK's eID card-scanning identity flow in SwiftUI, wiring the official Ausweis SDK through async/await so the card read and network round trip never block the interface.],
    [Own the Verimi Wallet's login and registration flow end to end, integrating the SealOne SDK and using async/await for the long-running identity checks the flow depends on.],
    [Built the identity SDK that AOK and BARMER now integrate separately, one API surface shipped into two insurers' apps.],
    [Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI, making accessibility the explicit goal on the Wallet rather than treating it as pure modernisation.],
    [Halved TestFlight build time by automating xcframework creation in the CI pipeline, removing a manual packaging step from every release.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Built the Classified app's used-car advanced search on Combine: 18 filter dimensions publish into a staged model that derives its own selected-filter chips, guarded by a single dropFirst so hydrating the screen from saved filters never re-triggers the listeners.],
    [Built features for both PakWheels marketplace apps, Classified for millions of consumers and Dealers for thousands of trade dealers.],
    [Improved performance and reliability across both apps, cutting launch time by 20% and holding a crash-free user score above 99%.],
    [Built a Jenkins and Fastlane pipeline that packages a signed staging build for every pull request and posts it as an installable QR code straight into GitHub and Jira.],
    [Migrated the build from CocoaPods to Swift Package Manager for a 40% build performance improvement.],
    [Ran refactoring initiatives and peer code reviews to hold code quality and a clean architecture across the team.],
    [Wrote unit tests with XCTest covering business logic and view models.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI :* iOS application with interacting AI agents who tell stories.],
    [*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
