#!/bin/bash

p=$(pwd)

#解决非当前路径执行的情况
rel_path=$(cd `dirname $0`; pwd)

cd "$p"

. "$rel_path/env.cfg"

#先复制
cp -r "$rel_path/data" "$rel_path/tmp"

echo "===开始更新==="

#再更新
docker run -it --rm \
       -v $rel_path/tmp:/var/lib/clamav \
       --name ${CONTAINER_NAME} \
       ${IMAGE_NAME}

#再替换
rm -rf "$rel_path/data/*" && mv "$rel_path/tmp/*" "$rel_path/data/*"

echo "===更新结束==="
