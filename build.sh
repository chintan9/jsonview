#!/bin/bash -e

rm -rf ts-out build-chrome build-firefox

# Standard TypeScript Compile
tsc

# Find all compiled test files in ts-out and pass them to the test runner.
TEST_FILES=$(find ts-out -name "*.test.js")

if [ -z "$TEST_FILES" ]; then
  echo "No tests found in ts-out. Skipping tests."
else
  node --test $TEST_FILES
fi

# Lightning fast linting with Oxc
pnpm lint

# Fast bundling with Rolldown
pnpm build

# Chrome Assets & Zip
cp src/viewer.css build-chrome/viewer.css
cp src/manifest.chrome.json build-chrome/manifest.json
cp license.txt build-chrome/license.txt
cp -r src/_locales build-chrome
cp src/icon*.png build-chrome 2>/dev/null || true

rm -f jsonview-chrome.zip
pushd build-chrome
zip -r -q ../jsonview-chrome.zip *
popd

# Firefox Assets & Zip
cp src/viewer.css build-firefox/viewer.css
cp src/manifest.firefox.json build-firefox/manifest.json
cp license.txt build-firefox/license.txt
cp -r src/_locales build-firefox
cp src/icon*.png build-firefox 2>/dev/null || true

rm -f jsonview-firefox.zip
pushd build-firefox
zip -r -q ../jsonview-firefox.zip *
popd