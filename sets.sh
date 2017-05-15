#!/bin/bash

while true
do
	rand_num=$(( ( RANDOM % 10 )  + 1 ))
	echo "test_sets:${rand_num}|s" | nc -u -w0 telegraf 8125
	echo ${rand_num}
	sleep $SLEEP
done
