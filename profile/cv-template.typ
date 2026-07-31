// Reproduction of Farrukh Rasool's Canva CV.
// Source: Desktop/Farrukh_Rasool_Resume.pdf
//
// Every number below was measured out of that PDF's content stream, not eyeballed.
// Positions are mm from the page's top-left, sizes in points.
//
//   page          210 x 300 mm          navy  #163853
//   sidebar       0 to 73.6 mm
//   name          27.05 pt   baseline y 20.8   x 80.4
//   subtitle      13.99 pt   baseline y 27.3   x 81.4
//   section head  13.99 pt                     x 80.9
//   employer      10.99 pt                     x 85.7
//   role          10.99 pt
//   body bullets  10.00 pt                     x 87.5   line pitch 5.35 mm
//   edu degree    10.00 pt                     x 86.3
//   edu bullets   10.00 pt                     x 93.3   line pitch 5.07 mm
//   side heads    13.99 pt                     x 10.3
//   side body     10.00 pt                     x 15.4   pitch 6.4 mm
//
// Line pitch is uniform inside a block: a wrapped line and a new bullet sit the
// same distance apart. Do not add extra gap between bullets.

#let navy = rgb("#163853")
#let serif = "Times New Roman"
#let sidebar-head = "Poppins"
#let sidebar-body = "Lato"

#let SIDEBAR = 73.6mm

// Navy tab accent straddling the sidebar edge, level with an entry's first line.
#let tab(dx) = place(dx: dx, dy: 1.3mm,
  rect(width: 17.7mm, height: 3.7mm, fill: navy, radius: (right: 1.85mm)))

// ---------- sidebar ----------

// Measured heading baselines: CONTACT 76.1, TECHNICAL SKILLS 139.1 (wraps to
// two lines, 146.1), AI TOOLS SKILLS 236.1, LANGUAGES 274.9.
#let side-head(title, gap: 11mm) = {
  v(gap)
  box(width: 46mm, text(font: sidebar-head, weight: "semibold", size: 14pt, fill: white,
       tracking: 0.1em, upper(title)))
  v(1.5mm)
  line(length: 46mm, stroke: 1pt + white)
  v(4.5mm)
}

// Contact rows sit 7.4 mm apart in the original.
#let contact-row(icon, label) = {
  grid(columns: (5.6mm, 1fr), align: (center + horizon, left + horizon), gutter: 1.4mm,
    box(image(icon, width: 3.3mm)),
    text(font: sidebar-body, size: 10pt, fill: white, label))
  v(3.9mm)
}

// pitch: 6.4 mm for Technical Skills, 4.8 mm for AI Tools and Languages.
#let side-list(items, pitch: 6.4mm) = {
  for it in items {
    grid(columns: (3.4mm, 1fr),
      text(font: sidebar-body, size: 10pt, fill: white, "•"),
      text(font: sidebar-body, size: 10pt, fill: white, it))
    v(pitch - 2.5mm)
  }
}

// ---------- main column ----------

#let main-head(title, bar: true) = {
  v(10.0mm)
  if bar { place(dx: 0mm, dy: -4.6mm, rect(width: 17.2mm, height: 0.8mm, fill: navy)) }
  text(font: serif, weight: "bold", size: 14pt, fill: navy, tracking: 0.09em, upper(title))
  v(1.3mm)
  line(length: 100%, stroke: 1.2pt + navy)
}

// Body bullet. 10 pt, uniform pitch, no extra gap between bullets.
#let bullet(indent, b) = {
  grid(columns: (indent, 1fr),
    text(size: 10pt, "•"),
    text(size: 10pt)[
      // Typst breaks a line at a slash, which printed `async/ await` across two
      // lines on the Jobgether CV. Box these so they stay whole. Bullets only,
      // since the URL in `where:` still needs to be breakable.
      #show regex("[A-Za-z]+/[A-Za-z]+"): it => box(it)
      #b
    ])
}

#let entry(org: "", dates: "", role: none, blurb: none, bullets: ()) = {
  v(5.4mm)
  block(inset: (left: 5.3mm))[
    #tab(-21.5mm)
    #text(font: serif, weight: "bold", size: 11pt, underline(offset: 1.7pt, org + " | " + dates))
    #if blurb != none {
      v(4.6mm)
      text(font: serif, size: 11pt, blurb)
    }
    #if role != none {
      v(3.8mm)
      text(font: serif, weight: "bold", size: 11pt, role)
    }
    #v(4.0mm)
    #pad(left: -1.6mm)[
      #set par(spacing: 0.85em)
      #for b in bullets { bullet(3.4mm, b) }
    ]
  ]
}

#let edu(degree: "", where: "", bullets: ()) = {
  v(3.2mm)
  block(inset: (left: 5.9mm))[
    #tab(-22.1mm)
    #text(font: serif, weight: "bold", size: 10pt, degree)
    #linebreak()
    #text(font: serif, size: 10pt, where)
    #v(3.8mm)
    #block(inset: (left: 2.8mm))[
      #set par(leading: 0.77em, spacing: 0.77em)
      #for b in bullets { bullet(4.2mm, b) }
    ]
  ]
}

// ---------- page ----------

// The photo is centre-cropped to fill the circle, so supply a headshot with the
// face already centred. photo-shift is an optional nudge if it needs one.
#let cv(name: "", title: "", photo: none, photo-shift: 0mm, sidebar: [], body) = {
  set document(title: name + " - " + title, author: name)
  set page(width: 210mm, height: 300mm, margin: 0pt, fill: white)
  set text(font: serif, size: 10pt, lang: "en")
  // 10 pt Times: ascent+descent ~1.107em = 11.07 pt. Target pitch 5.35 mm = 15.17 pt.
  set par(justify: false, leading: 0.85em, spacing: 0em)

  place(top + left, rect(width: SIDEBAR, height: 300mm, fill: navy))

  grid(
    columns: (SIDEBAR, 1fr),
    block(inset: (left: 10.3mm, right: 5mm, top: 9.5mm, bottom: 4mm))[
      #if photo != none {
        align(center, box(width: 39.5mm, height: 39.5mm, radius: 50%,
          clip: true, stroke: 2.8pt + white,
          place(center + horizon, dy: photo-shift,
            image(photo, width: 39.5mm, height: 39.5mm, fit: "cover"))))
      }
      #sidebar
    ],
    block(inset: (left: 6.8mm, right: 10mm, top: 14.5mm, bottom: 4mm))[
      #text(font: serif, size: 27pt, fill: navy, tracking: 0.055em, upper(name))
      #v(4.7mm)
      #text(font: serif, size: 14pt, fill: navy, tracking: 0.185em, upper(title))
      #body
    ],
  )
}
