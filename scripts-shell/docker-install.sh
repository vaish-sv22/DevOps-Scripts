#!/bin/bash

set -e

echo "====================================="
echo "     Docker Installation Script"
echo "====================================="

echo "[1/4] Installing Docker..."
sudo yum install -y docker

echo "[2/4] Starting Docker service..."
sudo systemctl start docker

echo "[3/4] Enabling Docker at boot..."
sudo systemctl enable docker

echo "[4/4] Checking Docker version..."
docker --version

echo "====================================="
echo "Docker installation completed!"
echo "====================================="
