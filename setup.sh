#!/bin/bash

MY_GITHUB="https://github.com/Ricardicus"

function clone_repo {
  echo "Getting project: $1"
  if [ -d $1 ]; then
    rm -rf $1
  fi
  git clone $MY_GITHUB/$1

}

# Checking git
if [ -z $(which git) ]; then
  echo git needs to be installed >&2
  exit 1
fi

# Checking docker-compose
if [ -z $(which docker-compose) ]; then
  echo docker-compose needs to be installed >&2
  exit 1 
fi

# Cloning the projects I want
clone_repo count-down
clone_repo apache2-container
clone_repo ric-script
clone_repo virtualPiano

# Build the images
docker-compose build
# Run containers
docker-compose up -d

