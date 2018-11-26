#!/usr/bin/env bash
DOCKER_TAG_NAME=${1:-go-deps}
docker build -t $DOCKER_TAG_NAME .

