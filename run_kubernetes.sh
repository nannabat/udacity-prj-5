#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath='nannabat/publicyard:mlmicroservicelocal'

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl create deployment mlmicroservicelocalv1 --image=nannabat/publicyard:mlmicroservicelocal

# Step 3:
# List kubernetes pods
kubectl get pods 

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/mlmicroservicelocalv1 8000:80


