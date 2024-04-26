#!/bin/bash

for f in {1..10}
do
	echo $(vcgencmd measure_temp) | cut -d'=' -f2
	SPEED=$(echo $(vcgencmd measure_clock arm) | cut -d'=' -f2)
	echo $(expr $SPEED / 1000000)MHz
	sysbench cpu --cpu-max-prime=200000 --threads=4 run >/dev/null 2>&1
done
