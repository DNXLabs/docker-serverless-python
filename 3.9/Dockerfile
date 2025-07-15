FROM python:3.9-slim-bookworm

RUN apt-get update && \
    apt-get install -y \
        wget \
        zip \
        unzip \
        git \
        curl \
        ca-certificates \
        gnupg && \
    pip3 install --no-cache-dir --upgrade pip==23.3.1 && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
RUN mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && \
    apt-get install -y nodejs && \
    npm install -g serverless@3.36.0 && \
    npm install -g serverless-compose@2.4.0 && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*


WORKDIR /work

ENTRYPOINT ["/bin/sh"]
