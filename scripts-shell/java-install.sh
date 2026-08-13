#!/bin/bash

echo "Installing Java..."

sudo yum install -y java-17-amazon-corretto

echo "Checking Java version..."
java -version

echo "Java installation completed."
