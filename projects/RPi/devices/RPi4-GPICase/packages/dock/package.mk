PKG_NAME="dock"
PKG_VERSION="1.0"
PKG_URL=""
PKG_DEPENDS_TARGET="pulseaudio"
PKG_SECTION="system"
PKG_SHORTDESC="Hotdock configuration"
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_TOOLCHAIN="manual"

make_target() {
  : # nothing
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp $PKG_DIR/scripts/* $INSTALL/usr/bin
}

post_install() {
  : # nothing
}
