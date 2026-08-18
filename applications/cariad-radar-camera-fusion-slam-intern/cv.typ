// NOT the CV for this application. Farrukh wrote the real one himself and it sits
// next to this file as Farrukh_Rasool_Resume.pdf.
//
// scripts/render-letter.sh parses a cv.typ next to the letter only to pick up the
// title, contact city and email, so the letter header claims the same things the
// CV does. Without this stub the script falls back to "Bavaria, Germany" and
// "iOS Developer", both wrong for a robotics thesis application. This file is
// never compiled.
//
// Do not run ./scripts/render-cv.sh on this slug.

#show: cv.with(
  title: "AI Engineer",
  sidebar: [
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")
  ],
)
