#!/bin/bash
a=`cat /path-to-file-containes-hostnames-remote-servers`
for HOST in $a
do
scp somefile $HOST:/var/tmp/
done
