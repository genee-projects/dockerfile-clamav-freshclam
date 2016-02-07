#!/bin/bash

echo "0 4 * * * cd $(pwd) && ./run.sh" > /etc/cron.d/clamav-freshclam
