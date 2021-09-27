#!/bin/bash
# Moto of script: Backup /etc folder and compress it

tar cvf /tmp/backup.tar /etc
gzip /tmp/backup.tar

#Check backup status and transfer
find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null


if [ $? -eq 0 ]
then
echo Backup was created
echo
echo Archiving backup
scp /tmp/backup.tar.gz root@192.168.1.x:/path
else
echo Backup failed
fi
