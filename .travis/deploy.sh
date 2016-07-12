#!/usr/bin/env bash

set -e

QUAY_ORG=geotrellis
QUAY_REPO=${TRAVIS_REPO_SLUG##*/}
QUAY_TAG=${TRAVIS_TAG:-${TRAVIS_COMMIT:0:7}}

docker push quay.io/${QUAY_ORG}/${QUAY_REPO}:${QUAY_TAG}
docker tag quay.io/${QUAY_ORG}/${QUAY_REPO}:${QUAY_TAG} quay.io/${QUAY_ORG}/${QUAY_REPO}:latest
docker push quay.io/${QUAY_ORG}/${QUAY_REPO}:latest
