#!/usr/bin/env bash
# Render a cover letter to PDF.
#
#   ./scripts/render-letter.sh <slug>
#
# Reads  applications/<slug>/letter.md   (the source of truth)
# Writes applications/<slug>/Farrukh_Rasool_Cover_Letter.pdf
#
# letter.md stays the single source. Many application forms want the text pasted
# into a textarea rather than a file, so the markdown has to remain usable on its
# own. The PDF is derived from it and can never drift.
#
# Company and role come from jobs/scored/<slug>.md. The contact location is taken
# from the tailored CV, so the letter always claims the same city the CV does.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SLUG="${1:-}"

if [ -z "$SLUG" ]; then
  echo "usage: ./scripts/render-letter.sh <slug>" >&2
  echo >&2
  echo "available:" >&2
  ls -1 "$ROOT/applications" 2>/dev/null | sed 's/^/  /' >&2 || echo "  (none yet)" >&2
  exit 1
fi

SRC="$ROOT/applications/$SLUG/letter.md"
OUT="$ROOT/applications/$SLUG/Farrukh_Rasool_Cover_Letter.pdf"

if [ ! -f "$SRC" ]; then
  echo "no letter.md at $SRC" >&2
  echo "run /letter $SLUG first" >&2
  exit 1
fi

if ! command -v typst >/dev/null 2>&1; then
  echo "typst not installed. run: brew install typst" >&2
  exit 1
fi

TYP="$ROOT/applications/$SLUG/.letter.typ"

ROOT="$ROOT" SLUG="$SLUG" SRC="$SRC" TYP="$TYP" python3 <<'PY'
import os, re, datetime, pathlib

root = pathlib.Path(os.environ["ROOT"])
slug = os.environ["SLUG"]
src  = pathlib.Path(os.environ["SRC"])
typ  = pathlib.Path(os.environ["TYP"])

# company and role from the scored record
company = role = None
rec = root / "jobs" / "scored" / f"{slug}.md"
if not rec.exists():
    rec = root / "jobs" / "inbox" / f"{slug}.md"
if rec.exists():
    head = rec.read_text().split("---")
    if len(head) > 1:
        for line in head[1].splitlines():
            if line.startswith("company:"): company = line.split(":", 1)[1].strip()
            elif line.startswith("role:"):  role = line.split(":", 1)[1].strip()

# claim the same city and the same title the tailored CV claims, so the letter
# never contradicts the CV sitting next to it in the same application
location = "Bavaria, Germany"
title = "iOS Developer"
email = "farrukhrasool65@gmail.com"
cv = root / "applications" / slug / "cv.typ"
if cv.exists():
    cvtext = cv.read_text()
    m = re.search(r'icon-pin\.png",\s*"([^"]+)"', cvtext)
    if m: location = m.group(1)
    m = re.search(r'^\s*title:\s*"([^"]+)"', cvtext, re.M)
    if m: title = m.group(1)
    m = re.search(r'icon-mail\.png",\s*link\("mailto:([^"]+)"', cvtext)
    if m: email = m.group(1)

def esc(t):
    # Typst markup: escape what would be interpreted, keep * and _ working
    for ch in ["\\", "#", "$", "@", "<", ">", "~"]:
        t = t.replace(ch, "\\" + ch)
    return t

paras = [p.strip() for p in re.split(r"\n\s*\n", src.read_text().strip()) if p.strip()]
body = "\n\n".join(esc(p).replace("\n", " \\\n") for p in paras)

typ.write_text(f'''#import "/profile/letter-template.typ": letter

#show: letter.with(
  name: "Farrukh Rasool",
  title: "{title}",
  contact: ("{location}", "{email}", "+49 15751541415"),
  company: {f'"{company}"' if company else "none"},
  role: {f'"{role}"' if role else "none"},
  date: "{datetime.date.today().strftime('%-d %B %Y')}",
)

{body}
''')
PY

typst compile --root "$ROOT" "$TYP" "$OUT"
rm -f "$TYP"

SIZE=$(du -h "$OUT" | cut -f1 | tr -d ' ')
echo "rendered  $OUT  ($SIZE)"

python3 - "$OUT" <<'PY'
import re, sys
n = len(re.findall(rb"/Type\s*/Page[^s]", open(sys.argv[1], "rb").read()))
if n:
    print(f"pages     {n}")
    if n > 1:
        print(f"WARNING   {n} pages. A cover letter should be one. Cut it back.")
PY
