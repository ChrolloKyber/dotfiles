#!/usr/bin/bash

sudo pacman -Syu git go ansible curl rsync

ansible-galaxy collection install community.general

ansible-playbook playbooks/install_yay.yaml -K

ansible-playbook playbooks/chaotic_aur.yaml -K

ansible-playbook playbooks/nvim.yaml -K

ansible-playbook playbooks/install_packages.yaml -K

ansible-playbook playbooks/ohmyzsh.yaml -K

ansible-playbook playbooks/setup.yaml -K

ansible-playbook playbooks/user.yaml -K

sudo pacman -Rns ansible
