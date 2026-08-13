#!/bin/bash

LOG_DIR="/var/log"

echo "Cleaning old log files..."

sudo find "$LOG_DIR" -type f -name "*.log" -mtime +7 -delete

echo "Old log files cleaned successfully."
