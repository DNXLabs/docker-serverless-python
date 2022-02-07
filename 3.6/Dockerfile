FROM python:3.6-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        wget=1.21-1+deb11u1 \
        zip=3.0-12 \
        unzip=6.0-26 \
        git=1:2.30.2-1 \
        nodejs=12.22.5~dfsg-2~11u1 \
        npm=7.5.2+ds-2 && \
    pip3 install --upgrade pip==20.1.1 && \
    npm install npm@latest -g && \
    npm install -g serverless@3.1.1 && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

WORKDIR /work

ENTRYPOINT ["/bin/sh"]