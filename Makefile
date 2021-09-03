.PHONY: all
all:
	bin/build

.PHONY: serve
serve:
	bin/serve

.PHONY: show
show:
	bin/show

.PHONY: help
help:
	cat Makefile
