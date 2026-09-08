#!/bin/bash

trash="$HOME/Trash"

find "$trash" -type f -mtime +1 -delete

for file in "$@"; do

    if [ ! -e "$file" ]; then
	echo "Error: $file does not exist."
	continue
    fi


    if [ -d "$file" ]; then 
	echo "Error: $file is a directory. Can't delete directories."
	continue
    fi


    if [[ "$file" == *.gz ]]; then
        mv "$file" "$HOME/Trash/"
    
    else

	gzip "$file"
	mv "$file.gz" "$HOME/Trash/"
    fi 

done
