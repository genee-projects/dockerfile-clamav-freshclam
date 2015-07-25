#!/bin/sh

chown -R clamav:clamav /var/lib/clamav

/usr/bin/freshclam
