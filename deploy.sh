#!/bin/bash

docker stop ipapi
docker rm ipapi
docker run -d -p 10005:80 netart/ipapi