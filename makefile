# Makefile for Traefik PoC

# Variables
COMPOSE=docker-compose
PROJECT_NAME=traefik-poc

.PHONY: help start stop restart logs build clean status

## Show this help.
help:
	@echo "Makefile Commands:"
	@echo "  make start      - Build and start the Docker containers"
	@echo "  make stop       - Stop the running Docker containers"
	@echo "  make restart    - Restart the Docker containers"
	@echo "  make logs       - View logs of all services"
	@echo "  make build      - Build or rebuild services"
	@echo "  make clean      - Stop and remove containers, networks, and volumes"
	@echo "  make status     - Show the status of Docker containers"
	@echo "  make help       - Show this help message"

## Build and start the Docker containers
start:
	$(COMPOSE) up -d

## Stop the running Docker containers
stop:
	$(COMPOSE) stop

## Restart the Docker containers
restart: stop start

## View logs of all services
logs:
	$(COMPOSE) logs -f

## Build or rebuild services
build:
	$(COMPOSE) build

## Stop and remove containers, networks, and volumes
clean:
	$(COMPOSE) down --volumes --remove-orphans

## Show the status of Docker containers
status:
	$(COMPOSE) ps
