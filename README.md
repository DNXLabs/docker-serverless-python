# docker-serverless-python

![Security](https://github.com/DNXLabs/docker-serverless-python/workflows/Security/badge.svg)
![Lint](https://github.com/DNXLabs/docker-serverless-python/workflows/Lint/badge.svg)

https://hub.docker.com/repository/docker/dnxsolutions/serverless-python

Docker image with:
- Python 3
- NodeJS
- NPM
- Serverless framework

## hooks (docker hub)

Thinking about the automatic release/tag generation for each Python version, we implemented hooks to replace the default behaviour of the build and push steps. The hooks are available in the folder `/hooks` and there is a script for local tests simulating docker hub build step in `build-images.sh`.

For more information visit the official documenation: `https://docs.docker.com/docker-hub/builds/advanced/`.

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

MIT Licensed. See [LICENSE](https://github.com/DNXLabs/docker-serverless-python/blob/master/LICENSE) for full details.