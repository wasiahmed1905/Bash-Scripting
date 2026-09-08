#!/bin/bash

me=$USER

root_logins=0
my_logins=0

echo "Root logins: $root_logins"
echo "$me logins: $my_logins"

if [ "$my_logins" -gt "$root_logins" ]; then
    echo "$me is big."
elif [ "$my_logins" -lt "$root_logins" ]; then
    echo "root is big."
elif [ "$my_logins" -eq 0 ] && [ "$root_logins" -eq 0 ]; then
    echo "Niggs are zero"
else
    echo "Both are big and Equal."
fi
