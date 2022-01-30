# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019 Trond Haugland (github.com/escalade)

PKG_NAME="swaybg"
PKG_VERSION="1.0"
PKG_SHA256="a23f1cde07138b865630172eff83db916d2f0989b75fb318def85dcfc3120fbd"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/swaywm/swaybg"
PKG_URL="https://github.com/swaywm/swaybg/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain wayland cairo"
PKG_LONGDESC="Wallpaper tool for Wayland compositors"
PKG_BUILD_FLAGS="-lto"

PKG_MESON_OPTS_TARGET="-Dgdk-pixbuf=disabled"
