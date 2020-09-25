#!/bin/bash

# Checking git
if [ -z $(which git) ]; then
  echo git needs to be installed >&2
  exit 1
fi

# Checking docker-compose
if [ -z $(which docker-compose) ]; then
  echo git needs to be installed >&2
  exit 1 
fi

# Cloning the projects I want
git clone https://github.com/Ricardicus/count-down
git clone https://github.com/Ricardicus/apache2-container
git clone https://github.com/Ricardicus/ric-script
git clone https://github.com/Ricardicus/virtualPiano

# Build the images
docker-compose build
# Run containers
docker-compose up -d

