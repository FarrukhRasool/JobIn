// Tailored for Jobgether, Mobile Engineer (iOS). Unnamed partner company, remote Germany.
// Track: ios-developer, PRIORITY-both. Assembled from profile/ sources.
//
// The posting's core ask is AI features inside a native iOS app: backend APIs,
// interaction patterns for streaming and retries, capturing behaviour to evaluate
// models. Bedtime Story Teller answers that directly, so this CV gives the AI work
// far more room than any previous one and leads Verimi on the AI tooling.
//
// Rewritten 2026-07-31 to the craft standard in tailor-cv: every bullet carries the
// action, the hard part and the outcome. Bullets are composed from profile/, not
// quoted from it.
//
// NOT claimed: CoreML, on-device inference, background tasks, streaming.
// Training models is not on-device ML. Streaming.swift is HeyGen's code.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "iOS Engineer",
  photo: "/profile/assets/cropped.png",
  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Bavaria, Germany")
    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Swift | SwiftUI | UIKit",
      "async/await | Combine",
      "REST APIs | Alamofire",
      "SQL | SQLite | NoSQL",
      "Design Patterns | MVVM",
      "Unit Testing | Code Reviews",
      "Firebase | Crashlytics",
      "CI/CD | Fastlane | TestFlight",
      "Python | FastAPI",
      "TensorFlow | PyTorch | Keras",
      "Git | Github | Jira",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "MCP Servers | LLMs",
      "Claude | Codex",
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
    [Automated *Spec-Driven Development* across *Claude* and *Codex* into a loop that writes the spec, builds against it then reviews its own diff.],
    [Ship *SwiftUI* features into *AOK* and *BARMER*, two of Germany's largest health insurance apps.],
    [Own the entire login and registration path on the *Verimi Wallet*, from first launch to a verified account.],
    [Migrated *BARMER* and the *Verimi Wallet* from *UIKit* to *SwiftUI*.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Ran *feature flags* and *A/B tests* through Firebase, measuring lead conversion to decide what shipped.],
    [Held a crash-free user score above *99%* while cutting app launch time by *20%*.],
    [Introduced *SwiftUI* to a production *Objective-C* codebase, then led its migration to *Swift*.],
    [Automated releases with *Fastlane* through *TestFlight* to the *App Store*.],
  ),
)

#main-head("Projects", bar: false)

#edu(
  degree: "Bedtime Story Teller, AI product with a native iOS client",
  where: "github.com/FarrukhRasool/bedtime-story-teller",
  bullets: (
    [*SwiftUI* client over a *FastAPI* backend, reaching a local *LLM* through an *MCP* server with typed *REST* models in *Alamofire*.],
    [An *LLM* planning step picks each story's source, dropping to a deterministic policy when that reasoning fails.],
    [The client shows which source answered and why, so the AI never feels arbitrary to the reader.],
    [Runs inference locally through Ollama, so nothing a child says leaves the machine.],
  ),
)

#main-head("Education", bar: false)

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Deep Vision :* Image classification with CNNs and Vision transformers, built in *TensorFlow* and *PyTorch*.],
    [*Scene Detection :* Deep Vision application built for smart home systems.],
    [*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.],
    [*Embedded Intelligence :* Indoor Navigation Mobile App (BLE signal).],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)
