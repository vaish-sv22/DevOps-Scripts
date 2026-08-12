#!/bin/bash

echo "Starting Docker cleanup..."

echo "Removing stopped containers..."
docker container prune -f

echo "Removing unused images..."
docker image prune -f

echo "Removing unused volumes..."
docker volume prune -f

echo "Removing unused networks..."
docker network prune -f

echo "Docker cleanup completed!"

docker system df
