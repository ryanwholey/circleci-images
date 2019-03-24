#!/usr/bin/env bash

set -euf -o pipefail

docker tag "${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}" "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}:${VERSION}"
docker push "${DOCKER_USERNAME}/${CIRCLE_PROJECT_REPONAME}:${VERSION}"
