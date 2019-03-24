#!/usr/bin/env bash

set -euf -o pipefail

docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
docker tag "${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}" "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}:${VERSION}"
docker push "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}:${VERSION}"
