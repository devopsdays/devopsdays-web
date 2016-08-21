#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    echo "This script will use the ImageMagick 'convert' tool to resize a sponsorimage."
    echo -e "(How to install ImageMagick on a mac: 'brew install imagemagick')\n"
    echo "The input filetype can be any imageformat, but as output you will always get a PNG"
    echo -e "\nUsage: $0 [input filename]"
    exit 1
fi

INFILE=$1
OUTFILE=`echo ${INFILE} |sed -e 's/\..*/.png/g'`

if [[ "${INFILE}" == "${OUTFILE}" ]]; then
    ORIGFILE=`echo ${INFILE} |sed -e 's/\..*/_orig.png/g'`
    mv -v ${INFILE} ${ORIGFILE}
    INFILE=${ORIGFILE}
fi

convert ${INFILE} -resize 190x190\> -size 200x200 xc:white +swap -gravity center -composite ${OUTFILE}
