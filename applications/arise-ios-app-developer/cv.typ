// Tailored for Arise, iOS App Developer (Remote, Berlin-listed).
// Track: ios-developer. Assembled from profile/ sources, not copied from the skeleton.
//
// The posting names Swift, CocoaPods and Fastlane on a codebase live since Nov. 2012.
// A sibling Senior iOS posting for the same app names Storyboards and MVC. There is no
// AI or ML content anywhere in this posting, so no AI Tools Skills block, no ML skills,
// and no lead on the AI-flavoured projects. This CV leads on the two-stage UI migration
// at PakWheels, Storyboards to programmatic UIKit to SwiftUI, paired with the separate
// Objective-C to Swift migration, as the direct answer to "maintain and optimize the
// iOS codebase for long-term sustainability" on a fourteen-year-old app.

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
      // Legacy-codebase-first ordering: the migration story, then the posting's
      // own named tools, then quality and process. No AI or ML content anywhere,
      // this posting has none.
      "Swift | Objective-C",
      "SwiftUI | UIKit | Storyboards",
      "Programmatic UI | UI/UX",
      "Legacy Migration",
      "SPM | CocoaPods | Fastlane",
      "TestFlight | App Store",
      "Firebase | Crashlytics",
      "A/B Testing | Feature Flags",
      "Design Patterns | Code Reviews",
      "Clean Code Architecture",
      "Unit Testing | CI/CD",
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
    [Migrated *BARMER* and *Verimi Wallet* from *UIKit* to *SwiftUI*, making accessibility the deliberate goal on the Wallet app.],
    [Automated *xcframework* creation in *CI/CD*, halving *TestFlight* build time.],
    [Built a *Design Component SDK* with the design team, adopted by *Verimi Wallet* and *AOK*.],
    [Own the identity verification *SDK* that both *AOK* and *BARMER* integrate, a single API surface against two host apps with different release cycles.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Moved the UI layer off *Storyboards* in two stages: first to programmatic *UIKit* views and view controllers, then on to *SwiftUI*.],
    [Led the *Objective-C* to *Swift* migration, modernising the codebase for performance and maintainability.],
    [Cut build times by *40%* by moving dependency management from *CocoaPods* to Swift *SPM*.],
    [Automated the release pipeline with *Fastlane*, shipping builds through *TestFlight* to the *App Store* faster and more reliably.],
    [Ran *A/B tests* and *feature flags* through *Firebase*, measuring lead conversion rate between variants to guide product decisions.],
    [Held a crash-free user score above *99%* across two production apps, *Classified* and *Dealers*.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Embedded Intelligence :* Indoor Navigation Mobile App (BLE signal).],
    [*Agentic AI :* iOS application with interacting AI agents who tell stories.],
    [*Deep Vision :* Image classification using CNNs and Vision transformers.],
    [*Scene Detection :* Deep Vision application built for smart home systems.],
    [*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.],
    [*Agent-Based Modeling :* Multiagent system for studying emergent behaviour from the interactions between agents.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
