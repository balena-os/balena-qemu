deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

QEMU_RUNNING_INSTRUCTIONS = '''
	Run the following to start the image:
	<br>
	On systems with KVM support:
	<br>
	<code>qemu-system-x86_64 -device ahci,id=ahci -drive file=balena-image-qemux86-64.img,media=disk,cache=none,format=raw,if=none,id=disk -device ide-hd,drive=disk,bus=ahci.0 -net nic,model=virtio -net user -m 512 -nographic -machine type=pc,accel=kvm -smp 4 -cpu host</code>
	<br>
	On systems without KVM support:
	<br>
	<code>qemu-system-x86_64 -device ahci,id=ahci -drive file=balena-image-qemux86-64.img,media=disk,cache=none,format=raw,if=none,id=disk  -device ide-hd,drive=disk,bus=ahci.0 -net nic,model=virtio -net user -m 512 -nographic -machine type=pc -smp 4</code>
	<br>
	Tweak <code>-smp</code> and <code>-cpu</code> parameters based on the CPU of the machine qemu is running on. <code>-cpu</code> parameter needs to be dropped on OSX and Windows.
	<br>
	Tweak <code>-nographic</code> and <code>-m 512</code> to set the display of qemu and memory respectively.

'''

module.exports =
	version: 1
	slug: 'qemux86-64'
	name: 'QEMU X86 64bit'
	arch: 'amd64'
	state: 'released'

	instructions: [
		QEMU_RUNNING_INSTRUCTIONS
	]
	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/qemux86-64/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/qemux86-64/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/qemux86-64/nodejs/'
	supportsBlink: true

	yocto:
		machine: 'qemux86-64'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-dunfell'
		deployArtifact: 'balena-image-qemux86-64.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
