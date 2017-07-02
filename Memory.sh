#!/bin/bash -e

echo "The Script is started Check memory.log File !! Script By YousifNouman" >> memory.log; 
echo "      date     time $(free -m | grep total | sed -E 's/^    (.*)/\1/g')" >> memory.log; 
echo -e "\e[32mThe Script is started Check memory.log File\e[0m \e[1m!! Script By \e[31mYousifNouman\e[0m\e[1m" 
echo "      date     time $(free -m | grep total | sed -E 's/^    (.*)/\1/g')" 
while true; do 
	echo "$(date '+%Y-%m-%d %H:%M:%S') $(free -m | grep Mem: | sed 's/Mem://g')"
    echo "$(date '+%Y-%m-%d %H:%M:%S') $(free -m | grep Mem: | sed 's/Mem://g')" >> memory.log;
    sleep 1
done
