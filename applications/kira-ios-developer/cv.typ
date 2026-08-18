// Kira (BJAK), iOS Developer - AI Finance Agent
//
// Scored 86/100, apply with standard tailoring. Track: ios-developer.
// Professional Experience leads because this is a clean single-track iOS posting:
// its Requirements and Responsibilities blocks are Swift, SwiftUI, UIKit, async/await,
// iOS architecture patterns, production quality ownership, and API/authentication/
// secure-data integration. The "AI Finance Agent" title and the one "AI-assisted user
// journeys" line sit outside BJAK's separate AI/ML team per jobs/research, so the M.Sc.
// stays in Education, honest and not leading, rather than reshaping the CV around it.
// Payments, cards, transfers and rewards are a genuine gap. Not stretched here, named
// in notes.md instead.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "iOS Developer",
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
      "async/await | Combine",
      "Authentication and Sessions",
      "Dependency Injection | MVC",
      "Certificate Pinning | MVVM",
      "Core Data | Objective-C",
      "Legacy Migration | SPM",
      "Crashlytics | App Stability",
      "Firebase | A/B Testing",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex | SDD",
      "Sub Agents | Plugins | Hooks",
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
    [Built the identity SDK that AOK and BARMER each integrate as separate clients, one API surface running on two release schedules that Verimi does not set.],
    [Shipped AOK's identity verification flow, scanning German eID cards in SwiftUI through the official Ausweis SDK.],
    [Delivered the Verimi Wallet's login and registration flow end to end, built on async/await so the UI stayed responsive through every network call.],
    [Implemented certificate pinning on BARMER's TAK libraries, securing the network layer inside a German health insurer's app used by millions.],
    [Migrated BARMER and the Verimi Wallet off UIKit and onto SwiftUI, making accessibility the stated goal on the Wallet build.],
    [Halved TestFlight build time by automating xcframework creation in the release pipeline.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Built the session and authentication layer shared by the Classified and Dealers apps, attaching tokens to every outbound request and switching between logged-in and anonymous access at runtime.],
    [Held a crash-free user score above 99% while cutting app launch time by 20%.],
    [Led the migration of PakWheels' codebase from Objective-C to Swift, bridging legacy code into the new Swift layer so the app kept shipping throughout.],
    [Introduced SwiftUI to the app, moving the UI layer from Storyboards through programmatic UIKit before adopting SwiftUI screens.],
    [Rebuilt the used-car advanced search on Combine, tying 18 filter controls into one model that regenerated its own filter chips.],
    [Ran Firebase A/B tests behind feature flags, measuring lead conversion rate between variants and feeding the results into product decisions.],
    [Cut build times 40% migrating from CocoaPods to Swift Package Manager, then modularised the shared component library into its own framework.],
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
