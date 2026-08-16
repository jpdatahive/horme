.PHONY: run build test last lint fmt

run:
	go run ./cmd/horme

build:
	go build -o bin/horme ./cmd/horme

test:
	go test ./... -v

lint:
	golangci-lint run

fmt:
	go fmt ./...
