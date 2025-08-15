#!/usr/bin/env bash

docker kill socian || true 
docker rm socian || true 
docker create --name socian -p 3000:3000 -p 4200:4200 localhost/socian
