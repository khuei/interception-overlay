# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

MY_P="${PN}-v${PV}"
RESTRICT="mirror"
DESCRIPTION="Interception plugin to redirect stdin to a muxer if logged user matches"
HOMEPAGE="https://gitlab.com/interception/linux/plugins/uswitch"
SRC_URI="https://gitlab.com/interception/linux/plugins/${PN}/-/archive/v${PV}/${MY_P}.tar.gz"
SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="MIT"
IUSE=""

S="${WORKDIR}/${MY_P}"

DEPEND=""
RDEPEND="
	${DEPEND}
	app-misc/interception-tools
"

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	cmake_src_configure
}

src_install() {
	cmake_src_install
}
