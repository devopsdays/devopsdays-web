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

# Create necessary directories
mkdir -p ../content/events/$event_slug/program
mkdir -p ../data/speakers/$year/$city_slug/
mkdir -p ../static/events/$event_slug/speakers

# Create empty speakers file
cp examples/speakers/speakers.md ../content/events/$event_slug/
# Set the creation date to current timestamp
datestamp=$(date +%Y-%m-%dT%H:%M:%S%z | sed 's/^\(.\{22\}\)/\1:/')
SEDCMD "s/2000-01-01T01:01:01-06:00/$datestamp/" ../content/events/$event_slug/speakers.md

# Prompt for inputting speakers
while [ 1 ]
do
echo "Entering speakers; use CTRL+C to stop..."
# Gather info
read -p "Enter speaker name: " speakername
speaker_slug=$(echo $speakername | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

read -p "Enter speaker twitter handle (return for none): " twitter
[ -z "${twitter}" ] && twitter=''
# remove @ if they added it
twitter=$(echo $twitter | sed 's/@//')

read -p "Enter speaker bio (return for none): " bio
[ -z "${bio}" ] && bio=''

read -p "Enter speaker talk title (return for none): " title
[ -z "${title}" ] && title=''

read -p "Enter speaker talk description (return for none): " abstract
[ -z "${abstract}" ] && abstract=''


# Populate speaker data file
cp examples/speakers/speaker-full-name.yml ../data/speakers/$year/$city_slug/$speaker_slug.yml

SEDCMD "s/SPEAKERNAME/$speakername/" ../data/speakers/$year/$city_slug/$speaker_slug.yml
SEDCMD "s/SPEAKERTWITTER/$twitter/" ../data/speakers/$year/$city_slug/$speaker_slug.yml
SEDCMD "s/SPEAKERBIO/$bio/" ../data/speakers/$year/$city_slug/$speaker_slug.yml

# Set default image

cp examples/speakers/speaker-full-name.jpg ../static/events/$event_slug/speakers/$speaker_slug.jpg

# Populate talk file

cp examples/speakers/speaker-full-name.md ../content/events/$event_slug/program/$speaker_slug.md

SEDCMD "s/SPEAKERNAME/$speakername/" ../content/events/$event_slug/program/$speaker_slug.md
SEDCMD "s/SPEAKERSLUG/$speaker_slug/" ../content/events/$event_slug/program/$speaker_slug.md
SEDCMD "s/TITLE/$title/" ../content/events/$event_slug/program/$speaker_slug.md
SEDCMD "s/ABSTRACT/$abstract/" ../content/events/$event_slug/program/$speaker_slug.md

# Set the creation date to current timestamp
datestamp=$(date +%Y-%m-%dT%H:%M:%S%z | sed 's/^\(.\{22\}\)/\1:/')
SEDCMD "s/2000-01-01T01:01:01-06:00/$datestamp/" ../content/events/$event_slug/program/$speaker_slug.md

done
