deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

DOCKER_RUNNING_INSTRUCTIONS = '''

'''

module.exports =
	version: 1
	slug: 'docker-x86-64'
	name: 'Docker X86 64bit'
	arch: 'amd64'
	state: 'experimental'

	instructions: [
		DOCKER_RUNNING_INSTRUCTIONS
	]
	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted.md#on-mac-and-linux'
	supportsBlink: false

	yocto:
		machine: 'docker-x86-64'
		image: 'resin-image'
		fstype: 'dockerimage'
		version: 'yocto-morty'
		deployArtifact: 'resin-image-docker-x86-64.tar'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
