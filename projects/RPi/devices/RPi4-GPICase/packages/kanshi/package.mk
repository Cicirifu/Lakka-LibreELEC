PKG_NAME="kanshi"
PKG_VERSION="992c1954"
PKG_LICENSE="MIT"
PKG_SITE="https://git.sr.ht/~emersion/kanshi"
PKG_URL="https://github.com/emersion/kanshi.git"
PKG_DEPENDS_TARGET="wayland"
PKG_LONGDESC="Kanshi"
PKG_CLONE_GIT_DEPTH="1"

PKG_MESON_OPTS_TARGET="-Dman-pages=disabled \
                       -Dipc=disabled"