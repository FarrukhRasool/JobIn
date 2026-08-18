---
name: tailor-cv
description: The governing guideline and mechanics for tailoring the master CV to one specific job posting. Use whenever building a CV for an application.
---

# Tailoring a CV

Generate `applications/<slug>/cv.typ`, then render it to PDF.

---

# Part 1: the guideline

Farrukh's own rules. These govern every editorial decision. Where anything else in this file appears to conflict, this part wins.

## The situation you are writing into

Large and international companies pre-screen CVs with an ATS before a human sees them. But everyone now has access to AI and can stuff a CV with the right buzzwords, so **thousands of CVs look exactly the same**. Buzzword matching alone no longer differentiates anyone.

That raises the bar rather than lowering it. What separates a CV now is **concrete achievements and demonstrated fit for the specific position**.

**The goal: machine-readable AND convincing to a human.** A CV that passes the filter but bores the recruiter has failed. So has a beautiful one that never gets parsed.

## Use the employer's own language

The ATS matches keywords from the job posting.

1. **Read the job description carefully.** Identify the stated responsibilities and qualifications.
2. **Incorporate that terminology wherever it accurately reflects real experience.** Different employers use different words for the same thing. Mirroring theirs maximises the perceived match.
3. **Never keyword-drop.** Terms bolted on that the experience does not support read as inauthentic to a human and as written-for-the-robot. This fails worse than omitting them.
4. **Highlight the strongest qualifications**, do not spread emphasis evenly.

Use the vocabulary from the company research brief too, not only the posting.

## Write so a parser cannot misread it

A misspelled word cannot be matched by an ATS at all.

- Simple, clear language.
- Check spelling carefully. Eliminate typos and careless mistakes.
- Avoid ambiguous abbreviations, spell them out. First use gets the full term with the acronym in brackets: `Simultaneous Localisation and Mapping (SLAM)`.
- Minimise special characters.
- Easy-to-read fonts: Calibri, Arial, Times New Roman. The template already uses **Times New Roman** for all main-column text, so this is satisfied. Do not change fonts.

## You are writing, not quoting

**Read this before anything else in this file.**

`experience.md`, `projects.md` and `education.md` are **evidence, not copy**. They are the record of what is true. They are not a set of approved sentences waiting to be pasted onto a page.

**Rewrite freely.** Reword, reframe, recombine two facts into one bullet, split one fact across two, change the verb, change the emphasis, lead on whatever this posting cares about most. The only thing that may not move is the truth of the claim.

**The constraint is factual, not verbal.** "Do not invent" means do not invent a fact. It has never meant do not compose a sentence. Those are different rules and confusing them produces a flat CV.

### The failure this section exists to stop

Every defect Farrukh caught added a prohibition here. Never invent, trace every fact, one comma, no `, and`, no keyword-dropping, cut what the posting did not ask for. Nine rules deep, the safest move became **copying a sentence out of `experience.md` unchanged**, because a verbatim lift cannot be accused of inventing anything.

It shipped. `Built the entire login and registration flow for the Verimi Wallet, using async/await.` is `experience.md` line 53 word for word. Nothing about it is false. It is also flat, and it wastes the best line in the source, which is that login and card scanning are exactly the long-running asynchronous work `async/await` exists for.

On 2026-07-31 Farrukh said the generated CVs were not up to the mark and that he did not feel confident sending them, despite the depth of material he had supplied. He was right, and this was the cause.

**A safe CV that does not get an interview has failed.** Caution is not the goal. An accurate, specific, confident CV is the goal.

### The invented-relationship defect

**A bullet can be built from two individually true facts and still be a fabrication**, if it draws a causal or purposive link between them that the source never makes. This is not the same defect as inventing a fact, and it is now the more common one. Every fact in the bullet traces to `experience.md`. The connection between them does not.

It happens three ways:

