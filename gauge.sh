#!/bin/bash

while true
do
	rand_num=$(( ( RANDOM % 100 )  + 1 ))
	echo "test_gauge:${rand_num}|g" | nc -u -w0 telegraf 8125
	echo ${rand_num}
	sleep $SLEEP
done
