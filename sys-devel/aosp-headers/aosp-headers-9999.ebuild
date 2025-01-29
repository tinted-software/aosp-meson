EAPI=8

SRC_URI="
https://android.googlesource.com/platform/system/core/+archive/refs/heads/main/libcutils/include.tar.gz -> libcutils.tar.gz
https://android.googlesource.com/platform/system/libbase/+archive/refs/heads/main/include.tar.gz -> libbase.tar.gz
https://android.googlesource.com/platform/system/logging/+archive/refs/heads/main/liblog/include.tar.gz -> loggling.tar.gz
"
S="${WORKDIR}"

SLOT="0"

src_install() {
	insinto /usr/include
	doins -r ./*
	doins -r ./{android,android-base,cutils,log}
}
