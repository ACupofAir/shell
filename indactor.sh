#! /bin/bash
while :
do 
  #top | head >> ./temp.txt
  ps -eo cmd,%cpu | grep gnome-shell >> temp.log
  sleep 1
done
