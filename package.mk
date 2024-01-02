# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="rt-plugins"
PKG_VERSION="0.0.6"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://faculty.tru.ca/rtaylor/rt-plugins/index.html"
PKG_URL="https://faculty.tru.ca/rtaylor/rt-plugins/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="alsa-lib"
PKG_SECTION="audio"
PKG_SHORTDESC="rt-plugins: LADSPA filters by Richard Taylor"
PKG_LONGDESC="This package includes the LADSPA-plugins by Richard Taylor."
PKG_TOOLCHAIN="cmake"

PKG_AUTORECONF="no"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="LADSPA RT-plugins"
PKG_ADDON_TYPE="xbmc.service.library"
PKG_ADDON_REQUIRES=""

PKG_CMAKE_OPTS_TARGET+="-DCMAKE_C_FLAGS=-I../../alsa-lib-1.2.8/src/pcm/"

addon() {
  mkdir -p ${ADDON_BUILD}/${PKG_ADDON_ID}/lib/ladspa
  cp ${PKG_INSTALL}/usr/lib/ladspa/* ${ADDON_BUILD}/${PKG_ADDON_ID}/lib/ladspa
}
