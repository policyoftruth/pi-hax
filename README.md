## Summary
This repository is a collection of notes for configuring a headless Pi w/Ansible from WSL2/ubuntu.

## General Notes
* Generate a keypair in your project for your pi with `ssh-keygen`
* Correct the permissions of your private key: `chmod 0600 id_rsa`
* The `ansible.cfg` file contains your username, inventory location, and private key name/location
* The [screenshot](pi-imager-settings.png) shows the advanced settings for the Pi image utility
* I am using the "Raspberry Pi OS Lite (32-bit)" version of Raspbian
 
## Useful Commands
* `sudo apt install python3-pip`
* `sudo apt install ansible`
* `ssh gauge@192.168.86.56 -i id_rsa` (eth/pinned)
* `ansible all -m ping -i inventory.yml --private-key ./id_rsa -u gauge`
* `ansible-playbook ./update.yml` (inventory, user, key are read from `default.cfg`)
  

## Networking Commands
* `ip link set dev wlan1 down`                          # down the adapter that supports monitor mode
* `iwconfig wlan1 mode monitor`                         # switch mode to monitor
* `iwconfig wlan1 mode managed`                         # switch back to managed
* `ip link set dev wlan1 up`                            # up the adapter
* `nmcli dev set wlan1 managed no`                      # disable network manager for monitor interface
* `nmcli dev wifi list`                                 # list available networks
* `sudo nmcli --ask dev wifi connect <example_ssid>`    # connect to a network

## References
* <https://www.makeuseof.com/how-to-boot-raspberry-pi-ssd-permanent-storage/>


## k3s
* <https://docs.k3s.io/installation/requirements?os=pi>

1. Append `cgroup_memory=1 cgroup_enable=memory` to /boot/cmdline.txt
1. `getconf PAGESIZE` - must be 4k/4096
1. `https://docs.k3s.io/quick-start`
1. `curl -sfL https://get.k3s.io | sh -`
1. `systemctl status k3s.service`

## k3s ops
* Accessing the Cluster from Outside with kubectl - Copy /etc/rancher/k3s/k3s.yaml on your machine located outside the cluster as ~/.kube/config. Replace the value of the server field with the IP or name of your K3s server. kubectl can now manage your K3s cluster.
* `/usr/local/bin/k3s-killall.sh` - stop k3s
* `k3s server` - start server
* `k3s agent` - start agent
