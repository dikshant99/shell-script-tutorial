#!/bin/bash

echo
echo Following is the disk space status
echo
df -h | awk '0+$5 >= 70 {print}' | awk '{print $5, $6}'
