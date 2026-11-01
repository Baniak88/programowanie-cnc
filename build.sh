#!/bin/sh
# Builds index.html from kurs.html: adds the document head and inlines three.js,
# so the page works as a single file opened straight from disk, also offline.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="pl">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  while IFS= read -r line || [ -n "$line" ]; do
    case "$line" in
      *'<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/'*)
        printf '<script>\n'; cat vendor/three.min.js; printf '\n</script>\n' ;;
      *) printf '%s\n' "$line" ;;
    esac
  done < kurs.html
  printf '</body>\n</html>\n'
} > index.html
