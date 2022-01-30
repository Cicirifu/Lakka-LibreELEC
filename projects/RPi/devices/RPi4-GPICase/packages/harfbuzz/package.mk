# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019 Trond Haugland (github.com/escalade)

PKG_NAME="harfbuzz"
PKG_VERSION="2.7.2"
PKG_LICENSE="GPL"
PKG_SITE="http://www.freedesktop.org/wiki/Software/HarfBuzz"
PKG_URL="https://github.com/harfbuzz/harfbuzz/releases/download/${PKG_VERSION}/harfbuzz-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain freetype glib"
PKG_LONGDESC="HarfBuzz is an OpenType text shaping engine."

PKG_MESON_OPTS_TARGET="-Dglib=disabled \
		       -Dgobject=disabled \
		       -Dcairo=disabled \
		       -Dfontconfig=disabled \
		       -Dicu=disabled \
		       -Dfreetype=enabled \
		       -Dintrospection=disabled \
		       -Dtests=disabled \
		       -Ddocs=disabled"
