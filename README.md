---
type: job-market-material
status: active
created: 2026-05-06
updated: 2026-05-06
tags:
  - cv
  - career
  - non-academic
entry: cv.md
material_kind: cv
github_sync: yes
github_repo: danielberntson/cv
gitignore_profile: website-static
---

# Non-Academic CV

One-page general-audience CV for non-academic job applications.

## Files

- `cv.md` — **canonical content** (plain text; this is what you edit)
- `index.html` — styled HTML; serves both the web version and PDF source
- `cv.pdf` — rendered A4 PDF

## Workflow

To update the CV: **edit `cv.md`**, then ask an agent to:

1. Update `index.html` to match the new content (preserving design and styles).
2. Regenerate `cv.pdf` from `index.html`.

## Web version

Live at [danielberntson.github.io/cv](https://danielberntson.github.io/cv/). Push `index.html` to `main` to update.

The same `index.html` serves both web and print — it's responsive on screen and snaps to A4 in print mode via `@media print`.

## Regenerating the PDF

```bash
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --headless --no-pdf-header-footer \
  --print-to-pdf=cv.pdf index.html
```
