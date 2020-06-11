#!/bin/bash
set -ex

# Python 3.6
docker build \
  --tag dnxsolutions/serverless-python:3.6 \
  --build-arg base_image=python:3.6 \
  .

# Python 3.7
docker build \
  --tag dnxsolutions/serverless-python:3.7 \
  --build-arg base_image=python:3.7 \
  .

# Python 3.8
docker build \
  --tag dnxsolutions/serverless-python:3.8 \
  --build-arg base_image=python:3.8 \
  .
