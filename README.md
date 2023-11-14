# notes
* generate a keypair for your pi with `ssh-keygen`
* Correct the permissions of your key:
    * `chmod 0600 id_rsa`
 * The `ansible.cfg` contains your username, inventory location, and private key name/location.
 
# control node
* `sudo apt install python3-pip`
* `python3 -m pip -V`
* `python3 -m pip install --user ansible`
* `ssh pi@192.168.1.161 -i id_rsa`
* `ansible all -m ping -i inventory.yml --private-key ./id_rsa -u pi`
* `ansible-playbook ./main.yml --private-key ./id_rsa -u pi`

# references
* <https://github.com/seemoo-lab/nexmon>
