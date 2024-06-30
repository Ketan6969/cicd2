#!/bin/bash

# Fetch the name of the running docker container
container_name=$(docker ps --format "{{.Names}}")

# Check if any running container exists
if [ -n "$container_name" ]; then
    # Remove the running container
    docker rm -f $container_name
    echo "Container $container_name removed successfully."
else
    echo "No running container found."
fi