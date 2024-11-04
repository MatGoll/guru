# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.3

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.3
	anstream@0.6.13
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.6
	anyhow@1.0.81
	arraydeque@0.5.1
	atomic-polyfill@1.0.3
	autocfg@1.1.0
	backtrace-ext@0.2.1
	backtrace@0.3.71
	bitflags@1.3.2
	bitflags@2.5.0
	bitvec@1.0.1
	bumpalo@3.15.4
	bytemuck@1.15.0
	byteorder@1.5.0
	cc@1.0.90
	cfg-if@1.0.0
	clap@4.5.4
	clap_builder@4.5.2
	clap_derive@4.5.4
	clap_lex@0.7.0
	colorchoice@1.0.0
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	core-graphics-types@0.1.3
	core-graphics@0.23.2
	critical-section@1.1.2
	deranged@0.3.11
	dirs-sys@0.4.1
	dirs@5.0.1
	either@1.10.0
	embed-resource@2.4.2
	encode_unicode@0.3.6
	endian-type@0.1.2
	equivalent@1.0.1
	evdev@0.12.2
	foreign-types-macros@0.2.3
	foreign-types-shared@0.3.1
	foreign-types@0.5.0
	funty@2.0.0
	getrandom@0.2.12
	gimli@0.28.1
	hash32@0.2.1
	hashbrown@0.14.3
	heapless@0.7.17
	heck@0.5.0
	hermit-abi@0.3.9
	indexmap@2.2.6
	indoc@2.0.5
	inotify-sys@0.1.5
	inotify@0.10.2
	instant@0.1.12
	interception-sys@0.1.3
	is-docker@0.2.0
	is-terminal@0.4.12
	is-wsl@0.4.0
	is_ci@1.2.0
	itertools@0.12.1
	itoa@1.0.10
	jobserver@0.1.28
	js-sys@0.3.69
	kanata-interception@0.3.0
	kanata-keyberon-macros@0.2.0
	kanata-keyberon@0.171.3
	kanata-parser@0.171.3
	kanata-tcp-protocol@0.171.3
	karabiner-driverkit@0.1.3
	lazy_static@1.4.0
	libc@0.2.153
	libredox@0.0.1
	lock_api@0.4.11
	log@0.4.21
	memchr@2.7.1
	memoffset@0.6.5
	memoffset@0.7.1
	miette-derive@5.10.0
	miette@5.10.0
	miniz_oxide@0.7.2
	mio@0.8.11
	muldiv@0.2.1
	muldiv@1.0.1
	native-windows-gui@1.0.13
	nibble_vec@0.1.0
	nix@0.23.2
	nix@0.26.4
	num-conv@0.1.0
	num_enum@0.6.1
	num_enum_derive@0.6.1
	num_threads@0.1.7
	object@0.32.2
	once_cell@1.19.0
	open@5.1.3
	option-ext@0.2.0
	os_info@3.8.2
	owo-colors@3.5.0
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	pathdiff@0.2.1
	patricia_tree@0.8.0
	pin-utils@0.1.0
	powerfmt@0.2.0
	proc-macro-crate@1.3.1
	proc-macro2@1.0.79
	quote@1.0.35
	radium@0.7.0
	radix_trie@0.2.1
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-automata@0.4.6
	regex-syntax@0.8.3
	regex@1.10.4
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustc_version@0.4.0
	ryu@1.0.17
	scopeguard@1.2.0
	sd-notify@0.4.1
	semver@1.0.22
	serde@1.0.197
	serde_derive@1.0.197
	serde_json@1.0.114
	serde_spanned@0.6.5
	signal-hook-registry@1.4.1
	signal-hook@0.3.17
	simplelog@0.12.2
	smallvec@1.13.2
	smawk@0.3.2
	spin@0.9.8
	stable_deref_trait@1.2.0
	strip-ansi-escapes@0.2.0
	strsim@0.11.0
	supports-color@2.1.0
	supports-hyperlinks@2.1.0
	supports-unicode@2.1.0
	syn@2.0.55
	tap@1.0.1
	termcolor@1.4.1
	terminal_size@0.1.17
	textwrap@0.15.2
	thiserror-impl@1.0.58
	thiserror@1.0.58
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	toml@0.8.12
	toml_datetime@0.6.5
	toml_edit@0.19.15
	toml_edit@0.22.9
	unicode-ident@1.0.12
	unicode-linebreak@0.1.5
	unicode-width@0.1.11
	utf8parse@0.2.1
	vswhom-sys@0.1.2
	vswhom@0.1.0
	vte@0.11.1
	vte_generate_state_changes@0.1.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	web-sys@0.3.69
	widestring@1.1.0
	win_dbg_logger@0.1.0
	winapi-build@0.1.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.4
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.4
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.4
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.4
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.4
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.4
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.4
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.4
	winnow@0.5.40
	winnow@0.6.6
	winreg@0.52.0
	wyz@0.5.1
"

inherit cargo

DESCRIPTION="Multi-layer keyboard customization"
HOMEPAGE="https://github.com/jtroo/kanata"
SRC_URI="
	https://github.com/jtroo/kanata/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="LGPL-3"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD ISC LGPL-3 MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

# Rust package
QA_FLAGS_IGNORED="usr/bin/kanata"