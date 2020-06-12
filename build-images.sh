#!/bin/bash
set -ex

# Python 3.6
docker build \
  --tag dnxsolutions/serverless-python:3.6-dnx1 \
  --build-arg base_image=python:3.6-slim \
  .

# Python 3.7
docker build \
  --tag dnxsolutions/serverless-python:3.7-dnx1 \
  --build-arg base_image=python:3.7-slim \
  .

# Python 3.8
docker build \
  --tag dnxsolutions/serverless-python:3.8-dnx1 \
  --build-arg base_image=python:3.8-slim \
  .
