#!/bin/bash

# Authenticate with GCR
gcloud auth configure-docker

# Pull the GCR image
docker pull gcr.io/your-gcr-project/your-image:tag

# Tag the GCR image for ECR
docker tag gcr.io/your-gcr-project/your-image:tag your-aws-account-id.dkr.ecr.your-region.amazonaws.com/your-ecr-repo:tag

# Authenticate with ECR
aws ecr get-login-password --region your-region | docker login --username AWS --password-stdin your-aws-account-id.dkr.ecr.your-region.amazonaws.com

# Push the image to ECR
docker push your-aws-account-id.dkr.ecr.your-region.amazonaws.com/your-ecr-repo:tag

# Optionally, clean up local images
docker rmi gcr.io/your-gcr-project/your-image:tag
docker rmi your-aws-account-id.dkr.ecr.your-region.amazonaws.com/your-ecr-repo:tag
