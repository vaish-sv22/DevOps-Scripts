#!/bin/bash

set -e

echo "Installing Docker..."

sudo yum install -y docker

sudo systemctl start docker
sudo systemctl enable docker

echo "Docker version:"
docker --version

echo "Docker installation completed successfully!"
