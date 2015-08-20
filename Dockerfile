FROM alpine:3.2

RUN apk update  \
    && apk add freshclam clamav-libunrar \
    && rm -rf /var/cache/apk/*

ADD freshclam.conf /etc/clamav/freshclam.conf

ADD entrypoint.sh /entrypoint.sh

VOLUME ["/var/lib/clamav"]

ENTRYPOINT ["/entrypoint.sh"]
