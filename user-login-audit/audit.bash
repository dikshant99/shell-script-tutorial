#!/bin/bash
echo "please enter day (e.g. Mon)"
read day
echo "please enter month (e.g. Aug)"
read month
echo "please enter date (e.g. 28)"
read date
last | grep "$day $month $date"
