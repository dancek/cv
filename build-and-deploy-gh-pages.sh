#!/bin/sh
# This is the first time I've tried to automate publishing GitHub pages.
# What could go wrong, right? :D
#
# In all seriousness, this is quick and sloppy and probably breaks soon.
# But hey, I make backups.

set -e

which hackmyresume > /dev/null || echo "hackmyresume not found; try `npm install -g hackmyresume` first."

hackmyresume BUILD fresca/* TO index.html && hackmyresume BUILD fresca/* TO print.html -t positive

git checkout gh-pages
git commit *.html *.css -m 'automatically build, commit and push gh-pages'
git push origin gh-pages
git checkout master
