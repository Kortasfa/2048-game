#!/bin/sh
docker build --pull --rm -f 'Dockerfile' -t 2048game '.' 
docker run --publish 8080:8080 2048game
docker run --name testname --publish 8000:8000 2048game
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)