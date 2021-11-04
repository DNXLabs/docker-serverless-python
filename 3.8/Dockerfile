FROM python:3.8-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        wget=1.20.1-1.1 \
        zip=3.0-11+b1 \
        unzip=6.0-23+deb10u2 \
        git=1:2.20.1-2+deb10u3 \
        nodejs=10.23.1~dfsg-1~deb10u1 \
        npm=5.8.0+ds6-4+deb10u2 && \
    pip3 install --upgrade --no-cache-dir pip==20.1.1 && \
    npm install npm@latest -g && \
    npm install -g serverless@1.72.0 && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

WORKDIR /work

ENTRYPOINT ["/bin/sh"]
