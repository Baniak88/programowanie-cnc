# Warsztat G-code

Interaktywny kurs programowania obrabiarek CNC (frezowanie i toczenie, składnia ISO/Fanuc) od zera.

- 10 lekcji z wizualizacjami 2D i 3D: osie maszyny, układy współrzędnych, budowa programu, G00/G01, G02/G03, parametry skrawania, korekcje G41/G42/G43, cykle wiercenia, toczenie (G96, G50, G71), projekt płytki
- quizy po każdej lekcji i test końcowy
- ściąga kodów G i M
- symulator G-code: edytor, wykrywanie błędów i kolizji, podgląd 3D z usuwaniem materiału

## Uruchomienie bez instalacji

`index.html` to jeden samodzielny plik: three.js jest wbudowany, więc kurs działa po otwarciu w przeglądarce, także bez internetu. Pobierz go ([link do pobrania](https://github.com/Baniak88/programowanie-cnc/raw/main/index.html)) i otwórz w Chrome, Firefoksie lub Edge, na komputerze albo telefonie. Bez internetu zmieniają się tylko czcionki na systemowe.

Bez WebGL symulator przechodzi na widok z góry.

## Edycja

Źródłem jest `kurs.html` (treść strony bez nagłówka dokumentu). Po zmianach uruchom `./build.sh`, który generuje `index.html` i wbudowuje w niego `vendor/three.min.js` (three.js r128, licencja MIT w `vendor/THREE-LICENSE.txt`).

## Publikacja

GitHub Pages: Settings → Pages → Deploy from a branch → `main` / `(root)`.
