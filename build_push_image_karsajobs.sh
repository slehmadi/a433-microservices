#!/bin/bash

# Build image
docker build -t ghcr.io/slehmadi/karsajobs:latest .

# Login to GitHub Package
echo $PAT | docker login ghcr.io --username slehmadi --password-stdin

# Push images to GitHub Package
docker push ghcr.io/slehmadi/karsajobs:latest
