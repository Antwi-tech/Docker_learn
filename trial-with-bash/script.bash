#!/bin/bash

# Step into your working directory
cd ~/Desktop/Docker_learn/trial-with-bash || exit

# Step 1: Run the container with a name
docker run -it bash -c "
  apt-get update && \
  apt-get install -y python3 python3-pip && \
  python3 --version > /version.txt && \
  cat /version.txt
"

# Copy version.txt from the container to the host system
docker cp my-python-check:/version.txt ./version.txt

# Remove the used container
docker rm my-python-check

# Create a new Dockerfile 
touch Dockerfile
