IMAGE_FSTYPES_append_qemux86 = " resinos-img"
IMAGE_FSTYPES_append_qemux86-64 = " resinos-img"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER_qemux86 = "grub"
RESIN_BOOT_PARTITION_FILES_qemux86 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    grub:/grub/ \
    grub/i386-pc:/grub/i386-pc/ \
    "

RESIN_IMAGE_BOOTLOADER_qemux86-64 = "grub"
RESIN_BOOT_PARTITION_FILES_qemux86-64 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    grub:/grub/ \
    grub/i386-pc:/grub/i386-pc/ \
    "

#
# Deploy a bundle of files for qemu machines
#
EXTRA_IMAGEDEPENDS_append_qemux86 = " resin-runqemu"
EXTRA_IMAGEDEPENDS_append_qemux86-64 = " resin-runqemu"
RESIN_RUNQEMUDIR = "${DEPLOY_DIR_IMAGE}/resin-runqemu"
RESIN_BUNDLEDIR = "${DEPLOY_DIR_IMAGE}/resin-${MACHINE}"
deploy_image_in_bundle() {
    rm -rf ${RESIN_BUNDLEDIR}
    mkdir -p ${RESIN_BUNDLEDIR}

    # Deploy image
    cp -rL ${DEPLOY_DIR_IMAGE}/resin-image-${MACHINE}.resinos-img ${RESIN_BUNDLEDIR}/resin-image-${MACHINE}.hddimg

    # Deploy runqemu scripts
    cp -r ${RESIN_RUNQEMUDIR}/* ${RESIN_BUNDLEDIR}

    # Handle GRUB installation
    dd if=${DEPLOY_DIR_IMAGE}/grub/boot.img of=${RESIN_SDIMG} conv=notrunc bs=446 count=1
    dd if=${DEPLOY_DIR_IMAGE}/grub/core.img of=${RESIN_SDIMG} conv=notrunc bs=512 seek=1
}
IMAGE_POSTPROCESS_COMMAND_append_qemux86 = " deploy_image_in_bundle; "
IMAGE_POSTPROCESS_COMMAND_append_qemux86-64 = " deploy_image_in_bundle; "
