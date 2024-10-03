#!/bin/sh
docker build -f 'Dockerfile' -t 2048game '.' 
docker run --publish 8080:8080 2048game
docker run --name testname --publish 7000:8080 2048game
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)