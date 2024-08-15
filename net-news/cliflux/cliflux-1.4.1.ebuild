# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.1

EAPI=8

CRATES="
	ahash@0.7.6
	aho-corasick@1.0.2
	autocfg@1.1.0
	base64@0.21.2
	bitflags@1.3.2
	bitflags@2.4.1
	bumpalo@3.13.0
	bytes@1.4.0
	cassowary@0.3.0
	cc@1.0.79
	cfg-if@1.0.0
	core-foundation-sys@0.8.4
	core-foundation@0.9.3
	crossterm@0.25.0
	crossterm_winapi@0.9.1
	directories@4.0.1
	dirs-sys@0.3.7
	encoding_rs@0.8.32
	equivalent@1.0.1
	errno-dragonfly@0.1.2
	errno@0.3.1
	fastrand@1.9.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.0
	futf@0.1.5
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	futures@0.3.28
	getrandom@0.2.10
	h2@0.3.24
	hashbrown@0.12.3
	hashbrown@0.14.3
	hermit-abi@0.2.6
	hermit-abi@0.3.1
	html2text@0.5.1
	html5ever@0.26.0
	http-body@0.4.5
	http@0.2.9
	httparse@1.8.0
	httpdate@1.0.2
	hyper-tls@0.5.0
	hyper@0.14.26
	idna@0.4.0
	indexmap@1.9.3
	indexmap@2.1.0
	instant@0.1.12
	io-lifetimes@1.0.11
	ipnet@2.7.2
	itoa@1.0.6
	js-sys@0.3.64
	lazy-regex-proc_macros@2.4.1
	lazy-regex@2.5.0
	lazy_static@1.4.0
	libc@0.2.146
	linux-raw-sys@0.3.8
	lock_api@0.4.10
	log@0.4.19
	mac@0.1.1
	markup5ever@0.11.0
	memchr@2.5.0
	mime@0.3.17
	mio@0.8.8
	native-tls@0.2.11
	new_debug_unreachable@1.0.4
	num_cpus@1.15.0
	once_cell@1.18.0
	open@3.2.0
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.96
	openssl@0.10.60
	parking_lot@0.12.1
	parking_lot_core@0.9.8
	pathdiff@0.2.1
	percent-encoding@2.3.0
	phf@0.10.1
	phf_codegen@0.10.0
	phf_generator@0.10.0
	phf_shared@0.10.0
	pin-project-lite@0.2.9
	pin-utils@0.1.0
	pkg-config@0.3.27
	ppv-lite86@0.2.17
	precomputed-hash@0.1.1
	proc-macro2@1.0.60
	quote@1.0.28
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex-syntax@0.7.2
	regex@1.8.4
	reqwest@0.11.18
	rustix@0.37.25
	ryu@1.0.13
	schannel@0.1.21
	scopeguard@1.1.0
	security-framework-sys@2.9.0
	security-framework@2.9.1
	serde@1.0.164
	serde_derive@1.0.164
	serde_json@1.0.97
	serde_spanned@0.6.2
	serde_urlencoded@0.7.1
	signal-hook-mio@0.2.3
	signal-hook-registry@1.4.1
	signal-hook@0.3.15
	siphasher@0.3.10
	slab@0.4.8
	smallvec@1.10.0
	smawk@0.3.1
	socket2@0.4.9
	string_cache@0.8.7
	string_cache_codegen@0.5.2
	stringreader@0.1.1
	syn@1.0.109
	syn@2.0.18
	tempfile@3.6.0
	tendril@0.4.3
	textwrap@0.15.2
	thiserror-impl@1.0.40
	thiserror@1.0.40
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.1.0
	tokio-native-tls@0.3.1
	tokio-util@0.7.8
	tokio@1.28.2
	toml@0.7.4
	toml_datetime@0.6.2
	toml_edit@0.19.10
	tower-service@0.3.2
	tracing-core@0.1.31
	tracing@0.1.37
	try-lock@0.2.4
	tui-realm-stdlib@1.2.0
	tui@0.19.0
	tuirealm@1.8.0
	tuirealm_derive@1.0.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.9
	unicode-linebreak@0.1.4
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unicode-width@0.1.10
	url@2.4.0
	utf-8@0.7.6
	vcpkg@0.2.15
	version_check@0.9.4
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-futures@0.4.37
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-shared@0.2.87
	wasm-bindgen@0.2.87
	web-sys@0.3.64
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.42.0
	windows-sys@0.48.0
	windows-targets@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.0
	winnow@0.4.7
	winreg@0.10.1
	xml5ever@0.17.0
"

inherit cargo
DESCRIPTION="A terminal-ui (TUI) client for the Miniflux RSS reader"
HOMEPAGE="https://github.com/spencerwi/cliflux"
SRC_URI="
	https://github.com/spencerwi/cliflux/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/openssl"
RDEPEND="${DEPEND}"
QA_FLAGS_IGNORED="usr/bin/${PN}"
