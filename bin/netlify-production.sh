#!/bin/bash

rm -rf public/css/site.min.css
hugo version
hugo --environment=production --theme=devopsdays-theme --minify --templateMetrics --logLevel info --buildDrafts=false --baseURL="$URL/"
CSSFINGERPRINTED=$(ls public/css/site.min.*.css)
ln -s $(basename $CSSFINGERPRINTED) public/css/site.min.css
