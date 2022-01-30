# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019 Trond Haugland (github.com/escalade)

PKG_NAME="wlroots"
PKG_VERSION="0.15.0"
PKG_LICENSE="OSS"
PKG_SITE="https://github.com/swaywm/wlroots"
PKG_URL="https://gitlab.freedesktop.org/wlroots/wlroots/-/archive/${PKG_VERSION}/wlroots-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain wayland wayland-protocols libdrm libxkbcommon libinput pixman seatd mesa"
PKG_LONGDESC="Reference implementation of a Wayland compositor"
PKG_CLONE_GIT_DEPTH="10"

PKG_MESON_OPTS_TARGET="-Dxcb-errors=disabled \
           -Dexamples=false \
           -Dxwayland=disabled \
           -Drenderers=gles2 \
           -Dbackends=drm,libinput"