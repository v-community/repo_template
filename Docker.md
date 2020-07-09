# V-lang development container in docker 

This document describes how to set up a development environment for developing V-language inside a docker container. The docker container will provide most dependencies you need.

## The container 

This image contains:
- **Debian Buster**, latest version (will be moved to alpine when supported)
- **gcc** and **clang** compilers
- **nodejs** and **npm**
- **git**
- **open-ssh client** to support github push over ssh
- **Valgrind**


Works both with docker for linux and windows.

## 1. Installing docker

[Here are installation instructions on ubuntu](https://docs.docker.com/engine/install/ubuntu/) but on that page there are instructions for other distributions too.

## 2. Running the docker image

### Run the container from development image

You can run the development docker container from the repo root in interactive mode:

```bash
# start docker container, default maps ${PWD} to /src inside the container. You can use any local path instead of ${PWD}
docker run \
  -it \
  -v ${PWD}:/src \
  --name v-devcontainer \
  thevlang/vlang:buster-dev \
  /bin/bash

```

## Other pre-built vlang docker images

The dockerfiles can you find at https://github.com/helto4real/vlang-docker and other images built on https://hub.docker.com/u/thevlang