1. **Folding two separate facts into one flow.** `experience.md`'s Verimi Wallet entry lists the login and registration flow, the SealOne SDK integration, and eID scan verification as three separate bullets. Writing "integrated the SealOne SDK for eID verification" invents a relationship the source never states. Each fact is real. The claim that one performs the other is not.
2. **Borrowing a qualifier from one fact and attaching it to another nearby fact.** The Storyboards-to-SwiftUI migration and the Objective-C-to-Swift migration are stated as **two independent modernisation efforts**. A qualifier that describes one of them, such as doing it "without stopping delivery," must not be extended to cover the other unless the source says so for both.
3. **A card scan folded into a registration flow that the source lists as a separate step.** Check whether the source's bullet structure already separates two facts before you merge them into one sentence. Separate bullets are separate facts unless the prose between them says otherwise.

**The test:** read the exact source lines the bullet is built from. If the connective tissue, "to," "for," "so that," "which let," "as part of," is not itself something the source states, cut it. Write the two facts as two bullets, or state the one you are using plainly, rather than inventing the bridge between them.

`check-style.py` cannot catch this. It is not a banned word or a missing figure, it is a false claim about how two true facts relate to each other. `application-review` question 6 is the backstop if it reaches that far. Catch it here first, by rereading the source lines before you submit the sentence, not just the fact.

### What the source files actually give you

Read past the bullet lists. The prose between them carries the interpretation, and that is usually the strongest material in the file.

> `experience.md` line 33: *"one API surface, two host apps with different conventions, different release cycles and different demands, and no ability to change either of them."*

That is the sharpest sentence anywhere in the profile. The CV it produced said `Ship features into AOK and BARMER`. The fact survived and everything that made it worth reading was thrown away.

The `Hook`, `Sells` and `Cross-cutting themes` sections exist for exactly this. Use them.

## Achievements, not responsibilities

This is the single highest-value rule.

Modern ATS platforms and recruiters assess the **quality and substance** of experience, not just keyword presence. Recruiters want to know what results the work produced.

> **Weak:** Responsible for sales.
>
> **Better:** Increased revenue by 32% within 18 months by implementing a new enterprise sales process.

Quantified achievements help both the software and the human understand impact.

**Apply it like this:** lead each bullet with a strong verb, state what was done, then the result. **One comma maximum per bullet, and never `, and` joining two clauses that could stand alone.** See the comma discipline rules in `human-voice`. Use numbers wherever the master CV records one.

### What a strong bullet has

Three parts. Most weak bullets have only the first.

1. **The action**, in a verb that shows the level of ownership. `Led`, `Introduced`, `Own`, `Automated`, `Migrated` are not the same as `Worked on`, `Developed`, `Involved in`, `Helped with`.
2. **The hard part**, meaning the constraint or the scale that made it engineering rather than typing. This is the half that gets dropped, and it is the half a senior reader is looking for.
3. **The outcome**, a number where the source has one, and a plain consequence where it does not.

Worked from Farrukh's own material, all facts unchanged:

> **Flat:** Ship features into AOK and BARMER, two of Germany's largest health insurance iOS apps used by millions.
>
> **Strong:** Own the identity SDK that AOK and BARMER each integrate, one API surface against two host apps on release cycles neither he nor Verimi controls.

> **Flat:** Built the entire login and registration flow for the Verimi Wallet, using async/await.
>
> **Strong:** Own login and registration on the Verimi Wallet end to end, built on async/await for work that waits on a network and a card reader.

> **Flat:** Designed, tested and shipped features in SwiftUI and UIKit to a production app used by millions.
>
> **Strong:** Introduced SwiftUI to a production Objective-C codebase, then led its migration to Swift.

The third pair is the clearest case. Same job, same year, same person. One reads like a job description, the other like someone who changes what a codebase is built on.

### Two tests before a bullet is finished

**The "so what" test.** Read the bullet and ask it. If the honest answer is "that is just the job", the bullet is a responsibility and needs its hard part or its outcome back.

**The "anyone" test.** Could any competent iOS developer with the same job title write this exact sentence? If yes, it is not evidence, it is a job title restated. `Migrated BARMER and the Verimi Wallet from UIKit to SwiftUI` survives this, because most people migrated one app or none. `Designed, tested and shipped features` does not survive it.

### Senior iOS engineer pass

Run this pass after `human-voice`, not instead of it. `human-voice` removes machine-sounding prose. This pass checks whether the sentence is technically credible.

Every professional bullet must sound like it could be said by a senior iOS developer in an interview. That means:

