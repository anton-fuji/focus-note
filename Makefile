.PHONY: build rebuild up down logs exec-db
build:
	docker compose build 

rebuild:
	docker compose up --build

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

exec-db:
	docker compose exec db bash

