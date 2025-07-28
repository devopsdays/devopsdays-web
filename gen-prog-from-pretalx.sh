#!/bin/bash

set -e  # Exit on error

# Inputs
YEAR=2025
CITY=Amsterdam

# Convert city to lowercase
city_low=$(echo $CITY | tr '[:upper:]' '[:lower:]')

# Grab the accepted submissions from Pretalx
# IMP!! THIS ASSUMES https://talks.devopsdays.org/api/events/devopsdays-$city_low-$YEAR format
curl -s "https://talks.devopsdays.org/api/events/devopsdays-$city_low-$YEAR/submissions/?expand=speakers&expand=slots&expand=track" > dod-$YEAR-$city_low-submissions.json
submission_file="dod-$YEAR-$city_low-submissions.json"

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo "Error: jq is required but not installed. Please install jq first."
    echo "On Ubuntu/Debian: sudo apt-get install jq"
    echo "On macOS: brew install jq"
    exit 1
fi

# Check if curl is installed
if ! command -v curl &> /dev/null; then
    echo "Error: curl is required but not installed."
    exit 1
fi

dod_event="$YEAR-$city_low"


##### Create individual talk files #####
# Create program directory if it doesn't exist
prog_dir="content/events/$dod_event/program"
mkdir -p $prog_dir

# Create the talk_template
talk_template='+++
Talk_date = "<date>"
Talk_start_time = "<slots.start>"
Talk_end_time = "<slots.end>"
Title = "<title>"
Type = "talk"
Speakers = <speakers.name>
+++
<abstract>'

# Process the JSON file using jq
jq -r '.results[] | @json' $submission_file | while IFS= read -r talk_json; do
    # Parse individual talk data
    title=$(echo "$talk_json" | jq -r '.title')
    abstract=$(echo "$talk_json" | jq -r '.abstract')
    
    # Extract slot information (using first slot if multiple exist)
    slot_start=$(echo "$talk_json" | jq -r '.slots[0].start // empty')
    slot_end=$(echo "$talk_json" | jq -r '.slots[0].end // empty')
    
    # Skip talks without slots
    if [[ -z "$slot_start" || "$slot_start" == "null" ]]; then
        echo "Skipping talk '$title' - no slot information"
        continue
    fi
    
    # Format date (extract date part and add T00:00:00+02:00)
    talk_date=$(echo "$slot_start" | cut -d'T' -f1)T00:00:00+02:00
    
    # Extract speakers and format as lowercase with hyphens
    speakers=$(echo "$talk_json" | jq -r '[.speakers[].name | ascii_downcase | gsub(" "; "-")] | @json')
    
    # If no speakers, set empty array
    if [[ "$speakers" == "null" || "$speakers" == "[]" ]]; then
        speakers="[]"
    fi
    
    # Create safe filename (replace problematic characters)
    safe_title=$(echo "$title" | sed 's/[^a-zA-Z0-9 -]//g' | sed 's/ /_/g' | sed 's/__*/_/g' | sed 's/^_\|_$//g' | tr '[:upper:]' '[:lower:]')
    filename="$prog_dir/${safe_title}.md"
    
    # Replace talk_template placeholders
    output="$talk_template"
    output="${output//<date>/$talk_date}"
    output="${output//<slots.start>/$slot_start}"
    output="${output//<slots.end>/$slot_end}"
    output="${output//<title>/$title}"
    output="${output//<speakers.name>/$speakers}"
    output="${output//<abstract>/$abstract}"
    
    # Write the file
    echo "$output" > "$filename"
    echo "Generated: $filename"
done

echo "Script completed. Check the 'program' directory for generated files."

##### Create individual speaker files #####
# Create a directory for speaker files
speaker_dir="content/events/$dod_event/speakers"
mkdir -p $speaker_dir

