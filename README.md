# CUFAS web

This repository houses Cambridge Universities First Aid Society's website (CUFAS). It is built with Hugo and served on Student-Run Computing Facility's webserver, sinkhole.

## Building

1. Launch your preferred terminal
2. [Clone this repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
3. [Grab a Hugo binary](https://gohugo.io/getting-started/installing/)
4. Run `make`

The build directory is set to `public_html` relative to your current directory but can be overridden in an environment variable as such: `BUILDDIR=public make`.

## Developing

This is a standard Hugo SSG project, so familiarize yourself with Hugo first. You can run the dev server with `hugo serve`.

A push to the main branch of this repository automatically pulls the latest copy on sinkhole and updates the website.

Prettier plugin: https://github.com/NiklasPor/prettier-plugin-go-template