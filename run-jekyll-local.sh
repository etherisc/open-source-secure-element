#!/bin/bash
echo "Unsetting problematic Python environment variables..."
unset PYTHONHOME PYTHONPATH PYTHONDONTWRITEBYTECODE INSIDE_NEMO_PYTHON

echo "Running Jekyll locally..."
bundle exec jekyll serve 