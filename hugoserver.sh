#!/bin/bash
#
# File: hugoServer
#
# Purpose: Run the Hugo container as a local server
#
# This requires Docker 17.06.0-ce or above.
#
# NOTE: The docker image provided by jojomi is not managed or audited by devopsdays

if [ "$(uname)" == "Linux" ]; then
  MOUNT_OPTION="Z"
else
  MOUNT_OPTION="cached"
fi

if [ $# -eq 1 ]; then
  HUGO_BASEURL=$1
else
  HUGO_BASEURL="http://localhost:1313"
fi

# You can set HUGO_IMAGE in the env to overwrite or it will default to this version
HUGO_IMAGE=${HUGO_IMAGE:-cibuilds/hugo:0.121.2}

echo "HUGO_BASEURL: $HUGO_BASEURL"
docker stop hugo-server 2>/dev/null
docker rm   hugo-server 2>/dev/null

[[ -f hugo.log ]] && rm hugo.log

docker run -tip 1313:1313 -v $(pwd):/home/circleci/project:${MOUNT_OPTION} \
  -e HUGO_THEME=devopsdays-theme \
  --name hugo-server --entrypoint "" \
  ${HUGO_IMAGE} hugo server --watch --bind 0.0.0.0 --baseURL ${HUGO_BASEURL} \
    --noHTTPCache --logLevel info 
