PKG_NAME="seatd"
PKG_VERSION="0.6.3"
PKG_LICENSE="MIT"
PKG_SITE=""
PKG_URL="https://git.sr.ht/~kennylevinsen/seatd/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET=""
PKG_LONGDESC="seatd and libseat"

PKG_MESON_OPTS_TARGET="-Dman-pages=disabled \
                       -Dserver=disabled \
                       -Dlibseat-logind=disabled \
                       -Dlibseat-seatd=disabled \
                       -Dlibseat-builtin=enabled
                       -Dexamples=disabled"