#!/bin/sh

set -e

for line in $(docker images -f "label=com.tg_saver.go.version" -q | uniq); do
  ver=$(docker inspect --format '{{ index .Config.Labels "com.tg_saver.go.version"}}' $line)

  if ! [ $ver = $DOCKER_GO_VERSION ]; then
    docker image rm --force $line
  fi
done
