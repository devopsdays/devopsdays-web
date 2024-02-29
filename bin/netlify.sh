#!/bin/bash

echo "Install Dart Sass..."

# This is in Netlify's PATH.
# npm install -g sass

echo "Building..."

hugo version
hugo --theme=devopsdays-theme --buildDrafts=false --baseURL="$DEPLOY_PRIME_URL" --gc --minify
cp bin/staging-robots.txt public/robots.txt