#!/bin/bash
set -e



echo "no tests..."
# If no test setup exists, skip or echo "no tests"

echo "Building Docker image..."
docker build -t team-availability-app .

echo " Starting app with Docker Compose..."
docker-compose up -d
