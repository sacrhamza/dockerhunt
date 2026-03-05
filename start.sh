#!/usr/bin/env bash

docker build -t dockerhunt .
docker run --rm -it --privileged dockerhunt
