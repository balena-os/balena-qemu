FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_class-target = " \
    file://config \
    "

inherit deploy

DEPENDS_class-target = "grub-conf grub-native"
RDEPENDS_${PN}_class-target = "diffutils freetype"
RDEPENDS_${PN}_class-native = ""

GRUB_IMAGE = "core.img"
GRUB_TARGET = "i386-pc"

GRUB_BUILDIN ?= "biosdisk part_msdos fat search linux"

do_deploy_class-target() {
    mkdir -p ${DEPLOYDIR}/grub/${GRUB_TARGET}

    # Deploy boot.img (stage 1 bootloader)
    install -m 644 ${D}/${libdir}/grub/${GRUB_TARGET}/boot.img ${DEPLOYDIR}/grub

    # Make and deploy core.img (stage 1.5 bootloader)
    grub-mkimage -c ../config -p /grub -d ./grub-core/ -O ${GRUB_TARGET} \
        -o ${DEPLOYDIR}/grub/${GRUB_IMAGE} ${GRUB_BUILDIN}

    # Deploy grub modules (used in stage 2 bootloader)
    mkdir -p ${DEPLOYDIR}/grub/${GRUB_TARGET}
    cp -r ${D}/${libdir}/grub/${GRUB_TARGET}/*.mod ${DEPLOYDIR}/grub/${GRUB_TARGET}
}

do_deploy() {
    :
}

BBCLASSEXTEND = "native"

addtask deploy after do_install before do_build
