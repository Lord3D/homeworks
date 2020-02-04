#!/bin/bash
pwd
G=`find *.log | wc -l`
echo $G
if [ "$G" -eq "2" ] 
then echo "Logi est"
fi
