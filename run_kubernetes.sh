#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath='globalint/microservices:latest'

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microserv --image=docker.io/${dockerpath} --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward microserv 8000:80

# Get the logs
kubectl logs `kubectl get pods -o=name`

