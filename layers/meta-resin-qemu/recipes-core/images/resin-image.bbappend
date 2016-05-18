# Install grub
BURN_GRUB_qemuall = "1"

IMAGE_FSTYPES_append_qemuall = " resin-sdcard"

# Customize resin-sdcard
RESIN_IMAGE_BOOTLOADER_qemuall = "grub"
RESIN_BOOT_PARTITION_FILES_qemuall = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    grub:/grub/ \
    grub/i386-pc:/grub/i386-pc/ \
    "

# We need this link to trick runqemu that this is a hddimg image
fake_hddimg_symlink () {
    ln -sf ${IMAGE_NAME}.rootfs.resin-sdcard ${DEPLOY_DIR_IMAGE}/${IMAGE_LINK_NAME}.hddimg
}
IMAGE_POSTPROCESS_COMMAND_append_qemuall =+ "fake_hddimg_symlink ; "
