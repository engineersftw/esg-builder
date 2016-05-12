FROM alpine:3.1
RUN apk add --update ffmpeg sox && rm -rf /var/cache/apk/*

RUN mkdir /esg
WORKDIR /esg
ADD scripts/* /esg/
RUN chmod 777 /esg/*.sh

VOLUME /esg/files
ENTRYPOINT /bin/sh
