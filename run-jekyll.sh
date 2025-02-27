#!/bin/bash
echo "Unsetting problematic Python environment variables..."
unset PYTHONHOME PYTHONPATH

echo "Running Jekyll with Docker..."
docker run --rm -it -p 4000:4000 -v $(pwd):/srv/jekyll jekyll/jekyll:4.2.0 jekyll serve 