#!/bin/bash

hugo version
hugo --environment=development --theme=devopsdays-theme --buildDrafts=false --templateMetrics --templateMetricsHints --printMemoryUsage --printPathWarnings --printUnusedTemplates --printI18nWarnings --logLevel debug --baseURL="$DEPLOY_PRIME_URL"
cp bin/staging-robots.txt public/robots.txt
CSSFINGERPRINTED=$(ls public/css/site.min.*.css)
cp -fv $CSSFINGERPRINTED public/css/site.min.css
