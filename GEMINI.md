# Project Overview

This repository contains a collection of Ansible playbooks and scripts to configure a headless Raspberry Pi. The setup is managed from a WSL2/Ubuntu environment and is designed to provision a Raspberry Pi with a variety of software and configurations.

The project automates the following:
- Installation of common packages like `nmap`, `vim`, `bat`, `git`, and `neofetch`.
- Disabling of Bluetooth, ModemManager, and wpa_supplicant services.
- Configuration of network settings, including disabling WiFi.
- Installation and configuration of Docker, Helm, and Cloudflared for secure remote access.
- Overclocking the Raspberry Pi and other hardware-level settings.

# Building and Running

The primary tools used in this project are Ansible and shell scripts.

## Ansible

The main configuration is handled by Ansible playbooks. The `ansible.cfg` file specifies the inventory file (`inventory.yml`), the private key for SSH authentication (`id_rsa`), and the remote user (`gauge`).

To run the main playbook, which installs packages and configures services, use the following command:

```bash
ansible-playbook ./main.yml
```

To update the system, run the `update.yml` playbook:

```bash
ansible-playbook ./update.yml
```

## Scripts

The `scripts` directory contains shell scripts for installing Docker and Helm:
- `scripts/inst_docker.sh`: Installs Docker and its dependencies.
- `scripts/inst_helm.sh`: Installs Helm.

These scripts can be executed directly on the Raspberry Pi.

The `cloudflared` directory contains a script for installing the Cloudflared agent:
- `cloudflared/inst_cloudflared.sh`: Installs the Cloudflared agent.

## Overclocking

The `overclock/config.txt` file contains the configuration for overclocking the Raspberry Pi. This file should be copied to `/boot/config.txt` on the Raspberry Pi.

# Development Conventions

- The project uses Ansible for configuration management. Playbooks are written in YAML and are organized into logical roles.
- Shell scripts are used for tasks that are not easily handled by Ansible.
- The `README.md` file provides a good overview of the project, including useful commands and references.
- The `inventory.yml` file defines the hosts that Ansible will manage.
- The `ansible.cfg` file contains the default settings for Ansible.
- The `id_rsa.pub` file suggests that SSH key-based authentication is used to connect to the Raspberry Pi.
