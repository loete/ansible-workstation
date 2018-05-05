#!/bin/bash

# Check if ansible is installed
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
	echo "Adding ppa:ansible/ansible"
	sudo apt-add-repository ppa:ansible/ansible -y
fi
if ! hash ansible >/dev/null 2>&1; then
  echo "Installing ansible"
  sudo apt-get update
  sudo apt-get install software-properties-common ansible git python-apt -y
else
  echo "ansible already installed
fi
