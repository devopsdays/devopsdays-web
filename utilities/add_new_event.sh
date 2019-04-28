#!/bin/bash


set -e

cd `dirname ${0}`

# Detect OS for correct 'sed' syntax
OSNAME=`uname`
GNUSED=$(which sed)
SEDCMD(){
  if [[ $OSNAME == 'Linux' ]]; then
    sed -i "$@"
  elif [[ $OSNAME == 'Darwin' && $GNUSED == '/usr/local/bin/sed' ]]; then
    sed -i "$@"
  elif [[ $OSNAME == 'MINGW64_NT-6.1' ]]; then
    sed -i "$@"
  else
    sed -i '' "$@"
  fi
}

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
  city=$DOD_LUG_CITY
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
SEDCMD "s/yyyy-city/$event_slug/" ../content/events/$event_slug/welcome.md
SEDCMD "s/CITY/$city/" ../content/events/$event_slug/*.md
SEDCMD "s/YYYY/$year/" ../content/events/$event_slug/*.md

echo " "
echo "Check your event at http://localhost:1313/events/$event_slug/"
echo "Add your team members to $eventdatafile before sending pull request"
