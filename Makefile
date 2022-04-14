
build:
	echo "Build specific tag/release"

	# Python 3.6
	docker build \
		--build-arg base_image=python:3.6-slim \
		-t ${REPO}:3.6-${IMAGE_TAG} \
		./3.6/.

	# Python 3.7
	docker build \
		--build-arg base_image=python:3.7-slim \
		-t ${REPO}:3.7-${IMAGE_TAG} \
		./3.7/.

	# Python 3.8
	docker build \
		--build-arg base_image=python:3.8-slim \
		-t ${REPO}:3.8-${IMAGE_TAG} \
		./3.8/.

	# Python 3.9
	docker build \
		--build-arg base_image=python:3.9-slim \
		-t ${REPO}:3.9-${IMAGE_TAG} \
		./3.9/.

push:
	echo "Push specific tag/release"

	# Python 3.6
	docker push ${REPO}:3.6-${IMAGE_TAG} 
		
	# Python 3.7
	docker push ${REPO}:3.7-${IMAGE_TAG} 

	# Python 3.8
	docker push ${REPO}:3.8-${IMAGE_TAG} 

	# Python 3.9
	docker push ${REPO}:3.9-${IMAGE_TAG} 