#!/bin/bash
# Create public directory and copy all files
mkdir -p public
# Copy all files except the public directory itself
find . -maxdepth 1 -type d -not -name public -exec cp -r {} public/ \;
find . -maxdepth 1 -type f -exec cp {} public/ \;
