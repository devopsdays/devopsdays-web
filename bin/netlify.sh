#!/bin/bash

hugo version
hugo --theme=devopsdays-theme --buildDrafts=false --baseURL="$DEPLOY_PRIME_URL" --gc --minify
cp bin/staging-robots.txt public/robots.txt