---
type: job-market-material
status: active
created: 2026-05-06
updated: 2026-05-06
tags:
  - cv
  - career
  - non-academic
entry: index.html
material_kind: cv
github_sync: yes
github_repo: danielberntson/cv
gitignore_profile: website-static
---

# Non-Academic CV

One-page general-audience CV for non-academic job applications.

## Files

- `index.html` — responsive web version; GitHub Pages source
- `mockup-1.html` — A4 print layout; source for PDF generation
- `mockup-1.pdf` — rendered A4 PDF
- `draft-1.md` — plain-text content draft

## Web version

Live at [danielberntson.github.io/cv](https://danielberntson.github.io/cv/). Push to `main` to update.

## Generating the PDF

```bash
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --headless --no-pdf-header-footer \
  --print-to-pdf=mockup-1.pdf mockup-1.html
```
