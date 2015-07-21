#!/bin/bash

chown -R clamav:clamav /var/lib/clamav

/usr/bin/freshclam
