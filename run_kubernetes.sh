#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="sheker9123/demo-java"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run demo-java\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=demo-java

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward demo-java 80:8080
