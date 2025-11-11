SPEED=$(echo $(vcgencmd measure_clock arm) | cut -d'=' -f2)
echo $(expr $SPEED / 1000000)MHz
