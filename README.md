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
- `cv-a4.pdf` — A4 PDF (international / European audiences)
- `cv-letter.pdf` — US Letter PDF (US audiences)
- `build-pdfs.sh` — regenerates both PDFs from `index.html`

## Workflow

To update the CV: **edit `cv.md`**, then ask an agent to:

1. Update `index.html` to match the new content (preserving design and styles).
2. Run `./build-pdfs.sh` to regenerate both PDFs.

## Web version

Live at [danielberntson.github.io/cv](https://danielberntson.github.io/cv/). Push `index.html` to `main` to update.

The same `index.html` serves both web and print — it's responsive on screen and snaps to A4 in print mode via `@media print`. The Letter PDF is built by patching the print CSS at build time (see `build-pdfs.sh`).

## Regenerating PDFs

```bash
./build-pdfs.sh
```

Generates `cv-a4.pdf` and `cv-letter.pdf`. The Letter variant uses tighter vertical spacing because Letter (≈279mm tall) is about 18mm shorter than A4 (297mm).
