IMAGE_FSTYPES_append_qemux86 = " balenaos-img"
IMAGE_FSTYPES_append_qemux86-64 = " balenaos-img"

# Customize balenaos-img
BALENA_IMAGE_BOOTLOADER_qemux86 = "grub"
BALENA_BOOT_PARTITION_FILES_qemux86 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    grub:/grub/ \
    grub/i386-pc:/grub/i386-pc/ \
    "

BALENA_IMAGE_BOOTLOADER_qemux86-64 = "grub"
BALENA_BOOT_PARTITION_FILES_qemux86-64 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    grub:/grub/ \
    grub/i386-pc:/grub/i386-pc/ \
    "

#
# Deploy a bundle of files for qemu machines
#
BALENA_BUNDLEDIR = "${DEPLOY_DIR_IMAGE}/resin-${MACHINE}"
deploy_image_in_bundle() {
    rm -rf ${BALENA_BUNDLEDIR}
    mkdir -p ${BALENA_BUNDLEDIR}

    # Deploy image
    cp -rL ${BALENA_RAW_IMG} ${BALENA_BUNDLEDIR}/balena-image-${MACHINE}.hddimg

    # Handle GRUB installation
    dd if=${DEPLOY_DIR_IMAGE}/grub/boot.img of=${BALENA_RAW_IMG} conv=notrunc bs=446 count=1
    dd if=${DEPLOY_DIR_IMAGE}/grub/core.img of=${BALENA_RAW_IMG} conv=notrunc bs=512 seek=1
}
IMAGE_POSTPROCESS_COMMAND_append_qemux86 = " deploy_image_in_bundle; "
IMAGE_POSTPROCESS_COMMAND_append_qemux86-64 = " deploy_image_in_bundle; "

# Bootloader is GRUB
python () {
        d.delVar("UBOOT_MACHINE")
}
