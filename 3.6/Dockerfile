FROM python:3.6-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        wget=1.20.1-1.1 \
        unzip=6.0-23+deb10u1 \
        nodejs=10.21.0~dfsg-1~deb10u1 \
        npm=5.8.0+ds6-4+deb10u1 && \
    pip3 install --upgrade pip==20.1.1 && \
    npm install npm@latest -g && \
    npm install -g serverless && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

WORKDIR /work

ENTRYPOINT ["/bin/sh"]