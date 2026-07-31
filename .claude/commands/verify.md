---
description: Any time: verify the pipeline itself after changing a skill, agent or command
---

Run the `pipeline-integrity` agent.

```bash
python3 scripts/check-pipeline.py
```

It enforces the manifest of every rule I have asked for, plus reference integrity, wiring, step numbering, and the semantic traps this project has already fallen into.

Run this after **any** change to a skill, agent, command or profile file. Not after an application, that is `/review`.

If you added a rule I asked for, add it to `RULES` in the script too. A rule outside the manifest is not enforced.

Report one line if clean. Otherwise what failed and what you changed.
