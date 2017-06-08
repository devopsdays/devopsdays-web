# You will need to make sure you have your C drive (or whatever drive you have the devopsdays code on) shared in Docker

$MyPath = $PSScriptRoot

docker stop hugo-server
docker rm hugo-server 
docker run -p 1313:1313 -v ${MyPath}:/site --name hugo-server devopsdays/docker-hugo-server:v0.21
