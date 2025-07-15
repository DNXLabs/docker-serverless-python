#!/bin/bash
set -ex

DOCKER_REPO=dnxsolutions/serverless-python
DOCKER_TAG=${DOCKER_TAG:-dnx-local}
IMAGE_NAME=${DOCKER_REPO}:${DOCKER_TAG}

echo "Building Docker images with tag: ${DOCKER_TAG}"

# Build all Python versions
echo "Building Python 3.9..."
docker build \
  -f ../3.9/Dockerfile \
  -t ${DOCKER_REPO}:3.9-${DOCKER_TAG} \
  ..

echo "Building Python 3.10..."
docker build \
  -f ../3.10/Dockerfile \
  -t ${DOCKER_REPO}:3.10-${DOCKER_TAG} \
  ..

echo "Building Python 3.11..."
docker build \
  -f ../3.11/Dockerfile \
  -t ${DOCKER_REPO}:3.11-${DOCKER_TAG} \
  ..

echo "Building Python 3.12..."
docker build \
  -f ../3.12/Dockerfile \
  -t ${DOCKER_REPO}:3.12-${DOCKER_TAG} \
  ..

echo "All builds completed successfully!"

# List the built images
echo "Built images:"
docker images | grep ${DOCKER_REPO} | grep ${DOCKER_TAG}