- The technology is used in the right relationship. `async/await` is a concurrency model, not a client. SwiftUI is a UI framework, not evidence of backend work.
- The ownership is clear. `Own`, `led`, `introduced`, `automated`, `migrated`, and `built` are useful only when the source material supports that level of responsibility.
- The hard part is visible. For Farrukh, that often means one SDK consumed by two clients, a migration inside a live app, build systems other developers depend on, or a performance number.
- The sentence would not embarrass him if a senior iOS engineer asked one follow-up question.

If a bullet passes the ATS keyword check but fails this pass, it fails the CV. Rewrite it from `profile/experience.md` until the engineering claim is precise.

**Verbs to stop using:** `Worked on`, `Developed`, `Involved in`, `Helped`, `Participated in`, `Responsible for`, `Assisted`, `Contributed to`, `Collaborated on`, `Utilised`, `Leveraged`.

### Rhythm

Bullets that are all the same length read as a list and get skimmed. Vary them. A short declarative bullet after two long ones lands hard, and a section of four uniform two-line bullets lands as nothing.

**Name only what the posting cares about.** A bullet's technology list is not an inventory of everything used. Do not mix a vendor SDK, a UI framework and a language feature in one list, since that reads as keywords rather than an achievement. A term the posting never mentions adds nothing and costs credibility. `using the Ausweis SDK, SwiftUI and async/await` became `using the Ausweis SDK and SwiftUI` on a posting that named SwiftUI and never mentioned concurrency.

**The hard constraint.** You may not invent a number. If a bullet would be far stronger with a figure that the master does not contain, keep the bullet honest and **record the missing metric under `Metrics worth adding` in `notes.md`** so Farrukh can supply the real figure. Never guess a percentage, a user count, or a time saving.

Right now the master carries only one hard number, the 40% build-performance improvement at PakWheels. Nearly every other bullet describes a responsibility. Flagging those gaps is one of the most useful things you do.

## Prioritise relevant experience

Both the ATS and the recruiter weight relevant professional experience most heavily. Order and emphasise accordingly. The most relevant role and the most relevant bullets within it come first.

## Experience section balance and available space

Tailoring means choosing the lead evidence, not shrinking a paid-employment section to only exact keyword matches. If the posting has three direct matches from Verimi, those three lead the Verimi section. They are not the whole section if the page has room.

A strong one-page CV should usually carry **9 to 11 professional experience bullets** before education:

- **Verimi:** normally 4 to 5 bullets
- **PakWheels:** normally 5 to 6 bullets

The sections do not need equal length, but neither employer should look thin unless the page physically cannot fit more. Use this order inside each employer:

1. Direct matches to the posting's responsibilities and requirements
2. Adjacent achievements that strengthen the same hiring argument
3. Broad senior signals that increase trust, such as mentoring, code reviews, CI/CD, migrations, crash rate, performance or SDK ownership

For example, a posting may only ask for SwiftUI, UIKit and CI/CD. That does not mean the CV should show only three bullets. Add the Objective-C to Swift migration, crash-free score, SPM build improvement or SDK work where they strengthen the picture of a senior iOS engineer who can own production systems.

Do not pad with irrelevant technologies. Fill the page with the best true evidence from the same track and employer, ordered by relevance.

## The three-way test

Before finishing, check the CV is all three:

- **Machine-readable** — clear structure, standard headings, relevant keywords
- **Content-driven** — measurable achievements directly relevant to the target role
- **Human-friendly** — concise, easy to scan, visibly tailored to this position

## The summary

Do not stuff the CV with as many keywords as possible. **Tailor it specifically to each position.** A customised CV that uses the right terminology, demonstrates measurable achievements, and follows a clean structure scores significantly better with both the software and the recruiter.

---

# Part 2: the mechanics

How to actually produce the file. These are technical constraints, not editorial choices.

## Read these five files before you write anything

| File | What it gives you |
|---|---|
| `profile/cv-skeleton.typ` | The document **structure** and the fixed facts. Its content slots hold samples, not defaults |
| `profile/skills.md` | **The skill pool.** Every skill available, with an evidence rating on each. Pick the sidebar from here |
| `profile/experience.md` | **The detail behind the employment bullets.** Read this before rewording any Verimi or PakWheels line |
| `profile/education.md` | **The education bullet pool**, with a use-when column. The skeleton holds the degrees and dates |
| `profile/projects.md` | Academic and personal project depth, mostly for the letter and interview brief |

