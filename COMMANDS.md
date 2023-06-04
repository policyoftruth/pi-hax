### control node
* sudo apt install python3-pip
* python3 -m pip -V
* python3 -m pip install --user ansible

### notes

* `chmod 0600 private_key` - fetched from codespace secrets
* `ssh -i ~/.ssh/pikey devnull@192.168.1.187`
* `ansible all -m ping -i inventory.yml --private-key ./private_key -u devnull`
