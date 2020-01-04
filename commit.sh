set -e
set -x
cp -r td/tdlib/bin/ ./
rm -rf td/
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git commit -m "Update binaries" -a