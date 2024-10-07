FROM golang:1.21.0-alpine

RUN apk add --no-cache build-base git alpine-sdk gcc

ENV APP_ROOT /app

WORKDIR $APP_ROOT

COPY go.mod ./
RUN go mod download

COPY . $APP_ROOT

EXPOSE 8080

