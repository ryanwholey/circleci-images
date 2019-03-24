#!/usr/bin/env bash

set -euf -o pipefail

docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
docker build . -t "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}"
docker push "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}"
