#!/bin/bash

. ./env.cfg

docker run -it --rm \
    -v $(pwd)/data:/var/lib/clamav \
    ${IMAGE_NAME}
