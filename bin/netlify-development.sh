# npm rebuild
hugo version
hugo --theme=devopsdays-theme --buildDrafts=false --baseURL="https://development.devopsdays.org/"
cp bin/staging-robots.txt public/robots.txt
# gulp
