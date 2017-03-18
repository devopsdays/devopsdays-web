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

# Get year
read -p "Enter your event year (default: $(date +"%Y")): " year
[ -z "${year}" ] && year='2017'

# Get city
read -p "Enter your city name: " city
city_slug=$(echo $city | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')
# Generate event slug
event_slug=$year-$city_slug

# Get start and end dates

day1=$(grep startdate ../data/events/$event_slug.yml | cut -f 2 -d " ")
day2=$(grep enddate ../data/events/$event_slug.yml | cut -f 2 -d " ")

if [[ $day1 == '' ]]
  then
  echo "Set your dates before publishing a program."
  exit 0
fi


# uncomment link to program page
SEDCMD "s/#  - name: program/  - name: program/" ../data/events/$event_slug.yml

# Append program to datafile
cat examples/templates/program.yml >> ../data/events/$event_slug.yml

# set correct start and end dates (manual intervention needed for events that aren't two-day)
SEDCMD "s/day1/$day1/g" ../data/events/$event_slug.yml
SEDCMD "s/day2/$day2/g" ../data/events/$event_slug.yml


# Display available speakers
echo "Available speakers: "
ls -1 ../content/events/$event_slug/speakers/ | cut -f 1 -d '.'

read -p "Enter your number of full-talk speakers (default: 8)): " num
[ -z "${num}" ] && num='8'

for talknumber in $(seq 1 $num);
do
  read -p "Enter speaker $talknumber in firstname-lastname form; use CTRL+C to stop... " speaker_slug
  SEDCMD "s/talk-$talknumber/$speaker_slug/" ../data/events/$event_slug.yml
done


