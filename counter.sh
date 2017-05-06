#!/bin/bash

while true
do
	for i in {1..50}
	do 
		echo $i
		echo "test_counter:1|c" | nc -u -w0 telegraf 8125
	done
	sleep 1
done
