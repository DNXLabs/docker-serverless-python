#!/bin/bash
set -ex

DOCKER_REPO=dnxsolutions/serverless-python
DOCKER_TAG=dnx2
IMAGE_NAME=${DOCKER_REPO}:${DOCKER_TAG}

if [ ${DOCKER_TAG} != "latest" ]
then
  echo "Build specific tag/release"

  # Python 3.6
  docker build \
    -f ../3.6/Dockerfile \
    -t ${DOCKER_REPO}:3.6-${DOCKER_TAG} \
    .

  # Python 3.7
  docker build \
    -f ../3.7/Dockerfile \
    -t ${DOCKER_REPO}:3.7-${DOCKER_TAG} \
    .

  # Python 3.8
  docker build \
    -f ../3.8/Dockerfile \
    -t ${DOCKER_REPO}:3.8-${DOCKER_TAG} \
    .
else
  echo "Build latest"

  # Python 3.8
  docker build \
    -f ../3.8/Dockerfile \
    -t ${IMAGE_NAME} \
    .
fi