`skills.md` and `experience.md` exist because the one-line bullets in the master are too thin to tailor well on their own. A CV written without reading them will be generic, and it will miss the cross-cutting themes at the foot of `experience.md` that make the two jobs read as one coherent engineer.

## Never invent

**Reorder, reweight, reword, cut.** Every line must trace to one of the four files above. If the posting wants Kubernetes and Farrukh has never used it, it does not appear. Not as "familiar with", not as "exposure to".

**Respect the evidence ratings in `skills.md`.** `strong` is safe. `listed` is real but unevidenced, so be ready to justify it. **`ask` never reaches a CV without confirmation**, and neither does anything marked `TODO` in `experience.md` or `TODO:VERIFY` in `projects.md`. Stop and ask instead.

That rule has already caught real errors: TensorFlow was withheld from the BJAK CV because only a track file claimed it, and `async/await` reached a sidebar with no bullet behind it.

## Output format

**Assemble** `applications/<slug>/cv.typ`. Take the structure from `profile/cv-skeleton.typ`, then fill each slot from the source files against this posting.

The skeleton's sample lines are there so it renders and the layout stays checkable. **They are not a default set and must not be copied through.** A CV that reuses them has not been tailored.

### Start from the skeleton

**Copy `profile/cv-skeleton.typ` to `applications/<slug>/cv.typ`, then replace every `SLOT:` line.** That is the whole procedure. The skeleton is a complete, rendering artefact, so you have a working starting point and never need a finished CV to know what one looks like.

`check-style.py` fails if a `SLOT:` survives into a generated CV, so an unfilled slot cannot ship.

This used to say the opposite: never copy the skeleton, assemble a `.typ` from scratch. That rule was protecting against the skeleton's sample bullets leaking into a real CV, which was a real risk, but it left the agent building a file from prose with no working example anywhere in `profile/`. On 2026-07-31 it did the predictable thing and opened `applications/sumup-ios-mobile-platform/` while tailoring for **Arise**, a consumer weight-loss app with nothing in common with an internal platform role.

The samples are now `SLOT:` markers instead of realistic bullets. They cannot be mistaken for content, and the checker catches any that survive, so copying the skeleton is both safe and the point.

**Write your own header comment.** The skeleton's opening comment block, `// CV SKELETON...` through `// Layout lives in cv-template.typ...`, is written for whoever is tailoring, not for the finished CV. Replace it with one short line naming the application, for example `// CV for <Company> - <Role>. Generated <date>.` Typst comments never print, so leaving the skeleton's instructions in place is not a rendering defect, but that block says the word `SLOT:` three times in its own prose, describing the mechanism rather than marking a real placeholder, and a generated CV that still carries it looks like it was never opened.

Layout lives in `profile/cv-template.typ` and must not be touched. Change content only, through these functions:

```typst
#import "/profile/cv-template.typ": *

#show: cv.with(
  name: "Farrukh Rasool",
  title: "...",                       // mirror the posting's job title
  photo: "/profile/assets/cropped.png",
  sidebar: [
    #side-head("Contact")
    #contact-row("/profile/assets/icon-phone.png", "...")
    #side-head("Technical Skills")
    #side-list(("...", "..."))        // reorder for the posting
  ],
)

#main-head("Professional Experience")
#entry(org: "", dates: "", role: "", blurb: none, bullets: ([...], [...]))

#main-head("Education", bar: false)
#edu(degree: "", where: "", bullets: ([...],))
```

Paths stay absolute (`/profile/...`), because the copy sits in a different directory from the master.

## The Contact location line

**Always set the Contact location to match the job.** Standing rule, every application.

| Job location | Contact line shows |
|---|---|
| Anywhere in Europe | **That job's city**, with its country. A Munich role gets `Munich, Germany`. An Amsterdam role gets `Amsterdam, Netherlands` |
| USA, Canada, Australia | **`Berlin, Germany`** |
| Remote, no city named | The company's headquarters city if it is in Europe, otherwise `Berlin, Germany` |

The master says `Bavaria, Germany`. Override it per application. This is the one field where the tailored CV deliberately differs from the master.