# Extract unique speakers and generate files
jq -r '
.results[] | 
select(.track.id != 125) | 
.speakers[] | 
select(.name != null and .name != "") |
{
  name: .name,
  avatar_url: .avatar_url,
  biography: (.biography // ""),
  filename: (.name | ascii_downcase | gsub(" "; "-") | gsub("^-+|-+$"; "")),
  extension: (if .avatar_url != "" then (.avatar_url | split(".") | last) else "jpg" end)
}
' $submission_file | \
jq -s 'unique_by(.name)' | \
jq -r --arg speaker_dir "$speaker_dir" '.[] | 
"echo \"+++
Title = \\\"" + .name + "\\\"
image = \\\"" + .filename + "." + .extension + "\\\"
type = \\\"speaker\\\"
+++
" + .biography + "\" > content/events/2025-amsterdam/speakers/" + .filename + ".md"' | \
bash

echo "Speaker files generated in the 'speakers' directory"

# Script to download speaker avatar images from JSON data
# Creates a 'speakers' folder and downloads images with speaker names as filenames

# Create speakers directory
speaker_img="static/events/$dod_event/speakers"
mkdir -p $speaker_img

echo "Starting to download speaker avatars..."

# Counter for progress
count=0
total=$(jq '[.results[].speakers[] | select(.avatar_url != "")] | length' "$submission_file")

echo "Found $total speakers with avatar URLs"

# Process each speaker with an avatar URL
jq -r '.results[].speakers[] | select(.avatar_url != "") | "\(.name)|\(.avatar_url)"' "$submission_file" | while IFS='|' read -r name avatar_url; do
    if [[ -n "$avatar_url" && "$avatar_url" != "null" ]]; then
        # Convert name to lowercase and replace spaces with dashes
        filename=$(echo "$name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
        
        # Extract file extension from URL
        extension=$(echo "$avatar_url" | sed 's/.*\.//')
        
        # Handle special cases where extension might have parameters
        extension=$(echo "$extension" | cut -d'?' -f1 | cut -d'&' -f1)
        
        # Ensure we have a valid extension, default to jpg if unclear
        if [[ ! "$extension" =~ ^(jpg|jpeg|png|gif|webp|JPG|JPEG|PNG|GIF|WEBP)$ ]]; then
            extension="jpg"
        fi
        
        # Final filename
        final_filename="$speaker_img/${filename}.${extension}"
        
        ((count++))
        echo "[$count/$total] Downloading: $name -> $final_filename"
        
        # Download the image with error handling
        if curl -L -s -f "$avatar_url" -o "$final_filename"; then
            echo "  ✓ Successfully downloaded $final_filename"
        else
            echo "  ✗ Failed to download $avatar_url"
            # Remove empty file if download failed
            [[ -f "$final_filename" ]] && rm "$final_filename"
        fi
    fi
done

echo ""
echo "Download complete! Check the 'speakers' folder for the downloaded images."

##### Create program yaml file #####
prog_id=$(curl -s "https://talks.devopsdays.org/api/events/devopsdays-$city_low-$YEAR/schedules/" | jq -r '.results[].id')
curl -s "https://talks.devopsdays.org/api/events/devopsdays-$city_low-$YEAR/schedules/$prog_id/?expand=slots?expand=slots.submission&expand=slots.submission.speakers&expand=slots.submission.track&expand=slots.submission.submission_type" > dod-$YEAR-$city_low-schedule.json
schedule_file=dod-$YEAR-$city_low-schedule.json

prog_file="data/events/$YEAR/$city_low/program.yml"

# Function to convert text to lowercase with dashes
normalize_text() {
    echo "$1" | sed 's/[^a-zA-Z0-9 -]//g' | sed 's/ /_/g' | sed 's/__*/_/g' | sed 's/^_\|_$//g' | tr '[:upper:]' '[:lower:]'
}

# Function to extract date in yyyy-mm-dd format
extract_date() {
    echo "$1" | cut -d'T' -f1
}

# Function to extract time in hh:mm format
extract_time() {
    echo "$1" | cut -d'T' -f2 | cut -d'+' -f1 | cut -d':' -f1,2
}

# Start generating the YAML output to program.yml
{
    # Add program section
    echo "program:"

    # Process non-ignite talks first
    jq -r '.slots[] | select(.submission.track.name.en != "Ignite") | "\(.submission.title)|\(.submission.track.name.en)|\(.start)|\(.end)|\(.description.en)"' $schedule_file | sort -t'|' -k3 | while IFS='|' read -r title track start_time end_time description; do

        if [[ $track == "Open Space" ]]; then
            echo "- title: \"$title\""
            echo "  type: open-space"
        elif [[ $track == "null" ]]; then
            echo "- title: \"$description\""
            echo "  type: custom"
        elif [[ $track == "Keynote" ]]; then
            normalized_title=$(normalize_text "$title")
            echo "- title: $normalized_title"
            echo "  type: talk"
            echo "  background_color: \"#bfe3b4\""
        elif [[ $track == "Sponsored Workshop" ]]; then
            normalized_title=$(normalize_text "$title")
            echo "- title: $normalized_title"
            echo "  type: workshop"
        else
            normalized_title=$(normalize_text "$title")
            echo "- title: $normalized_title"
            normalized_track=$(normalize_text "$track")
            echo "  type: $normalized_track"
        fi

        date=$(extract_date "$start_time")
        start=$(extract_time "$start_time")
        end=$(extract_time "$end_time")

        echo "  date: \"$date\""
        echo "  start_time: \"$start\""
        echo "  end_time: \"$end\""
    done

    # Add ignites section
    echo "ignites:"

    # Process ignite talks
    jq -r '.slots[] | select(.submission.track.name.en == "Ignite") | "\(.submission.title)|\(.start)|\(.end)"' $schedule_file | sort -t'|' -k2 | while IFS='|' read -r title start_time end_time; do
        normalized_title=$(normalize_text "$title")
        date=$(extract_date "$start_time")
        start=$(extract_time "$start_time")
        end=$(extract_time "$end_time")
        echo "- title: $normalized_title"
        echo "  type: ignite"
        echo "  date: \"$date\""
        echo "  start_time: \"$start\""
        echo "  end_time: \"$end\""
    done
} > $prog_file

echo "Generated program.yml successfully!"

##### Create, or overwrite, program file #####
echo '+++
Title = "Program"
Type = "program"
Description = "Program for DevOpsDays '$CITY' '$YEAR'"
Icons = "false"
+++

<div class = "row">
  <div class = "col">
    <hr />
    If Open Space is new to you, you may be interested in <a href="/pages/open-space-format">more details about Open Space</a>.
    <hr />
  </div>
</div>
<div>
<b>Color Keys:</b>
<div class="col-lg-3 col-md-6 program-element program-workshop">Workshop</div>
<div class="col-lg-3 col-md-6 program-element" style="background:#bfe3b4;">Keynote</div>
<div class="col-lg-3 col-md-6 program-element program-talk">Talk</div>
<div class="col-lg-3 col-md-6 program-element program-open-space">Open Space</div>
<div class="col-lg-3 col-md-6 program-element program-ignite">Ignite</div>
<div class="col-lg-3 col-md-6 program-element program-custom">Break or other event</div>
<br />
</div>' > "content/events/$dod_event/program.md"

rm -rf $submission_file $schedule_file