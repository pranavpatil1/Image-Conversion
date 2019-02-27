#!/bin/bash

# initial requirements checks
if ! $(dpkg -l | grep -q imagemagick)
then
    sudo apt install imagemagick-6-common
fi

inp="$1"
out="$2"

# option 3 if it exists is the directory to look through, blank if empty
dir="$3"

# separator is a newline
IFS=$'\n'
# whether or not directory is specified, ls will figure it out
# filter only files with the proper extension
files=$(ls $dir | grep "${inp}$")

# go through each file found
for i in $files
do
    new_ext=$(echo "$i" | sed "s/^\(.*\)\.$inp/\1\.$out/g")
    # convert file to a new filename with the same base name but with a separate extension (regex)
    echo "Converting $i to $new_ext"
    convert "$i" "$new_ext"
done
