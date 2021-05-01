BUILDDIR ?= ../public_html
INPUTDIR = public
CACHEDIR = $(shell mktemp -d)

all: clean update build

.PHONY: build
build:
	hugo --cacheDir $(CACHEDIR)
	rm -rf $(CACHEDIR)
	mv $(INPUTDIR)/* $(BUILDDIR)/
	mv $(INPUTDIR)/.[!.]* $(BUILDDIR)/

.PHONY: clean
clean:
	rm -rf $(INPUTDIR)/*
	rm -rf $(BUILDDIR)/*

.PHONY: update
update:
	git pull