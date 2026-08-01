// CV SKELETON. Structure and fixed facts only.
//
// This is not a CV to copy. It is the shape a CV takes, plus the facts that never
// change between applications. Everything selectable was moved out on 2026-07-30:
//
//   sidebar skills      -> profile/skills.md      (pool, with evidence ratings)
//   experience bullets  -> profile/experience.md  (detail behind each employer)
//   education bullets   -> profile/education.md   (pool, with a use-when column)
//   project depth       -> profile/projects.md    (for letters and interviews)
//
// HOW TO USE THIS FILE
//
//   1. Copy it to applications/<slug>/cv.typ
//   2. Replace every SLOT: line with content assembled from the source files above,
//      chosen against this posting
//   3. Render. check-style.py fails if any SLOT: survives
//
// This is your starting artefact. You do not need to see a finished CV to write one,
// and you must not read another application to find out what one looks like. Their
// content answers a different posting.
//
// The SLOT: lines render, so the layout stays verifiable, and they cannot be mistaken
// for content or left in by accident.
//
// Layout lives in cv-template.typ and is not touched by tailoring.

#import "/profile/cv-template.typ": *

#show: cv.with(
  // ---- FIXED ----
  name: "Farrukh Rasool",
  photo: "/profile/assets/cropped.png",

  // ---- VARIES PER APPLICATION ----
  // title:  mirror the posting's job title.
  title: "Software Engineer",

  sidebar: [
    #side-head("Contact", gap: 23mm)
    #contact-row("/profile/assets/icon-phone.png", "+49 15751541415")

    // email: farrukhrasool65@gmail.com by default. Overridable per application.
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])

    // location: the job's city for European roles, Berlin for USA/Canada/Australia.
    #contact-row("/profile/assets/icon-pin.png", "Bavaria, Germany")

    #contact-row("/profile/assets/icon-globe.png", link("https://www.linkedin.com/in/farrukh-rasool-8487971aa/")[#underline(offset: 2pt)[linkedIn]])
    #contact-row("/profile/assets/icon-globe.png", link("https://github.com/FarrukhRasool")[#underline(offset: 2pt)[github]])
    #contact-row("/profile/assets/icon-globe.png", link("https://www.figma.com/proto/2KiYnrd8UQlw8aWEZoXjhZ/iPhone-16-and-16-Plus-Mockups--Community-?node-id=4204-2013&t=OTCdah3teQVCUSl2-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1")[#underline(offset: 2pt)[Portfolio]])

    #side-head("Technical Skills")
    #side-list((
        // Pick only what the posting asks for or genuinely supports, most relevant
      // first. Pack by word length: long words 1 per row, ordinary 2, short 3.
      // Roughly 32 characters per row. A wrapped row costs a line and looks wrong.
      // Never use an "ask"-rated skill without confirming it first.
      "SLOT: skills rows",
      "SLOT: 8 to 11 rows total",
    ))

    #side-head("AI Tools Skills")
    #side-list(pitch: 4.8mm, (
        // Drop this whole block for postings with no AI angle.
      "SLOT: AI tooling rows",
    ))

    #side-head("Languages")
    #v(0.5mm)
    // FIXED. Confirmed from his own CV. Must stay visible on page one.
    #text(font: sidebar-body, size: 10pt, fill: white)[
      English (C1) \
      German (A2)
    ]
  ],
)

#main-head("Professional Experience")

#entry(
  // FIXED: employer, dates.
  org: "Verimi GmbH", dates: "July 2025 - Present",
  // VARIES: "iOS Developer (Working Student)" for student, Werkstudent,
  // internship or dual-study postings. Plain otherwise.
  role: "iOS Developer",
  bullets: (
    // Achievements with results, one comma maximum per bullet.
    [SLOT: Verimi bullets, usually 4 or 5, from the Verimi section of experience.md.],
  ),
)

#entry(
  // FIXED: employer, dates, full time, blurb.
  org: "PakWheels", dates: "Aug. 2022 - Mar. 2025",
  blurb: [Pakistan's biggest marketplace for buying and selling cars covering millions of live users.],
  role: "iOS Developer",
  bullets: (
    [SLOT: PakWheels bullets, usually 5 or 6, from the PakWheels section of experience.md.],
  ),
)

#main-head("Education", bar: false)

#edu(
  // FIXED.
  degree: "Masters Degree in Artificial Intelligence for Industrial Application",
  where: "OTH Amberg | Mar. 2025 - present",
  bullets: (
    [SLOT: M.Sc. bullets, 3 to 5, from the use-when table in education.md.],
  ),
)

#edu(
  // FIXED.
  degree: "Bachelors Degree in Software Engineering",
  where: "University of the Punjab | October 2018 - July 2022",
  bullets: (
    // Default to none. Coursework only, low signal
    // against four years of employment. Include only if the posting names the stack.
  ),
)
