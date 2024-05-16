#!/bin/bash

set -e

cd `dirname ${0}`
source common_code

# Get year
default_year=$(date +"%Y")
if [[ ! -z $DOD_YEAR ]] ; then
  year="$DOD_YEAR"
else
  # We assume the current year (and also assume bash 3, because macs)
  read -p "Enter your event year (default: $default_year): " year
fi
[ -z "${year}" ] && year="$default_year"

# Get city
if [[ ! -z $DOD_CITY ]] ; then
  city="$DOD_CITY"
else
  read -p "Enter your city name: " city
fi
city_slug=$(echo $city | tr '-' ' ' | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')
# Generate event slug
event_slug=$year-$city_slug

# Get start and end dates

day1=$(grep -h startdate ../data/events/$year"/"$city_slug"/"main.yml | awk '{ print $2 }' )
day2=$(grep -h enddate ../data/events/$year"/"$city_slug"/"main.yml | awk '{ print $2 }' )

if [[ $day1 == '' ]]
  then
  echo "Set your dates before publishing a program."
  exit 0
fi


# uncomment link to program page
sedcmd "s/#  - name: program/  - name: program/" ../data/events/$year"/"$city_slug"/"main.yml

# Append program to datafile
cat examples/templates/program.yml >> ../data/events/$year"/"$city_slug"/"main.yml

# set correct start and end dates (manual intervention needed for events that aren't two-day)
sedcmd "s/day1/$day1/g" ../data/events/$year"/"$city_slug"/"main.yml
sedcmd "s/day2/$day2/g" ../data/events/$year"/"$city_slug"/"main.yml


# Display available speakers
echo "Available speakers: "
ls -1 ../content/events/$event_slug/speakers/ | cut -f 1 -d '.'

read -p "Enter your number of full-talk speakers (default: 8)): " num
[ -z "${num}" ] && num='8'

for talknumber in $(seq 1 $num);
do
  read -p "Enter speaker $talknumber in firstname-lastname form; use CTRL+C to stop... " speaker_slug
  sedcmd "s/talk-$talknumber/$speaker_slug/" ../data/events/$year"/"$city_slug"/"main.yml
done

# Create empty program page file (will be auto-filled for display)
programpage="../content/events/$event_slug/program.md"
cp examples/templates/program.md $programpage
sedcmd "s/CITY/$city/" $programpage
sedcmd "s/YYYY/$year/" $programpage

