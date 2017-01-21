#!/bin/bash

set -e

# We assume the current year (and also assume bash 3, because macs)
read -p "Enter your event year (default: $(date +"%Y")): " year
[ -z "${year}" ] && year='2017'

# We urlize the city slug
read -p "Enter your city name: " city
city_slug=$(echo $city | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

read -p "Enter your devopsdays event twitter handle (defaults to devopsdays): " twitter
[ -z "${twitter}" ] && twitter='devopsdays'
# remove @ if they added it
twitter=$(echo $twitter | sed 's/@//')

# We use the term event_slug in the hugo files too
event_slug=$year-$city_slug


cp examples/yyyy-city.yml ../data/events/$event_slug.yml
sed -i '' "s/YYYY/$year/" ../data/events/$event_slug.yml
sed -i '' "s/City/$city/" ../data/events/$event_slug.yml
sed -i '' "s/yourlocation/$city/" ../data/events/$event_slug.yml
sed -i '' "s/yyyy-city/$event_slug/" ../data/events/$event_slug.yml

# this handles the email lists
sed -i '' "s/city-year/$city_slug-$year/" ../data/events/$event_slug.yml

cp -r examples/sample-event ../content/events/$event_slug

# The draft = true in the frontmatter is what prevents the sample event from showing on the site
# don't need the double quotes because there's no variable in the substitution
sed -i '' '/draft = true/d' ../content/events/$event_slug/*

# setting the creation date at the time the event is instantiated
datestamp=$(date +%Y-%m-%dT%H:%M:%S%z | sed 's/^\(.\{22\}\)/\1:/')
sed -i '' "s/2000-01-01T01:01:01-06:00/$datestamp/" ../content/events/$event_slug/*

sed -i '' "s/YYYY-city/$event_slug/" ../content/events/$event_slug/welcome.md
sed -i '' "s/devopsdaysyourtown/$twitter/" ../content/events/$event_slug/welcome.md
