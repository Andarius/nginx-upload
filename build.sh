#!/bin/bash
readonly VERSION='1.1.0'

cd "$(dirname $0)"

docker build ${@} -t andarius/nginx-upload:${VERSION} . 
docker push andarius/nginx-upload:${VERSION}
