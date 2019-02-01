.PHONY: default
default: clean generate test build

.PHONY: clean
clean:
	rm -rf build BookBrowser

.PHONY: build-deps
build-deps:
	go get -v "github.com/gobuffalo/packr/..."
	go get -v "github.com/aktau/github-release"

.PHONY: generate
generate:
	go generate ./...

.PHONY: test
test:
	go test ./...

.PHONY: build
build:
	mkdir -p build
	go build -ldflags "-X main.curversion=dev" -o "build/BookBrowser"

.PHONY: install
install:
	go install
