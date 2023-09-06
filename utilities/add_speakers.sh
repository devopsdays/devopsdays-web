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
string_replace "CITY" "${city}" "${speakerspage}"
string_replace "YYYY" "${year}" "${speakerspage}"

# uncomment link to speakers page
string_replace "#  - name: speakers" "  - name: speakers" "../data/events/${event_slug}.yml"

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

string_replace "SPEAKERNAME" "${speakername}" "${speakerfile}"
string_replace "SPEAKERSLUG" "${speaker_slug}" "${speakerfile}"

# twitter handle
read -p "Enter speaker twitter handle (return for none): " twitter
[ -z "${twitter}" ] && twitter=''
# remove @ if they added it
twitter=$(echo $twitter | sed 's/@//')
string_replace "SPEAKERTWITTER" "${twitter}" "${speakerfile}"

#linkedin profile
read -p "Enter speaker linkedin profile (return for none): " linkedin
[ -z "${linkedin}" ] && linkedin=''
sedcmd "s,SPEAKERLINKEDIN,$linkedin,g" $speakerfile


# bio
read -p "Enter speaker bio (return for none): " bio
[ -z "${bio}" ] && bio=''
string_replace "SPEAKERBIO" "${bio}" "${speakerfile}"

####################
# Populate talk file
####################
talkfile="../content/events/$event_slug/program/$speaker_slug.md"
cp examples/templates/program-speaker-full-name.md $talkfile

string_replace "SPEAKERSLUG" "${speaker_slug}" "${talkfile}"

# talk title
read -p "Enter speaker talk title (return for none): " title
[ -z "${title}" ] && title=''
string_replace "TALKTITLE" "${title}" "${talkfile}"

# talk description
read -p "Enter speaker talk description (return for none): " abstract
[ -z "${abstract}" ] && abstract=''
string_replace "ABSTRACT" "${abstract}" "${talkfile}"

#######################
# Set speaker image
#######################
#

# if speaker image is already in expected location
if [[ -f "../static/events/$event_slug/speakers/$speaker_slug.png" ]] ; then
  string_replace "image = \"\"" "image = \"${speaker_slug}.png\"" "${speakerfile}"
  echo "found ${speaker_slug}.png, using"
else
  read -p "Enter path to speaker image PNG: " speakerimage
  if [[ -n "${speakerimage}" ]] && [[ -f "${speakerimage}" ]] ; then
    cp -v "${speakerimage}" "../static/events/${event_slug}/speakers/${speaker_slug}.png"
    string_replace "image = \"\"" "image = \"${speaker_slug}.png\"" "${speakerfile}"
  else
    echo "no image used.   If desired:
      1. Copy PNG into ../static/events/${event_slug}/speakers/${speaker_slug}.png
      2. update ${speakerfile}, changing image = \"${speaker_slug}.png\"
      before creating your Pull Request.
      "
  fi
fi

done
