FROM ubuntu:14.04
MAINTAINER ep@geneegroup.com

RUN apt-get update  \
    && apt-get install -y clamav clamav-freshclam \
    && rm -rf /var/lib/apt/lists/*

ADD freshclam.conf /etc/clamav/freshclam.conf

ADD entrypoint.sh /entrypoint.sh

VOLUME ["/var/lib/clamav"]

ENTRYPOINT ["/entrypoint.sh"]
