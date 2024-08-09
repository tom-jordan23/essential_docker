#!/bin/bash

docker run -it --name essential_docker \
       -p 8080:8080 \
       -e CATALINA_OPTS='-Xms128m -Xmx2048m -XX:MaxPermSize=512m' \
       essential_docker 