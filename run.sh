#!/bin/bash

#解决非当前路径执行的情况
rel_path=`dirname $0`

. $rel_path/env.cfg

docker run -it --rm \
       -v $rel_path/data:/var/lib/clamav \
       --name ${CONTAINER_NAME} \
       ${IMAGE_NAME}
