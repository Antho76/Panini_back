# Panini_back

Backend Spring Boot dockerisé pour la collection Panini.

## Lancer en local avec Docker

```bash
docker compose up --build
```

API: `http://localhost:8080`

## Endpoints

- `POST /api/auth/register`
- `POST /api/auth/login`
- `GET /api/me/dashboard`
- `GET /api/me/collection`
- `POST /api/me/collection`
- `GET /api/stickers`
- `GET /api/stickers?category=FWC`
- `GET /api/stickers?country=FRA`
