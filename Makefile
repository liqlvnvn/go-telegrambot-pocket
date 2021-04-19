.PHONY:
.SILENT:

build:
	go build -o ./.bin/bot cmd/bot/main.go

run: build
	./.bin/bot

delimage:
	sudo docker rm telegram-bot:v1

image:
	sudo docker build -t telegram-bot:v1 .

start:
	sudo docker run --name telegram-bot -p 80:80 --env-file .env telegram-bot:v1