.PHONY: up

DOCKER_FRESH ?= false

up:
ifeq ($(DOCKER_FRESH),true)
	docker compose build --no-cache --pull
	docker compose up --pull always
else
	docker compose build
	docker compose up
endif
