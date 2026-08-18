// NOT the CV for this application. Farrukh wrote and reviewed the real CV himself,
// see Farrukh_Rasool_CV.pdf in this same folder. That PDF is the tailored CV,
// nothing here was assembled from profile/ and this file is never compiled.
//
// scripts/render-letter.sh reads a cv.typ next to the letter so the letter's header
// claims the same title, contact city and email the CV does. Since the real CV here
// is a hand-authored PDF rather than a generated .typ, this stub carries only the
// lines that script's regex parser looks for, copied from the PDF as read on
// 2026-08-07, in the same syntax a generated cv.typ would use so the parser matches
// them the same way. Do not add to this file or treat it as a real source.

#show: cv.with(
  title: "iOS Engineer",
  sidebar: [
    #contact-row("/profile/assets/icon-mail.png", link("mailto:farrukhrasool65@gmail.com")[farrukhrasool65\@gmail.com])
    #contact-row("/profile/assets/icon-pin.png", "Berlin, Germany")
  ],
)
