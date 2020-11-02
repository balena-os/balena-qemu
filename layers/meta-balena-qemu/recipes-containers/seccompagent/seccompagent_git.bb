include seccompagent.inc

SRCREV = "7b63ac697195c5beb40bd902f3af7279900fed6a"
SRC_URI = " \
    git://github.com/kinvolk/runc;branch=master \
    file://0001-Makefile-respect-GOBUILDFLAGS-for-runc-and-remove-re.patch \
    "
RUNC_VERSION = "1.0.0-rc92+seccomp-notify"
