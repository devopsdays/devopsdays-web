#!/bin/bash
#
# This script copies required SCSS files from node_modules to the Hugo assets directory.
# It is used to ensure that all necessary SCSS dependencies are available for Hugo Pipes
# to process, without requiring the entire node_modules directory to be committed to
# source control.
#
# The script copies:
# - Bootstrap SCSS files
# - jssocials SCSS files
#
# Run this script using 'make deps' or directly with './utilities/build-scripts/copy-scss-deps.sh'

# Create necessary directories if they don't exist
mkdir -p themes/devopsdays-theme/assets/scss/bootstrap

# Copy Bootstrap SCSS files
cp -r node_modules/bootstrap/scss/* themes/devopsdays-theme/assets/scss/bootstrap/

