# Job Application Pipeline

Personal job search pipeline for **Farrukh Rasool** (AI Engineer / iOS Developer, Germany).

## What this project is

A semi-automated pipeline. Discovery, scoring, and tailoring are automated. **Submission is manual, always.**

## Obsidian vault

The human-readable vault lives at `~/Desktop/Job-Hunting`. It records explanations, decisions, defects and quality standards.

The vault is **not** a source of CV facts or reusable CV bullets. It can contain worked examples and old applications, so agents may use it only as quality memory. Anything the agents must obey belongs in this repo: `.claude/skills`, `.claude/agents`, `.claude/commands` or `scripts/`.

Use `/vault-sync` when a vault lesson should be checked against the executable pipeline.

## Hard rule: no automated submission

Do not build, suggest, or run browser automation against LinkedIn, StepStone, Xing, Indeed, or any employer portal to submit applications. LinkedIn's User Agreement prohibits automated access, and enforcement is real. A restricted account during an active job search is a much larger loss than the time saved.

The pipeline produces a ready-to-paste application package. Farrukh clicks apply.

Reading job alert emails from his own inbox is fine. That is receiving mail, not scraping.

## Flow

Nine steps, each one command, each one agent. Run in order. `/status` any time shows where things stand.

```
  a URL, or pasted job description text
        |
        |  1  /intake <url or paste>        scout
        v
  jobs/inbox/<slug>.md
        |
        |  2  /research <slug>              company-research
        v
  jobs/research/<slug>.md    company brief, read by 3, 5 and 8
        |
        |  3  /score <slug>                 triage
        v
  jobs/scored/<slug>.md      apply or skip, with a track
        |
        |  4  /cv <slug>                    cv-tailor
        v
  applications/<slug>/cv.md + notes.md      <- Farrukh reviews here
        |
        |  5  /letter <slug>                letter-writer
        v
  applications/<slug>/letter.md             tracker row: draft
        |
        |     FARRUKH SUBMITS IT HIMSELF
        |
        |  6  /submitted <slug>             tracker
        v
  status: applied, follow-up clock starts
        |
        |  7  /followups                    tracker
        |  8  /prep <slug>                  interview-prep
        |  9  /outcome <slug> <result>      tracker
        v
  tracker/applications.csv, and rubric calibration
```

## Orientation is one command

To learn where things stand, run `python3 scripts/status.py`. It is read-only and prints the counts, the follow-up queue, anything scored but not tracked, and the health checks.

**Do not rebuild that picture by crawling.** No tree walks, no listing `jobs/` and `applications/`, and no grepping the records in `jobs/scored/` to find what was decided. That crawl cost about 12k tokens a session and the script prints the same facts in forty lines. Open an individual record only when a specific question needs it, and then only that record.

This applies to orientation, not to the generating steps. `/cv`, `/letter` and `/prep` still read the full research brief, the scored record and `profile/` in full. Their quality depends on the prose, and nothing here shortcuts that.

## One slug, everywhere

`<company>-<role>`, lowercase, hyphenated. The same string names the inbox record, the scored record, the application folder, and the tracker `id`. Every command from step 2 on takes it as the argument.

Never invent a second identifier format. If a command cannot find a slug, say so rather than guessing at a near match.

## Steps 4 and 5 are deliberately separate

`/cv` stops before the letter so Farrukh can catch a wrong track choice before it propagates into both documents. Do not write the letter during `/cv`, and do not re-decide the track during `/letter`.

## Only `/submitted` leaves `draft`

The follow-up clock keys off `date_applied`. Nothing may auto-advance a row out of `draft`, or the pipeline starts chasing companies he never applied to.

## Ground truth

**Content and structure are separate.** `profile/cv-skeleton.typ` holds the CV's shape and the facts that never change. Everything selectable lives in `profile/skills.md`, `profile/experience.md`, `profile/education.md` and `profile/projects.md`.

A tailored CV is **assembled** from those sources against the posting. It is never a copy of the skeleton with edits. Never hand-edit a generated CV in `applications/`, fix the source and regenerate.

`profile/constraints.md` holds language level and location. **Check it before scoring any job.** German above A2 is the one hard gate.

**Visa status and salary are deliberately not tracked.** The goal is to land a role, so neither filters or down-ranks a posting. Do not reintroduce them and do not ask about them.

## Two tracks, never blended

Farrukh has a genuinely dual profile: 4+ years shipping production iOS, plus an M.Sc. in AI and recent agentic AI work. A single merged CV undersells both. Every application picks one track:

- `profile/tracks/ai-engineer.md`
- `profile/tracks/ios-developer.md`

The track choice drives which projects lead, how the summary is written, and which skills are listed first.

## Writing style

**The rules live in `.claude/skills/human-voice/SKILL.md`.** Load that skill, do not work from memory. It applies to cover letters, outreach, follow-ups, CV bullets, and any prose that reaches a person.

The short version, with the full catalogue in the skill:

- Plain English. Short sentences.
- **No em dashes. No semicolons.** Standing preference.
- British spelling.
- No AI tells: "thrilled to share", "delve", "leverage", "in today's fast-paced world", "not just X but Y".
- Specific over generic. Name the actual project, the actual number, the actual problem solved.

Never invent a fact to make prose sound better. A vague sentence made specific with a fabricated number is a defect, not an improvement.

## Facts that need verifying before first use

Marked `TODO:VERIFY` throughout `profile/`. These were inferred from GitHub and LinkedIn, not confirmed:

- Employment dates and titles
- Degree completion date
- Work authorisation status
- German language level

Do not put an unverified fact into an application. Ask.
