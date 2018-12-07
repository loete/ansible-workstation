#!/usr/bin/env python
import subprocess, os
# Check if Ansible installation - install if not
packages = 'software-properties-common ansible git python-apt'

print("Checking Ansible installation")
apt_list = subprocess.Popen(['apt', 'list', '--installed'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
try:
    grep_apt = subprocess.check_output(['grep', '-i', 'ansible/'], stdin=apt_list.stdout)
    print("- Ansible already installed!")
except:
    print("- Ansible not found - installing ...")
    print("  - apt update")
    os.system('sudo apt update > /dev/null')
    print("  - apt install")
    os.system('sudo ap install {} -y > /dev/null'.format(packages))
    print("- Ansible installed!")

# Running Ansible playbook
print("Run Ansible playbook")
os.system('ansible-playbook ansible-ubuntu-desktop.yml --ask-become-pass')

print("Finished bootstrapping ...")
