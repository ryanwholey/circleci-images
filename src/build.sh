#!/usr/bin/env bash

set -euf -o pipefail

docker build . -t "${CIRCLE_PROJECT_REPONAME}-test:${CIRCLE_SHA1}"

