#!/bin/sh

VERSION="0.1.0"
GIT_COMMAND="git -C ${PWD}"
GIT_VERSION=`${GIT_COMMAND} describe --always --tags 2> /dev/null`
VERSION=`echo ${GIT_VERSION} | sed 's/-/\./g' | sed 's/g//g'`

echo "Version: " ${VERSION}

RELEASE_NAME="Blinkinlabs_AVR_${VERSION}"

rsync -a --exclude=".*" avr/ ${RELEASE_NAME} 

zip ${RELEASE_NAME}.zip ${RELEASE_NAME} -r

rm -r ${RELEASE_NAME}

SHASUM=(`shasum -a256 ${RELEASE_NAME}.zip`)
SIZE=(`wc -c ${RELEASE_NAME}.zip`)

echo "Success:\n\n"

echo \"archiveFileName\": \"${RELEASE_NAME}.zip\",
echo \"checksum\": \"SHA-256:${SHASUM}\",
echo \"size\": \"${SIZE}\",
