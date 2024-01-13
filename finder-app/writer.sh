#!/bin/bash

# This is a simple shell script

# Check if two argument are provided
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <writefile> <writestr>"
	exit 1
fi

# Assign the first argument to the variable writefile
writefile="$1"

# Assign the second argument to the variable writestr
writestr="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the content to the file, overwritting if it exists
echo "$writestr" > "$writefile"

# Check if filesdir represent a directory on the filesystem
if [ $? -ne 0 ]; then
	echo "Error: Could not create the file '$writefile'." 
	exit 1
fi

echo "File '$writefile' created successfully with content:"
echo "$writestr"