**Record the city under `Location claimed` in `notes.md`.** Across many applications each will show a different city, and Farrukh needs to know which one a given employer saw before a phone screen.

## The Verimi role line and working student status

The Verimi position is a **working student contract**, not full time. The master CV says `IOS Developer` without the qualifier, which is Farrukh's deliberate choice for general applications.

**Add the qualifier when it helps, leave it off otherwise.**

| Situation | Verimi role line |
|---|---|
| Working student, Werkstudent, internship or dual-study posting | **`IOS Developer (Working Student)`** |
| A posting that requires current enrolment | **`IOS Developer (Working Student)`** |
| Ordinary professional or full-time posting | `IOS Developer` |

Where the posting is itself a student role, stating it is an advantage rather than a weakness. It makes the application coherent, since otherwise a reader sees what looks like full-time employment and wonders how a 20-hour student contract fits alongside it.

**PakWheels was full time** and never carries the qualifier.

Record which form you used under `Employment status shown` in `notes.md`, so he knows what a given employer saw before a call.

## The Technical Skills list

**`profile/skills.md` is the pool. Every application picks a subset from it.**

`skills.md` is the catalogue, grouped by category, with an evidence rating on every entry. It is the only place the pool lives. The skeleton shows three sample rows so it renders, nothing more.

Neither is a template to copy wholesale. The pool deliberately holds more skills than any one CV should show, and the master is **not** expected to fit one page. Never trim the master to make it fit. Pick from it instead.

**Selection.** Read the posting, then take only the skills it actually asks for or that genuinely support it, most relevant first. A posting that never mentions machine learning does not need `CNN | ViT` on the CV, and a posting that never mentions Android does not get Kotlin invented for it. Everything you include must exist in the master's pool.

**Rows.** Group skills onto rows by word length, so no row ever wraps:

| Word length | Skills per row | Example |
|---|---|---|
| Long words | **1** | `Clean Code Architecture` |
| Ordinary words | **2** | `Firebase \| Crashlytics` |
| Abbreviations and short words | **3** | `SDKs \| SPM \| Cocoa Pod`, `UI/UX \| SDLC \| CI/CD` |

Roughly 32 characters is the sidebar's usable width. A row that exceeds it wraps onto a second line, which costs the same vertical space as an extra skill and looks unintentional. When in doubt, put fewer on the row.

**A wrapped row can silently break the CV.** The sidebar text is white on a dark panel. If the sidebar grows past page one, the overflow lands on a page with no dark panel behind it, so it renders white on white and becomes invisible. `Languages` sits last and is the first thing lost. Always confirm English and German still appear on page one after rendering.

## What you may change

- `title:` to mirror the posting's own job title
- The Contact location line, per the rule above
- The Verimi role line, per the working student rule above
- The contact email, when Farrukh asks for a different one on a given application. Change it in `cv.typ` only, never in the master, and record it under `Email used` in `notes.md`. The letter reads the email out of the tailored CV, so changing it in one place keeps both documents consistent
- Order, wording, **and selection** of `side-list` skills, per the skills rules below
- Order and wording of `bullets` within each role
- Which education bullets appear, and their order

**Decision, 2026-07-31: no profile summary section.** Proposed and declined. The CV opens with the name and the role line, exactly as the Canva original does. Do not add a summary, profile, objective or "about me" block, and do not propose it again.

## What you must not change

- Anything in `cv-template.typ`, including fonts
- The accent bar. Exactly one, above Professional Experience. Education is `bar: false`
- Employment dates, employers, job titles, degree names, institutions
- The Masters runs `Mar. 2025 - present`. Coursework is done and only the thesis remains, but it is written as in the CV

## Sidebar entries fit one line

Over roughly 33 characters an entry wraps and the wrapped line has no bullet, which looks broken. `Unit Testing | Clean Architecture` fits, `Unit Testing | Clean Code Architecture` does not. Split or shorten.

## Fitting the page

**A tailored CV must be one page AND must fill it.** Both failures have shipped. Run `./scripts/render-cv.sh <slug>`, which reports page count and free space at the foot of the main column.

### If it overflows, diagnose the column first

**Do not start cutting.** Two different failures look the same in a page count:

