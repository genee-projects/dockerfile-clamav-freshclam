#!/bin/bash

. ./env.cfg

docker run -it --rm \
       -v $(pwd)/data:/var/lib/clamav \
       --name ${CONTAINER_NAME} \
       ${IMAGE_NAME}
