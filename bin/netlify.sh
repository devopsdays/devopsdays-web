hugo version
hugo --theme=devopsdays-theme --buildDrafts=false --baseURL="$DEPLOY_PRIME_URL"
cp bin/staging-robots.txt public/robots.txt