* `ssh -i ~/.ssh/pikey devnull@192.168.1.187`
* `ansible all -m ping -i inventory.yml --private-key /home/null/.ssh/pikey -u devnull`
