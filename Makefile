
build:
	echo "Build specific tag/release"

	# Python 3.9
	docker build \
		--build-arg base_image=python:3.9-slim-bookworm \
		-t ${REPO}:3.9-${IMAGE_TAG} \
		./3.9/.

	# Python 3.10
	docker build \
		--build-arg base_image=python:3.10-slim-bookworm \
		-t ${REPO}:3.10-${IMAGE_TAG} \
		./3.10/.

	# Python 3.11
	docker build \
		--build-arg base_image=python:3.11-slim-bookworm \
		-t ${REPO}:3.11-${IMAGE_TAG} \
		./3.11/.

	# Python 3.12
	docker build \
		--build-arg base_image=python:3.12-slim-bookworm \
		-t ${REPO}:3.12-${IMAGE_TAG} \
		./3.12/.
push:
	echo "Push specific tag/release"

	# Python 3.9
	docker push ${REPO}:3.9-${IMAGE_TAG} 

	# Python 3.10
	docker push ${REPO}:3.10-${IMAGE_TAG} 

	# Python 3.11
	docker push ${REPO}:3.11-${IMAGE_TAG} 

	# Python 3.12
	docker push ${REPO}:3.12-${IMAGE_TAG} 