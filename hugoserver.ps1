# You will need to make sure you have your C drive (or whatever drive you have the devopsdays code on) shared in Docker
# NOTE: The docker image provided by cibuilds is not managed or audited by devopsdays

$MyPath = $PSScriptRoot

docker stop hugo-server
docker rm hugo-server
docker run -tip 1313:1313 -v $(pwd):/home/circleci/project:cached -e HUGO_THEME=devopsdays-theme -e HUGO_BASEURL="http://localhost:1313" --name hugo-server --entrypoint "" cibuilds/hugo:0.123.2 hugo server --watch --bind ""
