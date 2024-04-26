

## Notes
* `cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq`
* `vcgencmd commands` - This will give a list of queries
* <https://www.raspberrypi.com/documentation/computers/config_txt.html>
* <https://magpi.raspberrypi.com/articles/how-to-overclock-raspberry-pi-4>
* `cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq` / 1000
* `watch -n 1 vcgencmd measure_clock arm`

To overclock, edit this file: `/boot/firmware/config.txt`, appending the below.
This will boost stuff, disable wifi and bluetooth.

```bash
# mystuff
dtoverlay=disable-wifi
dtoverlay=disable-bt
disable_poe_fan=1

# overclock stuff
over_voltage=6
arm_freq=2000
gpu_freq=750
gpu_mem=320
```

## Observations
* With `arm_boost=0`, seems to start at 600/700 and jump to 1500 using `temp.sh`
