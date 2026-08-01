---
description: Any time: sync the Obsidian Job-Hunting vault with the executable pipeline
argument-hint: [optional focus, e.g. cv-quality | docs | defects]
---

Run the `vault-curator` agent for: $ARGUMENTS

Vault path:

`/Users/pakwheels/Desktop/Job-Hunting`

## Purpose

Use this when I add feedback, defects, examples or decisions to the Obsidian vault and want the pipeline to learn from it.

The vault is the human memory. The repo is what agents actually obey. A useful rule in the vault must be translated into one of:

- `.claude/skills/*/SKILL.md`
- `.claude/agents/*.md`
- `.claude/commands/*.md`
- `scripts/*.py`

## Guardrail

The vault is not a CV content source. It may contain real application examples and rejected bullets. Read those for failure shape and quality standard only. Never copy example bullets, application-specific selection decisions, or vault snapshots into a new CV.

## Do

1. Read the relevant vault notes for the requested focus.
2. Compare them with the live pipeline files.
3. Say what is already enforced.
4. Add or propose missing rules in the executable pipeline.
5. Run:

```bash
python3 scripts/check-pipeline.py
python3 scripts/check-docs.py
```

If vault documentation is stale, report the exact notes and counts that need updating.
