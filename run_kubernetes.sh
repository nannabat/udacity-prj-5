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
#POD=$(kubectl get pod -l app=mlmicroservicelocalv1 -o jsonpath="{.items[0].metadata.name}")
# Step 4:
# Forward the container port to a host
#echo "the value of POD is $POD"
kubectl port-forward deployment/mlmicroservicelocalv1 8000:80



