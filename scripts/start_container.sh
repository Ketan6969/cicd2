#!/bin/sh

#Turn on the debugging
set -e

#pull the docker image
docker pull ketan2004/pookie-flask

echo "Starting the application!!!"

#Starting the docker container
docker run -d -p 5000:5000 ketan2004/pookie-flask

#priting the docker container id 
docker ps -q 