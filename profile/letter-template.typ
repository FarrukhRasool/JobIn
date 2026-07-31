// Cover letter template.
//
// Deliberately echoes the CV without copying it. Same page size, same navy
// (#163853), same Times New Roman, same name treatment and accent bar, so the
// pair reads as one set. No sidebar, because a letter is a letter.
//
// The letter body is the single source of truth in applications/<slug>/letter.md.
// scripts/render-letter.sh parses that file and calls this template, so the PDF
// can never drift from the text you paste into a web form.

#let navy = rgb("#163853")
#let serif = "Times New Roman"

#let letter(
  name: "",
  title: "",
  contact: (),
  company: none,
  role: none,
  date: "",
  body,
) = {
  set document(title: name + " - Cover Letter" + if company != none { " - " + company } else { "" },
               author: name)
  set page(width: 210mm, height: 300mm, margin: (x: 22mm, top: 20mm, bottom: 20mm))
  set text(font: serif, size: 11pt, lang: "en")
  set par(justify: false, leading: 0.75em, spacing: 1.5em, first-line-indent: 0pt)

  // Letterhead, matching the CV's name treatment
  text(size: 27pt, fill: navy, tracking: 0.055em, upper(name))
  linebreak()
  v(3.2mm)
  text(size: 14pt, fill: navy, tracking: 0.185em, upper(title))
  v(4mm)
  rect(width: 17.2mm, height: 0.8mm, fill: navy)
  v(2mm)
  text(size: 9.5pt, contact.join("   |   "))
  v(2mm)
  line(length: 100%, stroke: 1.2pt + navy)

  v(9mm)

  // Recipient and date
  if company != none {
    text(weight: "bold", size: 11pt, company)
    if role != none {
      linebreak()
      text(size: 11pt, "Re: " + role)
    }
  }
  if date != "" {
    place(right, dy: if company != none { -1.55em } else { 0em },
          text(size: 11pt, date))
  }

  v(7mm)

  body
}
