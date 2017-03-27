inherit kernel-resin

RESIN_CONFIGS_append = " gcp"

RESIN_CONFIGS[gcp] = " \
    CONFIG_KVM_GUEST=y \
    CONFIG_VIRTIO_PCI=y \
    CONFIG_SCSI_VIRTIO=y \
    CONFIG_VIRTIO_NET=y \
    CONFIG_PCI_MSI=y \
    "
