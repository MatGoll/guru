# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop java-utils-2 multilib-build rpm

DESCRIPTION="Spanish government's electronic signature application for online procedures"
HOMEPAGE="https://administracionelectronica.gob.es/ctt/clienteafirma"
SRC_URI="https://estaticos.redsara.es/comunes/autofirma/1/6/5/AutoFirma_Linux.zip"

LICENSE="|| ( GPL-2+ EUPL-1.1 )"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/jre:1.8
	!abi_x86_x32? ( www-client/firefox )"
DEPEND="${RDEPEND}"
BDEPEND="app-arch/unzip"

S=${WORKDIR}

src_unpack() {
	default
	rpm_unpack "./${P}-1.noarch.rpm"
}

src_install() {
	java-pkg_dojar "usr/lib64/${PN}/${PN}.jar"
	java-pkg_dolauncher
	java-pkg_dojar "usr/lib64/${PN}/${PN}Configurador.jar"
	doicon "usr/lib64/${PN}/${PN}.png"
	make_desktop_entry "${PN}" AutoFirma "${PN}" "Utility"
	sed -i "s/autoFirma/${PN}/" "usr/lib64/firefox/defaults/pref/${PN}.js" || die
	insinto /usr/$(get_libdir)/firefox/defaults/pref
	doins "usr/lib64/firefox/defaults/pref/${PN}.js"
}
