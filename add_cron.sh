#!/bin/bash


#exec "$(pwd)/build.sh"
echo "0 4 * * * $(pwd)/run.sh" > /etc/cron.d/clamav-freshclam
