#!/bin/bash

echo "Unsetting problematic Python environment variables..."
unset PYTHONHOME PYTHONPATH PYTHONDONTWRITEBYTECODE INSIDE_NEMO_PYTHON

echo "Checking for Ruby installation..."
which ruby || echo "Ruby not found in PATH"

echo "Checking for Bundler installation..."
which bundle || echo "Bundler not found in PATH"

echo "Checking available Ruby versions that can be installed..."
apt-cache search ruby | grep -E '^ruby[0-9]' || echo "No Ruby packages found" 