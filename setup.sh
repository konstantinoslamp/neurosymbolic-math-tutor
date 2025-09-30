#!/bin/bash

# Neurosymbolic Math Tutor Setup Script
# This script sets up the development environment

echo "Neurosymbolic Math Tutor Setup"
echo "=============================="

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "ERROR: Docker is not installed. Please install Docker Desktop first."
    exit 1
fi

# Check if Docker is running
if ! docker info &> /dev/null; then
    echo "ERROR: Docker is not running. Please start Docker Desktop."
    exit 1
fi

echo "SUCCESS: Docker is available"

# Create data directory if it doesn't exist
if [ ! -d "data" ]; then
    echo "INFO: Creating data directory..."
    mkdir -p data
    echo "      Add your equation images to the 'data' folder"
fi

# Build the Docker image
echo "INFO: Building Docker image..."
docker build -f Dockerfile.cpu -t math-tutor:latest .

if [ $? -eq 0 ]; then
    echo "SUCCESS: Docker image built successfully!"
    echo ""
    echo "To run the application:"
    echo "   docker run --rm -it -p 8888:8888 -v \$(pwd)/data:/app/data math-tutor:latest"
    echo ""
    echo "Then:"
    echo "   1. Open the Jupyter Lab URL in your browser"
    echo "   2. Open main.ipynb"
    echo "   3. Run the cells to see your neurosymbolic AI in action!"
else
    echo "ERROR: Failed to build Docker image"
    exit 1
fi