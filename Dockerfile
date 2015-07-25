FROM alpine:latest
MAINTAINER ep@geneegroup.com

RUN apk update  \
    && apk add freshclam \
    && rm -rf /var/cache/apk/*

ADD freshclam.conf /etc/clamav/freshclam.conf

ADD entrypoint.sh /entrypoint.sh

VOLUME ["/var/lib/clamav"]

ENTRYPOINT ["/entrypoint.sh"]
