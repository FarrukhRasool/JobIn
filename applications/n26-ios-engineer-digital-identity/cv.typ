// NOT the CV for this application. Farrukh wrote and reviewed the real CV himself
// and it lives outside this repo at ~/Desktop/Resume/Farrukh_Rasool_Resume.pdf.
//
// scripts/render-letter.sh parses a cv.typ next to the letter purely to pick up the
// title and contact city, so the letter header claims the same things the CV does.
// This stub carries only those two lines. It is never compiled.
//
// Do not run ./scripts/render-cv.sh on this slug. That script writes to
// applications/<slug>/Farrukh_Rasool_CV.pdf and would compile this stub instead.

#show: cv.with(
  title: "iOS Engineer",
  sidebar: [
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")
  ],
)
