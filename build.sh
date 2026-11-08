#!/bin/sh
# Bygger en fristående sida i docs/ (för lokal server och GitHub Pages) från index.html
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '<!doctype html>\n<html lang="sv">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat index.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
touch docs/.nojekyll
echo "Byggt docs/index.html"
