#!/bin/sh
cd $(dirname $0)
cd ../../
APP_NAME=$(basename $(pwd))

echo "========= run latest source code test============"
DOCKER_IMAGE=`echo "local/$APP_NAME:test" | tr "[:upper:]" "[:lower:]"`
docker build -t $DOCKER_IMAGE  -f DockerfileTest ./