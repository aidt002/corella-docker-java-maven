#!/bin/sh

DOCKER_TAG=${1:-my-app}
DOCKER_DEFAULT_PLATFORM=$2

if [ -n "$DOCKER_DEFAULT_PLATFORM" ]; then
    docker build --platform "$DOCKER_DEFAULT_PLATFORM" -t "$DOCKER_TAG" .
else
    docker build -t "$DOCKER_TAG" .
fi
