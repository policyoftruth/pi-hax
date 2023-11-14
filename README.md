# notes
* Generate a keypair in your project for your pi with `ssh-keygen`
* Correct the permissions of your private key: `chmod 0600 id_rsa`
* The `ansible.cfg` file contains your username, inventory location, and private key name/location
* The screenshot, `pi-imager-settings.png`, shows the advanced settings for the Pi image utility
* I am using the "Raspberry Pi OS Lite (32-bit)" version of Raspbian
 
# control node
* `sudo apt install python3-pip`
* `python3 -m pip install --user ansible`
* `ssh pi@192.168.1.161 -i id_rsa`
* `ansible all -m ping -i inventory.yml --private-key ./id_rsa -u pi`
* `ansible-playbook ./main.yml --private-key ./id_rsa -u pi`

# references
* <https://github.com/seemoo-lab/nexmon>
