#!/bin/bash

echo "0 4 * * * root cd $(pwd) && ./run.sh" > /etc/cron.d/clamav-freshclam
