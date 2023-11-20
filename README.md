# Summary
This repository is a collection of notes for configuring a headless Pi w/Ansible from WSL2/ubuntu.

# General Notes
* Generate a keypair in your project for your pi with `ssh-keygen`
* Correct the permissions of your private key: `chmod 0600 id_rsa`
* The `ansible.cfg` file contains your username, inventory location, and private key name/location
* The [screenshot](pi-imager-settings.png) shows the advanced settings for the Pi image utility
* I am using the "Raspberry Pi OS Lite (32-bit)" version of Raspbian
* In order to keep wpa_supplicant from binding to our monitor inferface, we need to rename the `/etc/wpa_supplicant/wpa_supplicant.conf` to a specific format: `/etc/wpa_supplicant/wpa_supplicant-wlan0.conf` where `wlan1` is our monitor interface.
 
# Useful Commands
* `sudo apt install python3-pip`
* `python3 -m pip install --user ansible`
* `ssh pi@192.168.1.161 -i id_rsa`
* `ansible all -m ping -i inventory.yml --private-key ./id_rsa -u pi`
* `ansible-playbook ./main.yml ` (inventory, user, key are read from `default.cfg`)

# Networking Commands
* `ip link set dev wlan1 down`      # down the adapter that supports monitor mode
* `iwconfig wlan1 mode monitor`     # switch mode to monitor
* `iwconfig wlan1 mode managed`     # switch back to managed
* `ip link set dev wlan1 up`        # up the adapter
* `nmcli dev set wlan1 managed no`  # disable network manager for monitor interface
* `nmcli dev wifi list`             # list available networks
* `sudo nmcli --ask dev wifi connect <example_ssid>` # connect to a network

# References
* <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/configuring-networkmanager-to-ignore-certain-devices_configuring-and-managing-networking>
* <https://www.raspberrypi.com/documentation/computers/configuration.html#using-the-command-line>
