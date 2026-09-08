#!/bin/bash

me=$USER

root_logins=$(last root | grep -c "$root")
my_logins=$(last "$me" | grep -c "$me")

echo "Root logins: $root_logins"
echo "$me logins: $my_logins"

if [ "$my_logins" -gt "$root_logins" ]; then
    echo "$me is big."
elif [ "$my_logins" -lt "$root_logins" ]; then
    echo "root is big."
else
    echo "Both are big and Equal."
fi
