#!/bin/bash

set -o xtrace

docker rmi localhost/socian || true
docker build --target dist -t localhost/socian -f Dockerfile.dev .
docker build --target devcontainer -t localhost/socian-devcontainer -f Dockerfile.dev .
