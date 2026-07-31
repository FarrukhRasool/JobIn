#!/usr/bin/env bash
# Render a tailored CV to PDF.
#
#   ./scripts/render-cv.sh <slug>
#
# Reads  applications/<slug>/cv.typ
# Writes applications/<slug>/Farrukh_Rasool_CV.pdf
#
# The output filename is deliberate. Recruiters see the filename in their
# inbox and in the ATS, so it carries the name, not the slug.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SLUG="${1:-}"

if [ -z "$SLUG" ]; then
  echo "usage: ./scripts/render-cv.sh <slug>" >&2
  echo >&2
  echo "available:" >&2
  ls -1 "$ROOT/applications" 2>/dev/null | sed 's/^/  /' >&2 || echo "  (none yet)" >&2
  exit 1
fi

SRC="$ROOT/applications/$SLUG/cv.typ"
OUT="$ROOT/applications/$SLUG/Farrukh_Rasool_CV.pdf"

if [ ! -f "$SRC" ]; then
  echo "no cv.typ at $SRC" >&2
  echo "run /cv $SLUG first" >&2
  exit 1
fi

if ! command -v typst >/dev/null 2>&1; then
  echo "typst not installed. run: brew install typst" >&2
  exit 1
fi

typst compile --root "$ROOT" "$SRC" "$OUT"

PAGES=$(typst query --root "$ROOT" "$SRC" "<none>" --field value 2>/dev/null | grep -c . || true)
SIZE=$(du -h "$OUT" | cut -f1 | tr -d ' ')

echo "rendered  $OUT  ($SIZE)"

# Fit check: page count AND wasted space. A CV that fits but leaves the foot of the
# page empty passes a page-count check silently, which is how content cut to fix an
# overflow ends up never being added back.
python3 "$ROOT/scripts/check-fit.py" "$SLUG"
