# !/bin/bash
#
# File: hugoServer
#
# Purpose: Run the Hugo container as a local server
#

docker stop hugo-server
docker rm   hugo-server
docker run -tp 1313:1313 -v $(pwd):/site:cached -e VIRTUAL_HOST="${1}" --name hugo-server devopsdays/docker-hugo-server:v0.23
