// CV for Tesla, Software Engineer, Robot Perception & Vehicle Integration.
// Assembled from profile/skills.md, profile/experience.md, profile/education.md and
// profile/projects.md against jobs/scored/tesla-robot-perception-vehicle-integration-engineer.md
// and jobs/research/tesla-robot-perception-vehicle-integration-engineer.md.
//
// Track: ai-engineer. Scored 76, APPLY light tailoring. Seniority fit 19/20, the best
// in the pipeline so far. RosBot's floating-walls fix is the direct answer to the
// posting's own disjunctive first requirement, "a strong depth-camera project that had
// to hold up against real-world sensor noise, lighting, and clutter", so it leads.
//
// Education carries the navy bar and comes first, Professional Experience follows with
// bar: false, since every perception, SLAM and depth-camera claim on this profile is
// M.Sc. project work, not paid employment. Professional Experience is chosen for
// integration, systems and API work, answering the requirement's second half ("solid
// integrations against real APIs and systems"), not for UI features.
//
// Honesty constraints: ROS 2 is a named requirement with zero evidence anywhere on the
// profile. RosBot's controller is Webots in pure Python, not ROS 2, and nothing below
// implies otherwise. RosBot runs in simulation, not on physical hardware, so every
// bullet says Webots rather than gesturing at a shipped robot. WebRTC is rated `ask`
// and does not appear. Camera and hand-eye calibration, real-time Linux, teleoperation
// and WMS/FMS integration are absent from the profile and are not claimed.

#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  title: "Software Engineer, Robot Perception & Vehicle Integration",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")

    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])

    // Gruenheide is a village roughly 30 km outside Berlin, so Berlin is the honest
    // and sensible claim per the tailor-cv rule.
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")

    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
      "Python",
      "SLAM | CNN | ViT",
      "Machine Learning",
      "Deep Learning | OpenCV",
      "TensorFlow | PyTorch | Keras",
      "FastAPI | REST APIs | JWT auth",
      "SQLAlchemy | Git | GitHub",
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
    [*Autonomous Robot:* Webots controller in *Python* driving a Husarion RosBot running *FastSLAM 2.0* across 30 particles. Height-gated the depth camera's projected upper band to 20 cm to catch walls the lidar sweeps beneath, then let a later lidar hit demote the false flag.],
    [*Pose Estimation:* Pose graph loop closure combining correlative scan matching and least squares optimisation. Mapping ran on a background thread at 10 Hz against a 32 ms motion control loop.],
    [*Deep Vision:* Image classification comparing a *ResNet50* Convolutional Neural Network (CNN) against a Vision Transformer (ViT), built in *TensorFlow* and *PyTorch*.],
  ),
)

#edu(
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (
    [*Maze Runner Game:* Developed in *C++* using MFC.],
  ),
)

#main-head("Professional Experience", bar: false)

#entry(
  org: "Verimi GmbH", dates: "July 2025 - Present",
  role: "iOS Developer",
  bullets: (
    [Own the *identity SDK* consumed independently by *AOK* and *BARMER*, one API surface held stable across two host apps with separate release cycles.],
    [Automated *spec-driven development (SDD)* across *Claude* and *Codex*, covering the full loop from spec through implementation to code review.],
    [Halved *TestFlight* build time by automating *xcframework* creation in the CI pipeline.],
    [Built the *Verimi Design Component SDK* with designers, adopted by the *Verimi Wallet* app and *AOK*.],
  ),
)

#entry(
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [Built the *session and auth* layer injecting access tokens into every outbound request, switching between logged-in and anonymous credential paths across two production apps.],
    [Led the *Objective-C to Swift* migration across the *Classified* and *Dealers* apps.],
    [Built a *Jenkins* pipeline calling *Fastlane* to produce a signed staging build per pull request, publishing an OTA QR code on the GitHub PR and Jira ticket.],
    [Held a crash-free user score above *99%* while cutting app launch time by *20%* across two production apps.],
    [Cut build times *40%* migrating from *CocoaPods* to *Swift Package Manager*.],
  ),
)
