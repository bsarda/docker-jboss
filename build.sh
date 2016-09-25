#!/bin/sh
docker ps -a | grep bsarda/jboss:7.1 | awk '{print $1}' | xargs -n1 docker rm -f
docker rmi bsarda/jboss:7.1
docker build -t bsarda/jboss:7.1 .
# add tag
docker tag bsarda/jboss:7.1 bsarda/jboss:latest
