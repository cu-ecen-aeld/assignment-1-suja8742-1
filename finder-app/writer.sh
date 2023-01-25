#!/bin/bash

# A1
# Author: Sudarshan J

#Corner case for number of arguments check
if [ $# -ne 2 ]
then
    echo "Arguments are invalid. 2 are expected."
    exit 1
fi

file_path=$1
writestr=$2

#Var for directory name
directory=$(dirname "${file_path}")

#Creating directory and writing string to file_path using redirection
mkdir -p "${directory}" && echo "${writestr}" > $file_path

#Check for validity of file path

if [ ! -f "$file_path" ]
then
    echo "File creation failed."
    exit 1
fi

exit 0

