#!/bin/sh
# Builds index.html from kurs.html: adds the document head and inlines three.js,
# so the page works as a single file opened straight from disk, also offline.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="pl">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<meta name="theme-color" content="#131B23">\n<link rel="manifest" href="manifest.webmanifest">\n<link rel="icon" href="icons/icon-192.png">\n<link rel="apple-touch-icon" href="icons/apple-touch-icon.png">\n<meta name="apple-mobile-web-app-capable" content="yes">\n<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  while IFS= read -r line || [ -n "$line" ]; do
    case "$line" in
      *'<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/'*)
        printf '<script>\n'; cat vendor/three.min.js; printf '\n</script>\n' ;;
      *) printf '%s\n' "$line" ;;
    esac
  done < kurs.html
  printf '</body>\n</html>\n'
} > index.html

# Offline package: the single page plus a short guide, zipped for download.
mkdir -p dist && rm -f dist/warsztat-gcode.zip
( cd dist && cp ../index.html warsztat-gcode.html && cp ../INSTALACJA.txt . && zip -q -9 warsztat-gcode.zip warsztat-gcode.html INSTALACJA.txt && rm warsztat-gcode.html INSTALACJA.txt )
