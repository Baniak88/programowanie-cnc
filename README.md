# Warsztat G-code

Interaktywny kurs programowania obrabiarek CNC (frezowanie i toczenie, składnia ISO/Fanuc) od zera.

- 10 lekcji z wizualizacjami 2D i 3D: osie maszyny, układy współrzędnych, budowa programu, G00/G01, G02/G03, parametry skrawania, korekcje G41/G42/G43, cykle wiercenia, toczenie (G96, G50, G71), projekt płytki
- quizy po każdej lekcji i test końcowy
- ściąga kodów G i M
- symulator G-code: edytor, wykrywanie błędów i kolizji, podgląd 3D z usuwaniem materiału

## Uruchomienie

Jeden plik HTML bez kroku budowania. Otwórz `index.html` w przeglądarce albo uruchom serwer:

```
python3 -m http.server 8080
```

i wejdź na http://localhost:8080. Model 3D korzysta z three.js (r128) z cdnjs, więc wymaga internetu; bez WebGL symulator przechodzi na widok z góry.

## Edycja

Źródłem jest `kurs.html` (treść strony bez nagłówka dokumentu). Po zmianach uruchom `./build.sh`, który generuje `index.html`.

## Publikacja

GitHub Pages: Settings → Pages → Deploy from a branch → `main` / `(root)`.
