COMPOSE ?= docker compose
SERVICE ?= db
DATA_DIR ?= ./pgdata_sistema_agua

build:
	$(COMPOSE) build --no-cache

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

restart:
	$(COMPOSE) restart

ps:
	$(COMPOSE) ps

logs:
	$(COMPOSE) logs -f

psql:
	$(COMPOSE) exec $(SERVICE) psql -U $$DB_USER -d $$DB_NAME

reset:
	$(COMPOSE) down -v
	docker run --rm -v $(PWD):/app busybox rm -rf /app/$(DATA_DIR)
	$(COMPOSE) up -d
