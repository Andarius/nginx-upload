#!/bin/bash
readonly VERSION='1.22-alpine'

cd "$(dirname $0)" || exit

docker build "${@}" -t andarius/nginx-upload:${VERSION} . -t andarius/nginx-upload:latest
docker push andarius/nginx-upload:${VERSION}
docker push andarius/nginx-upload:latest
