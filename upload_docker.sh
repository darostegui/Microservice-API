!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
export dockerpath="globalint/microservices"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=globalint

# Step 3:
# Push image to a docker repository
docker tag ${dockerpath} ${dockerpath}
docker push ${dockerpath}
