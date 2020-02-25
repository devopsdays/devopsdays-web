# !/bin/bash
#
# File: hugoServer
#
# Purpose: Run the Hugo container as a local server
#
# This requires Docker 17.06.0-ce or above.
#
# NOTE: The docker image provided by jojomi is not managed or audited by devopsdays


docker stop hugo-server
docker rm   hugo-server
docker run -tip 1313:1313 -v $(pwd):/src:cached -e HUGO_THEME=devopsdays-theme -e HUGO_WATCH=1 -e HUGO_BASEURL="http://localhost:1313" --name hugo-server jojomi/hugo:0.64.1
