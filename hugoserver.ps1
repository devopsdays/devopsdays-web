# You will need to make sure you have your C drive (or whatever drive you have the devopsdays code on) shared in Docker
# NOTE: The docker image provided by jojomi is not managed or audited by devopsdays

$MyPath = $PSScriptRoot

docker stop hugo-server
docker rm hugo-server 
docker run -tip 1313:1313 -v ${MyPath}:/src:cached -e HUGO_THEME=devopsdays-theme -e HUGO_WATCH=1 -e HUGO_BASEURL="http://localhost:1313" --name hugo-server jojomi/hugo:0.64.1
