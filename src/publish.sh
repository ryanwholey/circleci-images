#!/usr/bin/env bash

set -euf -o pipefail

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker pull "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}"
docker tag "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}" "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}:${VERSION}"
docker push "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}:${VERSION}"
