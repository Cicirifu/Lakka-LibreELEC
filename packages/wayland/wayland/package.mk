# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="wayland"
PKG_VERSION="1.20.0"
PKG_LICENSE="OSS"
PKG_SITE="https://wayland.freedesktop.org/"
PKG_URL="https://github.com/wayland-project/wayland/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain wayland:host libxml2"
PKG_DEPENDS_HOST="libffi:host expat:host libxml2:host"
PKG_LONGDESC="a display server protocol"
PKG_TOOLCHAIN="meson"

PKG_MESON_OPTS_HOST="-Dlibraries=true \
		     -Dscanner=true \
		     -Dtests=false \
		     -Ddtd_validation=false \
		     -Ddocumentation=false"

PKG_MESON_OPTS_TARGET="-Dlibraries=true \
		       -Dscanner=false \
		       -Dtests=false \
		       -Ddtd_validation=false \
		       -Ddocumentation=false"

post_makeinstall_host() {
  cp ${TOOLCHAIN}/lib/pkgconfig/wayland-scanner.pc ${SYSROOT_PREFIX}/usr/lib/pkgconfig/
}

post_makeinstall_target() {
  safe_remove ${INSTALL}/usr/bin
  safe_remove ${INSTALL}/usr/share
}
