FROM registry.gitlab.com/islandoftex/images/texlive:latest

WORKDIR /usr/src/app

COPY . /usr/src/app
