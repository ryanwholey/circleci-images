#!/usr/bin/env bash

set -euf -o pipefail

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build . -t "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}"
docker push "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}"
