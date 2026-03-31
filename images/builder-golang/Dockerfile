FROM golang:latest

RUN addgroup --gid 55555 build \
    && adduser --uid 55555 --gid 55555 --shell /bin/bash --gecos "Build User" --disabled-password --disabled-login --quiet build \
    && mkdir -p /build \
    && chown build:build /build

USER 55555:55555

WORKDIR /build
