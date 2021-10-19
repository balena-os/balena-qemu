IMAGE_FSTYPES_append = " balenaos-img"

# Customize balenaos-img
BALENA_IMAGE_BOOTLOADER = "grub"
BALENA_BOOT_PARTITION_FILES_append = " \
    grub:/grub/ \
    grubenv:/grub/grubenv \
    grub/i386-pc:/grub/i386-pc/ \
    grub_extraenv:/grub/grub_extraenv \
    grub.cfg_internal:/grub/grub.cfg \
    "

write_mbr() {
    # Write MBR with first stage bootloader
    dd if=${DEPLOY_DIR_IMAGE}/grub/boot.img of=${BALENA_RAW_IMG} conv=notrunc bs=1
    # Write Post-MBR with second stage bootloader
    dd if=${DEPLOY_DIR_IMAGE}/grub/core.img of=${BALENA_RAW_IMG} conv=notrunc bs=1 seek=512
}

IMAGE_POSTPROCESS_COMMAND_append = " write_mbr; "

# Bootloader is GRUB
python () {
        d.delVar("UBOOT_MACHINE")
}
