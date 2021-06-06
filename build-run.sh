#!/bin/bash

docker build -t jupyter-centos:v1 .
docker run -it -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /root/test/:/root/test/ jupyter-centos:v1
