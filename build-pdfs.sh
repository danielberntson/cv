#!/bin/bash
# Generate cv-a4.pdf and cv-letter.pdf from index.html.
# A4 uses index.html as-is. Letter swaps the @page rule, page dimensions,
# and tightens vertical spacing to fit the shorter US Letter page.

set -e
cd "$(dirname "$0")"

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

render() {
  "$CHROME" --headless --no-pdf-header-footer --print-to-pdf="$2" "$1" 2>/dev/null
}

# A4 (default)
render index.html cv-a4.pdf

# Letter — swap dimensions and tighten vertical spacing.
# Letter is 8.5×11in (≈216×279mm), about 18mm shorter than A4.
sed -e 's/@page { size: A4; margin: 0; }/@page { size: Letter; margin: 0; }/' \
    -e 's/210mm/8.5in/g' \
    -e 's/297mm/11in/g' \
    -e 's/padding: 14mm 16mm 12mm;/padding: 9mm 16mm 8mm;/' \
    -e 's/margin-top: 14px;/margin-top: 10px;/g' \
    -e 's/margin-bottom: 12px;/margin-bottom: 8px;/' \
    -e 's/padding-bottom: 14px;/padding-bottom: 10px;/' \
    index.html > .tmp-letter.html
render .tmp-letter.html cv-letter.pdf
rm .tmp-letter.html

echo "Wrote cv-a4.pdf and cv-letter.pdf"
