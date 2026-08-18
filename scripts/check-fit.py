#!/usr/bin/env python3
"""Check how a tailored CV fits the page.

    python3 scripts/check-fit.py <slug>

Two failures, not one. Both have shipped before:

  OVERFLOW  two pages. If the SIDEBAR overflowed, page two has no navy panel, so the
            white sidebar text renders white on white and disappears. Languages sits
            last and goes first. If the MAIN COLUMN overflowed, the text is visible on
            page two. Diagnose which before cutting, or you cut the wrong column.

  UNDERFILL one page with dead space at the foot. Passes a page-count check silently.
            This is what happens when content is cut to fix an overflow and never
            added back after the real cause is fixed.
"""
import os, re, struct, subprocess, sys, tempfile, zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SIDEBAR_FRACTION = 0.39   # navy panel ends at 73.6/210 = 0.350. Clear it properly,
                          # or its right edge reads as main-column ink on every row.
BOTTOM_MARGIN_MM = 6      # the design's own margin, not free space
FREE_MM_THRESHOLD = 12    # below this, the page is effectively full


def decode_png(path):
    d = path.read_bytes()
    pos, idat, w, h, ct = 8, b"", 0, 0, 0
    while pos < len(d):
        ln = struct.unpack(">I", d[pos:pos + 4])[0]
        tag = d[pos + 4:pos + 8]
        if tag == b"IHDR":
            w, h, _, ct = struct.unpack(">IIBB", d[pos + 8:pos + 18])
        elif tag == b"IDAT":
            idat += d[pos + 8:pos + 8 + ln]
        pos += 12 + ln
    raw = zlib.decompress(idat)
    nch = {0: 1, 2: 3, 4: 2, 6: 4}[ct]
    stride = w * nch
    rows, prev, i = [], bytearray(stride), 0
    for _ in range(h):
        f = raw[i]; i += 1
        line = bytearray(raw[i:i + stride]); i += stride
        for x in range(stride):
            a = line[x - nch] if x >= nch else 0
            b = prev[x]
            c = prev[x - nch] if x >= nch else 0
            if f == 1: line[x] = (line[x] + a) & 255
            elif f == 2: line[x] = (line[x] + b) & 255
            elif f == 3: line[x] = (line[x] + (a + b) // 2) & 255
            elif f == 4:
                pp = a + b - c
                pa, pb, pc = abs(pp - a), abs(pp - b), abs(pp - c)
                pr = a if (pa <= pb and pa <= pc) else (b if pb <= pc else c)
                line[x] = (line[x] + pr) & 255
        rows.append(bytes(line)); prev = line
    return w, h, nch, rows


def last_ink_row(w, h, nch, rows, x_from_fraction, x_to_fraction=1.0, dark=True):
    """Lowest row carrying content. dark=False finds light-on-dark, for the sidebar.

    x_to_fraction bounds the probe to a column. Without it, the sidebar's
    light-ink probe scanned from 2% of page width all the way to the page
    edge, which is most of the main column too. A wholly blank page two
    (255 everywhere) then passed the >120 test across that whole span, so
    it read as SIDEBAR OVERFLOW even when nothing had overflowed there.
    Vault Defect Register #5.
    """
    x0 = int(w * x_from_fraction) * nch
    x1 = int(w * x_to_fraction) * nch
    last = 0
    for y, line in enumerate(rows):
        hit = any((line[x] < 200) if dark else (line[x] > 120)
                  for x in range(x0, x1, nch))
        if hit:
            last = y
    return last


def main():
    if len(sys.argv) < 2:
        sys.exit("usage: check-fit.py <slug>")
    slug = sys.argv[1]
    src = ROOT / "applications" / slug / "cv.typ"
    if not src.exists():
        sys.exit(f"no cv.typ for {slug}")

    with tempfile.TemporaryDirectory() as td:
        subprocess.run(
            ["typst", "compile", "--root", str(ROOT), str(src),
             os.path.join(td, "p{n}.png"), "--ppi", "50"],
            check=True, capture_output=True)
        pages = sorted(Path(td).glob("p*.png"))
        print(f"pages     {len(pages)}")

        if len(pages) > 1:
            w, h, nch, rows = decode_png(pages[1])
            main_ink = last_ink_row(w, h, nch, rows, SIDEBAR_FRACTION, 1.0, dark=True)
            side_ink = last_ink_row(w, h, nch, rows, 0.02, SIDEBAR_FRACTION, dark=False)
            print("OVERFLOW  two pages.")
            if main_ink > 0:
                print(f"          MAIN COLUMN overflows by ~{main_ink / h * 300:.0f} mm.")
                print("          Cut the weakest experience or education bullet.")
            if side_ink > 0 and main_ink == 0:
                print("          SIDEBAR overflows. Page two has no navy panel, so this")
                print("          text is WHITE ON WHITE and invisible. Languages goes first.")
                print("          Cut or merge skill rows. Do NOT cut main-column content.")
                print("          White-on-white text is optically identical to a blank page,")
                print("          so this diagnosis cannot be fully certain from pixels alone.")
                print("          If cutting sidebar rows does not fix it, render page two to")
                print("          PNG and look, the main column may be the real cause.")
            sys.exit(1)

        w, h, nch, rows = decode_png(pages[0])
        last = last_ink_row(w, h, nch, rows, SIDEBAR_FRACTION, dark=True)
        free = (h - last) / h * 300 - BOTTOM_MARGIN_MM
        print(f"free      {free:.0f} mm at the foot of the main column")
        if free > FREE_MM_THRESHOLD:
            print(f"UNDERFILL {free:.0f} mm unused. ADD CONTENT BACK.")
            print("          Balance paid experience first, then add adjacent achievements.")
            print("          See the fit procedure in .claude/skills/tailor-cv/SKILL.md.")
            sys.exit(1)
        else:
            print("fit       ok")


if __name__ == "__main__":
    main()
