# Summary
This repository is a collection of notes for configuring a headless Pi w/Ansible from WSL2/ubuntu.

# General Notes
* Generate a keypair in your project for your pi with `ssh-keygen`
* Correct the permissions of your private key: `chmod 0600 id_rsa`
* The `ansible.cfg` file contains your username, inventory location, and private key name/location
* The [screenshot](pi-imager-settings.png) shows the advanced settings for the Pi image utility
* I am using the "Raspberry Pi OS Lite (32-bit)" version of Raspbian
 
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

# References
* <https://github.com/seemoo-lab/nexmon>
* <https://re4son-kernel.com/>
* <https://www.kali.org/docs/arm/using-rpi-imager-to-write-raspberry-pi-images/>
* <https://assume-breach.medium.com/building-the-ultimate-portable-hacking-suite-with-a-raspberry-pi-zero-w-dbc60704d872>
