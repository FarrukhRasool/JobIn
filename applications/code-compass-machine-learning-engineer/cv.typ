// CV tailored for Code Compass (recruitment agency, end client unnamed),
// "Machine Learning Engineer", Berlin.
// Assembled from profile/skills.md, profile/experience.md, profile/education.md
// and profile/projects.md against jobs/scored/code-compass-machine-learning-engineer.md.
// Track: ai-engineer. Scored 59, an honest long shot: diffusion models, GANs, Docker
// and cloud infrastructure are named requirements with no evidence anywhere on the
// profile, so they are left out rather than gestured at.
//
// Education leads, Professional Experience follows, reversing the house order in
// cv-skeleton.typ. Every computer vision and model-training claim on this profile is
// M.Sc. or project work, not paid employment, so the evidence this posting asks for
// sits in Education. The navy bar moves with it per the house convention: the first
// main section takes the bar, the rest carry bar: false.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "Machine Learning Engineer",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")

    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])

    // Berlin is the posting's own city.
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")

    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Python",
      "TensorFlow | PyTorch | Keras",
      "Machine Learning",
      "Deep Learning | CNN | ViT",
      "OpenCV | SLAM",
      "FastAPI | Ollama",
      "Git | GitHub | CI/CD",
      "Swift | SwiftUI",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
      "Claude | Codex",
      "SDD",
    ))

    #side-head("Languages")
    #v(0.5mm)
    #text(font: sidebar-body, size: 10pt, fill: white)[
      English (C1) \
      German (A2)
    ]
  ],
)

// Bar goes on the first section, per the house convention in cv-skeleton.typ.
#main-head("Education")

#edu(
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [*Deep Vision:* Computer vision project comparing a *ResNet50* Convolutional Neural Network (CNN) against a Vision Transformer (ViT) for image classification, built in *TensorFlow* and *PyTorch*.],
    [*Autonomous Robot:* RosBot maze navigation in *Python* using Hue-Saturation-Value (HSV) colour segmentation for target detection. A depth camera projection height-gated to 20 cm and cross-checked against lidar caught walls sitting above the scan plane. Mapping ran on a background thread at 10 Hz against a 32 ms motion control loop.],
    [*Deployed AI:* *FastAPI* backend serving local Large Language Model (LLM) inference through *Ollama*, layered as routers over services over models with tests at every layer.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (),
)

#main-head("Professional Experience", bar: false)

#entry(
  org: "Verimi GmbH", dates: "July 2025 - Present",
  role: "iOS Developer",
  bullets: (
    [Automated *Spec-Driven Development (SDD)* across *Claude* and *Codex*, covering the full loop from spec through implementation to code review.],
    [Halved *TestFlight* build time by automating *xcframework* creation in the CI pipeline, removing a manual packaging step from every release.],
    [Own the *identity SDK* that *AOK* and *BARMER* each integrate into their own app, keeping one API surface consistent across two enterprise clients with separate release schedules.],
    [Built the *Verimi Design Component SDK* with designers, adopted by the *Verimi Wallet* app and *AOK* across two production apps.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Built a *Jenkins* pipeline that calls *Fastlane* to produce a signed staging build per pull request, published as an OTA QR code on the PR and the Jira ticket.],
    [Held a crash-free user score above *99%* while cutting app launch time by *20%* across two production apps.],
    [Ran *Firebase* A/B tests behind feature flags, measuring lead conversion rate between variants to inform product decisions.],
    [Cut build times *40%* migrating from *CocoaPods* to *Swift Package Manager*, then modularised shared code into separate frameworks.],
    [Led the *Objective-C* to *Swift* migration across the PakWheels codebase, modernising both apps for performance and long-term maintainability.],
    [Extended the *Core Data* reference model behind the used-car search filters, adding a car generation entity and its relationships.],
  ),
)
