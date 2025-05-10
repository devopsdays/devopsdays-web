#!/bin/bash
#
# This script copies required JavaScript files from node_modules to the Hugo assets directory.
# It is used to ensure that all necessary JavaScript dependencies are available for Hugo Pipes
# to process, without requiring the entire node_modules directory to be committed to
# source control.
#
# The script copies:
# - jQuery
# - Bootstrap JS
# - jssocials
#
# Run this script using 'make deps' or directly with './utilities/build-scripts/copy-js-deps.sh'

# Create necessary directories if they don't exist
mkdir -p themes/devopsdays-theme/assets/js/vendor
mkdir -p themes/devopsdays-theme/assets/js/components

# Copy JavaScript dependencies
cp node_modules/jquery/dist/jquery.js themes/devopsdays-theme/assets/js/vendor/
cp node_modules/bootstrap/dist/js/bootstrap.js themes/devopsdays-theme/assets/js/vendor/

# Copy main application JS
# cp themes/devopsdays-theme/static/js/devopsdays.js themes/devopsdays-theme/assets/js/

# Create a source map file
cat > themes/devopsdays-theme/assets/js/devopsdays-min.js.map << EOL
{
  "version": 3,
  "file": "devopsdays-min.js",
  "sources": [
    "vendor/jquery.js",
    "vendor/bootstrap.js",
    "components/jssocials.js",
    "components/jquery.oembed.js",
    "devopsdays.js"
  ],
  "mappings": "AAAA"
}
EOL 