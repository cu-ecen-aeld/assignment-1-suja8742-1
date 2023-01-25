#!/bin/bash

# A1
# Author: Sudarshan J


filesdir=$1
searchstr=$2

#Corner case to check if arguments are 2

if [ $# -ne 2 ]
then
    echo "Invalid parameter input. Expected 2."
    exit 1
fi

#Corner case to check if the file directory is valid

if [ ! -d "$filesdir" ]
then
    echo "File directory ${filesdir} absent."
    exit 1
fi

# Variables for X and Y
filecount=0
matching_line_count=0

#grep for X and Y variables
filecount=$(grep -r -l $searchstr $filesdir | wc -l)
matching_line_count=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are ${filecount} and the number of matching lines are ${matching_line_count}"

exit 0

