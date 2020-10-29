SUMMARY = "AWS EC2 Elastic Network Adapter"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"

inherit module

SRC_URI = "git://github.com/amzn/amzn-drivers.git \
           file://0001-support-for-KERNEL_SRC-in-Makefile.patch \
           "
SRCREV = "aaea12bc38eff15c48e158fedd367cf36fac5e18"
S = "${WORKDIR}/git/kernel/linux/ena"

do_install() {
    # TODO
}