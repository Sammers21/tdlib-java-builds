set -e
set -x
cp -a td/tdlib/bin/. ./
rm -rf td/
git stash && git pull && git stash pop
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git checkout master
git add -A
git commit -m "Update binaries" || true