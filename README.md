# Warsztat G-code

Interaktywny kurs programowania obrabiarek CNC (frezowanie i toczenie, składnia ISO/Fanuc) od zera.

- 10 lekcji z wizualizacjami 2D i 3D: osie maszyny, układy współrzędnych, budowa programu, G00/G01, G02/G03, parametry skrawania, korekcje G41/G42/G43, cykle wiercenia, toczenie (G96, G50, G71), projekt płytki; każda zaczyna się ramką „W skrócie”
- **generator CAM**: wczytaj rysunek DXF lub model STL (albo wklej go Ctrl+V), a program G-code powstanie sam:
  - DXF, frezarka 2,5D: rozpoznaje kontur zewnętrzny, kieszenie z wyspami, otwory i rowki; dobiera frezy, wiertła i parametry dla materiału; obróbka zgrubna z wejściem po rampie, wykańczanie współbieżne z łukami G02/G03, nakiełkowanie i cykle G81/G83
  - STL, frezarka 3D: obróbka zgrubna warstwami Z i wykańczająca frezem kulowym
  - DXF, tokarka: planowanie, G71 + G70 z profilu, przecinanie
  - głębokości z nazwy warstwy (np. `KIESZEN_6`) albo z ujemnego Z, tabela cech do edycji, podgląd torów, czas obróbki, pobieranie pliku .NC i otwarcie w symulatorze
- praca przy maszynie: tryby sterowania, ustawienie zera i narzędzi krok po kroku, korektory, alarmy, typowe błędy, BHP
- tabele warsztatowe: parametry skrawania, wiercenie, gwinty i otwory pod śruby, pasowania, chropowatość, kalkulator S i F
- słowniczek pojęć
- quizy po każdej lekcji i test końcowy
- ściąga kodów G i M
- symulator G-code: edytor, wykrywanie błędów i kolizji, podgląd 3D z usuwaniem materiału

## Instalacja

- **Jako aplikacja (PC i telefon):** otwórz https://baniak88.github.io/programowanie-cnc/ w Chrome lub Edge i kliknij „Zainstaluj” w pasku adresu (na Androidzie: menu → „Zainstaluj aplikację”, na iPhonie: Udostępnij → „Do ekranu początkowego”). Aplikacja działa potem offline i sama się aktualizuje, a na komputerze otwiera pliki .DXF i .STL.
- **Paczka offline:** pobierz [`dist/warsztat-gcode.zip`](https://github.com/Baniak88/programowanie-cnc/raw/main/dist/warsztat-gcode.zip), rozpakuj i otwórz `warsztat-gcode.html`. Instrukcja jest w `INSTALACJA.txt`.

## Uruchomienie bez instalacji

`index.html` to jeden samodzielny plik: three.js jest wbudowany, więc kurs działa po otwarciu w przeglądarce, także bez internetu. Pobierz go ([link do pobrania](https://github.com/Baniak88/programowanie-cnc/raw/main/index.html)) i otwórz w Chrome, Firefoksie lub Edge, na komputerze albo telefonie. Bez internetu zmieniają się tylko czcionki na systemowe.

Bez WebGL symulator przechodzi na widok z góry.

## Edycja

Źródłem jest `kurs.html` (treść strony bez nagłówka dokumentu). Po zmianach uruchom `./build.sh`, który generuje `index.html` (z wbudowanym `vendor/three.min.js`) oraz paczkę `dist/warsztat-gcode.zip`. Pliki aplikacji instalowalnej: `manifest.webmanifest`, `sw.js`, `icons/` (three.js r128, licencja MIT w `vendor/THREE-LICENSE.txt`).

## Publikacja

GitHub Pages: Settings → Pages → Deploy from a branch → `main` / `(root)`.
