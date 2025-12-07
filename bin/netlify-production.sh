#!/bin/bash

hugo version
hugo --environment=production --theme=devopsdays-theme --minify --templateMetrics --logLevel info --buildDrafts=false --baseURL="$URL/"
CSSFINGERPRINTED=$(ls public/css/site.min.*.css)
cp -f $CSSFINGERPRINTED public/css/site.css
