#!/bin/bash

if [ -n "$1" ]
then
  for DOCKER_IMAGE in $(echo $1 | sed "s/,/ /g")
  do
    kind load docker-image $DOCKER_IMAGE
  done
fi
