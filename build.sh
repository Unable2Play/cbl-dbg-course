#!/bin/bash
# Assembles the course from parts.
# Run from the course directory: bash build.sh
set -e
cat _base.html modules/*.html _footer.html > index.html
echo "Built index.html (English)."
if [ -f _base.de.html ] && [ -d modules-de ]; then
  cat _base.de.html modules-de/*.html _footer.html > index.de.html
  echo "Built index.de.html (German)."
fi
echo "Open index.html in your browser."
