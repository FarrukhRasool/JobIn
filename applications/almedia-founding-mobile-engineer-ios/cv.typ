// CV for Almedia, Founding Mobile Engineer (iOS). Track: ios-developer.
// Assembled from profile/ against jobs/scored/almedia-founding-mobile-engineer-ios.md
// and jobs/research/almedia-founding-mobile-engineer-ios.md.

#import "/profile/cv-template.typ": *

#show: cv.with(
  // ---- FIXED ----
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  // ---- VARIES PER APPLICATION ----
  title: "Founding Mobile Engineer (iOS)",

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
      "Swift | Objective-C",
      "SDKs | xcframeworks",
      "SwiftUI | UIKit",
      "Combine | async/await",
      "Design Patterns",
      "MVVM | MVC | Singletons",
      "Fastlane | TestFlight",
      "CI/CD | Firebase",
      "A/B Testing",
      "Feature Flags",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "Spec-Driven Development",
      "Sub Agents | Hooks",
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
    [Automated spec-driven development for iOS features, writing the spec then reviewing the code that Claude and Codex generated against it.],
    [Built the identity SDK integrated separately by AOK and BARMER, one API surface serving two insurers on release cycles Verimi does not control.],
    [Built the Verimi Design Component SDK with the design team, adopted into both the Wallet app and AOK to keep UI consistent across products.],
    [Built the Verimi Wallet's login and registration flow end to end on async/await, integrating the SealOne SDK for eID scan verification.],
    [Automated xcframework creation in the CI pipeline, halving TestFlight build time.],
    [Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI, making accessibility a deliberate goal of the Wallet rewrite rather than an afterthought.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Led the Objective-C to Swift migration on PakWheels' production marketplace app, then introduced SwiftUI and moved the UI layer off Storyboards in two stages rather than a rewrite.],
    [Built PakWheels' UserManager, the shared session and authentication architecture injecting tokens into every request across both the Classified and Dealers apps.],
    [Built the Jenkins and Fastlane pipeline that turned every pull request into an installable staging build, delivered as an OTA QR code for reviewers and QA.],
    [Migrated PakWheels' dependency management from CocoaPods to Swift Package Manager, cutting build times by 40%.],
    [Built the used-car advanced search screen on Combine, binding 18 filter dimensions to a staged model that generates its own filter chips automatically.],
    [Held a crash-free score above 99% on Classified and Dealers while cutting app launch time by 20%.],
    [Reviewed code and mentored one junior developer, then represented the company interviewing candidates at university hiring fairs.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Agentic AI :* iOS application with interacting AI agents who tell stories.],
    [*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.],
    [*Deep Vision :* Image classification using CNNs and Vision transformers.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
