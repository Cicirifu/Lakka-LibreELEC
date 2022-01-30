# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019 Trond Haugland (github.com/escalade)

PKG_NAME="weston" # Aksually sway, but hey, easier.
PKG_VERSION="1.7"
PKG_LICENSE="MIT"
PKG_SITE="https://swaywm.org"
PKG_URL="https://github.com/swaywm/sway/releases/download/${PKG_VERSION}/sway-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain wlroots cairo json-c swaybg kanshi pango"
PKG_NEED_UNPACK="$(get_pkg_directory wlroots)"
PKG_LONGDESC="Tiling Wayland compositor and replacement for the i3 window manager"
PKG_CLONE_GIT_DEPTH="1"

PKG_MESON_OPTS_TARGET="-Dtray=disabled \
                       -Dman-pages=disabled \
                       -Dzsh-completions=false \
                       -Dbash-completions=false \
                       -Dfish-completions=false \
                       -Dgdk-pixbuf=disabled"

post_makeinstall_target() {
  cp -PR ${PKG_DIR}/config/* ${INSTALL}/etc/sway/
  cp -PR ${PKG_DIR}/backgrounds/* ${INSTALL}/usr/share/backgrounds/sway/
  #cp -PR ${PKG_DIR}/scripts/* ${INSTALL}/usr/bin/
}

post_install() {
    enable_service sway.service
}

