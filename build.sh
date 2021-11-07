#!/bin/sh

docker run -it --rm \
    -e OFFICIAL=no \
    -e PROJECT=RPi \
    -e DEVICE=Pi02GPi \
    -e ARCH=arm \
    -v $(pwd):/home/ubuntu \
    lakka_build_env make image
