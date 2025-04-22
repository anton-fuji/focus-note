.PHONY: build up down logs exec-db
build:
	docker compose up --build -d

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

exec-db:
	docker compose exec mysql bash

