#!/bin/bash

# run both playbooks, unique inventories

echo -e "\nFirst create server instances..\n"
ansible-playbook -i localhost build.yml -v
echo -e "\nThen, do things to them..\n"
ansible-playbook -i ./myservers.inv config.yml -v

echo -e "\nNow, you could leave it all on or destroy it.\n"
