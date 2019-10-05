#!/usr/bin/env bash

sudo docker run -it \
    -e PROJECT=GPi3 \
    -e ARCH=arm \
    -v $(pwd):/root \
    lakka