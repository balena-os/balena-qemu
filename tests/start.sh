#!/bin/bash

set -o errexit

cd $WORKSPACE/tests/autohat
MACHINE=${JOB_NAME#yocto-}

DEVICE_TYPE_JSON=$WORKSPACE/$MACHINE.json
DEPLOY_ARTIFACT=$(jq --raw-output '.yocto.deployArtifact' $DEVICE_TYPE_JSON)
cp $(readlink --canonicalize $WORKSPACE/build/tmp/deploy/images/$MACHINE/$DEPLOY_ARTIFACT) $WORKSPACE/tests/autohat/resin.img
AUTOHAT_IMAGE=autohat_$MACHINE\_$BUILD_NUMBER
echo "==========Building Autohat image to run tests================="
docker build -t $AUTOHAT_IMAGE --no-cache=true .
cleanup() {
   rm $WORKSPACE/tests/autohat/resin.img
   docker rmi $AUTOHAT_IMAGE
    if [ "$1" == "fail" ]; then
        exit 1
    fi
}
trap 'cleanup fail' SIGINT SIGTERM
if [ "${MACHINE}" == "qemux86-64" ]; then
	echo "==============Running tests==============="
	docker run --rm -v ${WORKSPACE}/tests/autohat:/autohat --privileged \
		--env RESINRC_RESIN_URL=${RESINRC_RESIN_URL} \
		--env email=${RESIN_EMAIL} \
		--env password=${RESIN_PASSWORD} \
		--env device_type=${MACHINE} \
		--env application_name=${MACHINE//-} \
		--env image=/autohat/resin.img \
		$AUTOHAT_IMAGE robot --exitonerror -d /autohat /autohat/qemux86-64.robot
fi
trap 'cleanup' EXIT
