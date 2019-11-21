#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath='nannabat/publicyard:mlmicroservicelocal'

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ~/.keys/docker_access_token.txt | docker login --username nannabat --password-stdin


# Step 3:
# Push image to a docker repository
docker push $dockerpath

