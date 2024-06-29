# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop java-utils-2 rpm xdg

DESCRIPTION="Spanish government's electronic signature application for online procedures"
HOMEPAGE="
	https://administracionelectronica.gob.es/ctt/clienteafirma
	https://github.com/ctt-gob-es/clienteafirma
"

# Upstream blocks wget with no User Agent. It can be addressed globally (see https://wiki.gentoo.org/wiki/FETCHCOMMAND).
# If Gentoo's default configuration is in place, pkg_pretend() and pkg_nofetch() provide fallback options.
SRC_URI="https://estaticos.redsara.es/comunes/autofirma/$(ver_rs 1- /)/AutoFirma_Linux_Fedora.zip -> ${P}.zip"

S=${WORKDIR}

LICENSE="|| ( GPL-2 EUPL-1.1 )"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/jre:1.8"
BDEPEND="app-arch/unzip"

pkg_pretend() {
	# Upstream blocks vanilla wget, so we set up a browser User-Agent as a fallback.
	URI="https://estaticos.redsara.es/comunes/autofirma/$(ver_rs 1- /)/AutoFirma_Linux_Fedora.zip"
	/usr/sbin/wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0" "${URI}" -O "${PORTAGE_ACTUAL_DISTDIR}"/"${P}".zip
}

pkg_nofetch() {
	einfo "Please download:"
	einfo " https://estaticos.redsara.es/comunes/autofirma/$(ver_rs 1- /)/AutoFirma_Linux_Fedora.zip"
	einfo "and move it to your distfiles directory as autofirma-${PV}.zip."
}

src_unpack() {
	default
	rpm_unpack "./${P}-1.noarch_FEDORA.rpm"
}

src_install() {
	java-pkg_dojar "usr/lib64/${PN}/${PN}.jar"
	java-pkg_dolauncher
	java-pkg_dojar "usr/lib64/${PN}/${PN}Configurador.jar"
	doicon "usr/lib64/${PN}/${PN}.png"
	make_desktop_entry \
		"${PN} %u" AutoFirma "${PN}" "Utility" \
		"Comment[es]=Aplicación de firma electrónica de la FNMT\nMimeType=x-scheme-handler/afirma"
}
