# Kolets kemi

Förhörsapp i organisk kemi (Stella Kemi 7–9): flashcards med röd/gul/grön markering, förhör, tankekarta och molekylbilder.

- Källfil: `index.html`
- Bygg fristående sida: `./build.sh` → `docs/index.html` (används av GitHub Pages)
- Kör lokalt: `cd docs && python3 -m http.server 8080` → http://localhost:8080

Markeringar och bästa förhörsresultat sparas i webbläsarens localStorage (nyckel `kolets-kemi-v1`), separat per webbläsare och adress.
