#!/bin/bash
# Scan directories for old files (over 365 days) and delete them.
USAGE="Usage: $0 dir1 dir2 dir3 ..."
if [ "$#" == "0" ]; then                      # If zero arguments were supplied,
  echo "Error: no directory names provided."
  echo "$USAGE"                               # display a help message
  exit 1                                      # and return an error.
fi
while (( "$#" )); do        # While there are arguments still to be shifted...
  while IFS= read -r -d $'\0' file; do
    echo "Removing $file..."
    rm $file
  done < <(find "$1" -type f -atime +365 -print0)
  shift
done
echo "Done."
exit 0

# ref link: https://www.computerhope.com/unix/bash/shift.htm
