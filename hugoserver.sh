# !/bin/bash
#
# File: hugoServer
#
# Purpose: Run the Hugo container as a local server
#
# This requires Docker 17.06.0-ce or above.


docker stop hugo-server
docker rm   hugo-server
docker run -tip 1313:1313 -v $(pwd):/site:cached -e VIRTUAL_HOST="${1}" --name hugo-server devopsdays/docker-hugo-server:v0.30.2
