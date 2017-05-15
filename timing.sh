#!/bin/bash 

REGIONS[0]="US-WEST"
REGIONS[1]="US-EAST"
rand=$[$RANDOM % 2]
REGION=${REGIONS[$rand]}

while true
do
	rand_num=$(( ( RANDOM % 100 )  + 1 ))
	echo "test_timing,region=${REGION},hostname=${HOSTNAME}:${rand_num}|ms" | nc -u -w0 telegraf 8125
	echo ${rand_num}
	sleep $SLEEP
done
