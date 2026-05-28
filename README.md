# Panini_back

API Spring Boot pour gérer une collection Panini Coupe du Monde 2026.

## Lancer en local

```bash
./mvnw spring-boot:run
```

Ou avec Maven installé :

```bash
mvn spring-boot:run
```

## Endpoints

- `GET /api/stickers`
- `GET /api/stickers?search=mbappe`
- `GET /api/stickers?team=FRA`
- `GET /api/collection/Anthonin`
- `GET /api/collection/Anthonin/stats`
- `POST /api/collection`

Exemple body :

```json
{
  "ownerName": "Anthonin",
  "stickerCode": "FRA20",
  "quantityOwned": 2
}
```
