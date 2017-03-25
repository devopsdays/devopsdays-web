#!/bin/bash

set -e

# Detect OS for correct 'sed' syntax
OSNAME=`uname`
SEDCMD(){
  if [[ $OSNAME == 'Linux' ]]; then
    sed -i "$@"
  elif [[ $OSNAME == 'Darwin' ]]; then
    sed -i '' "$@"
  fi
}

# We assume the current year (and also assume bash 3, because macs)
read -p "Enter your event year (default: $(date +"%Y")): " year
[ -z "${year}" ] && year='2017'

# We urlize the city slug
read -p "Enter your city name: " city
city_slug=$(echo $city | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

# Get event twitter handle
read -p "Enter your devopsdays event twitter handle (defaults to devopsdays): " twitter
[ -z "${twitter}" ] && twitter='devopsdays'
# remove @ if they added it
twitter=$(echo $twitter | sed 's/@//')

# We use the term event_slug in the hugo files too
event_slug=$year-$city_slug

# Create default event datafile
eventdatafile="../data/events/$event_slug.yml"
cp examples/data/events/yyyy-city.yml $eventdatafile

SEDCMD "s/YYYY/$year/" $eventdatafile
SEDCMD "s/City/$city/" $eventdatafile
SEDCMD "s/yourlocation/$city/" $eventdatafile
SEDCMD "s/yyyy-city/$event_slug/" $eventdatafile
SEDCMD "s/devopsdayscityabbr/$twitter/" $eventdatafile

# Name the email lists
SEDCMD "s/city-year/$city_slug-$year/" $eventdatafile

# Seed initial files for event
cp -r examples/content/events/yyyy-city ../content/events/$event_slug

# Setting the creation date at the time the event is instantiated
datestamp=$(date +%Y-%m-%dT%H:%M:%S%z | sed 's/^\(.\{22\}\)/\1:/')
SEDCMD "s/2000-01-01T01:01:01-06:00/$datestamp/" ../content/events/$event_slug/*.md
SEDCMD "s/yyyy-city/$event_slug/" ../content/events/$event_slug/index.md
SEDCMD "s/CITY/$city/" ../content/events/$event_slug/*.md
SEDCMD "s/YYYY/$year/" ../content/events/$event_slug/*.md

echo " "
echo "Check your event at http://localhost:1313/events/$event_slug/"
echo "Add your team members to $eventdatafile before sending pull request"
