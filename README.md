# docker-serverless-python

Docker image with:
- Python 3
- NodeJS
- NPM
- Serverless framework

## hooks (docker hub)

Thinking about the automatic release/tag generation for each Python version, we implemented hooks to replace the default behaviour of the build and push steps. The hooks are available in the folder `/hooks` and there is a script for local tests simulating docker hub build step in `build-images.sh`.

For more information visit the official documenation: `https://docs.docker.com/docker-hub/builds/advanced/`.