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

# Create necessary directories
mkdir -p ../content/events/$event_slug/program
mkdir -p ../content/events/$event_slug/speakers
mkdir -p ../static/events/$event_slug/speakers

# Create empty speakers page file (will be auto-filled for display)
speakerspage="../content/events/$event_slug/speakers.md"
cp examples/templates/speakers.md $speakerspage
sedcmd "s/CITY/$city/" $speakerspage
sedcmd "s/YYYY/$year/" $speakerspage

# uncomment link to speakers page
sedcmd "s/#  - name: speakers/  - name: speakers/" ../data/events/$event_slug.yml


# Prompt for inputting speakers
while [ 1 ]
do
echo "Entering speakers; use CTRL+C to stop..."

##############
# Speaker file
##############
read -p "Enter speaker name: " speakername
speaker_slug=$(echo $speakername | tr -dc '[:alpha:][:blank:]' | tr '[:upper:]' '[:lower:]'| tr 'āáǎàãâēéěèīíǐìōóǒòöūúǔùǖǘǚǜü' 'aaaaaaeeeeiiiiooooouuuuuuuuu' | tr ' ' '-')

# create speaker file
speakerfile="../content/events/$event_slug/speakers/$speaker_slug.md"
cp examples/templates/speakers-speaker-full-name.md $speakerfile

sedcmd "s/SPEAKERNAME/$speakername/" $speakerfile
sedcmd "s/SPEAKERSLUG/$speaker_slug/" $speakerfile

# twitter handle
read -p "Enter speaker twitter handle (return for none): " twitter
[ -z "${twitter}" ] && twitter=''
# remove @ if they added it
twitter=$(echo $twitter | sed 's/@//')
sedcmd "s/SPEAKERTWITTER/$twitter/" $speakerfile

#linkedin profile
read -p "Enter speaker linkedin profile (return for none): " linkedin
[ -z "${linkedin}" ] && linkedin=''
sedcmd "s,SPEAKERLINKEDIN,$linkedin,g" $speakerfile


# bio
read -p "Enter speaker bio (return for none): " bio
[ -z "${bio}" ] && bio=''
sedcmd "s/SPEAKERBIO/$bio/" $speakerfile

####################
# Populate talk file
####################
talkfile="../content/events/$event_slug/program/$speaker_slug.md"
cp examples/templates/program-speaker-full-name.md $talkfile

sedcmd "s/SPEAKERSLUG/$speaker_slug/" $talkfile

# talk title
read -p "Enter speaker talk title (return for none): " title
[ -z "${title}" ] && title=''
sedcmd "s/TALKTITLE/$title/" $talkfile

# talk description
read -p "Enter speaker talk description (return for none): " abstract
[ -z "${abstract}" ] && abstract=''
sedcmd "s/ABSTRACT/$abstract/" $talkfile

#######################
# Set speaker image
#######################

read -p "Enter path to speaker image PNG: " speakerimage
[ -z "${speakerimage}" ] && speakerimage=''

if [ $speakerimage ]; then
  cp "$speakerimage" ../static/events/$event_slug/speakers/$speaker_slug.png
  sedcmd "s/image = \"\"/image = \"$speaker_slug.png\"/" $speakerfile
else
  echo "Put speaker image at ../static/events/$event_slug/speakers/$speaker_slug.png before creating the pull request, if desired."
fi

done
