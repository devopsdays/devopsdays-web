#!/bin/bash
#
# Original copyright thomas dot braun aeht virtuell minus zuhause dot de,  2013
# https://github.com/t-b/git-pre-commit-hook-windows-filenames
#
# Sources:
# - http://stackoverflow.com/a/62888
# - http://msdn.microsoft.com/en-us/library/aa365247.aspx

# Redirect output to stderr.
exec 1>&2

find . -type f -not -path "*.git*" | while read filename; do
  # Strip leading period
  filename="${filename#.}"

  # Non-printable characters from ASCII range 0-31 
  nonprintablechars=$(echo -n "$filename" | LC_ALL=C tr -d '[ -~]' | wc -c)

  # Illegal characters: < > : " / \ | ? *
  # We don't test for / (forward slash) here as that is even on *nix not allowed in *filename*
  illegalchars=$(echo -n "$filename" | LC_ALL=C grep -E '(<|>|:|"|\\|\||\?|\*)' | wc -c)

  # TODO This test is too restrictive as it matches names that start with 'con'.  For now it's disabled
  # Reserved names plus possible extension
  # CON, PRN, AUX, NUL, COM1, COM2, COM3, COM4, COM5, COM6, COM7, COM8, COM9, LPT1, LPT2, LPT3, LPT4, LPT5, LPT6, LPT7, LPT8, and LPT9
  reservednames=0 #$(echo -n "$filename" | LC_ALL=C grep -i -E '(CON|PRN|AUX|NUL|COM1|COM2|COM3|COM4|COM5|COM6|COM7|COM8|COM9|LPT1|LPT2|LPT3|LPT4|LPT5|LPT6|LPT7|LPT8|LPT9).[a-z]{3}' | wc -c)

  # No trailing period or space
  trailingperiodorspace=$(echo -n "$filename" | LC_ALL=C grep -E '(\.| )$' | wc -c)

  # File name is all periods
  filenameallperiods=$(echo -n "$filename" | LC_ALL=C grep -E '^\.+$' | wc -c)

  # Check complete path length to be smaller than 260 characters
  # This test can not be really accurate as we don't know if PWD on the windows filesystem itself is not very long 
  absolutepathtoolong=0
  if test $(echo "$filename" | wc -c) -ge 260
  then
    absolutepathtoolong=1
  fi

  # debug output
  if test $nonprintablechars -ne 0 \
     || test $illegalchars -ne 0 \
     || test $reservednames -ne 0 \
     || test $trailingperiodorspace -ne 0 \
     || test $filenameallperiods -ne 0 \
     || test $absolutepathtoolong -ne 0
  then
    echo "Error: File name is incompatible to windows file systems."
    echo "File: ${filename}"
    if test $nonprintablechars -ne 0
    then
      echo Error: nonprintablechars=$nonprintablechars
    fi
    if test $illegalchars -ne 0
    then
      echo Error: illegalchars=$illegalchars
    fi
    if test $reservednames -ne 0
    then
      echo Error: reservednames=$reservednames
    fi
    if test $trailingperiodorspace -ne 0
    then
      echo Error: trailingperiodorspace=$trailingperiodorspace
    fi
    if test $filenameallperiods -ne 0
    then
      echo Error: filenameallperiods=$filenameallperiods
    fi
    if test $absolutepathtoolong -ne 0
    then
      echo Error: absolutepathtoolong=$absolutepathtoolong
    fi

    # If the env. var 'NO_EXIT_ON_FAILURE' is set then don't exit, otherwise exit with non-zero
    if [ -z ${NO_EXIT_ON_FAILURE+x} ]
    then
      exit 1
    fi
  fi
done
