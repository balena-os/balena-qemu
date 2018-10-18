Change log
-----------

# v2.19.0+rev3
## (2018-10-18)

* Update autohat v0.0.5 [Andrei Gherzan]

# v2.19.0+rev2
## (2018-09-27)

* Update autohat v0.0.3 [Horia Delicoti]

# v2.19.0+rev1
## (2018-09-25)

* Update the meta-resin submodule to v2.19.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.19.0
### (2018-09-23)

* Update Balena to fix tty console hanging in some cases
* Pin down cargo deps (using Cargo.lock) to versions known working with rust 1.24.1 (for sumo)
* Remove duplicate packaging of bcm43143
* Set ModemManager to ignore Inca Roads Serial Device
* Add support for aufs 4.14.56+
* Update resin-supervisor to v7.19.7

## meta-resin-2.18.1
### (2018-09-14)

* Add a parsable representation of the changelog

## meta-resin-v2.18.0
### (2018-09-12)

* Update grub hooks to prepare to load kernel from root [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.19.4 [Cameron Diver]
* Kernel-resin.bbclass: Enable CONFIG_IP_NF_TARGET_LOG as a module [John (Jack) Brown]
* Balena: Update to current HEAD of 17.12-resin [Andrei Gherzan]
* Compress os-config with UPX on arm64 too [Andrei Gherzan]
* Update upx to 3.95 [Andrei Gherzan]
* Add support to skip flasher detection in env_resin.h [Zubair Lutfullah Kakakhel]
* Add the kernel to the rootfs [Zubair Lutfullah Kakakhel]
* Rework resin-supervisor systemd dependency on balena [Florin Sarbu]
* Enhanced security options for dropbear - sumo [Andrei Gherzan]
* Enhanced security options for dropbear - rocko [Andrei Gherzan]
* Enhanced security options for dropbear - pyro [Andrei Gherzan]
* Enhanced security options for dropbear - morty [Andrei Gherzan]
* Enhanced security options for dropbear - krogoth [Andrei Gherzan]

## meta-resin-2.17.0
### (2018-09-03)

* Resin-proxy-config: The no_proxy file fails to parse when missing EOL [Rich Bayliss]

## meta-resin-2.16.0
### (2018-08-31)

* Os-config: UPX is broken on aarch64 [Theodor Gherzan]
* Allow flasher types to pin preloaded devices [Theodor Gherzan]
* Disable PIE for go [Zubair Lutfullah Kakakhel]
* Disable PIE for balena [Zubair Lutfullah Kakakhel]

</details>

* Update the poky submodule to sumo-19.0.1 [Florin Sarbu]
* Add a parsable representation of the changelog [Giovanni Garufi]

# v2.15.1+rev1
## (2018-08-31)

* Update the meta-resin submodule to version v2.15.1 [Florin Sarbu]
* Add versionist support [Giovanni Garufi]

# v2.14.3+rev1
## (2018-08-15)

* Update the meta-resin submodule to version v2.14.3 [Florin]
* Update autohat to HEAD of master [Horia]

# v2.14.1+rev2
## (2018-08-05)

* Disable UPX compression for os-config [Florin]

# v2.14.1+rev1
## (2018-08-03)

* Update the meta-resin submodule to version v2.14.1 [Florin]
* Update the resin-yocto-scripts submodule to 8312741e13604a9d166370349061876afb22c0fa (on master branch) [Florin]
* Enable squashfs support in the kernel [Florin]

# v2.14.0+rev1
## (2018-07-20)

* Update the meta-resin submodule to version v2.14.0 [Florin]
* Switch docker storage driver from aufs to overlayfs [Florin]
* Switch to Yocto Sumo 19.0.0 [Florin]

# v2.13.6+rev1
## (2018-07-13)

* Update the meta-resin submodule to version v2.13.6 [Florin]

# v2.13.5+rev1
## (2018-07-10)

* Update the meta-resin submodule to version v2.13.5 [Florin]
* Update the resin-yocto-scripts submodule to 59ccd8558435ff6424827fb36ccb43b14650f4d4 (on master branch) [Florin]

# v2.12.7+rev1
## (2018-05-07)

* Update the meta-resin submodule to version v2.12.7 [Florin]

# v2.12.6+rev1
## (2018-05-02)

* Update the meta-resin submodule to version v2.12.6 [Florin]
* Update the resin-yocto-scripts submodule to f7718efbbf53369aaacb7eb54e707ee8a5d4fc4b (on master branch) [Florin]

# v2.12.5+rev1
## (2018-03-27)

* Update the meta-resin submodule to version v2.12.5 [Florin]
* Update the resin-yocto-scripts submodule to 9cecb1ca4d9d4713dd337148b7d04a17afdba772 (on master branch) [Florin]
* Update running instructions for non-KVM case [Gergely]

# v2.9.6+rev1
## (2018-01-13)

* Update the meta-resin submodule to version v2.9.6 [Florin]

# v2.9.2+rev1
## (2017-12-20)

* Update the meta-resin submodule to version v2.9.2 [Florin]
* Install in the rootfs the 99-resin-grub hostapp hook needed for GRUB to switch the root partition when doing host OS updates [Florin]
* Update the resin-yocto-scripts submodule to 6f7a9ab326bb822196e3e48b08ef1d73d08caec6 (on master branch) [Florin]

# v2.7.4+rev1
## (2017-10-28)

* Update the meta-resin submodule to version v2.7.4 [Florin]
* Update the resin-yocto-scripts submodule to e3a06d48a2f8b7e32d3047c33066a5b896e6ae93 (on master branch) [Florin]
* Update meta-openembedded to latest pyro branch [Will]
* Update poky to latest pyro branch [Will]
* Include meta-rust layer [Will]
* Add meta-rust layer [Will]
* Update to Yocto Pyro [Will]
* Update resin-yocto-scripts to latest master [Will]

# v2.3.0+rev1
## (2017-08-17)

* Update the meta-resin submodule to version v2.3.0 [Florin]

# v2.2.0+rev1
## (2017-07-30)

* Update the meta-resin submodule to version v2.2.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.1.0+rev1
## (2017-07-25)

* Update the meta-resin submodule to version v2.1.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Make Yocto use libsdl-native instead of host libsdl [Florin]

# v2.0.4+rev1
## (2017-05-22)

* Update the meta-resin submodule to version v2.0.4 [Florin]
* Update the resin-yocto-scripts submodule [Florin]
* Update resin-yocto-scripts to master [Will]
* Adding new autohat tests + fixes [Horia]

# v2.0.2+rev1
## (2017-05-10)

* meta-resin: Bump to 2.0.2 [Andrei]
* Update resin-yocto-scripts [Will]
* Update autohat submodule [Will]
* Update Poky and meta-openembedded submodules to morty [Will]
* Update tests/autohat - Fixes HOSTOS version parsing bug + Adds new tests [Praneeth]
* Update grub.cfg - Search QEMU root device by label instead of hda/sda/vda paths [Praneeth]
* Update linux-yocto_%.bbappend - To enable support for running the image on Google Cloud [Praneeth]

# v2.0.0-rc5.rev1
## (2017-03-26)

* Update the meta-resin submodule to version v2.0.0-rc5 [Florin]
* Update tests/autohat - Bring in stability improvements and new tests [Praneeth]
* Increase size of the resin initramfs image from 8192K to 16384K to accommodate for size increase due to x86 arch [Florin]
* Update the meta-resin submodule to version v2.0.0-rc3 [Florin]

# v2.0.0-beta12.rev1
## (2017-02-27)

* Bump tests/autohat to current HEAD [Andrei]
* Bump resin-yocto-scripts to current HEAD [Andrei]
* meta-resin: Bump to 2.0.0-beta12 [Andrei]

# v2.0.0-beta11.rev1
## (2017-02-15)

* Update meta-resin to v2.0.0-beta.11 [Andrei]

# v2.0.0-beta10.rev1
## (2017-02-14)

* Update meta-resin to v2.0.0-beta.10 [Andrei]

# v2.0.0-beta.9
## (2017-02-08)

* Update meta-resin to v2.0-beta.9 [Andrei]

# v2.0.0-beta.8
## (2017-01-27)

* Update meta-resin to v2.0-beta.8 [Andrei]
* Update resin-yocto-scripts to HEAD of the master branch [Florin]
* Update tests/start.sh - Enable AutoHaT support for Qemu 32 bit images [Horia]
* Update tests/autohat - Bring in stability improvements and new tests [Praneeth]

# v2.0.0-beta.7
## (2016-12-05)

* Update meta-resin to v2.0-beta.7 [Florin]

# v2.0.0-beta.6
## (2016-12-05)

* Update meta-resin to v2.0-beta.6 [Andrei]

# v2.0.0-beta.5
## (2016-11-30)

* Update meta-resin to v2.0-beta.5 [Andrei]

# v2.0.0-beta.3
## (2016-11-07)

* Update meta-resin to v2.0-beta.3 [Andrei]
* Cleanup docker-resin-supervisor-disk of unneeded variables [Andrei]
* Update resin-yocto-scripts to fix logging in container builds

# v2.0.0-beta.1
## (2016-10-11)

* Update meta-resin to v2.0-beta.1 [Andrei]
* Add meta-filesystem as we need aufs-utils [Andrei]
* Add build support for resinos [Andrei]
* Update resin-yocto-script to include changes in our image types [Theodor]
* Replace the concept of a debug image with a development image [Theodor]
* Update meta-resin to include avahi [Florin]
* Update resin-yocto-scripts to include kernel headers handling as gzip [Florin]

# v1.16.0
## (2016-09-27)

* Update meta-resin to v1.16 [Florin]

# v1.15.0
## (2016-09-24)

* Update meta-resin to v1.15 [Florin]

# v1.14.0
## (2016-09-23)

* Update meta-resin to v1.14 [Florin]

# v1.13.0
## (2016-09-23)

* Update meta-resin to v1.13 [Florin]

# v1.12.0
## (2016-09-21)

* Update meta-resin to v1.12 [Florin]
* Update resin-yocto-scripts to include resinhup upload to dockerhub [Florin]
* Update tests/autohat - Fetching the new resin-cli and adding additional tests [Praneeth]
* Update meta-resin [Florin]
* Change .coffee to announce partition 1 now holds config.json and also introduce versioning (v1) [Florin]

# v1.11.0
## (2016-08-31)

* Update meta-resin to v1.11 [Florin]

# v1.10.0
## (2016-08-24)

* Update meta-resin to v1.10 [Florin]

# v1.9.0
## (2016-08-24)

* Update meta-resin to v1.9 [Florin]
* Update resin-yocto-scripts for including kernel modules headers deploy [Florin]

# v1.8.0
## (2016-08-02)

* Bump meta-resin to v1.8 [Andrei]

# v1.7.2
## (2016-07-26)

* Bump resin-yocto-scripts to current HEAD to include ability to run tests based on variable [Praneeth]

# v1.7.1
## (2016-07-26)

* No more debug images in staging

# v1.7.0
## (2016-07-14)

* Update meta-resin to v1.7
* Add support for qemux86 and qemux86-64 [Andrei]
