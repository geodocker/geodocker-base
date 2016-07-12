set -x

docker push quay.io/${QUAY_ORG}/${QUAY_REPO}:${QUAY_TAG}
docker tag -f quay.io/${QUAY_ORG}/${QUAY_REPO}:${QUAY_TAG} quay.io/${QUAY_ORG}/${QUAY_REPO}:latest
docker push quay.io/${QUAY_ORG}/${QUAY_REPO}:latest
