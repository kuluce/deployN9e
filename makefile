.PHONY: run clean build up down ps

all: run

clean:
	@echo "Cleaning up..."
	@docker-compose down
	@sudo rm -rf mysql/db/*
	@sudo rm -rf victoriametrics/data/*

build:
	@echo "Building..."

up:
	@echo "Uploading..."
	@docker-compose up -d

down:
	@echo "Stopping..."
	@docker-compose down

ps:
	@echo "ps"
	@docker-compose ps