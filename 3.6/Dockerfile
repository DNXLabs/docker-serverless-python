FROM python:3.6-slim-buster

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        wget \
        zip \
        unzip \
        git \
        nodejs \
        npm && \
    pip3 install --upgrade pip==20.1.1 && \
    npm install npm@latest -g && \
    npm install -g serverless@latest && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

WORKDIR /work

ENTRYPOINT ["/bin/sh"]