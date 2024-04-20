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

# Get the current user/group so we can run hugo as this user/group
CURUSER=$(id -u)
CURGROUP=$(id -g)

# You can set HUGO_IMAGE in the env to overwrite or it will default to this version
HUGO_IMAGE=${HUGO_IMAGE:-cibuilds/hugo:0.123.3}

echo "HUGO_BASEURL: $HUGO_BASEURL"
docker stop hugo-server 2>/dev/null
docker rm   hugo-server 2>/dev/null

[[ -f hugo.log ]] && rm hugo.log
echo "mount with ${MOUNT_OPTION}"
docker run -tip 1313:1313 -v $(pwd):/project:${MOUNT_OPTION} \
  -e HUGO_THEME=devopsdays-theme -w /project \
  --name hugo-server --entrypoint "" --user root:root \
  ${HUGO_IMAGE} hugo server --watch --bind 0.0.0.0 --baseURL ${HUGO_BASEURL} \
    --noHTTPCache --logLevel info 
