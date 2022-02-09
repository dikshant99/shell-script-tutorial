#!/bin/bash

FILENAME="link-email"
sed 's/@hashedin.com//g' $FILENAME > linkers
sed 's|[.]||g' linkers > nodot
LINES=$(cat $FILENAME)
for LINE in $LINES
do
echo "$LINE"
done
LINES2=$(cat nodot)
for LINE2 in $LINES2
do
echo "$LINE2"
done
for LINE2 in $LINES2
do
PGPASSWORD=<Passeword here> psql -h 34.101.148.58 -U postgres<< EOF
CREATE USER $LINE2 WITH PASSWORD '${LINE2}';
CREATE DATABASE "${LINE2}db";
grant all privileges on database "${LINE2}db" to $LINE2;
EOF
done
