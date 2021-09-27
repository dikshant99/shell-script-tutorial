#!/bin/bash

host="8.8.8.8"
ping -c1 $host &> /dev/null
  if [ $? -eq 0 ]
        then
        echo OK
        else
        echo NOT OK
  fi
