FROM golang:1.16.3-alpine3.13 as builder

COPY . /github.com/liqlvnvn/go-telegram-pocket/
WORKDIR /github.com/liqlvnvn/go-telegram-pocket/

RUN go mod download
RUN go build -o ./bin/bot cmd/bot/main.go

FROM alpine:latest

WORKDIR /root/

COPY --from=0 /github.com/liqlvnvn/go-telegram-pocket/bin/bot .
COPY --from=0 /github.com/liqlvnvn/go-telegram-pocket/configs configs/

EXPOSE 80

CMD ["./bot"]