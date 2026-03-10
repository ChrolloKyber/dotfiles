#!/usr/bin/bash

sudo pacman -Syu git go ansible curl rsync

ansible-playbook playbooks/install_yay.yaml

ansible-playbook playbooks/nvim.yaml

ansible-playbook playbooks/install_packages.yaml

ansible-playbook playbooks/ohmyzsh.yaml

ansible-playbook playbooks/setup.yaml

ansible-playbook playbooks/user.yaml
