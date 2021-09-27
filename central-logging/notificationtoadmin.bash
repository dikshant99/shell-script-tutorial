#!/bin/bash


systems="xyz_ny@hotmail.com,charry.gorden@email.com"
if [ -s /tmp/filtered-messages ]
then
cat /tmp/filtered-messages | sort | uniq | mail -s "CHECK: Syslog Errors" $systems
rm /tmp/filtered-messages
else
fi
