BUILDDIR ?= ../public_html
CACHEDIR = $(shell mktemp -d)

all: clean update build

.PHONY: build
build:
	hugo --cacheDir $(CACHEDIR)
	rm -rf $(CACHEDIR)
	shopt -s dotglob
	mv public/* $(BUILDDIR)/

.PHONY: clean
clean:
	rm -rf $(BUILDDIR)/*

.PHONY: update
update:
	git pull