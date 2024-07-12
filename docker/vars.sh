#!/bin/bash

FOLDER_NAME=$(basename `dirname $PWD`)

if [ -z "${FOLDER_NAME}" ] || [ "." == "${FOLDER_NAME}" ]; then
  echo "Failed to detect project folder name"
  exit
fi

IMAGE_NAME="${FOLDER_NAME}:latest"
CONTAINER_NAME=${FOLDER_NAME}