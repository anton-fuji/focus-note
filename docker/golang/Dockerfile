#========== Build Stage ===========
FROM golang:1.24.2-alpine AS builder

WORKDIR /app

COPY backend/go.mod backend/go.sum ./
RUN go mod download

COPY backend/ .
RUN go build -o main ./cmd

#========== Dev Stage ===========
FROM golang:1.24.2-alpine AS development

RUN apk update && apk add git

RUN go install github.com/sqlc-dev/sqlc/cmd/sqlc@v1.22.0

RUN go install -tags 'mysql' github.com/golang-migrate/migrate/v4/cmd/migrate@latest

WORKDIR /app

COPY --from=builder /app/main .

CMD [ "/app/main" ]



