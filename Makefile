QUAY_ORG=geodocker
QUAY_REPO=base
QUAY_TAG=latest

build:
	docker build -t quay.io/${QUAY_ORG}/${QUAY_REPO}:latest .

publish:
	docker push quay.io/${QUAY_ORG}/${QUAY_REPO}:latest
	docker tag quay.io/${QUAY_ORG}/${QUAY_REPO}:latest quay.io/${QUAY_ORG}/${QUAY_REPO}:${QUAY_TAG}
	docker push quay.io/${QUAY_ORG}/${QUAY_REPO}:${QUAY_TAG}
