#!/bin/bash

echo "====================================="
echo "       Docker Cleanup Script"
echo "====================================="

echo "Removing stopped containers..."
docker container prune -f

echo "Removing unused images..."
docker image prune -f

echo "Removing unused volumes..."
docker volume prune -f

echo "Removing unused networks..."
docker network prune -f

echo
echo "Docker cleanup completed!"

echo
echo "Current Docker disk usage:"
docker system df
