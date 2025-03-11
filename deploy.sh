#!/bin/bash
VERSION=${1:-v2}
docker build  . -f Dockerfile -t aolifu/ipapi:$VERSION
docker push aolifu/ipapi:$VERSION
docker stop ipapi
docker rm ipapi
docker run -d --name ipapi -p 10005:80 aolifu/ipapi