#!/bin/bash

while IFS= read -r line || [[ -n "$line" ]];do
	echo -e "$line \n"
done < "testfile.txt" 
