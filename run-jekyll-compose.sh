#!/bin/bash

# Unset problematic Python environment variables
echo "Unsetting problematic Python environment variables..."
unset PYTHONHOME PYTHONPATH PYTHONDONTWRITEBYTECODE INSIDE_NEMO_PYTHON

# Run Jekyll with Docker Compose
echo "Running Jekyll with Docker Compose..."
docker-compose up 