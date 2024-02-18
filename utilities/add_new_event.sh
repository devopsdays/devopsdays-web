#!/bin/bash

set -e

cd `dirname ${0}`
source common_code

if [[ $(date +"%m") -ge 10 ]]; then
  default_year=$(echo $(echo `date +"%Y"` + 1) | bc)
else
  default_year=$(date +"%Y")
fi 

if [[ ! -z $DOD_YEAR ]] ; then
  year="$DOD_YEAR"
else
  # We assume the current year (and also assume bash 3, because macs)
  read -p "Enter your event year (default: $default_year): " year
fi
[ -z "${year}" ] && year="$default_year"

if [[ ! -z $DOD_CITY ]] ; then
  city=$DOD_CITY
else
  read -p "Enter your city name: " city
fi
# We urlize the city slug
city_slug=$(echo $city | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

# Get event twitter handle
read -p "Enter your devopsdays event twitter handle (defaults to devopsdays): " twitter
[ -z "${twitter}" ] && twitter='devopsdays'
# remove @ if they added it
twitter=$(echo $twitter | sed 's/@//')

# We use the term event_slug in the hugo files too
event_slug=$year-$city_slug

# Update the redirection for a previous year of this event to the desired year
if grep -q "^/$city_slug" "../static/_redirects";
then
    sedcmd "/^\/$city_slug/ s/.\{4\}-$city_slug/$event_slug/" "../static/_redirects"
else
# If a previous-year event does not exist, create the redirection for the desired year
  sedcmd -e '$a\' "../static/_redirects"
  echo "/$city_slug/*            /events/$event_slug/:splat           302" >> "../static/_redirects"
fi

# Create data directory for the event
mkdir -p ../data/events/$year/$city_slug
# Create default event datafile
eventdatafile="../data/events/$year/$city_slug/main.yml"
cp examples/data/events/main.yml $eventdatafile

sedcmd "s/YYYY/$year/" $eventdatafile
sedcmd "s/City/$city/" $eventdatafile
sedcmd "s/yourlocation/$city/" $eventdatafile
sedcmd "s/yyyy-city/$event_slug/" $eventdatafile
sedcmd "s/devopsdayscityabbr/$twitter/" $eventdatafile

# Name the email list
sedcmd "s/city_email/$city_slug/" $eventdatafile

# Seed initial files for event
cp -r examples/content/events/yyyy-city ../content/events/$event_slug

# Setting the creation date at the time the event is instantiated
datestamp=$(date +%Y-%m-%dT%H:%M:%S%z | sed 's/^\(.\{22\}\)/\1:/')
sedcmd "s/2000-01-01T01:01:01-06:00/$datestamp/" ../content/events/$event_slug/*.md
sedcmd "s/yyyy-city/$event_slug/" ../content/events/$event_slug/welcome.md
sedcmd "s/CITY/$city/" ../content/events/$event_slug/*.md
sedcmd "s/YYYY/$year/" ../content/events/$event_slug/*.md

echo " "
echo "Check your event at http://localhost:1313/events/$event_slug/"
echo "Add your team members to $eventdatafile before sending pull request"
