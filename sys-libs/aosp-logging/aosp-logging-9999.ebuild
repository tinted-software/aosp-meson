EAPI=8

inherit git-r3 meson

SLOT="0"

EGIT_REPO_URI="https://android.googlesource.com/platform/system/logging.git"

BDEPEND="sys-devel/aosp-headers"

src_unpack() {
	git-r3_src_unpack
	cp -r ${FILESDIR}/meson.build ${S}/meson.build
}
