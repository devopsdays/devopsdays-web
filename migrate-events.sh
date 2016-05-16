#!/bin/bash

WEBBY="/Users/bridget/github/devopsdays-webby/"
set -e

IFS=- read year city

cityname="$(tr '[:lower:]' '[:upper:]' <<< ${city:0:1})${city:1}"

event_slug=$year-$city


cp migrate-city.yml data/events/$event_slug.yml
sed -i '' "s/YYYY/$year/" data/events/$event_slug.yml
sed -i '' "s/City/$cityname/" data/events/$event_slug.yml
sed -i '' "s/yyyy-city/$event_slug/" data/events/$event_slug.yml

rm -rf content/events/$event_slug/ | true
mkdir -p content/events/$event_slug/
cp migrate-welcome.md content/events/$event_slug/welcome.md

sed -i '' '/draft = true/d' content/events/$event_slug/welcome.md

# setting the creation date at the time the event is instantiated
datestamp=$(date +%Y-%m-%dT%H:%M:%S%z | sed 's/^\(.\{22\}\)/\1:/')
sed -i '' "s/2000-01-01T01:01:01-06:00/$datestamp/" content/events/$event_slug/welcome.md
sed -i '' "s/YYYY-city/$event_slug/" content/events/$event_slug/welcome.md

cp -r $WEBBY/site/output/events/$event_slug static/events/

cat $WEBBY/site/output/events/$event_slug/index.html >> content/events/$event_slug/welcome.md

echo "Migrated $event_slug"
