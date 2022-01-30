#!/bin/sh

docker run -it --rm \
    -e OFFICIAL=no \
    -e PROJECT=RPi \
    -e DEVICE=RPi4-GPICase \
    -e ARCH=aarch64 \
    -v $(pwd):/home/ubuntu \
    lakka_build_env ./scripts/$1
