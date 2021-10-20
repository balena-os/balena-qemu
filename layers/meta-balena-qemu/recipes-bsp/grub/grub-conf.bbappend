MACHINE_SPECIFIC_EXTRA_CMDLINE = "${@bb.utils.contains('DEVELOPMENT_IMAGE','1','console=ttyS0','',d)}"
