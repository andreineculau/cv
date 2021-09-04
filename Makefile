.PHONY: all
all: build

.PHONY: build
build:
	bin/build

.PHONY: serve
serve: build
	bin/serve

.PHONY: watch
watch:
	npx -y onchange -v -i -k -d 1000 'README.md' '_header*.html' '_footer.html' -- make serve

.PHONY: show
show:
	bin/show

.PHONY: help
help:
	cat Makefile
