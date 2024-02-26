#!/usr/bin/env bash

set -eo pipefail

if [ -z "$1" ]; then
  echo 'Usage: update-version.sh <old-version>'
  exit 1
fi

if [ ! -z "$(git status --porcelain)" ]; then
  echo 'There are uncommitted git changes'
  exit 1
fi

scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
appContents="/Applications/Sublime Text.app/Contents"

oldVersion="$1"
newVersion="$(cat "$appContents/Info.plist" | grep -E -C 1 '<key>CFBundleVersion</key>' | tail -1 | sed -E 's@^\s*<string>([^<]+)</string>$@\1@')"

if [ "$oldVersion" -gt "$newVersion" ]; then
  echo "Old version $oldVersion is greater than new version $newVersion"
  exit 1
elif [ "$oldVersion" -eq "$newVersion" ]; then
  echo "No updates to make, $oldVersion == $newVersion"
  exit 0
fi

tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

set -x

pkg='Scala.sublime-package'
syntax='Scala.sublime-syntax'

cd "$tmpdir"
cp "$appContents/MacOS/Packages/$pkg" ./
unzip "$pkg"

cd "$scriptDir"
git fetch

git checkout -b "base-build-$newVersion"
git reset --hard "origin/base-build-$oldVersion"

cp "$tmpdir/$syntax" ./
git add "$syntax"
git commit --allow-empty -m "Copy Scala syntax from Sublime Text build $newVersion"

git checkout -b "upd-build-$newVersion"
git reset --hard "origin/upd-build-$oldVersion"
git rebase "base-build-$newVersion"
