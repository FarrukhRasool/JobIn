# Job Pipeline

Open this folder in your editor, then run `claude` inside it.

## First run, do this once

1. Skim `profile/constraints.md`. Language level and location are filled in from the CV. Visa status and salary are deliberately not tracked.
2. Content lives in `profile/experience.md`, `skills.md`, `education.md` and `projects.md`. `profile/cv-skeleton.typ` holds only the shape and the fixed facts. Edit the content files when something changes.
3. Skim `profile/projects.md`. Bedtime Story Teller and RosBot are written out fully. Bring the others up to that standard as you use them.
4. Resolve the `TODO:VERIFY` markers. `/cv` refuses to put an unverified fact into an application, so these will block you.

---

# You have a job link. Start here.

```
/intake https://www.linkedin.com/jobs/view/4021234567
```

That is step 1. Every step after it prints the next command with the slug filled in, so you never have to remember the order.

**LinkedIn links usually will not fetch.** LinkedIn serves a login wall to anything not signed in, so `/intake` will tell you it failed and ask you to paste the description text instead. That is expected, not a bug. Paste it and it carries on, keeping the URL on the record.

Company career pages and most other boards fetch fine.

No link, just the text? Paste it straight in:

```
/intake Senior ML Engineer at Acme GmbH. We are looking for...
```

## The nine steps

| Step | Command | Agent | What happens |
|---|---|---|---|
| 1 | `/intake <url or paste>` | `scout` | Normalises the posting into `jobs/inbox/<slug>.md` |
| 2 | `/research <slug>` | `company-research` | Deep-researches the company into `jobs/research/<slug>.md`. Steps 3, 5 and 8 all read it |
| 3 | `/score <slug>` | `triage` | Scores it, apply or skip, picks a track. Use `all` for the whole inbox |
| 4 | `/cv <slug>` | `cv-tailor` | Tailored `cv.typ`, renders `Farrukh_Rasool_CV.pdf`. **Stops here for you to review** |
| 5 | `/letter <slug>` | `letter-writer` | Cover letter, humanised and self-critiqued, rendered to PDF. Tracker row goes in as `draft` |
| | | | **You submit it yourself** |
| 6 | `/submitted <slug>` | `tracker` | Marks it applied, starts the seven day follow-up clock |
| 7 | `/followups` | `tracker` | What has gone quiet, with the nudges drafted |
| 8 | `/prep <slug>` | `interview-prep` | Company brief and likely questions |
| 9 | `/outcome <slug> <result>` | `tracker` | Records the result and checks the rubric against reality |

Plus, any time:

```
/status
```

Shows the whole board and the single most valuable thing to do right now.

And when the Obsidian vault has new feedback or documentation:

```
/vault-sync cv-quality
```

Compares `~/Desktop/Job-Hunting` with the executable pipeline and turns useful vault lessons into agent, skill, command or script rules. The vault is used as quality memory, not as a source for CV content.

## The CV, and why it looks plain

`profile/cv-template.typ` is the master template. `/cv` writes a tailored `applications/<slug>/cv.typ` against it and renders straight to PDF. To re-render after hand-editing:

```
./scripts/render-cv.sh <slug>          -> Farrukh_Rasool_CV.pdf
./scripts/render-letter.sh <slug>      -> Farrukh_Rasool_Cover_Letter.pdf
```

Both are named for the recruiter's inbox rather than the slug. The letter's source stays `letter.md`, so you can paste the text into a web form when there is no file upload, and the PDF is generated from it.

The template is single column, table free, icon free, with standard section headings. That is deliberate, not lazy. Applicant tracking systems read multi-column layouts out of order, merge columns into nonsense, and discard anything in headers or footers. A visually designed CV can parse as garbage before a human sees it. The reasoning is written at the top of the template file.

**Keep your Canva CV.** It is a separate artefact for human readers: emailing a hiring manager directly, networking, career fairs. Update it two or three times a year. This one is built to survive a machine, and it is the one that goes into online forms.

Requires `typst`, installed via `brew install typst`.

## The slug

One identifier for everything: `<company>-<role>`, lowercase and hyphenated.

```
acme-machine-learning-engineer
```

Names the inbox record, the scored record, the `applications/` folder, and the tracker row. Step 1 creates it, every later step takes it as the argument.

## Why steps 4 and 5 are separate

`/cv` stops before writing the letter so you can check the track choice. If it picked AI Engineer and the role is really iOS, you catch it on one document instead of two. Fix it, rerun `/cv`, then run `/letter`.

## A full run

```
/intake https://www.linkedin.com/jobs/view/4021234567
   fetch fails, you paste the description
   -> jobs/inbox/acme-machine-learning-engineer.md

/score acme-machine-learning-engineer
   -> 78/100, APPLY, track ai-engineer

/cv acme-machine-learning-engineer
   -> applications/acme-machine-learning-engineer/cv.md + notes.md
   you read it

/letter acme-machine-learning-engineer
   -> letter.md, tracker row as draft

   you apply on their site

/submitted acme-machine-learning-engineer
   -> applied, follow-up due in 7 days

/followups          seven days later
/prep acme-machine-learning-engineer
/outcome acme-machine-learning-engineer interview
```

## Agents

| Agent | Does |
|---|---|
| `scout` | Imports postings from a URL or pasted text |
| `company-research` | Deep-researches the company into a briefing file |
| `triage` | Scores against your profile and constraints |
| `cv-tailor` | Generates the tailored CV variant |
| `letter-writer` | Cover letter, or German Anschreiben |
| `tracker` | Owns the CSV, drafts follow-ups, calibrates the rubric |
| `interview-prep` | Company brief and likely questions |
| `application-review` | Reviews finished CVs and letters before they reach you |
| `pipeline-integrity` | Verifies agent, command, skill and profile changes |
| `vault-curator` | Syncs Obsidian vault lessons back into executable pipeline rules |

## Skills

| Skill | Does |
|---|---|
| `job-intake` | Record schema, slug convention, URL fallback |
| `company-brief` | Source order and structure for company research |
| `fit-score` | The scoring rubric |
| `tailor-cv` | CV tailoring procedure and ATS rules |
| `cover-letter` | Letter structure, German conventions |
| `track-application` | Tracker schema, status transitions, follow-up cadence |
| `interview-brief` | Research and question generation |
| `human-voice` | Human-sounding prose rules for CV bullets, letters and follow-ups |
| `letter-critique` | Self-critique standard for cover letters |

## What this does not do

It does not submit applications. That is deliberate, see `CLAUDE.md`.
