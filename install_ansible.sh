#!/bin/bash

sudo aptitude install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo aptitude update
sudo aptitude install ansible
