#!/bin/bash
#----------------------------------------------------------------------
# Start Up Script of Ansible
#----------------------------------------------------------------------
# variables
main_file=main.yml
inventory=hosts

# check whether yml file includes WORKER_USER or not
while read line; do
  if echo $line | grep WORKER_USER; then
    echo "WORKER_USER must be changed in $main_file"
    exit
  fi
done < $main_file

# execute roles
ansible-playbook -i $inventory $@ $main_file
