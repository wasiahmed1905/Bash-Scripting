#!/bin/bash

who | while read -r user lastlogin date time; do
    
    echo "User Name : $user"
    echo "login Environment : $lastlogin"
    echo "Login Date : $date"
    echo "Login Time : $time"
done
