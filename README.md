# Moodle Plugin Boilerplate

## Setup moodle-plugin-ci

Build the docker image, start docker compose and run `bin/setup.sh`. This will install Moodle locally and setup the database.

```bash
docker compose build
docker compose up -d
docker compose exec php bin/setup.sh
```
