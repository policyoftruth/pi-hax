### control node
* sudo apt install python3-pip
* python3 -m pip -V
* python3 -m pip install --user ansible

### notes

* `chmod 0600 private_key` - fetched from codespace secrets
* `ssh -i ~/.ssh/pikey devnull@192.168.1.187`
* `ansible all -m ping -i inventory.yml --private-key ./private_key -u devnull`


### card
```
Bus 001 Device 003: ID 148f:5370 Ralink Technology, Corp. RT5370 Wireless Adapter
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass            0 
  bDeviceSubClass         0 
  bDeviceProtocol         0 
  bMaxPacketSize0        64
  idVendor           0x148f Ralink Technology, Corp.
  idProduct          0x5370 RT5370 Wireless Adapter
  bcdDevice            1.01
  iManufacturer           1 Ralink
  iProduct                2 802.11 n WLAN
  iSerial                 3 1.0
  bNumConfigurations      1
  ```
  