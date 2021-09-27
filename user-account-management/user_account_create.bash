#!/bin/bash

echo "Please provide a username?"
read uname
echo

grep -q $uname /etc/passwd
        if [ $? -eq 0 ]
        then
        echo ERROR -- User $uname already exist
        echo Please choose another username
        echo
        exit 0
        fi


echo "Please provide user description?"
read desc
echo

echo "Do you want to specify user ID (y/n)?"
read ynu
echo
        if [ $ynu == y ]
        then
        echo "Please enter UID?"
        read uid
                grep -q $uid /etc/passwd
                if [ $? -eq 0 ]
                then
                echo ERROR -- UserID $uid already exist
                echo
                exit 0
                else
                useradd $uname -c "$desc" -u $uid
                echo
                echo $uname account has been created
                fi
        elif [ $ynu == n ]
        then
        echo No worries we will assign a UID
        useradd $uname -c "$desc"
        echo
        echo $uname account has been created
        fi
