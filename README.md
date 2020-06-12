# docker-serverless-python

Docker image with:
- Python 3
- NodeJS
- NPM
- Serverless framework

## hooks (docker hub)

Thinking about the automatic release/tag generation for each Python version, we implemented a hook replacing the default behaviour of the build step. The hook is available in `hooks/build` and there is a script for local tests simulating docker hub in `build-images.sh`.

For more information visit the official documenation: `https://docs.docker.com/docker-hub/builds/advanced/`.