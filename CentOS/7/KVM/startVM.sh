#!/bin/bash

#######################################
# This script will start a VM by name #
#######################################

read -p "What is the name of the VM? " vmName

virsh shutdown $vmName
