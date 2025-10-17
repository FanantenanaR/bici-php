# Lancement
## Build de l'image

```bash
docker build -t exo-php .
```
## Lancement de l'image
```bash
docker run -d --name exo-php-container -p 8086:80 exo-php
```
