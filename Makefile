BASE := $(subst -, ,$(notdir ${CURDIR}))
ORG  := $(word 1, ${BASE})
REPO := $(word 2, ${BASE})
IMG  := quay.io/${ORG}/${REPO}

build:
	docker build -t ${IMG}:latest	.

publish: TAG=latest
publish: build
	docker push ${IMG}:latest
	@if [ "${TAG}" != "latest" ]; then docker tag ${IMG}:latest ${IMG}:${TAG} && docker push ${IMG}:${TAG}; fi

test: build
	docker run -it --rm ${IMG}:latest java -version
