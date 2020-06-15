DOCKER_REPO=dnxsolutions/serverless-python
DOCKER_TAG=dnx2
IMAGE_NAME=${DOCKER_REPO}:${DOCKER_TAG}

build:
	echo "Build specific tag/release"

	# Python 3.6
	docker build \
		--build-arg base_image=python:3.6-slim \
		-t ${DOCKER_REPO}:3.6-${DOCKER_TAG} \
		.

	# Python 3.7
	docker build \
		--build-arg base_image=python:3.7-slim \
		-t ${DOCKER_REPO}:3.7-${DOCKER_TAG} \
		.

	# Python 3.8
	docker build \
		--build-arg base_image=python:3.8-slim \
		-t ${DOCKER_REPO}:3.8-${DOCKER_TAG} \
		.