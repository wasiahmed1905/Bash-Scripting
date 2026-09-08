#!/bin/bash
I="$1"
J="$2"


if [ "$#" -lt 2 ]; then
    echo "Error: Missing required arguments I and J." >&2
    exit 
fi

regex='^[0-9]+$'

if ! [[ "$I" =~ $regex ]] || [ "$I" -le 0 ]; then
    echo "Error: $I should be greater then 0." 
    exit 
fi

if ! [[ "$J" =~ $regex ]] || [ "$J" -le 0 ]; then
    echo "Error $J should be greater then 0."
    exit
fi

if [ "$I" -le "$J" ]; then
    Start="$I"
    End="$J"
else
    Start="$J"
    End="$I"
fi

Count=$(( End - Start + 1 ))
Dir_Name="$I"

if [ -d "$Dir_Name" ]; then
    echo "Error: Directory '$Dir_Name' already exists." 
    exit 
fi

for (( num=Start; num<=End; num++ )); do
    target_path="$Dir_Name/$num"
    if [ -e "$target_path" ]; then
        echo "Error: File '$target_path' already exists." >&2
        exit 
    fi
done

mkdir "$Dir_Name"

for (( num=Start; num<=End; num++ )); do
    target_path="$Dir_Name/$num"
    touch "$target_path"
done

echo "Successfully created directory from $Start to $End."
