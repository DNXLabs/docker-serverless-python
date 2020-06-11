ARG base_image

FROM ${base_image}

RUN apt-get update && \
    apt-get install -y nodejs npm && \
    npm install -g serverless

ADD requirements.txt /root/
RUN pip3 install -r /root/requirements.txt

RUN rm -rf /root/requirements.txt

WORKDIR /work

ENTRYPOINT ["/bin/sh"]