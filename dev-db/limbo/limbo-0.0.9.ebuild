# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

	CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	ahash@0.8.11
	aho-corasick@1.1.3
	aligned-vec@0.6.1
	allocator-api2@0.2.21
	anarchist-readable-name-generator-lib@0.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.10
	anyhow@1.0.94
	arrayvec@0.7.6
	autocfg@1.4.0
	backtrace@0.3.74
	bitflags@1.3.2
	bitflags@2.6.0
	block-buffer@0.10.4
	bumpalo@3.16.0
	bytemuck@1.20.0
	byteorder@1.5.0
	cast@0.3.0
	cbindgen@0.27.0
	cc@1.2.3
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	cfg_block@0.1.1
	chrono@0.4.39
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	clap@4.5.23
	clap_builder@4.5.23
	clap_derive@4.5.18
	clap_lex@0.7.4
	cli-table-derive@0.4.6
	cli-table@0.4.9
	clipboard-win@4.5.0
	colorchoice@1.0.3
	concurrent-queue@2.5.0
	console_error_panic_hook@0.1.7
	core-foundation-sys@0.8.7
	cpp_demangle@0.4.4
	cpufeatures@0.2.16
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crunchy@0.2.2
	crypto-common@0.1.6
	csv-core@0.1.11
	csv@1.3.1
	ctrlc@3.4.5
	debugid@0.8.0
	digest@0.10.7
	dirs-sys@0.4.1
	dirs@5.0.1
	downcast@0.11.0
	either@1.13.0
	endian-type@0.1.2
	env_filter@0.1.2
	env_logger@0.10.2
	env_logger@0.11.5
	equator-macro@0.2.1
	equator@0.2.2
	equivalent@1.0.1
	errno@0.3.10
	error-code@2.3.1
	fallible-iterator@0.2.0
	fallible-iterator@0.3.0
	fallible-streaming-iterator@0.1.9
	fast-float2@0.2.3
	fastrand@2.3.0
	fd-lock@3.0.13
	findshlibs@0.10.2
	fragile@2.0.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-timer@3.0.3
	futures-util@0.3.31
	futures@0.3.31
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.31.1
	glob@0.3.1
	half@2.4.1
	hashbrown@0.14.5
	hashbrown@0.15.2
	hashlink@0.8.4
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.4.0
	hex@0.4.3
	home@0.5.9
	humantime@2.1.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	indexmap@2.7.0
	indoc@2.0.5
	inferno@0.11.21
	io-uring@0.6.4
	is-terminal@0.4.13
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itoa@1.0.14
	js-sys@0.3.76
	jsonb@0.4.4
	julian_day_converter@0.3.2
	lazy_static@1.5.0
	libc@0.2.168
	libmimalloc-sys@0.1.39
	libredox@0.1.3
	libsqlite3-sys@0.26.0
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	log@0.4.22
	memchr@2.7.4
	memmap2@0.9.5
	memoffset@0.9.1
	mimalloc@0.1.43
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mockall@0.13.1
	mockall_derive@0.13.1
	nibble_vec@0.1.0
	nix@0.26.4
	nix@0.29.0
	nom@7.1.3
	num-format@0.4.4
	num-traits@0.2.19
	object@0.36.5
	once_cell@1.20.2
	oorandom@11.1.4
	option-ext@0.2.0
	ordered-float@4.5.0
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	pest@2.7.15
	pest_derive@2.7.15
	pest_generator@2.7.15
	pest_meta@2.7.15
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.11.2
	phf_shared@0.11.2
	pin-project-lite@0.2.15
	pin-utils@0.1.0
	pkg-config@0.3.31
	plotters-backend@0.3.7
	plotters-svg@0.3.7
	plotters@0.3.7
	polling@3.7.4
	portable-atomic@1.10.0
	pprof@0.14.0
	ppv-lite86@0.2.20
	predicates-core@1.0.8
	predicates-tree@1.0.11
	predicates@3.1.2
	proc-macro2@1.0.92
	pyo3-build-config@0.22.6
	pyo3-ffi@0.22.6
	pyo3-macros-backend@0.22.6
	pyo3-macros@0.22.6
	pyo3@0.22.6
	quick-xml@0.26.0
	quote@1.0.37
	radix_trie@0.2.1
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.7
	redox_users@0.4.6
	regex-automata@0.4.9
	regex-syntax@0.8.5
	regex@1.11.1
	relative-path@1.9.3
	rgb@0.8.50
	rstest@0.18.2
	rstest_macros@0.18.2
	rusqlite@0.29.0
	rustc-demangle@0.1.24
	rustc_version@0.4.1
	rustix@0.38.42
	rustyline@12.0.0
	ryu@1.0.18
	same-file@1.0.6
	scopeguard@1.2.0
	semver@1.0.23
	serde@1.0.216
	serde_derive@1.0.216
	serde_json@1.0.133
	serde_spanned@0.6.8
	sha2@0.10.8
	shlex@1.3.0
	sieve-cache@0.1.4
	siphasher@0.3.11
	slab@0.4.9
	smallvec@1.13.2
	stable_deref_trait@1.2.0
	str-buf@1.0.6
	str_stack@0.1.0
	strsim@0.11.1
	symbolic-common@12.12.3
	symbolic-demangle@12.12.3
	syn@1.0.109
	syn@2.0.90
	target-lexicon@0.12.16
	tempfile@3.14.0
	termcolor@1.4.1
	termtree@0.4.1
	thiserror-impl@1.0.69
	thiserror-impl@2.0.6
	thiserror@1.0.69
	thiserror@2.0.6
	tinytemplate@1.2.1
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tracing-core@0.1.33
	tracing@0.1.41
	typenum@1.17.0
	ucd-trie@0.1.7
	uncased@0.9.10
	unicode-ident@1.0.14
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unindent@0.2.3
	utf8parse@0.2.2
	uuid@1.11.0
	vcpkg@0.2.15
	version_check@0.9.5
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.99
	wasm-bindgen-macro-support@0.2.99
	wasm-bindgen-macro@0.2.99
	wasm-bindgen-shared@0.2.99
	wasm-bindgen@0.2.99
	web-sys@0.3.76
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
"

inherit cargo

DESCRIPTION="The Limbo interactive SQL shell"
HOMEPAGE="https://github.com/tursodatabase/limbo"
SRC_URI="
	https://github.com/tursodatabase/${PN}/releases/download/v${PV}/source.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions Boost-1.0 CC0-1.0 CDDL
	GPL-2.0-with-bison-exception MIT MPL-2.0 Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	cargo_src_install --path cli

	local DOCS=(
		CHANGELOG.md
		CONTRIBUTING.md
		README.md
	)

	einstalldocs
}

src_test() {
	export RUST_BACKTRACE=full
	cargo_src_test
}
