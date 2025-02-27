#!/bin/bash

# Unset problematic Python environment variables
echo "Unsetting problematic Python environment variables..."
unset PYTHONHOME PYTHONPATH PYTHONDONTWRITEBYTECODE INSIDE_NEMO_PYTHON

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "Ruby not found. Installing Ruby..."
    sudo apt-get update
    sudo apt-get install -y ruby-full ruby-bundler
    
    # Verify installation
    ruby --version
    bundle --version
fi

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "Bundler not found. Installing Bundler..."
    sudo gem install bundler
    
    # Verify installation
    bundle --version
fi

# Install Jekyll dependencies
echo "Installing Jekyll dependencies..."
bundle install

# Run Jekyll
echo "Starting Jekyll server..."
bundle exec jekyll serve 