| Symptom on page two | Cause | What to cut |
|---|---|---|
| Visible text | **Main column** too long | The weakest experience or education bullet |
| Page looks blank | **Sidebar** too long | Skill rows. Merge or drop them |

The blank-looking page is the dangerous one. Page two has no navy panel, so white sidebar text renders **white on white and is invisible**. `Languages` sits last and goes first, and the PDF looks fine at a glance. The checker reports which column overflowed. Believe it.

**Cutting the wrong column is how content gets lost permanently.** Main-column content cut to fix a sidebar overflow never comes back, because fixing the sidebar afterwards leaves a gap nobody looks for.

### If it underfills, add content back

More than about 12 mm free at the foot means the page is wasted. The checker says `UNDERFILL`. Add in this order until it reports `fit ok`:

1. **Professional experience bullets until both employers look substantial.** Bring Verimi to 4 or 5 bullets and PakWheels to 5 or 6 where the source material supports it.
2. **Adjacent achievements from `profile/experience.md`**, especially cross-cutting themes that strengthen the chosen track even if they are not exact posting keywords.
3. **Education bullets.** All six M.Sc. bullets, then Bachelors ones from `education.md` when the posting names those stacks or the page still needs honest content.
4. **A skills row**, only if the sidebar is visibly shorter than the main column.

Never pad with something irrelevant. If nothing genuine fits, leave the space.

### The rule that prevents the recurring bug

**Every cut is provisional until the CV is final.** If you cut something to fit and later free space by any other means, the first thing you do is put it back. Re-run the checker after **every** change, not once at the end.

Two things cost a page without looking like it: a skills row long enough to wrap, and lengthening a bullet rather than adding one.

## Review before delivery

**A CV is not finished when it renders.** Run the `application-review` agent, which runs `scripts/check-style.py` and `scripts/check-fit.py` and then checks every posting requirement has a bullet against it. Fix what it finds before showing anything.

## Rendering

```bash
./scripts/render-cv.sh <slug>
```

Produces `applications/<slug>/Farrukh_Rasool_CV.pdf`, the file to submit. The filename carries his name because that is what a recruiter sees in their inbox. If Typst errors, fix the `.typ` and rerun. Never hand-edit the PDF.

## The layout's one cost

The template reproduces Farrukh's Canva CV exactly, two columns with a navy sidebar. That was his explicit decision and is not up for revisiting.

Know the trade-off. Some ATS parsers read two-column layouts out of order and can interleave the sidebar into the experience text. **So keyword alignment matters more here, not less.** Make sure the posting's terms appear in the **main-column bullets**, not only in the sidebar skills list, so the CV still reads correctly if a parser drops or reorders the sidebar.

The `|` separators throughout the sidebar are part of the design. Keep them, but do not introduce further special characters.

## Projects sit under Education

There is no separate Projects section. Academic projects are bullets under the Masters entry. Reorder so the most relevant to the posting comes first, and reword to match the posting's vocabulary where honest.

`profile/projects.md` holds far more depth than fits. Use it for the letter and the interview brief, not to expand this section.

## notes.md

Write alongside the CV:

```markdown
# Application notes

**Track:** ...
**Location claimed:** the city on the Contact line for this application
**Email used:** only if it differs from the master
**Employment status shown:** whether the Verimi line carried the Working Student qualifier
**Led with:** which experience and projects, and why
**Experience balance:** Verimi bullet count, PakWheels bullet count, and how available space was used without padding
**Cut:** what was left out, so the interview is not blindsided

## Terminology mirrored
Which of the posting's exact terms were used, and where. **Must be an `## ` heading, exactly this text.** `check-style.py`'s `claims` check parses from this heading to the next one to verify each backticked term actually appears in the main-column bullets. A bold label here instead of a heading has twice made the check either skip the file entirely or run against the wrong span.

**Metrics worth adding:** bullets that would be far stronger with a real number Farrukh has not recorded. Be specific about which figure to supply
**Gaps not closed:** what the posting wants that is genuinely absent
**Page count:** confirm one page
```

`Metrics worth adding` and `Gaps not closed` matter most. The first drives the achievements rule over time. The second is read by `interview-prep`, so Farrukh walks in already knowing the weak points of what he sent.
