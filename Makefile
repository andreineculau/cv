.PHONY: all
all: build

.PHONY: build
build:
	bin/build

.PHONY: serve
serve: build
	bin/serve

.PHONY: show
show:
	bin/show

.PHONY: help
help:
	cat Makefile
