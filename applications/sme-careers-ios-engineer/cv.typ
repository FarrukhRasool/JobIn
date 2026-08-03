// Tailored CV for SME Careers (SuperAnnotate), iOS Engineer (Swift and Objective-C).
// Assembled from profile/cv-skeleton.typ against jobs/scored/sme-careers-ios-engineer.md
// and jobs/research/sme-careers-ios-engineer.md. Track: ios-developer.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "iOS Engineer",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])

    // Location UNKNOWN on the posting, remote work model confirmed, no HQ city
    // confirmed. Fallback per the skill: company HQ city if European, else Berlin.
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")

    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Swift | Objective-C",
      "SwiftUI | UIKit",
      "MVC | MVVM",
      "GCD | async/await",
      "Core Data | URLSession",
      "Session and auth management",
      "Objective-C interop",
      "Fastlane | CI/CD",
      "XCTest | Code Reviews",
      "Certificate pinning",
      "Legacy migration",
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
    [Built AOK's eID card-scanning identity flow with the Ausweis SDK, using async/await for the card read and the network call.],
    [Implemented certificate pinning on the TAK libraries in BARMER, one of Germany's largest health insurance apps.],
    [Own the identity SDK that AOK and BARMER each integrate into their own apps, on release schedules Verimi does not control.],
    [Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI, with accessibility as a stated goal of the Wallet rewrite.],
    [Halved TestFlight build time by automating xcframework creation in CI, removing the manual packaging step from every release.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars, with millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Own the user session layer shared by both PakWheels apps, the single place login state and profile data live. It authenticates every API call with an access token for signed-in users and client credentials for anonymous ones.],
    [Led the Objective-C to Swift migration across both PakWheels apps. The new Swift code stayed callable from the Objective-C that had not been converted yet.],
    [Moved the UI layer from Storyboards to programmatic UIKit and then to SwiftUI, in a codebase originally built as MVC.],
    [Built the advanced search screen with Combine, binding 18 filter dimensions to a staged model that derives its own filter chips.],
    [Added a CarGenerations entity to the existing Core Data model to ship the car generation filter, linked into the make-model-version taxonomy.],
    [Held a crash-free user score above 99% across both apps while cutting launch time by 20%.],
    [Ran refactoring work and peer code reviews across the team. Interviewed iOS candidates.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI :* iOS application where several AI agents interact to tell a story.],
    [*Deep Vision :* Image classification using CNNs and vision transformers.],
    [*Agent-Based Modelling :* Multiagent system for studying how behaviour emerges from the interactions between agents.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
