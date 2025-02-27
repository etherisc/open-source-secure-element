#!/bin/bash

# Unset problematic Python environment variables
echo "Unsetting problematic Python environment variables..."
unset PYTHONHOME PYTHONPATH PYTHONDONTWRITEBYTECODE INSIDE_NEMO_PYTHON

# Run Jekyll with Docker
echo "Running Jekyll with Docker..."
docker run --rm -it -p 4000:4000 \
  -v $(pwd):/srv/jekyll \
  -v $(pwd)/vendor/bundle:/usr/local/bundle \
  -e JEKYLL_ENV=production \
  jekyll/jekyll:4.2.0 \
  bash -c "bundle install && bundle exec jekyll serve --livereload --host 0.0.0.0" 