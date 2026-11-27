#!/usr/bin/env bash
# Build every language and assemble the result in ./public:
#   en -> public/   ru -> public/ru/   kk -> public/kk/
set -euo pipefail
cd "$(dirname "$0")"

rm -rf public
for lang in en ru kk; do
  (cd "$lang" && zensical build --clean)
done

mkdir -p public
cp -R en/site/. public/
cp -R ru/site public/ru
cp -R kk/site public/kk

echo "Done. Preview with: python3 -m http.server -d public 8000"
